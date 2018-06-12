package com.musicstore.biz;

import java.util.List;

import com.musicstore.entity.Album;

public interface AlbumBiz {
	List<Album> hotAlbums(int num);
	List<Album> getAlbumsByPage(int gid,String title,int pageNo,int pageSize);
	int getAlbumRows(int gid,String title);
	Album getAlbumById(int id);
	int updateAlbum(Album album);
	int addAlbum(Album album);

}
