package com.easyhuan.pojo;

import java.sql.Timestamp;

public class Picture {

	private Integer pictureId;
	private Timestamp pictureTime;
	private String pictureUrl;
	private Goods goods;

	public Picture() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Picture(Timestamp pictureTime, String pictureUrl) {
		super();
		this.pictureTime = pictureTime;
		this.pictureUrl = pictureUrl;
		this.goods = goods;
	}

	public Picture(Integer pictureId, Timestamp pictureTime, String pictureUrl,
			Goods goods) {
		super();
		this.pictureId = pictureId;
		this.pictureTime = pictureTime;
		this.pictureUrl = pictureUrl;
		this.goods = goods;
	}

	public Integer getPictureId() {
		return pictureId;
	}

	public void setPictureId(Integer pictureId) {
		this.pictureId = pictureId;
	}

	public Timestamp getPictureTime() {
		return pictureTime;
	}

	public void setPictureTime(Timestamp pictureTime) {
		this.pictureTime = pictureTime;
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}
