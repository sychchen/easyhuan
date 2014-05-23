package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Gcomment;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GcommentAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql= "from Gcomment";
		Query createquery = session.createQuery(sql);
		List<Gcomment> list = createquery.list();
		session.close();
		for(Gcomment gcomment:list){
			System.out.println(gcomment.getGcommentId()+" "+gcomment.getGcommentContent()+" "+gcomment.getGcommentTime());
		}
		
		
	}
}
