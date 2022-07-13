package com.happy.app.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.LoginDAO;
import com.happy.app.dto.LoginDTO;

public class UserRegist implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		LoginDAO ldao = new LoginDAO();
		LoginDTO login = new LoginDTO();
		ActionForward forward = new ActionForward();
		String yy = req.getParameter("yy");
		String mm = req.getParameter("mm");
		String dd = req.getParameter("dd");

		String birth = yy + mm + dd;
		login.setEmail(req.getParameter("email"));
		login.setPassword(req.getParameter("password"));
		login.setName(req.getParameter("name"));
		login.setBirth(birth);
		login.setAddr(req.getParameter("addr"));
		login.setPhone_num(req.getParameter("phone_num"));
		
		

		if(ldao.signup(login)) {		// 회원가입 성공시
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/main.jsp");
		} else {					// 회원가입 실패시
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/join/join.jsp" );
		}
		
		return forward;
	}

}