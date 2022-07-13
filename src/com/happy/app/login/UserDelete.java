package com.happy.app.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.LoginDAO;

public class UserDelete implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		LoginDAO ldao = new LoginDAO();
		
		HttpSession session = req.getSession();
		
		String email = (String)session.getAttribute("email");

		if( ldao.delete_info(email)) {
			forward.setRedirect(false);
			forward.setPath("/main.jsp?a=1");
			session.invalidate();
		}

		return forward;
	}
	
}
