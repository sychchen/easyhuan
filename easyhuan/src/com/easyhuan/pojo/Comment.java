package com.easyhuan.pojo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Comment {
	
	private Integer commentId;
	private Timestamp commentTime;
	private String commentContent;
	private User user;
	private Goods goods;
	

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Timestamp getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
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
