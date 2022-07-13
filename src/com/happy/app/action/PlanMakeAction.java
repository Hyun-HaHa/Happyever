package com.happy.app.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.PlanMakeDAO;
import com.happy.app.dto.PlanMakeDTO;

public class PlanMakeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("PlanMakeAction 도착");
		ActionForward forward = new ActionForward();
		PlanMakeDAO pdao = new PlanMakeDAO();
		List<PlanMakeDTO> planmakelist = null;
		
		String region = req.getParameter("region");
		System.out.println("region : " + region);
		
		int areacode = 0;
		int sigungucode = 0;
		
		switch (region) {
			case "chuncheon":
				areacode = 32;
				sigungucode = 13;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
				
			case "busan":
				areacode = 6;
				planmakelist = pdao.getPlanMakeList(areacode);
				break;
				
			case "daegu":
				areacode = 4;
				planmakelist = pdao.getPlanMakeList(areacode);
				break;
				
			case "gangneung":
				areacode = 32;
				sigungucode = 1;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
				
			case "gyeongju":
				areacode = 35;
				sigungucode = 2;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
				
			case "incheon":
				areacode = 2;
				planmakelist = pdao.getPlanMakeList(areacode);
				break;
				
			case "jeju":
				areacode = 39;
				planmakelist = pdao.getPlanMakeList(areacode);
				break;
				
			case "jeonju":
				areacode = 37;
				sigungucode = 12;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
				
			case "seoul":
				areacode = 1;
				planmakelist = pdao.getPlanMakeList(areacode);
				break;
				
			case "sokcho":
				areacode = 32;
				sigungucode = 5;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
				
			case "yeongwol":
				areacode = 32;
				sigungucode = 8;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
				
			case "yeosu":
				areacode = 38;
				sigungucode = 13;
				planmakelist = pdao.getPlanMakeList(areacode, sigungucode);
				break;
		}
		
		System.out.println("areacode : " + areacode);
		System.out.println("sigungucode : " + sigungucode);
		
		
		req.setAttribute("planmakelist", planmakelist);
		forward.setRedirect(false);
		forward.setPath( req.getContextPath() + "plan/make_plan.jsp");
		
		return forward;
	}
}
