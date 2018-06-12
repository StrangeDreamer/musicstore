<%@page import="com.musicstore.biz.AlbumBiz"%>
<%@page import="com.musicstore.biz.impl.AlbumBizImpl"%>
<%@page import="com.musicstore.entity.Album"%>
<%@page import="com.musicstore.dao.impl.AlbumDaoImpl"%>
<%@page import="com.musicstore.dao.AlbumDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>欢迎光临 Music Store</title>
	<link type="text/css" rel="Stylesheet" href="style/front.css"/>
	<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
  </head>
  
  <body>
<%--   <%	AlbumBiz albumDao=new AlbumDaoImpl();
  	/* 	List<Album> albums=albumDao.getHotAlbums(9); */
  		List<Album> albums=albumDao.getAlbumsByPage(pageNo, pageSize)
  		request.setAttribute("abs", albums);
   %> --%>
 <!--   数据处理 -->
    <%AlbumBiz albumBiz=new AlbumBizImpl();
  List<Album> albums=albumBiz.getAlbumsByPage(0,null,1, 9);
  request.setAttribute("albums", albums); %>
    <div id="wrapper">
   	 	<%@ include file="shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="shared/front_sidebar.jsp" %>
    		<div id="main">
    			<h3 id="main-title">最新热销唱片</h3>
    			<div id="hotAlbums">
    				<c:forEach var="album" items="${albums}">
					<dl class="hotAlbumsItem">
	    				<dt>
	    					<a href="album.jsp?id=${album.id}"><img src="CoverImages/${album.id}.jpg" alt=""/></a>
	    				</dt>
	    				<dd>${album.title}</dd>
	    			</dl>
	    			</c:forEach>
    			</div>
    		</div>
    		<div class="clearBoth"></div>
    	</div>
    	<%@ include file="shared/front_footer.jsp" %>
    </div>
  </body>
</html>
