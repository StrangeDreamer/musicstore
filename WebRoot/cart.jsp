<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>购物车</title>
	<link type="text/css" rel="Stylesheet" href="style/front.css"/>
	<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
	<script >
		$(function(){
		  $(".del").click(function(){
		  return confirm("确认删除吗？");
		});
		
				$(".update").click(function(){
		  var id=$(this).attr("data");
		  var quantity=$(this).parents("tr").find(".quantity").val();
		/*   alert(id);
		  alert(quantity); */
		  window.location.href="UpdateCartServlet?id="+id+"&quantity="+quantity;
		});
		
		
		});/* 匿名函数 */
				
	</script>
  </head>
  
  <body>
    <div id="wrapper">
   	 	<%@ include file="shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="shared/front_sidebar.jsp" %>
    		<div id="main">
    			<h3 id="main-title">购物车</h3>
    			
				<table id="shoppingCart">
				
					<tr>
						<th>唱片</th><th>单价</th><th>数量</th><th>小计</th><th>修改</th><th>删除</th>
					</tr>
					<c:forEach var="item" items="${sessionScope.cart.items}">
					<tr>
						<td>${item.title }</td>
						<td>${item.price }</td>
						

						<!-- <form action="UpdateCartServlet" method="post"> 一般表单提交采用影藏与-->
						<!-- text select redio password submit -->
						<td><input type="text" value="${item.quantity }" class="quantity"></input></td>
						<td>${item.subTotal}</td>
						<td>
						<%-- <input type="hidden" name="id" value="${item.id }"/> --%>
						<input type="submit" value="修改" data="${item.id }" class="update"/>
						<!-- </form> -->
						</td>
						<td>
						<form action="RemoveCartItemServlet" method="get">
						<input type="hidden" name="id" value="${item.id }"/>
								<input type="submit" value="删除" class="del"/><!-- jquery支持各种选择器   id选择其是唯一的，只能得到一个,其他选择器回个到遗嘱元素-->
								
						</form>
						</td>
					</tr>
					</c:forEach>
					<tr>
						<td></td><td></td><td></td><td>合计:${sessionScope.cart.total } </td><td></td><td></td>
					</tr>
					
				</table>
				<form id="" action="OrderConfirmServlet" method="get">
				<input id="orderSubmit" type="submit" value="订单确认" />
				</form>
				<label id="nullCartTips">您的购物车是空的。</label>
			
    		</div>
    		<div class="clearBoth"></div>
    	</div>
    	<%@ include file="shared/front_footer.jsp" %>
    </div>
  </body>
</html>
