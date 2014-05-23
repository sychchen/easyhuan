package com.easyhuan.action;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.User;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	public static void main(String[] args) {
		Session session = HibernateUtil.getHibernateSession();
		String sql= "from User";
		Query createquery = session.createQuery(sql);
		List<User> list = createquery.list();
		session.close();
		for(User user:list){
			System.out.println(user.getUserName()+" "+user.getUserPassword());
		}
		
//		/**
//		 * 双向一对多测试
//		 */
//		Session hibernateSession = HibernateUtil.getHibernateSession();
//		Transaction beginTransaction = hibernateSession.beginTransaction();
//		User user = new User();
//		user.setUser_name("Tom");;
//		
//		Goods goods = new Goods();
//		Goods goods2 = new Goods();
//		goods.setGoods_name("牙膏");
//		goods.setGoods_name("水杯");
//		
//		Set<Goods> my_goods = new HashSet<Goods>();
//		my_goods.add(goods);
//		my_goods.add(goods2);
//		
//		//重点在这行
//		user.setGoods(my_goods);
//		goods.setUser(user);
//		goods2.setUser(user);
//		
//		beginTransaction.begin();
//		
//		hibernateSession.save(user);
//		
//		hibernateSession.save(goods);
//		hibernateSession.save(goods);
//		
//		beginTransaction.commit();
//		hibernateSession.close();
	}
}
