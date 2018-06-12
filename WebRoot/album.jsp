<%@page import="com.musicstore.entity.Album"%>
<%@page import="com.musicstore.biz.impl.AlbumBizImpl"%>
<%@page import="com.musicstore.biz.AlbumBiz"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>唱片详情</title>
	<link type="text/css" rel="Stylesheet" href="style/front.css"/>
	<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
  </head>
  <%
    AlbumBiz albumBiz=new AlbumBizImpl();
    int id=Integer.parseInt(request.getParameter("id"));
    Album album=albumBiz.getAlbumById(id);
    request.setAttribute("album", album);
    
   %>
  
  <body>
    <div id="wrapper">
   	 	<%@ include file="shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="shared/front_sidebar.jsp" %>
    		<div id="main">
    			<h3 id="main-title">唱片信息</h3>
    			<table id="albumDetail">
    				<tr>
    					<td rowspan="5" id="albumDetail-image"><img src="CoverImages/${album.id }.jpg" alt="" /></td>
    					<td class="albumDetail-label">${album.title }</td>
    					<td id="albumDetail-title">￥:${album.price }</td>
    				</tr>
    				<tr>
    					<td class="albumDetail-label">歌手：</td>
    					<td>${album.artist }</td>
    				</tr>
    				<tr>
    				   	<td class="albumDetail-label">上映时间：</td>
    					<td>${album.dateReleased }</td>
    				</tr>
    				<tr>
    					<td class="albumDetail-label">详细信息：</td>
    					<td>${album.description }</td>
    				</tr>
    				<tr>
    				   	<td class="albumDetail-label"></td>
    					<td>
    						<form action="AddCartServlet">
    						<input type="hidden" name="id" value="${album.id }"/>
    						<input type="submit" value="购买"/>
    						</form>
    					</td>
    				</tr>
    			</table>
    		</div>
    		<div class="clearBoth"></div>
    	</div>
    	<%@ include file="shared/front_footer.jsp" %>
    </div>
  </body>
</html>
