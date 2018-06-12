package com.musicstore.biz.impl;

import java.util.List;

import com.musicstore.biz.GenreBiz;
import com.musicstore.dao.GenreDao;
import com.musicstore.dao.impl.GenreDaoImpl;
import com.musicstore.entity.Genre;

public class GenreBizImpl implements GenreBiz {
	GenreDao gDao=new GenreDaoImpl();
	@Override
	public List<Genre> getAll() {
		
		return gDao.getGenres();
	}

}
