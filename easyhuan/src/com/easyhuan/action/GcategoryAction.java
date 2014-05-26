package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Gcategory;
import com.easyhuan.pojo.Gpicture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GcategoryAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql = "from Gcategory";
		Query createquery = session.createQuery(sql);
		List<Gcategory> list = createquery.list();
		session.close();
		for (Gcategory gcategory : list) {
			System.out.println(gcategory.getGcategoryId()+ " "
					+ gcategory.getGcategoryName());
		}
	}
}
