package cn.hua.dao;

import java.util.List;

import cn.hua.formBean.Paging;
import cn.hua.model.BreviaryPicture;
import cn.hua.model.Goods;
import cn.hua.model.GoodsKind;
import cn.hua.model.GoodsPicture;
import cn.hua.model.ShoppingCart;

public interface GoodsDao extends Dao<Goods> {
	public List<GoodsKind> getGoodsKindRoot();
	public GoodsKind getGoodsKind(int id);
	public List<GoodsKind> getGoodsKindChilds(int id);
	public void SaveGoodsPicture(GoodsPicture goodsPicture);
	public GoodsPicture getGoodsPicture(String id);
	public List<GoodsPicture> getGoodsPicturesByGoodsId(String goodsId);
	public void deleteGoodsPicture(String goodsId, String imgId);
	public List<Goods> getGoodsPaging(Paging paging);
	public BreviaryPicture getGoodsBreviaryPicture(String id);
	public void deleteGoodsBreviaryPicture(String id);
	public void addShoppingCart(ShoppingCart cart);
	public void updateShoppingCart(ShoppingCart cart);
	public void deleteShoppingCart(String id);
	public ShoppingCart getShoppingCartById(String id);
	public ShoppingCart getShoppingCartByUserId(String id);
}
