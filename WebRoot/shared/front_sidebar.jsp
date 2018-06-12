<%@page import="com.musicstore.biz.impl.GenreBizImpl"%>
<%@page import="com.musicstore.biz.GenreBiz"%>
<%@page import="com.musicstore.entity.Genre"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    GenreBiz genreBiz=new GenreBizImpl();
    List<Genre> genres=genreBiz.getAll();
    request.setAttribute("genres", genres);
 %>
			<div id="sidebar">
	            <h3>唱片分类</h3>
	            <ul class="categories">
	            	<c:forEach var="genre" items="${genres}" varStatus="st">
	            	<c:if test="${st.index%2!=0 }">
	            	<li><a href="AlbumListServlet?gid=${genre.id }&title=${title}">${genre.name}</a></li></c:if>
	            	<c:if test="${st.index%2==0 }">
	            	<li><a class="even" href="AlbumListServlet?gid=${genre.id }&title=${title}">${genre.name}</a></li> </c:if>
	            	
	            	
	            	</c:forEach>
		      
	            </ul>
            </div>