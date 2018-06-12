package com.musicstore.servlet;

import java.io.IOException;
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

public class AdminAlBumListServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		int pageSize=8;//每页大小
		int pageNo=1;//页码
		//当前页码,整数涉及到类型转换，既不能是空也不能是空字符串
		if(request.getParameter("page")!=null&&
				!request.getParameter("page").isEmpty()){
			  pageNo=Integer.parseInt(request.getParameter("page"));
		  }
		String title=request.getParameter("title");
		int gid=0;//类别
		//当前类别
		if(request.getParameter("gid")!=null&&
				!request.getParameter("gid").isEmpty()){
			  gid=Integer.parseInt(request.getParameter("gid"));
		  }
		AlbumBiz albumBiz=new AlbumBizImpl();
		List<Album> albums=albumBiz.getAlbumsByPage(gid, title, pageNo, pageSize);
		int rows=albumBiz.getAlbumRows(gid, title);
		//总页数
		int pageCount=(int)Math.ceil((double)rows/pageSize);//向上取整
		GenreBiz genreBiz=new  GenreBizImpl();
		List<Genre> genres=genreBiz.getAll();
		
		request.setAttribute("albums", albums);
		request.setAttribute("genres", genres);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("page", pageNo);
		request.setAttribute("title", title);
		request.setAttribute("gid", gid);
		//带参跳转压面
		request.getRequestDispatcher("album_management.jsp").forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
