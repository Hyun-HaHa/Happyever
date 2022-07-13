package com.happy.app.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;

public class UserLogout implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		forward.setPath("/main.jsp");
		
		return forward;
	}
	
}
