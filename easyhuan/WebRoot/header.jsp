<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
	<div class="header">
		<div class="loginstatus">
			<div class="banner-login">
				<ul>
					<c:if test="${empty sessionScope.currUser.userName }">
						<li><a href="<%=basePath%>login.jsp">亲，请登陆</a></li>
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
							<a href="#">已买商品</a> <a href="./uc/publishing.jsp" target="content">我的上新</a>
							<a href="#">我的优惠</a>
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