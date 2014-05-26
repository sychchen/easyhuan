<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="renderer" content="webkit">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="<%=basePath%>res/css/main.css">
<link rel="stylesheet" href="<%=basePath%>res/css/lrtk.css">
<link rel="stylesheet" href="<%=basePath%>res/css/search.css">
<script src="<%=basePath%>res/js/jquery.js"></script>
<script src="<%=basePath%>res/js/jdt.js"></script>
</head>
<body>
	<form action="goodspublic.action" method="post"
		enctype="multipart/form-data">
		<div class="login">
			<div class="title">
				<div>发布宝贝界面-待完善</div>
				<div class="uname">
					<span class="logintxt" style="width:45px;">商品名</span> <input
						type="text" name="goods.goodsName" id="goodsName">
				</div>
				<div class="uname">
					<span class="logintxt" style="width:45px;">描述</span> <input
						type="text" name="goods.goodsDescription" id="goodsDescription">
				</div>
				<div class="uname">
					<span class="logintxt" style="width:45px;">价格</span> <input
						type="text" name="goods.goodsPrice" id="goodsPrice">
				</div>
				<div class="uname">
					<span class="logintxt" style="width:45px;">类别</span> <input
						type="text" name="goods.goodsCategory" id="goodsCategory">
				</div>
				<div class="uname">
					<span class="logintxt" style="width:45px;">库存</span> <input
						type="text" name="goods.goodsSale" id="goodsSale">
				</div>
			</div>
		</div>
		<div class="login">
			<div class="title">
				<div class="uname">
					<span class="logintxt" style="width:45px;"><input
						type="file" name="image" /></span>
				</div>
				<%-- <div class="uname">
					<span class="logintxt" style="width:45px;"><input
						type="file" name="image" /></span>
				</div>
				<div class="uname">
					<span class="logintxt" style="width:45px;"><input
						type="file" name="image" /></span>
				</div> --%>
				<div>
					<input class="loginbutton" type="submit" value="提交">
				</div>
			</div>
		</div>
	</form>
</body>
</html>
