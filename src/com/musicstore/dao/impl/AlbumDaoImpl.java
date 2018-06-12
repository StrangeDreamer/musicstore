package com.musicstore.dao.impl;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.musicstore.dao.AlbumDao;
import com.musicstore.entity.Album;

public class AlbumDaoImpl extends baseDao implements AlbumDao{

	@Override
	public List<Album> getHotAlbums(int num) {
		// TODO Auto-generated method stub
		List<Album> lstAlbums=new ArrayList<Album> ();
		try {

			openCon();
			String sql="select * from album order by datereleased desc limit ?";//?占位符更好
			ResultSet rSet=executeQuery(sql, null);
			System.out.println(sql);
			while (rSet.next()) {
				Album album=new Album();
				album.setArtist(rSet.getString("artist"));
				album.setDateReleased(rSet.getDate("dateReleased"));
				album.setDescription(rSet.getString("description"));
				album.setGenreId(rSet.getInt("genreId"));
				album.setId(rSet.getInt("id"));
				album.setPrice(rSet.getBigDecimal("price"));
				album.setStock(rSet.getInt("stock"));
				album.setTitle(rSet.getString("title"));
				System.out.print("加入"+rSet.getInt("id")+"号唱片");
				lstAlbums.add(album);
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			closeCon();
			
		}
		return lstAlbums;
	}
	@Override
	public List<Album> getAlbumsByPage(int gid,String title,int pageNo, int pageSize) {
		
		List<Album> lstAlbums=new ArrayList<Album> ();
		try {
			openCon();
			String sql="select * from album where 1=1 ";//?占位符更好
			//参数可变 数组,追加选择条件，arraylist数组列表访问灵活容量动态
			List<Object> paramsList=new ArrayList<Object>();
			if(gid>0){
				sql+=" and genreId = ?";
				paramsList.add(gid);
			}//有种类id就追加
			if(title!=null&&!title.isEmpty()){
				sql+=" and title like ?";
				paramsList.add("%"+title+"%");//模糊查询
			}
			sql+=" limit ?,?";
			paramsList.add((pageNo-1)*pageSize);
			paramsList.add(pageSize);
			//Object[] pObject =new Object []{(pageNo-1)*pageSize,pageSize};
			ResultSet rSet=executeQuery(sql, paramsList.toArray());
			System.out.println(sql+"追加条件genreId为"+gid+" 条件title为 "+title+" 唱片分页");
			while (rSet.next()) {
				Album album=new Album();
				album.setArtist(rSet.getString("artist"));
				album.setDateReleased(rSet.getDate("dateReleased"));
				album.setDescription(rSet.getString("description"));
				album.setGenreId(rSet.getInt("genreId"));
				album.setId(rSet.getInt("id"));
				album.setPrice(rSet.getBigDecimal("price"));
				album.setStock(rSet.getInt("stock"));
				album.setTitle(rSet.getString("title"));
				System.out.print("加入"+rSet.getInt("id")+"号唱片");
				lstAlbums.add(album);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			closeCon();
		}
		return lstAlbums;
	}
	@Override
	public int getAlbumRows(int gid,String title) {

		int count=0;
		try {
			openCon();
			List<Object> paramsList=new ArrayList<Object>();
			String sql="select count(*) from album where 1=1";

			if(gid>0){
				sql+=" and genreId=?";
				paramsList.add(gid);
			}
			if(title!=null&&!title.isEmpty()){
				sql+=" and title like ?";
				paramsList.add("%"+title+"%");//模糊查询
			}
			
			ResultSet rSet=executeQuery(sql, paramsList.toArray() );
			System.out.println(sql+"追加条件genreId为"+gid+" 条件title为 "+title);
			if(rSet.next()){
				count=rSet.getInt(1);
				System.out.println(" 共有"+count+"条记录");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}finally{
			closeCon();
		}
		return count;
	}
	@Override
	public Album getById(int id) {

		Album album=new Album();
		try {
			openCon();
			String sql="select * from album where id = ?";//?占位符更好

			ResultSet rSet=executeQuery(sql, new Object []{id});
			System.out.println(sql+"根据唱片id为"+id+" 查询");
			while (rSet.next()) {
				album.setArtist(rSet.getString("artist"));
				album.setDateReleased(rSet.getDate("dateReleased"));
				album.setDescription(rSet.getString("description"));
				album.setGenreId(rSet.getInt("genreId"));
				album.setId(rSet.getInt("id"));
				album.setPrice(rSet.getBigDecimal("price"));
				album.setStock(rSet.getInt("stock"));
				album.setTitle(rSet.getString("title"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			closeCon();
		}
		return album;
	}
	@Override
	public int updateAlbum(Album album) {
		int count=0;
		try {
			openCon();
			String sql="update album set title=?,artist=?,description=?,price=?,dateReleased=?,genreId=?,stock=? where id=?";
			Object [] paramsObjects=new Object [] {
					album.getTitle(),
					album.getArtist(),
					album.getDescription(),
					album.getPrice(),
					album.getDateReleased(),
					album.getGenreId(),
					album.getStock(),
					album.getId()
			};
			count=excuteUpdate(sql, paramsObjects);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeCon();
		}
		return count;
	}
	
	
/*	public static void main(String[] args) {
		AlbumDao albumDao=new AlbumDaoImpl();
		//System.out.println(albumDao.getHotAlbums(9).size());
		System.out.println(albumDao.getAlbumsByPage(1,null,1,5).size());
		System.out.println(albumDao.getAlbumRows(1,null));
	}*/
	@Override
	public int addAlbum(Album album) {
		int count=0;
		try {
			openCon();
			String sql="insert into album(genreId,title,artist,price,stock,dateReleased,description) values(?,?,?,?,?,?,?)";
			Object [] paramsObjects=new Object [] {
					album.getGenreId(),
					album.getTitle(),
					album.getArtist(),
					album.getPrice(),
					album.getStock(),
					album.getDateReleased(),
					album.getDescription(),
			};
			count=excuteUpdate(sql, paramsObjects);
			ResultSet resultSet=executeQuery("select last_insert_id()", null);
			while(resultSet.next()){
				album.setId(resultSet.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeCon();
		}
		return count;
	}

}
