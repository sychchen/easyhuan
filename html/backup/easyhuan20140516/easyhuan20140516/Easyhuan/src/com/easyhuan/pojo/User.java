package com.easyhuan.pojo;

import java.util.HashSet;
import java.util.Set;

public class User {
	private Integer userId;
	private String userName;
	private String userPassword;
	private Integer userMobile;
	private String userAddress;

	public Set<Goods> goodses = new HashSet<Goods>();
	public Set<Gcomment> gcomments = new HashSet<Gcomment>();

	// private Set<Goods> goods = new HashSet<Goods>();

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Integer getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(Integer userMobile) {
		this.userMobile = userMobile;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Set<Goods> getGoodses() {
		return goodses;
	}

	public void setGoodses(Set<Goods> goodses) {
		this.goodses = goodses;
	}

	public Set<Gcomment> getGcomments() {
		return gcomments;
	}

	public void setGcomments(Set<Gcomment> gcomments) {
		this.gcomments = gcomments;
	}

}
