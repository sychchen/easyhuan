package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Goods;
import com.easyhuan.pojo.Gpicture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql= "from Goods";
		Query createquery = session.createQuery(sql);
		List<Goods> list = createquery.list();
		session.close();
		for(Goods goods:list){
			System.out.println(goods.getGoodsId()+" "+goods.getGoodsDescription());
		}
	}
}
