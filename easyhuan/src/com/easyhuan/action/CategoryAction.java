package com.easyhuan.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.easyhuan.pojo.Category;
import com.easyhuan.pojo.Picture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getHibernateSession();
		String sql = "from Category";
		Query createquery = session.createQuery(sql);
		List<Category> list = createquery.list();
		session.close();
		for (Category category : list) {
			System.out.println(category.getCategoryId() + " "
					+ category.getCategoryName());
		}
//		// 使用默认时区和语言环境获得一个日历
//		Calendar cale = Calendar.getInstance();
//		// 将Calendar类型转换成Date类型
//		Date tasktime = cale.getTime();
//		// 设置日期输出的格式
//		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		// 格式化输出
//		System.out.println(df.format(tasktime));
	}
}
