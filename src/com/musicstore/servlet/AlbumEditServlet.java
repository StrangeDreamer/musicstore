package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.AlbumBiz;
import com.musicstore.biz.GenreBiz;
import com.musicstore.biz.impl.AlbumBizImpl;
import com.musicstore.biz.impl.GenreBizImpl;
import com.musicstore.entity.Album;
import com.musicstore.entity.Genre;

public class AlbumEditServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		AlbumBiz albumBiz=new AlbumBizImpl();
		GenreBiz genreBiz=new GenreBizImpl();
		Album album=new Album();

		List<Genre> genres = genreBiz.getAll();
		request.setAttribute("genres", genres);
		if(request.getParameter("id")!=null&&!request.getParameter("id").isEmpty()){

			int id=Integer.parseInt(request.getParameter("id"));
			album=albumBiz.getAlbumById(id);
			request.setAttribute("album", album);
			request.getRequestDispatcher("album_edit.jsp").forward(request, response);
		}else {
				System.out.println("新增唱片");
				request.getRequestDispatcher("album_edit.jsp").forward(request, response);
			}
		
		
	}

}
