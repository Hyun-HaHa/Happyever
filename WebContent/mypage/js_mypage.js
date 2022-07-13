$(document).ready(function(){
	$("#list-profile-list").click(function(){
		$("#content").hide();
//		$("#content_myPlan").hide();
		$("#list-myPlan").hide();
		$("#content_update").show();
	});
});

$(document).ready(function(){
	$("#list-myPlan-list").click(function(){
		$("#content").hide();
		$("#content_update").hide();
		$("#list-myPlan").show();
	});
});

$(document).ready(function(){
	$("#my_text").click(function(){
		$("#content").show();
		$("#content_update").hide();
		$("#list-myPlan").hide();
	});
});

// 비밀번호 일치 여부 확인
$(document).ready(function(){
	let pw = document.querySelector('#change_pw');
	let pw_ok = document.querySelector('#change_pw_ok');
	let error = document.querySelector('.error-message_pw');
	
	pw_ok.addEventListener("focusout", checkPw);
	
	function checkPw(){
		if(pw.value != pw_ok.value) {
			error.innerHTML = "비밀번호가 일치하지 않습니다.";
			error.style.display = "block";
		} else {
			error.innerHTML = "";
		}
	}
});


//function update_info() {
//	let frm = document.update_form;
//	let pw = frm.change_pw;
//	let pw_ok = frm.change_pw_ok;
//	
//	if( pw.value != pw_ok.value ) {
//		alert("비밀번호가 일치하지 않습니다.");
//		pw.focus();
//		return false;
//	} else {
//		frm.submit();
//	}
//}		

// 수정하기 버튼 클릭 시
function doSubmit(){
		let frm = document.update_form;
		let pw = frm.change_pw;
		let addr = frm.change_addr;
		let phone_num = frm.change_phone_num;
		
		if(pw.value == "" && addr.value == "" && phone_num.value == ""){
			alert("수정할 사항이 없습니다:)");
			pw.focus();
			addr.focus();
			phone_num.focus();
			console.log("너 여기 안 오니?")
			return false;
		}
		
		frm.submit();
	}
	
function delete_info(){
	let frm = document.delete_form;
	alert("회원 탈퇴가 완료되었습니다.");
	frm.submit();
	
}




