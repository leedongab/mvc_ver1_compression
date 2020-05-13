<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>jstlEx03Sub.jsp</title>

</head>

<body>
	<h2>jstlEx03Sub.jsp</h2> <!-- 방문자수 카운트 해서 기억하게금 할수 있다  --> <!-- 변수를 value 로 지정 할수 있게 해준다. -->
	<h1>
	<c:if test="${sessionScope.visitor == 0  }">처음 뵙겠습니다.</c:if>
	<c:if test="${sessionScope.visitor == 1  }">어서 오세요</c:if>
	<c:if test="${sessionScope.visitor >= 2  }">자주 오시네요</c:if>

	</h1>



</body>

</html>

