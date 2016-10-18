package cn.hua.formBean;

public class Paging {
	private int size=1;
	private int currentPage=1;
	private int currentRow=0;
	private int classify=0;//value请看数据库
	private int state=0;
	private String keywords="";
	private int totalPage;
	private long totalNum;
	private String scene;;
	private String role="0";
	private int function=1;
	private int goodsKind;
	/*private int[] moreKind;*/
	private int putawayGoods;
	
	public int getPutawayGoods() {
		return putawayGoods;
	}
	public void setPutawayGoods(int putawayGoods) {
		this.putawayGoods = putawayGoods;
	}
	public int getGoodsKind() {
		return goodsKind;
	}
	public void setGoodsKind(int goodsKind) {
		this.goodsKind = goodsKind;
	}
/*	public int[] getMoreKind() {
		return moreKind;
	}
	public void setMoreKind(int[] moreKind) {
		this.moreKind = moreKind;
	}*/
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getCurrentRow() {
		this.currentRow = (this.currentPage-1)*this.size;
		return currentRow;
	}
	public int getClassify() {
		return classify;
	}
	public void setClassify(int classify) {
		this.classify = classify;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
	public int getTotalPage() {
		if(this.totalNum!=0&&this.size!=0)
			if(this.totalNum%this.size>0)
				this.totalPage = (int) (this.totalNum/this.size)+1;
			else
				this.totalPage = (int) (this.totalNum/this.size);
		else
			this.totalPage=0;
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
	public long getTotalNum() {
		return totalNum;
	}
	public void setTotalNum(long totalNum) {
		this.totalNum = totalNum;
	}
	
	@Override
	public String toString() {
		return "Paging [size=" + size + ", currentPage=" + currentPage
				+ ", currentRow=" + currentRow + ", classify=" + classify
				+ ", state=" + state + ", keywords=" + keywords
				+ ", totalPage=" + totalPage + ", totalNum=" + totalNum
				+ ", isShowChart=" + scene + ", role=" + role
				+ ", function=" + function + ", goodsKind=" + goodsKind
				+", putawayGoods="
				+ putawayGoods + "]";
	}
	public String getScene() {
		return scene;
	}
	public void setScene(String scene) {
		this.scene = scene;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getFunction() {
		return function;
	}
	public void setFunction(int function) {
		this.function = function;
	}
	
	
}
