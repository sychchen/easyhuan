<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<script>
		(function() {
			var a = document.body;
			window.screen.width > 1024 ? a.className = "w1190"
					: a.className = "w990"
		})();
	</script>
	<div class="header">
		<div class="loginstatus">
			<div class="banner-login">
				<ul>
					<c:if test="${empty sessionScope.currUser.userName }">
						<li><a href="login.jsp">亲，请登陆</a></li>
					</c:if>
					<c:if test="${!empty sessionScope.currUser.userName }">
						<li><a href="<%=basePath%>#">欢迎:${sessionScope.currUser.userName }</a></li>
						<li><a href="<%=basePath%>./index.jsp">退出</a></li>
					</c:if>
				</ul>
			</div>
			<div>
				<ul class="sddm">
					<li><a href="#" onmouseover="mopen('m1')"
						onmouseout="mclosetime()">我的账号</a>
						<div id="m1" onmouseover="mcancelclosetime()"
							onmouseout="mclosetime()">
							<a href="#">已买商品</a> <a href="#">我的上新</a> <a href="#">我的优惠</a>
						</div></li>
					<li><a href="#" onmouseover="mopen('m2')"
						onmouseout="mclosetime()">商品收藏</a>
						<div id="m2" onmouseover="mcancelclosetime()"
							onmouseout="mclosetime()">
							<a href="#">卖家收藏</a> <a href="#">宝贝收藏</a>
						</div></li>
					<li><a href="#" onmouseover="mopen('m3')"
						onmouseout="mclosetime()">账号信息</a></li>
				</ul>
			</div>
		</div>
		<div class="logo">
			<img src="./img/logo.jpg" />
		</div>
		<div class="search">
			<div class="header-search">
				<div class="header-search-fields">
					<form action="" method="get">
						<input class="header-search-box" type="text" name="search" />
						<button class="search-btn">搜索</button>
					</form>
				</div>
			</div>
		</div>
		<div class="qrcode">
			二维码微博微信区域
			<div id="code-site">
				<a href="#"></a>
			</div>
		</div>
	</div>
	<div class="main">
		<div class="login">
			<div class="title">欢迎加入我们</div>
			<form action="reg.action" method="post">
				<div class="uname">
					<span class="logintxt" style="width:45px;">用户名</span> <input
						type="text" name="user.userName" id="userName">
				</div>
				<div class="upwd">
					<span class="logintxt" style="width:45px;">密 码</span> <input
						type="password" name="user.userPassword" id="userPassword">
				</div>
				<div class="upwd">
					<span class="logintxt" style="width:45px;">确认密 码</span> <input
						type="password" name="rePassword" id="reUserPassword">
				</div>
				<div class="upwd">
					<span class="logintxt" style="width:45px;">联系方式</span> <input
						type="text" name="user.userMobile" id="userMobile">
				</div>
				<div class="upwd">
					<span class="logintxt" style="width:45px;">地址</span> <input
						type="text" name="user.userAddress" id="userAddress">
				</div>
				<div>
					<input class="loginbutton" type="submit" value="注册">
				</div>
			</form>
		</div>
	</div>
	<div class="footer">&copy;版权所有 侵权必究</div>
</body>

</html>
