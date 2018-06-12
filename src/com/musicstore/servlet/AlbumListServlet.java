package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.AlbumBiz;
import com.musicstore.biz.impl.AlbumBizImpl;
import com.musicstore.entity.Album;

public class AlbumListServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;chaeset=utf-8");
		  //刚进入页面的个参数初始值
		  int gid=0; //用户没有输入任何查询条件
		  if(request.getParameter("gid")!=null){
			  gid=Integer.parseInt(request.getParameter("gid"));
		  }
		  String title =request.getParameter("title");
		  int pageSize=4;  //每页规定4个唱片显示
		  int pageNo=1;   //从第一页开始
		  if(request.getParameter("page")!=null){
			  pageNo=Integer.parseInt(request.getParameter("page"));
		  }
		  AlbumBiz albumBiz=new AlbumBizImpl();
		  //每页记录
		  List<Album> albums=albumBiz.getAlbumsByPage(gid,title,pageNo, pageSize);
		  //总记录数
		  int rows=albumBiz.getAlbumRows(gid,title);
		  //根据以上2个参数得到总页数
		  int pageCount=(int)Math.ceil((double)rows/pageSize);//向上取整
		  //一次请求数据就会丢失
		  request.setAttribute("pageCount", pageCount);
		  request.setAttribute("page", pageNo);
		  request.setAttribute("albums", albums);
		  //类别不能丢失，当点击下一页时，才能在点击下一页时是该类的唱片的下一页
		  request.setAttribute("gid", gid);
		  request.setAttribute("title", title);
		  request.getRequestDispatcher("album_list.jsp").forward(request,response);
	}

}
