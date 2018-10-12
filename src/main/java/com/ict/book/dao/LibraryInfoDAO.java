package com.ict.book.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ict.book.vo.LibraryInfo;


public interface LibraryInfoDAO {
	
	public List<LibraryInfo> getLibraryInfoList(LibraryInfo li);
	public int insertLibraryInfo(LibraryInfo li);
	public int deleteLibraryInfo(int lino);
	public LibraryInfo getLibraryInfoList(Integer lino);
	public int updateLibraryInfo(LibraryInfo li);
	public Integer insertLibraryInfo(Map<String, String> pMap);

}
