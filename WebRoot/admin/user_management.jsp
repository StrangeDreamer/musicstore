<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>Music Store 后台商品编辑</title>
	<link type="text/css" rel="Stylesheet" href="../style/admin.css"/>
  </head>
  <body>
    <div id="wrapper">
		<%@ include file="../shared/admin_header.jsp" %>
    	<div id="content">
    		<div id="content-title">
				<h3>用户管理</h3>
			</div>
			<div id="content-main">
				<table id="user-list">
					<tr><th>用户名</th><th>姓名</th><th>地址</th><th>电话</th><th>Email</th><th>删除</th></tr>
					
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><a href="">删除</a></td>
					</tr>
				
				</table>
			</div>
    	</div>
    	<%@ include file="../shared/admin_footer.jsp" %>
    </div>
  </body>
</html>