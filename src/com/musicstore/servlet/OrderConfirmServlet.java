package com.musicstore.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.entity.User;

public class OrderConfirmServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		User user=(User) request.getSession().getAttribute("user");
		if(user!=null){
			response.sendRedirect("order_confirm.jsp");
		}else {
			response.sendRedirect("login.jsp");
		}
		
	}

}
