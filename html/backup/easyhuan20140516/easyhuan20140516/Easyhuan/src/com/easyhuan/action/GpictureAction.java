package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Gpicture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GpictureAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql= "from Gpicture";
		Query createquery = session.createQuery(sql);
		List<Gpicture> list = createquery.list();
		session.close();
		for(Gpicture gpicture:list){
			System.out.println(gpicture.getGpictureId()+" "+gpicture.getGpictureUrl()+" "+gpicture.getGpictureTime());
		}
	}
}
