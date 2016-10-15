package cn.hua.dao;

import java.util.List;

import cn.hua.formBean.Paging;
import cn.hua.model.User;

public interface UserDao extends Dao<User>{
	public User findById(String id);
	public boolean isExist(String type,String name,String id);
	public User findAccount(String value);
	/**
	 * 根据条件获取所有不是管理员的用户<br/>
	 * 参数1：String	指定模糊查找
	 * 参数2：int		指定当前页*/
	public List<User> getNoRoleUser(String likeStr,Paging paging);
}
