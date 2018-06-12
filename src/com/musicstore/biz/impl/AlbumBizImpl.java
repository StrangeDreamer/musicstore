package com.musicstore.biz.impl;

import java.util.List;

import com.musicstore.biz.AlbumBiz;
import com.musicstore.dao.AlbumDao;
import com.musicstore.dao.impl.AlbumDaoImpl;
import com.musicstore.entity.Album;

public class AlbumBizImpl implements AlbumBiz {
	AlbumDao albumDao=new AlbumDaoImpl();

	@Override
	public List<Album> hotAlbums(int num) {
		// TODO Auto-generated method stub
		return albumDao.getHotAlbums(num);
		
	}

	@Override
	public List<Album> getAlbumsByPage(int gid,String title,int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return albumDao.getAlbumsByPage(gid,title,pageNo, pageSize);
	}

	@Override
	public int getAlbumRows(int gid,String title) {
		// TODO Auto-generated method stub
		return albumDao.getAlbumRows(gid,title);
	}

	@Override
	public Album getAlbumById(int id) {
		// TODO Auto-generated method stub
		return albumDao.getById(id);
	}

	@Override
	public int updateAlbum(Album album) {
		// TODO Auto-generated method stub
		return albumDao.updateAlbum(album);
	}

	@Override
	public int addAlbum(Album album) {
		// TODO Auto-generated method stub
		return albumDao.addAlbum(album);
	}

}
