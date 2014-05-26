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

<title>Document</title>
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
<%-- 
<script src="<%=basePath%>res/js/jframe.js"></script> --%>
</head>

<body>
	<script>
		(function() {
			var a = document.body;
			window.screen.width > 1024 ? a.className = "w1190"
					: a.className = "w990";
			if (${ (empty sessionScope.currUser) ? false : sessionScope.currUser})
				alert("您已退出。");
		})();
	</script>
	<div class="header">
		<div class="loginstatus">
			<div class="banner-login">
				<ul>
					<c:if test="${empty sessionScope.currUser.userName }">
						<li><a href="login.jsp" target="mainframe">亲，请登陆</a></li>
					</c:if>
					<c:if test="${!empty sessionScope.currUser.userName }">
						<li><a href="<%=basePath%>#">欢迎:${sessionScope.currUser.userName }</a></li>
						<li><a href="<%=basePath%>./index.jsp">退出</a></li>
					</c:if>
					<c:if test="${empty sessionScope.currUser.userName }">
						<li><a href="<%=basePath%>register.jsp">免费注册</a></li>
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



		<!-- 		<div class="nav clear"></div> -->
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
		<div class="category">
			<div class="left">
				<!-- 分类区	 -->
				<div class="t0">
					<a href="#">二手商品分类</a>
				</div>
				<div class="t1">
					<span><a href="#">闲置数码</a></span> <span class="tt1"> <a
						href="#">手机</a> | <a href="#">相机</a> | <a href="#">笔记本</a></span>
				</div>
				<div class="t1">
					<span><a href="#">闲置母婴</a></span> <span class="tt1"> <a
						href="#">童装</a> | <a href="#">宝宝用品</a> | <a href="#">玩具</a></span>
				</div>
				<div class="t1">
					<span><a href="#">家居日用</a></span> <span class="tt1"> <a
						href="#">家具</a> | <a href="#">家纺</a> | <a href="#">日用</a></span>
				</div>
				<div class="t1">
					<span><a href="#">鞋服佩饰</a></span> <span class="tt1"> <a
						href="#">女装</a> | <a href="#">男装</a> | <a href="#">佩饰</a></span>
				</div>
				<div class="t1">
					<span><a href="#">闲置母婴</a></span> <span class="tt1"> <a
						href="#">童装</a> | <a href="#">宝宝用品</a> | <a href="#">玩具</a></span>
				</div>
				<div class="t1">
					<span><a href="#">家居日用</a></span> <span class="tt1"> <a
						href="#">家具</a> | <a href="#">家纺</a> | <a href="#">日用</a></span>
				</div>
				<div class="t1">
					<span><a href="#">鞋服佩饰</a></span> <span class="tt1"> <a
						href="#">女装</a> | <a href="#">男装</a> | <a href="#">佩饰</a></span>
				</div>
			</div>
			<div class="focus">
				<div class="focusbox">
					<div class="focusimg">
						<ul class="fimglist clearfix">
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/Gintama.jpg" title="懒人图库"></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/SteinsGate.jpg" title="懒人图库"></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/Unicorn.jpg" title="懒人图库"></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/Berserk.jpg" title="懒人图库"></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/SummerWars.jpg" title="懒人图库"></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/akito.jpg" title="懒人图库"></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/EVA.jpg" title="懒人图库"></a></li>
						</ul>
					</div>
					<div class="focustool">
						<ul class="ftoollist clearfix">
							<!--通过控制该ul的left值来实现列表的左右移动，增量为931px-->
							<li class="on"><a href="http://www.lanrentuku.com/"><img
									src="./res/images/Gintama_s.jpg">
									<p class="imgname">银魂剧场版</p>
									<p class="imgshortcat">永远的万事屋</p></a></li>
							<!--当前项时为该li添加class: on-->
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/SteinsGate_s.jpg">
									<p class="imgname">石头门剧场版</p>
									<p class="imgshortcat">负荷领域的既视感</p></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/Unicorn_s.jpg">
									<p class="imgname">高达UC</p>
									<p class="imgshortcat">Gundam Unicorn</p></a></li>
							<li><a href="http://www.lanrentuku.com/"><img
									src="./res/images/Berserk_s.jpg">
									<p class="imgname">剑风传奇</p>
									<p class="imgshortcat">黄金时代</p></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="right">右侧区域</div>
		</div>

		<div class="nav clear"></div>
		<div class="show">
			<ul>
				<li style="width: 20px;color:white;">宝贝随机推荐</li>
				<li><a href="#"><img src="" alt="">img111</img></a></li>
				<li><a href="#"><img src="" alt="">img2</img></a></li>
				<li><a href="#"><img src="" alt="">img3</img></a></li>
				<li><a href="#"><img src="" alt="">img4</img></a></li>
				<li><a href="#"><img src="" alt="">img5</img></a></li>
			</ul>
		</div>
	</div>
	<div class="footer">&copy;版权所有 侵权必究</div>

</body>
<%
	session.removeAttribute("exist");
%>
</html>
