<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>收货信息</title>
	<link type="text/css" rel="Stylesheet" href="style/front.css"/>
	<script type="text/javascript" src="/MusicStore/script/jquery-1.4.1.js"></script>
	<style type="text/css">
		.order_txt{width:500px;}
	</style>
  </head>
  
  <body>
    <div id="wrapper">
   	 	<%@ include file="../shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="../shared/front_sidebar.jsp" %>
    		<div id="main">
    			<h3 id="main-title">订单明细</h3>
				<table id="shoppingCart">
					<tr>
						<th>唱片</th><th>单价</th><th>数量</th><th>小计</th>
					</tr>
					<c:forEach var="item" items="${sessionScope.cart.items }">
					<tr>
						<td>${item.title }</td>
						<td>${item.price }</td>
						<td>${item.quantity }</td>
						<td>${item.subTotal }</td>
					</tr>
					</c:forEach>

					<tr>
						<td></td><td></td><td>合计:${sessionScope.cart.total }</td><td></td><td></td>
					</tr>
				</table>
				<h3 id="main-title">收货人信息</h3>
				<form action="ConfirmBuyServlet" method="get">
				<table>
					<tr><td>收货人：</td><td><input type="text" name="consignee" value="${sessionScope.user.username }" class="order_txt" /></td></tr>
					<tr><td>联系地址：</td><td><input type="text" name="address" value="${sessionScope.user.address }" class="order_txt" /></td></tr>
					<tr><td>联系电话：</td><td><input type="text" name="phone" value="${sessionScope.user.phone }" class="order_txt" /></td></tr>
					<tr><td>Email：</td><td><input type="text" name="email" value="${sessionScope.user.email }" class="order_txt" /></td></tr>
					<tr><td><input type="submit" value="确定购买" /></td></tr>
				</table>
				</form>
    		</div>
    		<div class="clearBoth"></div>
    	</div>
    	<%@ include file="../shared/front_footer.jsp" %>
    </div>
  </body>
</html>