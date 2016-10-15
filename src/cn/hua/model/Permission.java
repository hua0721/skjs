package cn.hua.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Permission implements Comparable<Permission>,Serializable{
	/**
	 * 权限
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private Set<Role> role = new HashSet<Role>();
	public Permission(){}
	public Permission(int id) {
		this.id=id;
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToMany(mappedBy="permissions")
	public Set<Role> getRole() {
		return role;
	}
	public void setRole(Set<Role> role) {
		this.role = role;
	}
	@Override
	public int compareTo(Permission o) {
		if(this.id>o.id)
			return 1;
		else
			return -1;
	}
	
}
