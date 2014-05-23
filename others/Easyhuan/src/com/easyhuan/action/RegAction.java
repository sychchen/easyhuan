package com.easyhuan.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.easyhuan.dao.PojoUtil;
import com.easyhuan.pojo.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegAction extends ActionSupport {
	User user = new User();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String execute() throws Exception {
		// User user = new User();
		PojoUtil util = new PojoUtil();
		List<User> list = util.selectPojoList("User");
		HttpSession s = ServletActionContext.getRequest().getSession();
		s.setAttribute("list", list);
		for (User user1 : list) {
			System.out.println(user1.getUserName());
		}

		System.out.println("*******************8");
		// System.out.println(user.getUserName());
		boolean flag = false;
		flag = util.insertPojo(user);
		if (flag) {
			return SUCCESS;
		} else {
			return LOGIN;
		}
	}
}
