package com.musicstore.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.musicstore.dao.GenreDao;
import com.musicstore.entity.Genre;

public class GenreDaoImpl extends baseDao implements GenreDao {
	List<Genre> genres=new ArrayList<Genre>();
	@Override
	public List<Genre> getGenres() {
		try {
			openCon();
			String sql="select * from genre";
			ResultSet rSet=executeQuery(sql, null);
			System.out.println(sql+"查询所有唱片类型，返回唱片类型list");
			while(rSet.next()){
				Genre genre=new Genre();
				genre.setDescription(rSet.getString("description"));
				genre.setId(rSet.getInt("id"));
				genre.setName(rSet.getString("name"));
				System.out.println("向唱片类型list中加入id为"+rSet.getInt("id")+"的唱片类型"+" ");
				genres.add(genre);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			closeCon();
		}
		
		return genres;
	}

}
