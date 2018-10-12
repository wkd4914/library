package com.ict.book.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.ict.book.dao.LibraryInfoDAO;
import com.ict.book.service.LibraryInfoService;
import com.ict.book.vo.LibraryInfo;

@Service
public class LibraryInfoServiceImpl implements LibraryInfoService {

	@Autowired
	private LibraryInfoDAO ldao;
	
	@Override														
	public List<LibraryInfo> getLibraryInfoList(LibraryInfo li) {
		// TODO Auto-generated method stub
		return ldao.getLibraryInfoList(li);
	}

	@Override
	public int insertLibraryInfo(LibraryInfo li) {
		// TODO Auto-generated method stub
		return ldao.insertLibraryInfo(li);
	}

	public Integer insertLibraryInfo(Map<String, String> pMap) {
		// TODO Auto-generated method stub
		return ldao.insertLibraryInfo(pMap);
	};
	@Override
		// TODO Auto-generated method stub
	public int deleteLibraryInfo(int lino) {
		return ldao.deleteLibraryInfo(lino);
	}

	@Override
	public LibraryInfo getLibraryInfoList(Integer lino) {
		// TODO Auto-generated method stub
		return ldao.getLibraryInfoList(lino);
	}

	@Override
	public int updateLibraryInfo(LibraryInfo li) {
		// TODO Auto-generated method stub
		return ldao.updateLibraryInfo(li);
	}

}
