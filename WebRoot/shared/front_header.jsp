<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.musicstore.entity.User"%>
 	 	<div id="header">
	  		<div id="header-logo" >
	  			<a href="index.jsp"><img src="style/images/logo.png" alt=""></img></a>
	  		</div>
	  		<div id="header-login"><a href="login.jsp">登录</a> | <a href="register.jsp">注册</a></div>
	  		<div class="clearBoth"></div>
	  		<div id="header-search">
	  			<form id="searchForm" action="AlbumListServlet" method="get">
	  			<input type="hidden" value="${gid }" name="gid"/>
	  			<input id="keyword" name="title" type="text" value="${title }" />
	  			<input id="btnSearch" type="submit" value="搜索" />
	  			</form>
	  		</div>
	  		<div id="header-nav">
	  			<ul>
	  				<li><a href="index.jsp">首页</a></li>
	  				<li><a href="album_list.jsp">商店</a></li>
	  				<li><a href="cart.jsp">购物车</a></li>
	  				<li><a href="edit_user.jsp">个人信息</a></li>
	  			</ul>
	  			<label id="welcome">
	  				
	  				您好，<%if(session.getAttribute("user")!=null) {%>
	  				<%=((User)session.getAttribute("user")).getUsername()%>
	  				<% }%> 
	  			</label>
	  		</div>
	  	</div>