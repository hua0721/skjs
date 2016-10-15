package cn.hua.dao;

import java.util.List;
import java.util.Map;

import cn.hua.model.Role;

public interface RoleDao extends Dao<Role>{
	Map<Integer, String> getPermissions(Role role);
	public List<Role> getAllRoles();
	public Role findByName(String name);
}
