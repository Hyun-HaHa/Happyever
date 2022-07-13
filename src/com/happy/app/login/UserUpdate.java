package com.happy.app.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.LoginDAO;
import com.happy.app.dto.LoginDTO;

public class UserUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		LoginDAO ldao = new LoginDAO();
		
		HttpSession session = req.getSession();
		
		String email = (String)session.getAttribute("email");
		String change_pw = req.getParameter("change_pw");
		String change_addr = req.getParameter("change_addr");
		String change_phone_num = req.getParameter("change_phone_num");
		
		if( change_pw.equals("") ) {
			change_pw = (String)session.getAttribute("password");
		}
		
		if( change_addr.equals("") ) {
			change_addr = (String)session.getAttribute("addr");
		}
		
		if( change_phone_num.equals("") ) {
			change_phone_num = (String)session.getAttribute("phone_num");
		}
		
		if( ldao.change_info(email, change_pw, change_addr, change_phone_num) ) {
//			LoginDTO user = ldao.login(email, password);
//			req.setAttribute("user", user);
			
			forward.setRedirect(false);
			forward.setPath("/");
//			session.invalidate();
		}

		return forward;
	}
	
}
