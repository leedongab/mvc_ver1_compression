<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>jstlEx04.jsp</title>
<style>
table {
	border: 1px solid black;
	margin: 0;
	padding: 0;
}

td {
	border: 1px solid black;
}
</style>

</head>

<body>
	<!-- 반복문 -->
	<h1>
		<c:forEach begin="1" end="10" step="1">하이</c:forEach>
	</h1>
	<h1>

		<c:forEach var="i" begin="1" end="10" step="2">${i}=${i*3}</c:forEach>
		<!-- var 초기식 begin end 조건식   step 증감식  -->
	</h1>
	<!-- 구구단 3단 출력해 보세요 -->
	<h1>

		<c:forEach var="j" begin="1" end="9" step="1">
			3*${j } =  ${j*3} <br />
		</c:forEach>

	</h1>
	<!-- 구구단 9단까지 출력해보세요 ( 단 , table 형태로 개행하여 출력해보세요 -->



	<table style="border-collapse: collspen;">
		<c:forEach var="g1" begin="2" end="9" step="1">
			<c:forEach var="g2" begin="1" end="9" step="1">

				<tr>
					<td>${g1 }*${g2 }=${g1*g2}</td>

				</tr>
			</c:forEach>
		</c:forEach>
	</table>
	<!-- 배열값 출력 -->
	<h1>
		<c:set var="arr" value="<%=new int[] { 1, 2, 3, 4, 5 }%>">
		</c:set>
		<!-- 배열은 래퍼랜스 타입이라 선언 해야 한다.  <%-- <%= new int[]{1,2,3,4,5} %> --%> 선언부! -->
		<c:forEach var="k" items="${arr}">\<!-- 래퍼랜스 주소가 나오니 한번 이렇게 넣어서 쓴다. -->
		${k }
		</c:forEach>
	</h1>
	<!-- jcf -->
	<%-- ArrayList 담아서 보낼 때 많이 쓰는 코드
<c:forEach var="vo" items="list">${vo.name }</c:forEach> --%>

	<!-- jcf : Map 출력 -->
	<%
		HashMap hm = new HashMap();

		hm.put("뷔페", "에슐리");
		hm.put("구내식당1", "구내식당2");
	%>
	<h1>
		<c:set var="m" value="<%=hm%>"></c:set>
			<!-- value 가 변수 이름으로 저장됨 vo면 vo 다른 변수 이름이면 이름 -->
			<c:forEach var="m1" items="${m}">
			 ${m1.key } : ${m1.value} <br />

			</c:forEach>



	</h1>
	<!-- 문자열 출력 -->
	<h1>
		<c:forTokens var="m2" items="1,2,3,4,5" delims="," varStatus="num">
		<!-- 여긴 래퍼랜스 타입이여도 1부터 시작한다 -->
			${num.count }.데이터 :	${m2 } <br />
		</c:forTokens>
	</h1>









</body>

</html>

