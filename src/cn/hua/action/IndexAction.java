package cn.hua.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import cn.hua.formBean.Paging;
import cn.hua.model.Goods;
import cn.hua.service.Service;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport implements RequestAware{
	/**
	 * 处理主页需求数据
	 */
	private static final long serialVersionUID = 1L;
	private Service service;
	private Map<String,Object> request;
	public void setService(Service service) {
		this.service = service;
	}
	/*public String execute(){
		System.out.println("root");
		request.put("goodsKindRoot",service.getGoodsKindRoot());
		return SUCCESS;
	}*/
	public String execute(){
		Paging paging = new Paging();
		paging.setSize(15);
		System.out.println(paging);
		List<Goods> list = service.getGoodsPaging(paging);
		request.put("list", list);
		ActionContext.getContext().getValueStack().push(paging);
		return SUCCESS;
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}
}
