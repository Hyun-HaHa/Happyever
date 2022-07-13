<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="tourlist.js"></script>
</head>

<body>
	<form action="lib.to" method="post">
		<input type="submit" value="db에 저장">
		<input type="hidden" name="command" value="tourlistdb"> <!-- tourlist 요청으로 db에 저장하기 -->
		<table border="1">
			<thead>
			
			</thead>
			
			<tbody>
			
			</tbody>
		</table>
	</form>
</body>
</html>