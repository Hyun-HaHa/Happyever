<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html lang="lo">
    <head>
        <meta charset="UTF-8">
        <title>Happy regist</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/join/join.css">
        
    </head>
    <body>
        <form action = "${pageContext.request.contextPath }/login/userregist.lo" method="post">
        <!-- header -->
        <div id="header">
            <img src="${pageContext.request.contextPath }/images/main_logo.png" width="200px" height="200px">
        </div>

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- 아이디 -->
                <div>
                    <h3 class="join_title">
                        <label for="id">이메일</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="email" class="int" maxlength="30" placeholder="이메일 형식의 아이디를 입력해주세요."required>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- 비밀번호 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" name="password" class="int" maxlength="20" placeholder="비밀번호를 입력해주세요."required>
                        <span id="alertTxt">X</span>
                        <img src="${pageContext.request.contextPath }/images/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- 비밀번호 재확인 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20" placeholder="동일한 비밀번호를 입력해주세요."required>
                        <img src="${pageContext.request.contextPath }/images/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>


                <!-- 생년월일 -->
                 <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" name="yy" maxlength="4" placeholder="년(4자)"required>
                            </span>
                        </div>
                        

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <input type="text" id="mm" class="int" name="mm" maxlength="2" placeholder="월"required>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" name="dd" maxlength="2" placeholder="일"required>
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>
                
                <!-- 이름 -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20" placeholder="이름을 입력해주세요."required>
                    </span>
                    <span class="error_next_box"></span>
                </div>
               
                <!-- 주소 -->
                <div>
                    <h3 class="join_title"><label for="address">주소</label></h3>
                    <span class="box int_address">
                        <input type="text" id="add" name="addr"class="int" maxlength="100" placeholder="주소를 입력해주세요."required>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- 휴대전화 -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" name="phone_num" class="int" maxlength="16" placeholder="전화번호를 입력해 주세요."required>
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                

                <!-- 가입하기 -->
				<div class="btn_area">
                    <input type="submit" id="btnJoin" value="가입하기">                 
                </div>

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="${pageContext.request.contextPath }/join/join.js"></script>
    </form>
</body>
</html>