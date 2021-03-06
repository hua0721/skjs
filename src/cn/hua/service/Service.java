package cn.hua.service;

import java.util.List;
import java.util.Map;

import cn.hua.formBean.Paging;
import cn.hua.model.BreviaryPicture;
import cn.hua.model.Classify;
import cn.hua.model.Explain;
import cn.hua.model.Goods;
import cn.hua.model.GoodsKind;
import cn.hua.model.GoodsPicture;
import cn.hua.model.MySet;
import cn.hua.model.Permission;
import cn.hua.model.Photo;
import cn.hua.model.Role;
import cn.hua.model.State;
import cn.hua.model.User;

public interface Service {
	public void addUser(User user);
	public void updateUser(User user);
	public void deleteUser(User user);
	public User findUserById(String id);
	public List<User> getNoRoleUsers(String likeStr,Paging paging);
	public boolean UserIsExist(String type,String name,String id);
	public boolean UserIsExist(String type,String name);
	public User findAccount(String value);
	public List<Classify> getClassifys();
	public List<State> getStates();
	public List<?> getPagingData(Paging paging,String id);
	public void saveSet(MySet mySet);
	public MySet getSet(String id);
	public Map<String, Object> findUserMoreData(String id);
	public Map<Integer, String> getPermissions(Role role);
	public List<Role> getAllRoles();
	public List<Role> getRoles();
	public void deleteRole(String roleId);
	public Role findRoleByName(String name);
	public Role findRoleById(String id);
	public List<Permission> getPermissions();
	public void addRole(Role role);
	public Permission findPermissionByName(String name);
	public Permission findPermissionById(int id);
	public void updateRole(Role role);
	public List<GoodsKind> getGoodsKindRoot();
/*	public List<GoodsKind> getGoodsKindChilds(int id);*/
	public GoodsKind getGoodsKind(int id);
	public void savePhoto(Photo photo);
	public Photo loadPhoto(String id);
	public void saveGoodsExplain(Explain explain);
	public Explain loadGoodsExplain(String id);
	public void saveGoods(Goods goods);
	public void updateGoods(Goods goods);
	public void deleteGoods(Goods goods);
	public Goods findGoodsById(String id);
	public void SaveGoodsPicture(GoodsPicture goodsPicture);
	public GoodsPicture getGoodsPicture(String id);
	public List<GoodsPicture> getGoodsPicturesByGoodsId(String goodsId);
	public void deleteGoodsPicture(String goodsId, String imgId);
	public List<Goods> getGoodsPaging(Paging paging);
	public BreviaryPicture getGoodsBreviaryPicture(String id);
	public void deleteGoodsBreviaryPicture(String id);
}
