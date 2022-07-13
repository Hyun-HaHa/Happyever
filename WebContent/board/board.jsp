<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/board/board.css">
</head>

<body>
	<%@include file="/header.jsp"%>

	<div class="head">
		<h3>Happy Travel</h3>

		<div class="div_tbl">
			<table border="1" class="table_cate">
				<tbody>
					<tr>
						<th class="tbl_th" scope="col">여행지</th>
						<td>
							<button class="tbl_btn all" id="cate" value="all" onclick="start(this)">
							전체</button>
							<button class="tbl_btn" id="cate" value="서울" onclick="start(this)">
							서울</button>
							<button class="tbl_btn" id="cate" value="부산" onclick="start(this)">
							부산</button>
							<button class="tbl_btn" id="cate" value="제주" onclick="start(this)">
							제주</button>
							<button class="tbl_btn" id="cate" value="전주" onclick="start(this)">
							전주</button>
							<button class="tbl_btn" id="cate" value="강릉" onclick="start(this)">
							강릉</button>
							<button class="tbl_btn" id="cate" value="여수" onclick="start(this)">
							여수</button>
						</td>
					</tr>
					<tr>
						<th class="tbl_th" scope="row">여행일</th>
						<td>
							<button class="tbl_btn" onclick="start()">
								1~3일</button>
								<button class="tbl_btn" onclick="start()">
									4~6일</button>
									<button class="tbl_btn" onclick="start()">
										7~10일</button>
										<button class="tbl_btn" onclick="start()">
											11~15일</button>
											<button class="tbl_btn" onclick="start()">
												15일 이상</button>
						</td>
					</tr>
					<tr>
						<th class="tbl_th" scope="row">여행시기</th>
						<td>
							<button class="tbl_btn" onclick="start()">
								봄</button>
								<button class="tbl_btn" onclick="start()">
									여름</button>
									<button class="tbl_btn" onclick="start()">
										가을</button>
										<button class="tbl_btn" onclick="start()">
											겨울</button>
						</td>
					</tr>
					<tr>
						<th class="tbl_th" scope="row">여행테마</th>
						<td>
							<button class="tbl_btn" onclick="start()">
								가족여행</button>
								<button class="tbl_btn" onclick="start()">
									커플여행</button>
									<button class="tbl_btn" onclick="start()">
										우정여행</button>
										<button class="tbl_btn" onclick="start()">
											나홀로여행</button>
											<button class="tbl_btn" onclick="start()">
												기타</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div id="search">
		<div class="search_content">
			<a href="">인기</a> ㅣ <a href="">최신</a>
		</div>

		<div class="search_container">
			<input type="text" placeholder="검색어를 입력하세요." class="search_text"
				id="value" onkeyup="filter()">
			<!-- 			<input type="button" value="검색하기" class=""> -->
			<button type="button" class="btn btn-primary">검색하기</button>
		</div>
	</div>

	<div class="container_p">
		<div class="row">
<!-- 			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item"> -->
<%-- 				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/side_banner1.PNG" --%>
<!-- 					class="img_r"> -->

<!-- 					<div class="button_text"> -->

<!-- 						<span class="name"><h3>전주 한옥 마을</h3></span> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->

<!-- 			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item"> -->
<%-- 				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/side_banner2.PNG" --%>
<!-- 					class="img_h"> -->

<!-- 					<div class="button_text"> -->

<!-- 						<span class="name"><h3>제주도</h3></span> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->

<!-- 			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item"> -->
<%-- 				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/side_banner3.PNG" --%>
<!-- 					class="img_h"> -->

<!-- 					<div class="button_text"> -->

<!-- 						<span class="name"><h3>에어비앤비</h3></span> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/popular_busan.PNG"
					class="img_r">

					<div class="button_text">

						<span class="name"><h3>부산여행</h3></span>
					</div>
				</a>
			</div>

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img
					src="${pageContext.request.contextPath }/images/popular_gangneung.PNG" class="img_r">

					<div class="button_text">

						<span class="name"><h3>강릉여행</h3></span>
					</div>
				</a>
			</div>

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img
					src="${pageContext.request.contextPath }/images/popular_gyeongju.PNG" class="img_r">

					<div class="button_text">

						<span class="name"><h3>경주여행</h3></span>
					</div>
				</a>
			</div>

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/popular_jeju.PNG"
					class="img_r">

					<div class="button_text">

						<span class="name"><h3>제주도여행</h3></span>
					</div>
				</a>
			</div>

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img
					src="${pageContext.request.contextPath }/images/popular_jeonju.PNG" class="img_r">

					<div class="button_text">

						<span class="name"><h3>전주여행</h3></span>
					</div>
				</a>
			</div>

<!-- 			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item"> -->
<%-- 				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/popular_seoul.jpg" --%>
<!-- 					class="img_h"> -->

<!-- 					<div class="button_text"> -->
<!-- 						<span class="name"><h3>서울</h3></span> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/main_img01.png"
					class="img_r">

					<div class="button_text">
						<span class="name"><h3>test1</h3></span>
					</div>
				</a>
			</div>

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/main_img02.png"
					class="img_r">

					<div class="button_text">
						<span class="name"><h3>test2</h3></span>
					</div>
				</a>
			</div>

			<div class="col-12 col-md-6 col-lg-4 col-xl-3 item">
				<a href="#" class="button1"> <img src="${pageContext.request.contextPath }/images/main_img03.png"
					class="img_r">

					<div class="button_text">
						<span class="name"><h3>test3</h3></span>
					</div>
				</a>
			</div>

		</div>
	</div>

	<div class="page">
		<nav aria-label="...">
			<ul class="pagination" style="width: fit-content;">
				<li class="page-item"><a class="page-link" href="#">이전</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item-center"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">다음</a></li>
			</ul>
		</nav>
	</div>

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>

	<%@include file="/footer.jsp"%>

</body>



<script type="text/javascript">

	function filter() {
	
		var value, name, item, i;
		
		value = document.getElementById("value").value.toUpperCase();
		item = document.getElementsByClassName("item");
		
		for( i = 0; i < item.length; i++ ) {
			name = item[i].getElementsByClassName("name");
			if( name[0].innerHTML.toUpperCase().indexOf(value) > -1 ) {
				item[i].style.display = "block";
			} else {
				item[i].style.display = "none";
			}
		}
	}
	
	function start(val) {
		var value, name, item, i;
		
		value = val.value.toUpperCase();
		item = document.getElementsByClassName("item");
		
		console.log(value);
		console.log(item);
		
		if( value == "ALL" ) {
			for( i = 0; i < item.length; i++ ) {
				item[i].style.display = "block";
			}
		} else {
			for( i = 0; i < item.length; i++ ) {
				name = item[i].getElementsByClassName("name");
				if( name[0].innerHTML.toUpperCase().indexOf(value) > -1 ) {
					item[i].style.display = "block";
				} else {
					item[i].style.display = "none";
				}
			}
		}
		
		
	}
	
</script>

</html>









