package com.easyhuan.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;

import com.easyhuan.dao.PojoUtil;
import com.easyhuan.pojo.Goods;
import com.easyhuan.pojo.Gpicture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 查询记录
		// Session session = HibernateUtil.getHibernateSession();
		// String sql= "from Goods";
		// Query createquery = session.createQuery(sql);
		// List<Goods> list = createquery.list();
		// session.close();

		// 查询记录
		List<Goods> list = PojoUtil.selectPojoList("Goods");
		for (Goods goods : list) {
			System.out.println(goods.getGoodsId() + " "
					+ goods.getGoodsDescription());
		}

		List list1 = new ArrayList();
		list1.add(3);
		list1.add(4);
		list1.add(5);
		boolean flag1 = PojoUtil.deleteMultipePojo("Goods", list1);// 删除多条记录

		// boolean flag1 =PojoUtil.deleteSinglePojoById("Goods", "2");//删除单条记录
		System.out.println(flag1);

		// 查询记录
		// List<Goods> list2 = PojoUtil.selectPojo("Goods");
		// for (Goods goods : list2) {
		// System.out.println(goods.getGoodsId() + " "
		// + goods.getGoodsDescription());
		// PojoUtil.insertGoods(goods);// 添加记录到数据库语句
		// }
		// 查询记录
		// List<Gcomment> list3 = PojoUtil.selectPojoList("Gcomment");
		// for (Gcomment gcomment : list3) {
		// PojoUtil.insertPojo(gcomment);//添加记录到数据库语句
		// gcomment.setGcommentContent("评价评价评价");
		// PojoUtil.updatePojo(gcomment);//更新记录语句
		// }

		Session session = HibernateUtil.getHibernateSession();
		Goods goods = (Goods) PojoUtil.selectPojoById(session, "Goods", "10");
		// System.out.println(goods.getGoodsId() + " " + goods.getGoodsName()
		// + " " + goods.getGoodsDescription() + " "
		// + goods.getGoodsPrice() + " " + goods.getGoodsSale());
		Set<Gpicture> myset = goods.getGpictures();

		System.out.println();
		System.out.println();
		System.out.println();
		for (Gpicture picture : myset) {
			System.out.println(picture.getGpictureId() + " "
					+ picture.getGpictureUrl() + " "
					+ picture.getGpictureTime());
			// picture.setGpictureUrl("http://localhost:8o80/Easyhuan/img/picture3.png");
			// PojoUtil.updatePojo(picture);
			// int id =picture.getGpictureId();
			// if(id==5){
			// picture.setGpictureUrl("图片５");
			// PojoUtil.updatePojo(picture);
			// PojoUtil.deletePojo(picture);
			// }
//			if (picture.getGpictureId() == 6) {
//				Goods goods1 = picture.getGoods();
//				System.out.println("pictureId为6的商品的具体的信息如下：");
//				System.out.println(goods1.getGoodsId() + " "
//						+ goods1.getGoodsName() + " "
//						+ goods1.getGoodsDescription() + " "
//						+ goods1.getGoodsPrice() + " " + goods1.getGoodsSale());
//			}
		}
		// Gpicture picture1 = new Gpicture();
		// Timestamp time = Timestamp.valueOf("2014-05-20 11:20:27");
		// Goods goods1 = new Goods();
		// goods1.setGoodsId(10);
		// picture1.setGoods(goods1);
		// picture1.setGpictureTime(time);
		// picture1.setGpictureUrl("insertPicture添加的图片！");
		// PojoUtil.insertPojo(picture1);

		session.close();
	}
}
