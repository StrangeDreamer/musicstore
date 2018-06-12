package com.musicstore.dao;

import java.util.List;

import com.musicstore.entity.Album;

public interface AlbumDao {
	List<Album> getHotAlbums(int num);
	//分页，查询
	List<Album> getAlbumsByPage(int gid,String title,int pageNo,int pageSize);
	int getAlbumRows(int gid,String title);
	Album getById(int id);
	//修改唱片
	int updateAlbum(Album album);
	int addAlbum(Album album);
}
