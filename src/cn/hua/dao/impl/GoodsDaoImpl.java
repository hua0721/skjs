package cn.hua.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Collections;

import cn.hua.dao.GoodsDao;
import cn.hua.formBean.Paging;
import cn.hua.model.BreviaryPicture;
import cn.hua.model.Goods;
import cn.hua.model.GoodsKind;
import cn.hua.model.GoodsPicture;
import cn.hua.model.MySet;
@Component
public class GoodsDaoImpl implements GoodsDao {
	private HibernateTemplate hibernateTemplate;
	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public void save(Goods t){
		hibernateTemplate.save(t);
	}
	@Override
	public void update(Goods t) {
		hibernateTemplate.update(t);
	}

	@Override
	public void delete(Goods t) {
		hibernateTemplate.delete(t);
	}

	@Override
	public Goods find(String id) {
		return hibernateTemplate.get(Goods.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsKind> getGoodsKindRoot() {
		return (List<GoodsKind>) hibernateTemplate.find("from GoodsKind where parent=null");
	}

	@Override
	public GoodsKind getGoodsKind(int id) {
		return hibernateTemplate.get(GoodsKind.class, id);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsKind> getGoodsKindChilds(int id) {
		return (List<GoodsKind>) hibernateTemplate.find("from GoodsKind where parent.id="+id);
	}
	@Override
	public void SaveGoodsPicture(GoodsPicture goodsPicture) {
		hibernateTemplate.save(goodsPicture);
		
	}
	@Override
	public GoodsPicture getGoodsPicture(String id) {
		return hibernateTemplate.get(GoodsPicture.class, id);
	}
	@Override
	public BreviaryPicture getGoodsBreviaryPicture(String id) {
		return hibernateTemplate.get(BreviaryPicture.class, id);
	}
	
	@Override
	public void deleteGoodsBreviaryPicture(String id) {
		hibernateTemplate.delete(new BreviaryPicture(id,null));
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<GoodsPicture> getGoodsPicturesByGoodsId(String goodsId) {
		return (List<GoodsPicture>) hibernateTemplate.find("from GoodsPicture where goods.id='"+goodsId+"'");
	}
	@Override
	public void deleteGoodsPicture(String goodsId, String imgId) {
		hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("delete from GoodsPicture where id=:imgId and goods.id=:id")
				.setParameter("imgId", imgId).setParameter("id", goodsId).executeUpdate();
	}
	@SuppressWarnings("unchecked")
	@Override
	/**
	 * 获取分页数据
	 * @parme paging  分页信息
	 * @parme id	当前用户的ID，用于获取全局设置(paging.getMoreKind() == 0 ? " " : "moreKind.id in("
				+ paging.getMoreKind() + ") and ")
	 */
	public List<Goods> getGoodsPaging(Paging paging) {
			Session session = hibernateTemplate.getSessionFactory()
					.getCurrentSession();
			Query<Goods> query = null; // 获取不同对象的分页数据
			System.out.println(paging);
			query = session.createQuery("from Goods");
			paging.setTotalNum(query.list().size());
			return query.setFirstResult(paging.getCurrentRow())
					.setMaxResults(paging.getSize()).list();
	}

}
