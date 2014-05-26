package com.easyhuan.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.easyhuan.dao.PojoUtil;
import com.easyhuan.pojo.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private PojoUtil util = new PojoUtil();

	public void prepare() throws Exception {

	}

	// 注册
	public String register() throws Exception {
		boolean flag = false;
		flag = util.insertPojo(user);
		if (flag) {
			return SUCCESS;
		} else {
			return "register";
		}
	}

	// 登录
	public String login() throws Exception {
		List<User> list = util.selectPojoList("User");
		for (User user1 : list) {

			String userName = user.getUserName();
			String userPassword = user.getUserPassword();
			String name = user1.getUserName();
			String password = user1.getUserPassword();

			if (name.equals(userName) && password.equals(userPassword)) {// 存在账户
				HttpSession session = ServletActionContext.getRequest()
						.getSession();
				session.setAttribute("currUser", user1);
				return SUCCESS;
			}
		}
		return LOGIN;
	}
}
