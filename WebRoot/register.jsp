<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>欢迎光临 Music Store</title>
	<link type="text/css" rel="Stylesheet" href="style/front.css"/>
	<script type="text/javascript" src="script/jquery-1.4.1.js"></script>
	<script type="text/javascript">
	//检查用户名是否重复 ajax
	function checkUsername()//用户名不能为空 ，error文本框清空，不提示错误消息，代表通过
	{
	var username=$("#username").val();
	if(username=="")
	{
	  $("#username").next(".error").text("用户名不能为空");
	  return false;
	}
	else
	{
	 $("#username").next(".error").text("");
	  return true;
	}
	
	} 
	function checkPwd()//不为空 长度
	{
	 var password=$("#password").val();
		if(password=="")
		{
		 $("#password").next(".error").text("密码不能为空");
		 return false;
		}else if(password.length<6)
		{ 
		 $("#password").next(".error").text("密码长度不能少于6位");//.选择器 class
		 return false;
		}else
		{ 
		 $("#password").next(".error").text("");
		 return true;
		}
	}
	function pwdAgain()
	{
	 var pwda=$("#passwordAgain").val();//文本框的值，#选择器id
	 var password=$("#password").val();
	 if(pwda!=password)
	 {
	  $("#passwordAgain").next(".error").text("密码不一致");
	  return false;
	 }
	 else
	 {
	  $("#passwordAgain").next(".error").text("");
	  return true;
	 }
	}
	function checkPhone()
	{
	  var phone=$("#phone").val();
	  if(phone=="")
	  {
	    $("#phone").next(".error").text("电话不能为空");
	    return false;
	  }else
	  {
	    var reg=/^1\d{10}$/;  ///^$/  字符串整个匹配 限定字符串完全匹配
	    if(reg.test(phone))//验证是匹配的
	    {
	      $("#phone").next(".error").text("");
	      return true;
	    }else
	    {
	      $("#phone").next(".error").text("格式不正确");
	      return false;
	    }
	  }
	}
	
	function checkEmail()
	{
	  var email=$("#email").val();
	  var reg=/^\w+@\w+\.[a-zA-Z]{2,3}$/;
	  if(reg.text(email))
	  {
	    $("#email").next(".error").text("");
	      return true;
	  }else 
	  {
	    $("#email").next(".error").text("email格式不合法");
	    return false;
	  }
	}
	
	
	//事件注册
	$(function(){
      $("#btnSubmit").click(function(){
      return checkUsername()&&checkPwd()&&pwdAgain()&&checkPhone();
      });
	})
	
	
	$(function(){
	  $("#username").blur(function(){
	  var username=$("#username").val();
	  if(username!=null){
	    $.ajax({
	      url:"CheckUsernameServlet?username="+username,
	      type:"get",
	      dataType:"text",
	      success:function(data)//返回结果表明数据库中是否已经存在该用户名
	      {
	        //alert(data);
	        if(data=="true"){
	          $("#username").next(".error").text("用户名已经存在");

	        }else
	        {
	          $("#username").next(".error").text("用户名可用");
	        }
	      }
	    });  
	  }
	  });
	})
	
	
	
	//正则表达式验证电话号码，13，15，17打头，11位数字，字符串匹配
	/* [0-9]  此位置就是个数字   \d
	[a-2A-Z] 此位置就是个字母  \w
	\d{18} [0-9]{18}   18位数字
	1\d{10}  以1开头的11位电话号码
	\d{1,}   \d+   至少一位数字
	\w+  至少一位字母或数字
	where name like "%[接，学]%" */
	
		
	</script> 
  </head>
  
  <body>
    <div id="wrapper">
   	 	<%@ include file="shared/front_header.jsp" %>
    	<div id="content">
    		<%@ include file="shared/front_sidebar.jsp" %>	
    		<div id="main">
    			<h3 id="main-title">用户注册</h3>
    			<form id="" action="registerAction.jsp" method="post">
    			<table>
    				<tr>
    					<td>用户名：</td>
    					<td><input class="txt" type="text" id="username" name="username" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>密码：</td>
    					<td><input class="txt" type="password" id="password" name="password" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>密码确认：</td>
    					<td><input class="txt" type="password" id="passwordAgain" name="passwordAgain" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>姓名：</td>
    					<td><input class="txt" type="text" id="name" name="name" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>地址：</td>
    					<td><input class="txt" type="text" id="address" name="address" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>电话：</td>
    					<td><input class="txt" type="text" id="phone" name="phone" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>Email：</td>
    					<td><input class="txt" type="text" id="email" name="email" /> <label class="error"></label></td>
    				</tr>
    				<tr>
    					<td></td>
    					<td>
    						<input id="btnSubmit" type="submit" name="btnSubmit" value="注册" />
    					</td>
    				</tr>
    				<tr>
    					<td colspan="2"></td>
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