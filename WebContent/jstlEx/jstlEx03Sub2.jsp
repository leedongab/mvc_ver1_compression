<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>jstlEx03Sub2.jsp</title>

</head>

<body>
	<h1>jstlEx03Sub2.jsp</h1>
	<!-- switch case 문과 비슷한 문법 -->
	<h2>
		<c:choose>
			<c:when test="${sessionScope.visitor == 0 }">처음 뵙겠습니다.</c:when>
			<c:when test="${sessionScope.visitor == 1 }">어서오세요</c:when>
			<c:when test="${sessionScope.visitor >= 2}">또오셧네요</c:when>



		 </c:choose>

	</h2>




</body>

</html>

