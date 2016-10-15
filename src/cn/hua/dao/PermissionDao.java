package cn.hua.dao;

import java.util.List;

import cn.hua.model.Permission;

public interface PermissionDao extends Dao<Permission>{
	public List<Permission> getPermissions();
	public Permission findByName(String name);
	public Permission findById(int name);
}
