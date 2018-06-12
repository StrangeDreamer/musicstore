package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.AlbumBiz;
import com.musicstore.biz.impl.AlbumBizImpl;
import com.musicstore.entity.Album;

public class AlbumSaveServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//插入或修改用post
		response.setContentType("text/html;charset=utf-8");
		//解决乱码
		request.setCharacterEncoding("utf-8");
		AlbumBiz albumBiz=new AlbumBizImpl();
		Album album=new Album();
		if(request.getParameter("id")!=null&&!request.getParameter("id").isEmpty()){
		int id=Integer.parseInt(request.getParameter("id"));
		
		album=albumBiz.getAlbumById(id);
		album.setArtist(request.getParameter("artist"));
		String date=request.getParameter("dateReleased");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			album.setDateReleased(sdf.parse(date));
		} catch (Exception e) {
			e.printStackTrace();
		}
		album.setDescription(request.getParameter("description"));
		album.setGenreId(Integer.parseInt(request.getParameter("genreId")));
		album.setPrice(new BigDecimal(request.getParameter("price")));
		album.setTitle(request.getParameter("title"));
		album.setStock(Integer.parseInt(request.getParameter("stock")));
		int count=albumBiz.updateAlbum(album);
		if(count>0){
			response.sendRedirect("AdminAlBumListServlet");
		}
		}else {
			
			album.setArtist(request.getParameter("artist"));
			String date=request.getParameter("dateReleased");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				album.setDateReleased(sdf.parse(date));
			} catch (Exception e) {
				e.printStackTrace();
			}
			album.setDescription(request.getParameter("description"));
			album.setGenreId(Integer.parseInt(request.getParameter("genreId")));
			album.setPrice(new BigDecimal(request.getParameter("price")));
			album.setTitle(request.getParameter("title"));
			album.setStock(Integer.parseInt(request.getParameter("stock")));
			int count=albumBiz.addAlbum(album);
			if(count>0){
				response.sendRedirect("AdminAlBumListServlet");
			}
			
		}
		
	}

}
