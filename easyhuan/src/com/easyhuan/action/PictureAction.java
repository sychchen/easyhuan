package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Picture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class PictureAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql= "from Picture";
		Query createquery = session.createQuery(sql);
		List<Picture> list = createquery.list();
		session.close();
		for(Picture gpicture:list){
			System.out.println(gpicture.getPictureId() + " "
					+ gpicture.getPictureUrl() + " "
					+ gpicture.getPictureTime());
		}
	}
}
