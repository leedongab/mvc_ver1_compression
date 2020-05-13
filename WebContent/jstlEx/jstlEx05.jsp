<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>jstlEx05.jsp</title>

</head>

<body>
	<%
		int num1 = 100, num2 = 0;
	%>
	<!-- exception 처리   -->
	<c:catch var="e">
	<!-- try catch 같은 이치 throw 랑 같은 이치 -->
		<%
			int result = num1 / num2;
		%>
		<h2>
			나눗셈의 결과는
			<%=result%></h2>
	</c:catch>

	<c:if test="${e!= null}">

	<%-- <h2>에러메시지 : ${e.message}</h2> --%>
	<h2>에러메시지 : <c:out value="${e.message}"></c:out></h2> <!-- 이게 권장 사항 위랑 같은건데 보안도가 높다 -->
	</c:if>

	<!-- 페이지 이동  -->
	<%-- <c:redirect url="https://search.naver.com/search.naver">  <!-- 뒤로가기를 못한다. 그렇기 때문에 로그인 세션 할떄 유용할듯 하다 -->
		<c:param name="query" value="4월 제철음식"></c:param> 데이터를 실어서 보내는 방법
	</c:redirect> --%>






</body>

</html>

