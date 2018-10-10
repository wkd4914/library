package com.ict.book.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.book.dao.LibraryInfoDAO;
import com.ict.book.vo.LibraryInfo;


@Repository
public class LibraryInfoDAOImpl implements LibraryInfoDAO {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<LibraryInfo> getLibraryInfoList(LibraryInfo li) {
		// TODO Auto-generated method stub
		return ss.selectList("SQL.LIBRARYINFO.selectLibraryInfoList",li);
	}

	@Override
	public int insertLibraryInfo(LibraryInfo li) {
		// TODO Auto-generated method stub
		return ss.insert("SQL.LIBRARYINFO.insertLibraryInfo",li);
	}

	@Override
	public int deleteLibraryInfo(int lino) {
		// TODO Auto-generated method stub
		return ss.delete("SQL.LIBRARYINFO.deleteLibraryInfo",lino);
	}

	@Override
	public LibraryInfo getLibraryInfoList(Integer lino) {
		// TODO Auto-generated method stub
		return ss.selectOne("SQL.LIBRARYINFO.selectLibraryInfo",lino);
	}

	@Override
	public int updateLibraryInfo(LibraryInfo li) {
		// TODO Auto-generated method stub
		return ss.update("SQL.LIBRARYINFO.updateLibraryInfo",li);
	}

}
