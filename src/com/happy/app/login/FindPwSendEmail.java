package com.happy.app.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.LoginDAO;

public class FindPwSendEmail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		LoginDAO ldao = new LoginDAO();
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		
		// mail server 설정
		String host = "smtp.naver.com";
		String user = "anelune@naver.com"; // 자신의 네이버 계정
		String password = "fkspwbdkspfns";// 자신의 네이버 패스워드

		// 메일 받을 주소
		String to_email = ldao.checkEmail(email, name);

		// SMTP 서버 정보를 설정한다.
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");

		// 임시 비밀번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		System.out.println(AuthenticationKey);
		
		ldao.updatePw(email, AuthenticationKey);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		System.out.println(to_email);
		

		// email 전송
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(user, "HappyEver"));
			
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));

			// 메일 제목
			msg.setSubject("안녕하세요 HappyEver 입니다.");
			// 메일 내용
			msg.setText("임시비밀 번호는 " + temp + " 입니다. \n임시비밀번호로 로그인 후 꼭 비밀번호를 바꿔주세요.");

			Transport.send(msg);
			System.out.println("이메일 전송");
			
			PrintWriter out = resp.getWriter();
			forward.setPath("/main.jsp?flag=true");
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		HttpSession saveKey = req.getSession();
		saveKey.setAttribute("AuthenticationKey", AuthenticationKey);

//		forward.setRedirect(false);
		return forward;

		
	}
}
