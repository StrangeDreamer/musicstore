<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>欢迎光临 Music Store</title>
	<link type="text/css" rel="Stylesheet" href="style/front.css"/>
	<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
	<script type="text/javascript">
	function checkUsername(){
		var username=$("#username").val();
		if(username==""){
			$("#username").next(".error").text("用户名不能为空");
			return false;
			}
		else{
			$("#username").next(".error").text("");
			return true;
			}
	}

	function checkPassword(){
		var pwd=$("#password").val();
		if(pwd==""){
			$("#password").next(".error").text("密码不能为空");
			return false;
			}
		else{
			$("#password").next(".error").text("");
			return true;
			}
	}
		//注册
	$(function(){
		$("#username").blur(checkUsername);
		$("#password").blur(checkPassword);
	})
	

		
	</script>
  </head>
  
  <body>
    <div id="wrapper">
   	 	<%@ include file="shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="shared/front_sidebar.jsp" %>	
    		<div id="main">
    			<h3 id="main-title">用户登录</h3>
    			<form id="" action="loginAction.jsp" method="post"><!-- 默认是get,不安全 -->
    			<table><!-- 在写action时要带  .jsp如果是jsp控制业务 -->
    				<tr>
    					<td>用户名：</td>
    					<td><input class="txt" type="text" id="username" name="username" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>密码：</td>
    					<td><input class="txt" type="password" id="password" name="password" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td></td>
    					<td>
    						<input id="btnSubmit" type="submit" name="btnSubmit" value="登录" />
    						<a href="register.jsp">注册</a>
    					</td>
    				</tr>
    				<tr>
    					<td colspan="2" align="center">
    					<label class="error">${error}</label>
    					</td>
    				</tr>
    			</table>
    			</form>
    		</div>
    		<div class="clearBoth"></div>
    	</div>
    	<%@ include file="shared/front_footer.jsp" %>
    </div>
  </body>
</html>
