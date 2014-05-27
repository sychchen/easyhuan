package com.easyhuan.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.easyhuan.pojo.User;
import com.easyhuan.util.HibernateUtil;

public class PojoUtil {
	/*
	 * 分页显示公式为 MAX_SHOW:每页显示的最大记录条数 n:显示第n页 如n=3 显示第3页 每页显示的记录为:((n-1)*MAX_SHOW
	 * + 1) 到 n*MAX_SHOW
	 */
	private final Integer MAX_SHOW = 5;// 每页显示的最大记录条数
	private Integer pageCount;// 总共可以分成的页数

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	// 添加
	public boolean insertPojo(Object pojo) {
		Session session = HibernateUtil.getHibernateSession();
		Transaction trans = session.beginTransaction();
		try {
			trans.begin();
			session.save(pojo);
			trans.commit();
			session.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	// 添加实体并返回Id
	public Object insertPojoReturnId(Object pojo) {
		Session session = HibernateUtil.getHibernateSession();
		Transaction trans = session.beginTransaction();
		Object key = null;
		try {
			trans.begin();
			session.save(pojo);
			key = session.getIdentifier(pojo);
			trans.commit();
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return key;
	}

	// 删除
	public static boolean deletePojo(Object pojo) {
		Session session = HibernateUtil.getHibernateSession();
		Transaction trans = session.beginTransaction();
		try {
			trans.begin();
			session.delete(pojo);
			trans.commit();
			session.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	// 通过Id删除实体为pojo的类的单个商品
	public static boolean deleteSinglePojoById(String pojo, String id) {
		Session session = HibernateUtil.getHibernateSession();
		Transaction trans = session.beginTransaction();// 开始事务
		try {
			String hql = "DELETE ";
			hql = hql.concat(pojo).concat(" WHERE id = ?");

			Query q = session.createQuery(hql);
			q.setString(0, id);
			q.executeUpdate(); // 执行更新语句
			trans.commit(); // 提交事务
			session.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

	// list为要删除的id数组,pojo为要删除的实体
	public static boolean deleteMultipePojo(String pojo, List list) {
		boolean flag = true;
		for (int i = 0; i < list.size(); i++) {
			String id = list.get(i).toString();
			flag = deleteSinglePojoById(pojo, id);
		}
		return flag;
	}

	// 修改商品
	public static boolean updatePojo(Object pojo) {
		Session session = HibernateUtil.getHibernateSession();
		Transaction trans = session.beginTransaction();
		try {
			trans.begin();
			session.update(pojo);
			trans.commit();
			session.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	// 根据Id查询单条记录
	public static Object selectPojoById(Session session, String tableName,
			String id) {
		String hql = "FROM ";
		hql = hql.concat(tableName).concat(" WHERE id = ?");
		Query q = session.createQuery(hql);
		q.setString(0, id);
		Object pojo = q.uniqueResult();
		return pojo;
	}

	// 查询名为str的实体类对应的数据
	public static List selectPojoList(String tableName) {
		Session session = HibernateUtil.getHibernateSession();
		String hql = "from ";
		hql = hql.concat(tableName);
		List list = session.createQuery(hql).list();
		session.close();
		return list;
	}

	// 查询语句拼接
	public String getQueryCondition(String queryCondition) {
//		String hql = "FROM Goods WHERE goods_name LIKE ? OR ";

		return null;
	}

	/*
	 * 搜索商品 查询商品 1.通过Id查询单个商品 2.通过商品具体名称查询 3.通过类别查询多个商品 4.通过商品描述查询
	 */
	// queryCondition:查询条件 currPage:当前页数,请求的页数为下一页
	public List selectPojoWithCondition(String queryCondition, int requestPage) {
		Session session = HibernateUtil.getHibernateSession();
		String hql = "FROM Goods";
		Query q = session.createQuery(hql);
		// Query q = session.createQuery(queryCondition);
		int count = q.list().size();
		q.setFirstResult((requestPage - 1) * MAX_SHOW + 1);
		q.setMaxResults(MAX_SHOW);
		if (count % MAX_SHOW == 0) {
			this.pageCount = count / MAX_SHOW;// 可以分成的总页数
		} else {
			this.pageCount = (count / MAX_SHOW) + 1;// 可以分成的总页数
		}
		List list = q.list();
		return list;
	}

	// public boolean isExistName(String tableName, String userName) {
	// Session session = HibernateUtil.getHibernateSession();
	// String hql = "FROM ";
	// hql = hql.concat(userName);
	// Query q = session.createQuery(hql);
	// List list = q.list();
	// return false;
	// }
}
