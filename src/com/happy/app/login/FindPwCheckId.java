package com.happy.app.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.LoginDAO;

public class FindPwCheckId implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		LoginDAO ldao = new LoginDAO();
		
		resp.setCharacterEncoding("UTF-8");
		
		System.out.println("로그인체크아이디오케이에 도착");
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		
		
		if(ldao.checkEmail(email, name) != null) {	// 값이 있으면, 일치하는 정보가 있다는 뜻 > 임시비밀번호 발송
			req.setAttribute("email", ldao.checkEmail(email, name));
			forward.setRedirect(false);
			forward.setPath("/login/sendEmail.lo");
		} else {	// 이메일이 없을 경우 > 비밀번호 찾기 페이지루
			forward.setPath("/login/find_pw.jsp?flag=false");
		}
		
		
		forward.setRedirect(false);
		return forward;
	}
	
}