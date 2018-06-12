package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.UserBiz;
import com.musicstore.biz.impl.UserBizImpl;

public class CheckUsernameServlet extends HttpServlet {
	//接受用户输入的username，输出true/false
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		String username=request.getParameter("username");//接受用户输入的username
		UserBiz userBiz=new UserBizImpl();
		boolean flag=userBiz.checkUsername(username);
		PrintWriter out=response.getWriter();
		out.write(String.valueOf(flag));
		/*if(userBiz.checkUsername(username)==false){
			response.sendRedirect("index.jsp");
		}else {
			
		}*/
		
	}

}
