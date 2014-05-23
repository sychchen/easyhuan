package com.easyhuan.pojo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Gcomment {
	
	private Integer gcommentId;
	private Timestamp gcommentTime;
	private String gcommentContent;
	private User user;
	private Goods goods;

	public Gcomment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getGcommentId() {
		return gcommentId;
	}

	public void setGcommentId(Integer gcommentId) {
		this.gcommentId = gcommentId;
	}

	public Timestamp getGcommentTime() {
		return gcommentTime;
	}

	public void setGcommentTime(Timestamp gcommentTime) {
		this.gcommentTime = gcommentTime;
	}

	public String getGcommentContent() {
		return gcommentContent;
	}

	public void setGcommentContent(String gcommentContent) {
		this.gcommentContent = gcommentContent;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
}
