package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Comment;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql= "from Comment";
		Query createquery = session.createQuery(sql);
		List<Comment> list = createquery.list();
		session.close();
		for(Comment gcomment:list){
			System.out.println(gcomment.getCommentId()+" "+gcomment.getCommentContent()+" "+gcomment.getCommentTime());
		}
		
		
	}
}
