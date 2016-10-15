package cn.hua.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;
@Entity
public class BreviaryPicture implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String path;
	private Goods goods;
	@Id
	@GeneratedValue(generator="uuid")
	@GenericGenerator(name="uuid",strategy="uuid2")
	@Column(name="id",length=40)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@OneToOne(mappedBy="breviaryPicture")
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public BreviaryPicture(){}
	public BreviaryPicture(String id,String path){
		if(id!=null){
			this.id = id;
		}
		this.path = path;
	}
}
