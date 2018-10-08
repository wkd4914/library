package com.ict.book.dao;

import java.util.List;

import com.ict.book.vo.LibraryInfo;


public interface LibraryInfoDAO {
	
	public List<LibraryInfo> getLevelInfoList(LibraryInfo li);
	public int insertLevelInfo(LibraryInfo li);
	public int deleteLevelInfo(int lino);
	public LibraryInfo getLevelInfoList(Integer lino);
	public int updateLevelInfo(LibraryInfo li);

}
