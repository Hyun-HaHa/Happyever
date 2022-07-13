package com.happy.app.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.PlanMakeDAO;
import com.happy.app.dto.PlanMakeDTO;

public class PlanSaveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("PlanSaveAction 도착");
		ActionForward forward = new ActionForward();
		PlanMakeDAO pdao = new PlanMakeDAO();
		
		String test = req.getParameter("li4");
		System.out.println("test : " + test);
		
		
		forward.setRedirect(false);
//		forward.setPath( req.getContextPath() + "plan/make_plan.jsp");
		
		return forward;
	}
}
