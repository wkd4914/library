package com.ict.book.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ict.book.dao.LibraryInfoDAO;
import com.ict.book.service.LibraryInfoService;
import com.ict.book.vo.LibraryInfo;

public class LibraryInfoServiceImpl implements LibraryInfoService {

	@Autowired
	private LibraryInfoDAO ldao;
	
	@Override
	public List<LibraryInfo> getLibraryInfoList(LibraryInfo li) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertLibraryInfo(LibraryInfo li) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteLibraryInfo(int lino) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public LibraryInfo getLibraryInfoList(Integer lino) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateLibraryInfo(LibraryInfo li) {
		// TODO Auto-generated method stub
		return 0;
	}

}
