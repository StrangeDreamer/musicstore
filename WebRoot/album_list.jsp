<%@page import="com.musicstore.entity.Album"%>
<%@page import="com.musicstore.biz.impl.AlbumBizImpl"%>
<%@page import="com.musicstore.biz.AlbumBiz"%>
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
    <div id="wrapper">
   	 	<%@ include file="shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="shared/front_sidebar.jsp" %>
    		<div id="main">
				<h3 id="main-title">唱片列表</h3>
    			<c:forEach var="album" items="${albums}">
   				<table class="albumItem">
   					<tr>
   						<td rowspan="3" class="albumItem-image"><img src="CoverImages/${album.id}.jpg" alt="" /></td>
   						<td colspan="2" class="albumItem-title">
   							<a href="album.jsp?id=${ album.id}">${album.title}</a>
   						</td>
   					</tr>
   					<tr>
   						<td class="albumItem-artist"><strong>歌手：${album.artist}</strong></td>
   						<td class=".albumItem-price"><strong>定价：${album.price}</strong>￥</td>
   					</tr>
   					<tr>
   						<td colspan="2">
   						${album.description}
   						</td>
   					</tr>
   				</table></c:forEach>	
    			
    			<hr/>
    			<c:if test="${page>1}">
    				<a href="AlbumListServlet?page=${page-1 }&gid=${gid}&title=${title}">上一页</a></c:if>
    			
    			<c:if test="${page<pageCount }">
	    			<a href="AlbumListServlet?page=${page+1 }&gid=${gid}&title=${title}">下一页</a></c:if>
	    		
	    	
	    			&nbsp;共${pageCount}页，第${page }页。
	    		
    		</div>
    		<div class="clearBoth"></div>
    	</div>
    	<%@ include file="shared/front_footer.jsp" %>
    </div>
  </body>
</html>
