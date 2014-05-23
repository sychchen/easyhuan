package com.easyhuan.pojo;

import java.util.HashSet;
import java.util.Set;

public class Goods {
	
	private Integer goodsId;
	private String goodsName;
	private String goodsDescription;
	private double goodsPrice;
	private String goodsCategory;
	private Integer goodsSale;
	private User user;
	// private User user;

	private Set<Gpicture> gpictures = new HashSet<Gpicture>();
	private Set<Gcomment> gcomments = new HashSet<Gcomment>();

	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsDescription() {
		return goodsDescription;
	}

	public void setGoodsDescription(String goodsDescription) {
		this.goodsDescription = goodsDescription;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsCategory() {
		return goodsCategory;
	}

	public void setGoodsCategory(String goodsCategory) {
		this.goodsCategory = goodsCategory;
	}

	public Integer getGoodsSale() {
		return goodsSale;
	}

	public void setGoodsSale(Integer goodsSale) {
		this.goodsSale = goodsSale;
	}

	public Set<Gpicture> getGpictures() {
		return gpictures;
	}

	public void setGpictures(Set<Gpicture> gpictures) {
		this.gpictures = gpictures;
	}

	public Set<Gcomment> getGcomments() {
		return gcomments;
	}

	public void setGcomments(Set<Gcomment> gcomments) {
		this.gcomments = gcomments;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
