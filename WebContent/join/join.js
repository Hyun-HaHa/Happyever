var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');



var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');

var userName = document.querySelector('#name');
var mobile = document.querySelector('#mobile');
var useradd = document.querySelector('#add');
var error = document.querySelectorAll('.error_next_box');



id.addEventListener("focusout", checkId);
pw1.addEventListener("focusout", checkPw);
pw2.addEventListener("focusout", comparePw);
yy.addEventListener("focusout", isBirthCompleted);
mm.addEventListener("focusout", isBirthCompleted);
dd.addEventListener("focusout", isBirthCompleted);
userName.addEventListener("focusout", checkName);
useradd.addEventListener("focusout", checkaddress);
mobile.addEventListener("focusout", checkPhoneNum);

function checkId() {
    var idPattern = /^[\w]+@[\w]+.[\.\w]{2,5}$/;
    if(id.value === "") {
        error[0].innerHTML = "아이디를 입력해주세요.";
        error[0].style.display = "block";
    } else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "사용가능한 아이디입니다.";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}

function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "비밀번호를 반드시 입력해주세요..";
        error[1].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "X";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        
        pwMsg.style.display = "block";
        pwImg1.src = "/images/m_icon_not_use.png";
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "/images/m_icon_safe.png";
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "/images/m_icon_check_enable.png";
        error[2].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "/images/m_icon_check_disable.png";
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "비밀번호를 반드시 입력해주세요.";
        error[2].style.display = "block";
    }
}



function isBirthCompleted() {
    var yearPattern = /[0-9]{4}/;

    if(!yearPattern.test(yy.value)) {
        error[3].innerHTML = "연도를 입력해주세요.";
        error[3].style.display = "block";
    } else {
        isMonthSelected();
    }


    function isMonthSelected() {
        if(mm.value === "월") {
            error[3].innerHTML = "월을 입력해주세요.";
        } else {
            isDateCompleted();
        }
    }

    function isDateCompleted() {
        if(dd.value === "") {
            error[3].innerHTML = "날짜를 입력해주세요.";
        } else {
            isBirthRight();
        }
    }
}



function isBirthRight() {
    var datePattern = /\d{1,2}/;
    if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
        error[3].innerHTML = "생년월일을 다시한번 확인해주세요.";
    } else {
        checkAge();
    }
}

function checkAge() {
    if(Number(yy.value) < 1920) {
        error[3].innerHTML = "";
        error[3].style.display = "block";
    } else if(Number(yy.value) > 2022) {
        error[3].innerHTML = "";
        error[3].style.display = "block";
    } else {
        error[3].style.display = "none";
    }
}

function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[4].innerHTML = "이름을 입력해주세요.";
        error[4].style.display = "block";
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[4].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[4].style.display = "block";
    } else {
        error[4].style.display = "none";
    }
}

function checkaddress() {
    var addressPattern = /[가-힣]/;
    if(useradd.value === "") {
        error[5].innerHTML = "주소를 입력해주세요.";
        error[5].style.display = "block";
    } else if(!addressPattern.test(useradd.value)) {
        error[5].innerHTML = "한글 주소를 사용하세요. (특수기호  사용 불가)";
        error[5].style.display = "block";
    } else {
        error[5].style.display = "none";
    }
} 

function checkPhoneNum() {
    var isPhoneNum = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;

    if(mobile.value === "") {
        error[6].innerHTML = "전화번호를 입력해주세요.";
        error[6].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[6].innerHTML = "잘못된 형식입니다.";
        error[6].style.display = "block";
    } else {
        error[6].style.display = "none";
    }
function sendit() {
	f.action = "${pageContext.request.contextPath }/main.jsp"
    f.submit();
}
    
}

