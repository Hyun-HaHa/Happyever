<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("${pageContext.request.contextPath }/login/login_style.css");</style>
<script src="http://code.jquery.com/jquery.min.js"></script>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style type="text/css">
	@font-face {
	    font-family: 'SUIT-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Medium.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	
	@font-face {
    font-family: 'SUIT-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Bold.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}  
	
	
	.navbar-brand{
		margin-left: 4%;
	}
	
	.navbar-expand-lg .navbar-collapse{
		justify-content: end;
		margin-right: 70px;
	}
	
	.bg{
		background-color: white !important;
		box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
		-webkit-box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
	}
	
	.navbar-light .navbar-nav .nav-link{
		font-family: 'SUIT-Medium';
		font-size: 1.1rem;
		color: #545454 !important;
		letter-spacing: 2px;
		border: none;
    	background-color: white;
	}
	
	.navbar-light .navbar-nav .active>.nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-lin{
		color: #545454;
	}
	
	.nav-link{
		margin-left: 15px;
		letter-spacing: 2px;
	}
	
	.logo-text{
		font-size: 1.05rem;
		color: #545454;
		font-family: 'SUIT-Bold';
		letter-spacing: 2px;
	}
	
	.dropdown-item{
		font-family: 'SUIT-Medium';
		font-size: 1.1rem;
		color: #545454 !important;
		letter-spacing: 2px;
	}
	
	.dropdown-menu a:hover{
      text-decoration:none;
      font-weight:bold;
   }
   
   .modal{
		background-color: rgba( 255, 255, 255, 0.5 );
	}
	
	/* dropdown */
	.dropdown-content{
		display: none;
   		position: absolute;
	}
	
	.dropdown-content a {
	    color: #545454;
	    padding: 12px 16px;
	    text-decoration: none;
	    display: block;
	    background-color: #f9f9f9;
	    font-family: 'SUIT-Medium';
	    min-width: 130px;
	    text-align: center;
	}
	
	.dropdown-content a:hover {
		background-color: #f1f1f1;
		text-decoration: none;
		font-weight:bold;
		color: #545454;
	}
	
	.show {display:block;}
	
</style>

</head>
<body>
	<c:set var="user" value="${sessionScope.user }"/>
	
	<c:if test="${not empty param.flag }">
		<c:choose>
			<c:when test="${not param.flag }">
				<script>
					alert("로그인 정보가 맞지 않습니다. 다시 입력해 주세요 :)");
				</script>
			</c:when>
			<c:when test="${param.flag }">
				<script>
					alert("임시 비밀번호를 전송했습니다 :)");
				</script>
			</c:when>	
		</c:choose>
	</c:if>
	<c:if test="${param.a == 1 }">
		<script>
			alert("회원 탈퇴가 완료되었습니다.");
		</script>
	</c:if>
	
	<nav class="navbar navbar-expand-lg navbar-light bg">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">
	  		<img src="${pageContext.request.contextPath }/images/logo.png" width="110px" height="58px">
	  		<span class="logo-text">국내여행 플래너</span>
	  	</a>
	  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
	  	</button>
	  	<div class="collapse navbar-collapse" id="navbarNavDropdown">
	    	<ul class="navbar-nav">
	      		<li class="nav-item active">
	        		<a class="nav-link" href="${pageContext.request.contextPath }/board/board.jsp">여행리뷰 <span class="sr-only">(current)</span></a>
	      		</li>
	      		<li class="nav-item">
                 <a class="nav-link" href="${pageContext.request.contextPath }/howTo.pdf">이용방법</a>
               	</li>
	      		<c:choose>
	      			<c:when test="${user != null}">
						<li class="nav-item">
			        		<button onclick="myFunction()" class="nav-link dropdown-toggle" href="#">${user.name }님 </button>
			        		<div id="myDropdown" class="dropdown-content">
							    <a href="${pageContext.request.contextPath }/mypage/mypage_view.jsp">마이페이지</a>
							    <a href="${pageContext.request.contextPath }/login/userlogout.lo">로그아웃</a>
							 </div>
			      		</li>
			      		
	      			</c:when>
	      			<c:otherwise>
			      		<li class="nav-item">
					        <button type="button" class="nav-link" data-toggle="modal" data-target="#exampleModal">
							  로그인 
							</button>
							
							<!-- 로그인 모달창 -->
							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog modal-dialog-centered">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel"></h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <!-- 로그인 -->
							      <div class="modal-body">
							        <div class="login_content">
										<div class="signIn">
											<div class="signIn_form">
											
												<!-- 로그인 윗부분 -->
												<div class="signForm_top">
													<div class="signIn_header">
														<img src="${pageContext.request.contextPath }/images/logo.png">
													</div>
												</div>
												
												<!-- 로그인 입력 부분 -->
												<div class="signForm_middle">
													<form action="${pageContext.request.contextPath }/login/userloginOk.lo" method="post" id="loginForm">
														<p class="titleText">이메일</p>
														<div class="inputText">
															<input id="signForm_email" placeholder="이메일을 입력해 주세요." type="email" name="email">
															<p class="error-message_email"></p>
														</div>
														
														<p class="titleText">비밀번호</p>
														<div class="inputText">
															<input id="signForm_pw" placeholder="비밀번호를 입력해 주세요." type="password" autocomplete="current-password" name="password">
															<p class="error-message_pw"></p>
														</div>
														<input type="submit" autocomplete="off" style="display: none;">
													</form>
													
													<div class="signForm_submit">
														<button type="submit" id="signForm_login" class="login_button" form="loginForm">
															<span class="login_submit_text"><b>로그인</b></span>
														</button>
													</div>
												</div>
												<!-- 비밀번호 찾기, 회원가입 -->
												<p class="signForm_bottom">
													<span class="find-pw">
														<a href="${pageContext.request.contextPath }/login/find_pw.jsp">비밀번호 찾기</a>
													</span> 
													<span class="bottom_side">&#124</span>
													<span class="signUp-btn">
														<a href="${pageContext.request.contextPath }/join/join.jsp">회원가입</a>
													</span>
												</p>
										
											</div>
										</div>
									</div>
							      </div>
							    </div>
							  </div>
							</div>
							
					      </li>
			      		
		      		</c:otherwise>
	      		</c:choose>
	    	</ul>
	  	</div>
	</nav>

	
	<script>
		// 이메일 형식 검사
		$(document).ready(function(){
			
	    let id = document.querySelector('#signForm_email');
	    let error = document.querySelector('.error-message_email');
	    
	    id.addEventListener("focusout", checkId);
	    
	    function checkId(){
	    	let idPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/

	        if(!idPattern.test(id.value)){	//정규표현식을 통과하지 못한다면
	        	error.innerHTML = "올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.";
	        	error.style.display = "block";
	        } else{
	        	error.innerHTML = "";
	        }
	    }
		});
		
		// 비밀번호 체크
		$(document).ready(function(){
			
	    let pw = document.querySelector('#signForm_pw');
	    let error = document.querySelector('.error-message_pw');
	    
	    pw.addEventListener("focusout", checkPw);
	    
	    function checkPw(){
	        if(pw.value == ""){	//정규표현식을 통과하지 못한다면
	        	error.innerHTML = "비밀번호를 입력해 주세요.";
	        	error.style.display = "block";
	        } else{
	        	error.innerHTML = "";
	        }
	    }
		});
		
		// 로그인 후 드롭 네비바
		function myFunction() {
		    document.getElementById("myDropdown").classList.toggle("show");
		}

		window.onclick = function(event) {
		  if (!event.target.matches('.dropdown-toggle')) {

		    let dropdowns = document.getElementsByClassName("dropdown-content");
		    let i;
		    for (i = 0; i < dropdowns.length; i++) {
		      let openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
		
		
	</script>
	
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>