package com.easyhuan.action;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.easyhuan.dao.PojoUtil;
import com.easyhuan.pojo.Comment;
import com.easyhuan.pojo.Goods;
import com.easyhuan.pojo.Picture;
import com.easyhuan.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport {

	private Goods goods;
	private Picture pictures;
	private File image;
	private String imageFileName;
	private String imageContentType;

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Picture getPictures() {
		return pictures;
	}

	public void setPictures(Picture pictures) {
		this.pictures = pictures;
	}

	public Comment getComments() {
		return comments;
	}

	public void setComments(Comment comments) {
		this.comments = comments;
	}

	private PojoUtil util = new PojoUtil();

	// 发布商品
	public String newGoods() throws Exception {
		Calendar calender = Calendar.getInstance();// 使用默认时区和语言环境获得一个日历
		Date tasktime = calender.getTime();// 将Calendar类型转换成Date类型
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期输出的格式
		System.out.println(df.format(tasktime));// 格式化输出
		Timestamp time = Timestamp.valueOf(df.format(tasktime));

		System.out.println("文件名：" + imageFileName);
		System.out.println("文件类型：" + imageContentType);

		// 得到物理路径
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/images");
		System.out.println("物理路径：" + realPath);

		File path = new File(realPath);// 创建该路径

		if (!path.exists()) {// 判断是否存在该路径，如果不存在，创建之
			path.mkdirs();
		}
		// 将文件写到服务器硬盘
		FileUtils.copyFile(image, new File(path, imageFileName));

		pictures = new Picture(time, realPath);
		Set<Picture> pictureSet = new HashSet<Picture>();
		pictureSet.add(pictures);
		goods.setPictures(pictureSet);
		pictures.setGoods(goods);
		Session session = HibernateUtil.getHibernateSession();
		Transaction trans = session.beginTransaction();
		session.save(goods);
		session.save(pictures);
		trans.commit();
		session.close();
		return SUCCESS;
	}
}
