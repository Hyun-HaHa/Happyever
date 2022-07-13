package com.happy.app.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.ActionForward;

@WebServlet("*.lo")
public class LoginFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("프론트컨트롤러  도착");
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		System.out.println("requestURI : " + requestURI );
		
		switch (requestURI) {
			case "/login/userloginOk.lo":	// 로그인 처리
				System.out.println("컨트롤러 도착");
				forward = new UserLoginOk().execute(req, resp);
				break;
				
			case "/login/userlogout.lo":	// 로그아웃 처리	
				forward = new UserLogout().execute(req, resp);
				break;
				
			case "/login/checkEmail.lo":	// 비밀번호 찾기 - 회원정보 일치여부 확인
				System.out.println("프론트컨트롤러 도착");
				forward = new FindPwCheckId().execute(req,resp);
				break;
				
			case "/login/sendEmail.lo":		// 비밀번호 찾기 - 임시비밀번호 발송
				forward = new FindPwSendEmail().execute(req,resp);
				break;
				
			case "/login/userUpdate.lo":	// 회원정보 수정 처리
				System.out.println("너 여기 오니?");
				forward = new UserUpdate().execute(req, resp);
				break;
				
			case "/login/userDelete.lo":		// 회원탈퇴
				forward = new UserDelete().execute(req, resp);
				break;
				
			case "/login/userregist.lo":		// 회원가입
		    	forward = new UserRegist().execute(req, resp);
		    	break;
		}
		
		// 일괄처리
		if(forward != null) {
			if(forward.isRedirect()) {		// redirect
				resp.sendRedirect(forward.getPath());
			} else {						// forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}	
		
	
	
	
}
