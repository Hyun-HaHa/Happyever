<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="${pageContext.request.contextPath }/mypage/css_mypage.css" rel="stylesheet" />
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="fonts_in_my_computer">
		<c:set var="my_page" value="${requestScope.my_page }"/>
	
		<div id="main">
			<header>
				<%@ include file="/header.jsp" %>
			</header>
			
			<main class="page_wrapper" id="contents" media="web" style="background-color:#f5f6f7;">
				<div class="layout">
				
					<!-- 마이페이지 메뉴 항목 -->
					<div class="menu_section">
						<div class="menu_title">
							<div class="list-group" id="list-tab" role="tablist">
								<h1 class="title">
									<span><p><a id="my_text" data-toggle="list" href="#mypage_text">마이페이지</a></p></span>
								</h1>
							</div>
						</div>
						<div><p>반갑습니다. ${my_info.name }님</p></div>
						<div class="list-group" id="list-tab" role="tablist">
							<a class="link_wrap" id="list-profile-list" data-toggle="list" href="#list-profile"
								role="tab" aria-controls="profile">회원정보 관리</a><br> 
								
							<a class="link_wrap" id="list-myPlan-list" data-toggle="list" href="#list-myPlan"
								role="tab" aria-controls="myPlan">나의 일정</a><br> 
						</div>
					</div>
					
					<!-- 마이페이지 기본 콘텐츠 (회원정보) -->
					<div class="content_section" id="content">
						<h1 class="content_title">
							<span>회원정보</span>
						</h1>
						
						<div class="account_space">
							<div class="profile_logo">
								<div>
									<div class="profileLogo">
										<img src="${pageContext.request.contextPath }/mypage/mypage_images/main_logo.png">
									</div>
								</div>
							</div>
							<div class="infor_email">
								<span class="section_title">이메일</span>
								<input type="text" class="email_box" readonly value="${my_info.email }">
							</div>
							<div class="introduction_wrap">
								<span class="section_title">이름</span>
								<div class="section_box">
									<p><input type="text" class="infor_input" readonly value="${my_info.name }"></p>
								</div>
								<span class="section_title">생년월일</span>
								<div class="section_box">
									<p><input type="text" class="infor_input" readonly value="${my_info.birth }"></p>
								</div>
								<span class="section_title">주소</span>
								<div class="section_box">
									<p><input type="text" class="infor_input" readonly value="${my_info.addr }"></p>
								</div>
								<span class="section_title">휴대전화</span>
								<div class="section_box" style="width: 100%;">
									<p><input type="text" class="infor_input" readonly value="${my_info.phone_num }"></p><br>
								</div>
								<button type="button" class="btn btn-success" id="btn-color" onclick="location.href='${pageContext.request.contextPath }/';">홈으로 가기</button>
							</div>
						</div>
					</div>
					
					<!-- 회원 정보 관리 -->
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade" id="list-profile" role="tabpanel"
							aria-labelledby="list-profile-list">
							<div class="content_section" id="content_update">
								<h1 class="content_title">
									<span>회원정보 관리</span>
								</h1>
								<div class="account_space">
									<div class="profile_logo">
										<div>
											<div class="profileLogo">
												<img src="${pageContext.request.contextPath }/mypage/mypage_images/main_logo.png">
											</div>
										</div>
									</div>
									<div class="introduction_wrap">
										<span class="section_title">이메일</span>
										<div class="section_box">
											<p>
												<input type="text" class="infor_input" readonly value="${my_info.email }">
											</p>
										</div>
										<span class="section_title">이름</span>
										<div class="section_box">
											<p>
												<input type="text" class="infor_input" readonly value="${my_info.name }">
											</p>
										</div>
										<span class="section_title">생년월일</span>
										<div class="section_box">
											<p>
												<input type="text" class="infor_input" readonly value="${my_info.birth }">
											</p>
										</div>
										<form name="update_form" action="/login/userUpdate.lo" method="post">
											<span class="section_title">비밀번호</span>
											<div class="section_box">
												<p>
													<input type="password" class="password_input" name="change_pw" id="change_pw" maxlength="20" placeholder="수정 할 비밀번호를 입력해주세요.">
												</p>
											</div>
											<span class="section_title">비밀번호 확인</span>
											<div class="section_box">
												<p>
													<input type="password" class="password_input" name="change_pw_ok" id="change_pw_ok" maxlength="20" placeholder="동일한 비밀번호를 입력해주세요.">
												</p>
												<p class="error-message_pw"></p>
											</div>
											<span class="section_title">주소</span>
											<div class="section_box">
												<p>
													<input type="text" class="infor_input"  name="change_addr" placeholder="수정 할 주소를 입력해주세요.">
												</p>
											</div>
											<span class="section_title">휴대전화</span>
											<div class="section_box">
												<p>
													<input type="text" class="infor_input"  name="change_phone_num" placeholder="수정 할 전화번호를 입력해 주세요.">
												</p>
												<br>
											</div>
											<button type="submit" class="btn btn-success" id="btn-color" onclick="doSubmit(); return false;">수정하기</button>
											<button type="button" class="btn btn-success" id="btn-delete-color" onclick="location.href='${pageContext.request.contextPath }/login/userDelete.lo';" >회원탈퇴</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 나의 일정 -->
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade" id="list-myPlan" role="tabpanel"
							aria-labelledby="list-myPlan-list">
							<div class="content_section" id="content_plan">
								<h1 class="content_title">
									<span>나의 일정</span>
								</h1>
								<div class="account_space">
									<div class="profile_logo">
										<div>
											<div class="profileLogo">
												<img src="${pageContext.request.contextPath }/mypage/mypage_images/main_logo.png">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			
			<footer>
				<%@ include file="/footer.jsp" %>
			</footer>
		</div>
	</div> 

<script src="${pageContext.request.contextPath }/mypage/js_mypage.js"></script>
<!-- 부트스트랩 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
</body>
</html>