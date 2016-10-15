package cn.hua.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import cn.hua.annotation.Jurisdiction;
import cn.hua.formBean.UserLogin;
import cn.hua.model.User;
import cn.hua.utils.CacheData;
import cn.hua.utils.Verification;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements
		ModelDriven<UserLogin>, ServletResponseAware {
	private static final long serialVersionUID = 1L;
	private UserLogin userLogin;
	private HttpServletResponse httpServletResponse;

	public String accountParameter() {
		ActionContext.getContext().getSession().remove("user");
		ActionContext.getContext().getValueStack().push(userLogin);
		;
		return SUCCESS;
	}
	/**
	 * 前台登陆Action
	 */
	public String login() {
		User user = Verification.loginVerification(userLogin);
		if (user != null) {	
			//如果用户选择了记住登陆，则向本地写入Cookie
			if (userLogin.getIsRemember() != null
					&& userLogin.getIsRemember().equals("on")) {
				CacheData.addCookie(httpServletResponse, user);
				System.out.println("addCookie");
			}
			ActionContext.getContext().getSession().put("user", user);
			/*if (userLogin.getType() != null
					&& userLogin.getType().equals("admin")) {
				return "admin";
			}*/
			return SUCCESS;
		}
		this.addActionError("账号或密码错误！请检查后重试..");
		return INPUT;
	}
	/**
	 * 后台登陆Action之后拦截器会进行权限检查
	 * @return
	 */
	@Jurisdiction("BackgroundLogin")
	public String adminlogin() {
		User user = Verification.loginVerification(userLogin);
		if (user != null) {
			ActionContext.getContext().getSession().put("user", user);
			if (userLogin.getIsRemember() != null
					&& userLogin.getIsRemember().equals("on")) {
				CacheData.addCookie(httpServletResponse, user);
				System.out.println("addCookie");
			}else{
				CacheData.removeCookie(httpServletResponse, "skjsAutoData");
			}
			if (userLogin.getType() != null
					&& userLogin.getType().equals("admin")) {
				return "admin";
			}
		}
		this.addActionError("账号或密码错误！请检查后重试...");
		return INPUT;
	}

	@Override
	public UserLogin getModel() {
		userLogin = new UserLogin();
		return userLogin;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		this.httpServletResponse = arg0;
	}
}
