<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	<!-- 형식화  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="region" value="${ param.region}" />
	<c:if test="${region eq'seoul' }">
		<label class="region">서울</label>
	</c:if>
	<c:if test="${region eq'busan' }">
		<label class="region">부산</label>
	</c:if>
	<c:if test="${region eq'jeju' }">
		<label class="region">제주도</label>
	</c:if>
	<c:if test="${region eq'gangneung' }">
		<label class="region">강릉</label>
	</c:if>
	<c:if test="${region eq'gyeongju' }">
		<label class="region">경주</label>
	</c:if>
	<c:if test="${region eq'yeongwol' }">
		<label class="region">영월</label>
	</c:if>
	<c:if test="${region eq'jeonju' }">
		<label class="region">전주</label>
	</c:if>
	<c:if test="${region eq'yeosu' }">
		<label class="region">여수</label>
	</c:if>
	<c:if test="${region eq'incheon' }">
		<label class="region">인천</label>
	</c:if>
	<c:if test="${region eq'sokcho' }">
		<label class="region">속초</label>
	</c:if>
	<c:if test="${region eq'daegu' }">
		<label class="region">대구</label>
	</c:if>
	<c:if test="${region eq'chuncheon' }">
		<label class="region">춘천</label>
	</c:if>
	
</body>
</html>