<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	<!-- 형식화  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/plan/make_plan.style.css"/>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
   Date nowTime = new Date();
   SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
   String region = request.getParameter("region");
%>
</head>
<body>
	<script type="text/javascript" src="/plan/planmake.js"></script>
	
	<c:set var="planmakelist" value="${requestScope.planmakelist }" />

	<!-- 사용자 입력한 정보 -->

	<!-- 사용자 입력한 정보 -->
	
	<!-- make_plan sub-header -->
	<div class="plan-header">
		<%@include file ="/plan/region.jsp" %>
		<label class="title">여행 제목 : </label>
		<input type="text" name="title_input" id="title_input">
		<div class="calendar">
   			<label class="calendar_detail_01">여행 시작일 : </label>
   			<input class="input-date" type="date" id="sdate" value="" min="<%= sf.format(nowTime) %>"/>
   			<p class="wave">  ~   </p>
   			<label class="calendar_detail_02">여행 종료일 : </label>
   			<input class="input-date" type="date" id="edate" value="" min="<%= sf.format(nowTime) %>"/>
		</div>
        <button class="plan-header_button-sumbit" onclick="saveClick()">저장</button>
        <button class="plan-header_button-close"  onClick = " if (confirm ('종료하겠습니까?')) history.back(); else  alert('입력 취소') ">닫기</button>
    </div>
 	
	<!-- make_plan sub-header -->

	<!-- 일정만들기 작성페이지 -->
	<div class="plan-container">
		<!-- DAYS box -->
		<div class="plan-daysbox">
			<div class="plan-daysboxtitle">일정</div>
			<!-- 사용자 입력을 받은 만큼 반복문 사용  (days) -->
			<div class="select-job-items1">
				<div style="text-align: -webkit-center;">
					<table id="myTable" class="table" >
					  <thead>
					  </thead>
					  <tbody id="tbody"></tbody>
					</table>
				</div>
			</div>
			
			<input type="hidden" id="day_hidden" value="0">
             
		</div>
		<!-- DAYS box -->
		
		<!-- 해당 날짜에 일정을 추가하는 영역 -->
		<div class="plan-planscontainer">
			<!-- 사용자 입력을 받은 데이터를 반복문으로 사용 -->
			<div class="plan-plansbox">
                <div class="plan-plansboxtitle" id="plan-plansboxtitle"></div>
	            
	            <div class="list-element">
	      			<ol id="list">
	      			</ol>
	    		</div>
            </div>
            
		</div>
		<!-- 해당 날짜에 일청을 추가하는 영역 -->
		
		<!-- 장소 검색 -->
		<div id="plan-searchbox">
			<div class="plan-search">
                <form>
                   <input class="search_input" type="text" size="15" placeholder="검색어를 입력하세요."
       					id="value" onkeyup="filter()">
                    <button type="submit">검색</button>
                </form>
            </div>
            
            <div>
				<%-- 일정만들기 관광지 리스트  --%>
				<ul class="plan-searchbox_ul" >
					<c:forEach var="planmakelist" items="${planmakelist }">
						<li class="item" onmouseover="this.style.background='#F1F1F1'" onmouseout="this.style.background=''">
							<img src="${planmakelist.image2 }" class="tourListImg" width="110px" height="86px">
							<div class="info">
								<h5 class="item-name">${planmakelist.title }</h5>
								<span class="item-addr">${planmakelist.addr1 }</span>
							</div>
							
							<%-- 일정추가하기 버튼 --%>
							<div class="placeList-div">
<%-- 								<button id="placeList-div_button" class="placeList-div_button${planmakelist.ping }">+</button> --%>
								<button id="placeList-div_button${planmakelist.ping }" class="placeList-div_button">+</button>
							</div>
						</li>
					</c:forEach>
				</ul>
				<%-- 일정만들기 관광지 리스트  --%>
			</div>
			
			<div>
				<form action="/PlanSave.pl" id="savePlan">
					<input type="hidden" class="hidden_input">
				</form>
			</div>
		
		</div>		
		<!-- 장소 검색 -->
		
		<!-- 지도 API -->
		<div class="plan-mapbox">
            <div class="plan-map">
            	<%@include file ="/plan/mapapi.jsp" %>
            </div>
        </div>
		<!-- 지도 API -->
		
	</div>
	
	
<script>
	$.datepicker.setDefaults({
        dateFormat: 'yy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
      });
     $( function() {
          $("#regDate1").datepicker({ minDate: 0});
          $("#regDate2").datepicker({ minDate: 0});
        } );
     function call() {
          var sdd = document.getElementById("regDate1").value;
          var edd = document.getElementById("regDate2").value;
          var ar1 = sdd.split('-');
          var ar2 = edd.split('-');
          var da1 = new Date(ar1[0], ar1[1], ar1[2]);
          var da2 = new Date(ar2[0], ar2[1], ar2[2]);
          var dif = da2 - da1;
          var cDay = 24 * 60 * 60 * 1000;
          var days = parseInt(dif/cDay);
       if(sdd && edd){
    	  document.getElementById('days').value = days;
       }
       if(days <= 0){
          alert("종료일이 시작일보다 이전 일 수 없습니다."),location.reload();
       }
      }
     
  // 일 수 만큼 버튼생성
     function rowAdd() {				
 	  trCnt = $('#myTable tr').length+1;
 	  if(trCnt < 10){
 		 var innerHtml= '<tr><td style="text-align: center;"><button class="bttn list-bttn" id="daybtn'+trCnt+'" value="'+trCnt+'" onclick="javascript: writeDay(value); addPlan(value); day_filter(value);">DAY '+trCnt+'</button></td></tr>';
 	  	$('#myTable > tbody:last').append(innerHtml);
 	  }else{
 	//   	alert("최대 9일까지만 가능합니다.");
 	  	return false; 
 	  }   
 	}
  
  	 function writeDay(value) {
  		 document.getElementById("plan-plansboxtitle").innerHTML = "DAY " + value;
  	 }
  
     function addPlan(value) {
//     	console.log(value);
    	document.getElementById("day_hidden").value = value;
    	
    	let ex = document.getElementById('li1');
	    let ex1 = document.getElementById('text');
	    let memo = document.getElementsByClassName('memo');
	   
	    if (ex == null) {
	      	return false;
	    }
	    console.log(ex);
	    console.log(ex.innerText);      // li 태그 안 관광지 이름 받아오기
	    

	    let t = document.getElementById('memo1');
	   
	    console.log(t.value);
     }
 	
     // 날짜 초기화
 	function dayDelete() {
 		 var trCnt = $('#myTable tr').length;
 	   if(trCnt > 0){
 	   	$('#myTable > tbody:last > tr ').remove();
 	   }else{
 	   	return false;
 	   }
 	}
 	
 	//일수 계산해서 day 생성 
 	var sdate;
 	var edate;
 	var currTime = 24*60*60*1000;
 	var diff;
 	var day;
 	$("#sdate").on("propertychange change keyup paste input", function() {		//propertychange change keyup paste input : input 변화 감지하기
 		  	dayDelete();
 		    var currentSdate = $(this).val();
 		    if(currentSdate == sdate) {
 		        return;
 		    }	 
 		    sdate = new Date(currentSdate);
 		    
 		    diff  = edate - sdate;
 			day = (parseInt(diff/currTime))+1;
 			for(var i=1; i<=day; i++){
 	    	  rowAdd();
 	      }
 		});
 	$("#edate").on("propertychange change keyup paste input", function() {
 		  	dayDelete();
 		    var currentEdate = $(this).val();
 		    if(currentEdate == edate) {
 		        return;
 		    }	 
 		    edate = new Date(currentEdate);
 		    
 			diff  = edate - sdate;
 			day = (parseInt(diff/currTime))+1;
 			for(var i=1; i<=day; i++){
 	    	  rowAdd();
 	      }
 		});
 	
	// 버튼 클릭시 일정 추가
	
	let cnt = 1;
   	let ol = document.getElementById('list');
   	let num;
   	let btn;
   	let name = ['<c:out value="${planmakelist.get(0).title }"/>',
	            '<c:out value="${planmakelist.get(1).title }"/>',
	            '<c:out value="${planmakelist.get(2).title }"/>',
	            '<c:out value="${planmakelist.get(3).title }"/>',
	            '<c:out value="${planmakelist.get(4).title }"/>',
	            '<c:out value="${planmakelist.get(5).title }"/>',
	            '<c:out value="${planmakelist.get(6).title }"/>',
	            '<c:out value="${planmakelist.get(7).title }"/>',
	            '<c:out value="${planmakelist.get(8).title }"/>',
	            '<c:out value="${planmakelist.get(9).title }"/>',
	            '<c:out value="${planmakelist.get(10).title }"/>',
	            '<c:out value="${planmakelist.get(11).title }"/>'] 
   
   	for (var i = 0; i < 12; i++) {
		num = Number('<c:out value="${planmakelist.get(0).ping }"/>') + i;
      	btn = document.getElementById('placeList-div_button' + num);
      
	    console.log(name[i]);    // title 12개 받아오기 성공
	    let text = name[i];

	
		btn.addEventListener('click', function(){
// 			console.log(document.getElementById('day_hidden').value);
		    var li = document.createElement("li");
		    li.appendChild(document.createTextNode(text));
	// 	    li.appendChild(document.createElement(input));
			li.setAttribute("id","li"+cnt); 
			li.setAttribute("value", document.getElementById('day_hidden').value);
			li.setAttribute("class", "li");
			li.innerHTML += "&nbsp; &nbsp;"
			li.innerHTML += "<input type='button' onclick='removeplan("+cnt+")' class='del_btn' value='삭제'>";
			li.innerHTML += "&nbsp; &nbsp;"
			li.innerHTML += "<input type='text' placeholder='메모 입력' id='memo" + cnt + "' class='memo'>";
		    ol.appendChild(li);
		    cnt++;
		    
		    var item, i;
		    
		    item = document.getElementsByClassName("li");
		    item_m = document.getElementsByClassName("memo");
		    
		    
		    for( i = 0; i < item.length; i++ ) {
		    	item[i].setAttribute("name", "li"+(i+1));
		    	item_m[i].setAttribute("name", "memo"+(i+1));
		    }
		    
		    
		});
   	}
	
// 	for (var i = 0; i < 13; i++) {
// 		let cnt = 1;
// 		let btn = document.getElementById('')
// 	}
	
	// 삭제 기능
	function removeplan(cnt) {
		var plan_item = document.getElementById('li' + cnt);
		ol.removeChild(plan_item);
		
		var item, i;
	    
	    item = document.getElementsByClassName("li");
	    item_m = document.getElementsByClassName("memo");
	    
	    for( i = 0; i < item.length; i++ ) {
	    	item[i].setAttribute("name", "li"+(i+1));
	    	item_m[i].setAttribute("name", "memo"+(i+1));
	    }
	}
	
	// day 버튼 누르면 배경 색상 변경
// 	function btn_click() {
// 		var button;
		
// 		button = document.getElementsByClassName(list-bttn);
// 		button.style.color = "black";
// 	}
	
	function day_filter(value) {
		var value, target, item, i;
		
		value = value;
		item = document.getElementsByClassName("li");
		
// 		console.log(value);
// 		console.log(item);
		
		for( i = 0; i < item.length; i++ ) {
			target = item[i].value;
			console.log(item[i]);
			console.log(target);
			
			if( target == value ) {
				item[i].style.display = "block";
			} else {
				item[i].style.display = "none";
			}
			
		}
		
		
	}
	
// 	function saveClick() {
// 		var item, i;
		
// 		item = document.getElementsByClassName("list-bttn");

// 		for( i = 1; i <= item.length; i++ ) {
// 			document.getElementById('daybtn' + i).click();
// 		}
// 	}

	function saveClick() {
		var item, target, item;
		
		// 저장 버튼 누르면 마지막 day 클릭		
		item = document.getElementsByClassName("list-bttn");
		
		document.getElementById('daybtn' + item.length).click();
		
		target = document.getElementsByName("li4")[0].innerText.trim();
		
		item = document.getElementsByClassName("hidden_input");
		item[0].setAttribute("name", "li4");
		item[0].setAttribute("value", target);
		
		document.getElementById("savePlan").submit();
	}

	
	
</script>
	
</body>
</html>