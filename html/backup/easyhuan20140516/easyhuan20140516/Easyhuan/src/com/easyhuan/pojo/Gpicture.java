package com.easyhuan.pojo;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Gpicture {

	private Integer gpictureId;
	private Timestamp gpictureTime;
	private String gpictureUrl;
	private Goods goods;
	// private Goods goods;
	public Integer getGpictureId() {
		return gpictureId;
	}
	public void setGpictureId(Integer gpictureId) {
		this.gpictureId = gpictureId;
	}
	public Timestamp getGpictureTime() {
		return gpictureTime;
	}
	public void setGpictureTime(Timestamp gpictureTime) {
		this.gpictureTime = gpictureTime;
	}
	public String getGpictureUrl() {
		return gpictureUrl;
	}
	public void setGpictureUrl(String gpictureUrl) {
		this.gpictureUrl = gpictureUrl;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Gpicture() {
		super();
		// TODO Auto-generated constructor stub
	}

}
