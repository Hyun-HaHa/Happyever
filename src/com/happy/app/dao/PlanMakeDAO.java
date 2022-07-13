package com.happy.app.dao;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.swing.event.ListSelectionEvent;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.happy.app.mybatis.SqlMapConfig;
import com.happy.app.dto.PlanMakeDTO;

public class PlanMakeDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public PlanMakeDAO() {
		// autocommit
		sqlsession = factory.openSession(true);
	}

	public List<PlanMakeDTO> getPlanMakeList(int areacode, int sigungucode) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("areacode", areacode);
		datas.put("sigungucode", sigungucode);
		
		List<PlanMakeDTO> planMakeList = sqlsession.selectList("Plan.planMakelist", datas);
		
		System.out.println("planMakeList : " + planMakeList.get(0).getTitle());
		
		return planMakeList;
		
		
	}

	public List<PlanMakeDTO> getPlanMakeList(int areacode) {
		
		List<PlanMakeDTO> planMakeList = sqlsession.selectList("Plan.planMakelist_a", areacode);
		
		return planMakeList;
	}

	
	
}
