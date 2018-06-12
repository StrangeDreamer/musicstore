<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>Music Store 后台商品管理</title>
	<link type="text/css" rel="Stylesheet" href="../style/admin.css"/>
	<script type="text/javascript" src="../script/jquery-1.4.1.js"></script>
	<script type="text/javascript">
	
	</script>
  </head>
  
  <body>
    <div id="wrapper">&nbsp; 
		<!-- 页眉 ,jsp指令include file-->
		<%@ include file="../shared/admin_header.jsp" %>
    	<div id="content">
    		<div id="content-title">
				<h3>商品管理</h3>
			</div>
			<div id="content-main">
				<!-- 唱片分类,唱片名称 -->
				<!-- 带条件查询 -->
				<form action="AdminAlBumListServlet" method="get">
				<select name="gid">
					<option value="0">所有分类</option>
					<c:forEach var="genre" items="${genres }">
					<!-- 下拉框的gid又传回来 -->
					<c:if test="${gid==genre.id }">
						<option value="${genre.id }" selected="selected">${genre.name }</option>
					</c:if>
					<c:if test="${gid!=genre.id }">
						<option value="${genre.id }">${genre.name }</option>
					</c:if>
						
					</c:forEach>
				</select>
				<!-- 把选择的title又传回来 -->
				<input type="text" name="title" value="${title }"/>
				<input type="submit" name="查询"/>
				</form>
				<hr/>
				<a href="AlbumEditServlet">添加新唱片</a>
				<table id="album-list">
					<tr><th>唱片名称</th><th>歌手</th><th>单价</th><th>编辑</th></tr>
					<c:forEach var="album" items="${albums }">
						<tr>
							<td>${album.title }</td>
							<td>${album.artist }</td>
							<td>${album.price }</td>
							<td><a href="AlbumEditServlet?id=${album.id }">编辑</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td></td>
						<td><a href="AdminAlBumListServlet?page=1">第一页</a>
						<!-- 传过来的当前页码判断 -->
						<c:if test="${page>1 }">
						<!-- 防止查询条件丢失 -->
							<a href="AdminAlBumListServlet?page=${page-1 }&gid=${gid}&title=${title}">上一页</a>
						</c:if>
						<c:if test="${page<pageCount }">
							<a href="AdminAlBumListServlet?page=${page+1 }&gid=${gid}&title=${title}">下一页</a>
						</c:if>
						<a href="AdminAlBumListServlet?page=${pageCount }">末页</a></td>
						<td>共${pageCount}页，第${page }页</td>
						<td></td>
					</tr>
				</table>
				
					
	    		
			</div>
    	</div>
    	<!-- 页脚 -->
    	<%@ include file="../shared/admin_footer.jsp" %>
    </div>
  </body>
</html>
