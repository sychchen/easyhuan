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
<meta name="renderer" content="webkit">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="<%=basePath%>res/css/main.css">
<link rel="stylesheet" href="<%=basePath%>res/css/lrtk.css">
<link rel="stylesheet" href="<%=basePath%>res/css/search.css">
<script src="<%=basePath%>res/js/jquery.js"></script>
<script src="<%=basePath%>res/js/jdt.js"></script><%-- 
<script src="<%=basePath%>res/js/jframe.js"></script> --%>
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
						<li><a href="<%=basePath%>login.jsp">亲，请登陆</a></li>
					</c:if>
					<c:if test="${!empty sessionScope.currUser.userName }">
						<li><a href="#">欢迎:${sessionScope.currUser.userName }</a></li>
						<li><a href="<%=basePath%>index.jsp">退出</a></li>
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
			<a href="<%=basePath%>./index.jsp"><img
				src="<%=basePath%>img/logo.jpg" /></a>
		</div>
		<div class="uc_op">
			<ul>
				<li style="background-color: red;"><a href="<%=basePath%>uc/bought.jsp"
					target="content">已买宝贝</a></li>
				<li style="background-color: #00008B;"><a href="<%=basePath%>uc/published.jsp"
					target="content">已发布宝贝</a></li>
				<li style="background-color: blue;"><a href="<%=basePath%>uc/contact.jsp"
					target="content">联系客服</a></li>
			</ul>
		</div>
	</div>


	<div class="main">
		<iframe name="content" src="<%=basePath%>uc/welcome.jsp"
			style="width:100%;min-height:566px;"></iframe>
	</div>
	<div class="footer">&copy;版权所有 侵权必究</div>
</body>
</html>