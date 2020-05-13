<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>jstlEx01.jsp</title>

</head>

<body>
<!-- +JSTL (JSP Standard Tag Library)
:jsp action tag는 커스텀이 가능. 잘만들어진 tag를 모아놓은 tag library

cf) jquery:javascript 잘되어 있는 것들을 모아놓은 library
:사용방법 = jquery 호출하듯 jstl 도 추가 해주어야함
 -->

	<!--
	c:set : - 번수를 선언하고 그 변수에 초기값을 대입하는 기능의 액션
	-scope 객체 범위를 지정할 수 있음
		(page , request, session , application)

 -->
<c:set var="num1" value="200" scope="request"/>
<c:set var="num2" value="100" scope="request"/>
<jsp:forward page="jstlEx01sub.jsp"></jsp:forward>  <!--  포워드 방식 꼭 공부 할것  -->

</body>

</html>

