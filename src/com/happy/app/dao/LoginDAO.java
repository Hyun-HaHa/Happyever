package com.happy.app.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.happy.app.dto.LoginDTO;
import com.happy.app.mybatis.SqlMapConfig;

public class LoginDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public LoginDAO() {
		sqlsession = factory.openSession(true);
	}
	
	// 로그인
	public LoginDTO login(String email, String password) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("email", email);
		datas.put("password", password);
		
		LoginDTO user = sqlsession.selectOne("Login.login", datas);
		
		return user;
	}
	
	// 회원정보 일치여부 검사
	public String checkEmail(String email, String name) {
		HashMap<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("name", name);
		
		return sqlsession.selectOne("Login.checkEmail", map);
	}
	
	// 임시비밀번호 업데이트
	public void updatePw(String email, String AuthenticationKey) {
		HashMap<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("AuthenticationKey", AuthenticationKey);
		
		sqlsession.update("Login.updatePw", map);
	}
	
	// 마이페이지 - 회원정보 불러오기
	public LoginDTO my_info(String email, String password) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("email", email);
		datas.put("password", password);
		
		LoginDTO info = sqlsession.selectOne("MyPage.my_info",datas);
		return info;
	}

	// 회원 정보 수정
	public boolean change_info(String email, String change_pw, String change_addr, String change_phone_num) {
		boolean result = false;
		
		HashMap<String, String> datas = new HashMap<>();
		datas.put("email", email);
		datas.put("change_pw", change_pw);
		datas.put("change_addr", change_addr);
		datas.put("change_phone_num", change_phone_num);
		
		if( sqlsession.update("MyPage.update_info", datas) == 1 ) {
			result = true;
		}
		
		return result;
	}
	
	// 회원탈퇴
	public boolean delete_info(String email) {
		boolean result = false;
		
		if(sqlsession.delete("MyPage.delete_info", email) == 1) {
			result = true;
		}
		
		return result;
	}
	
	// 회원가입
	public boolean signup(LoginDTO login) {
		boolean result = false;
		
		if(sqlsession.insert("Login.signup", login) != 0) {
			result = true;
		}
		
		return result;
	}

}
