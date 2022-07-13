package com.happy.app.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.LoginDAO;
import com.happy.app.dto.LoginDTO;

public class UserLoginOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		LoginDAO ldao = new LoginDAO();
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		LoginDTO user = ldao.login(email, password);
		req.setAttribute("user", user);
		
		// 마이페이지 - 회원정보 불러오기
		LoginDTO my_info = ldao.my_info(email, password);
		
		if (user != null) {
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			
			// 마이페이지 - 회원정보 불러오기
			session.setAttribute("email", user.getEmail());
			session.setAttribute("password", user.getPassword());
			session.setAttribute("addr", user.getAddr());
			session.setAttribute("phone_num", user.getPhone_num());
			
			session.setAttribute("my_info", my_info);
			req.setAttribute("my_info", my_info);
			
			forward.setPath("/main.jsp");
		} else {
			forward.setPath("/main.jsp?flag=false");
		}
		
		forward.setRedirect(false);
		
		return forward;
	}

}
