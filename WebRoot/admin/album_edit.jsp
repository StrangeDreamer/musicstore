<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>Music Store 后台商品编辑</title>
	<link type="text/css" rel="Stylesheet" href="/musicstore/style/admin.css"/>
	<script type="text/javascript" src="/musicstore/script/jquery-1.4.1.js"></script>
	<script type="text/javascript">
		
	</script>
	<style type="text/css">
		#albumEdit{
			margin:0 0 0 40px;
			line-height:2;
		}
		#albumEdit input.txt, #albumEdit select, #albumEdit textarea.txt{
			width:200px;
		}
		#albumEdit img{
			width:100px;
		}
	</style>
  </head>
  
  <body>
    <div id="wrapper">&nbsp; 
		<jsp:include page="../shared/admin_header.jsp"></jsp:include>
    	<div id="content">
    		<div id="content-title">
				<h3>添加商品</h3>
			</div>
			<div id="content-main">
				<form  action="AlbumSaveServlet" method="post">
				<input type="hidden" value="${album.id }"name="id"/>
			
    			<table id="albumEdit">
    				<tr>
    					<td>唱片名称：</td>
    					<td><input class="txt" type="text" name="title" value="${album.title }"/><label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>唱片封面：</td>
    					<td>
   						<img src="../CoverImages/${album.id}.jpg" alt="" /><br/>
    					
    					
    					
    					<input class="txt" type="file"  /><label class="error"></label>
    					</td>
    				</tr>
    				<tr>
    					<td>歌手：</td>
    					<td>
    					<input class="txt" type="text" name="artist" value="${album.artist }" /><label class="error"></label>
    					</td>
    				</tr>
    				<tr>
    					<td>唱片分类：</td>
    					<td>
    						<select name="genreId">
    						<c:forEach var="genre" items="${genres }">
    							<c:if test="${genre.id==album.genreId }">
    								<option value="${genre.id }" selected="selected">${genre.name }</option>
    							</c:if>
    							<c:if test="${genre.id!=album.genreId }">
    								<option value="${genre.id }" >${genre.name }</option>
    							</c:if>
    							
    						</c:forEach>
    						
    						</select>
    					<label class="error"></label></td>
    				</tr>
    				<tr>
    					<td>单价：</td>
    					<td>
    					<input class="txt" type="text"  name="price" value="${album.price }" /><label class="error"></label>
    					</td>
    				</tr>
    				<tr>
    					<td>库存：</td>
    					<td>
    					<input class="txt" type="text"  name="stock" value="${album.stock }" /><label class="error"></label>
    					</td>
    				</tr>
    				<tr>
    					<td>发行日期：</td>
    					<td>
    					<input class="txt" type="text"  name="dateReleased" value="${album.dateReleased }"/><label class="error"></label>
    					</td>
    				</tr>
    				<tr>
    					<td>唱片详细信息：</td>
    					<td><textarea name="description" style="width:400px; height:120px;" >
    						${album.description }
    						</textarea>
    					</td>
    				</tr>
    				<tr>
    					<td></td>
    					<td>
    						<input id="btnSubmit" type="submit" name="btnSubmit" value="保存" />
    					</td>
    				</tr>
    			</table>
    			</form>
			</div>
    	</div>
    	<jsp:include page="../shared/admin_footer.jsp"></jsp:include>
    </div>
  </body>
</html>