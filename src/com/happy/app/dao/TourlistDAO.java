package com.happy.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.happy.app.dto.TourlistDTO;
import com.happy.app.mybatis.SqlMapConfig;

public class TourlistDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public TourlistDAO() {
		// autocommit
		sqlsession = factory.openSession(true);
	}

	public boolean AddTourlist(List<TourlistDTO> tdtos) {
		boolean result = true;
		
		for( int i = 0; i < tdtos.size(); i++ ) {
			TourlistDTO tdto = tdtos.get(i);
			
			if( sqlsession.insert("Tourlist.addTourlist", tdto) == 0 ) {
				result = false;
				break;
			}
			
		}
		
		return result;
	}

	
	
}
