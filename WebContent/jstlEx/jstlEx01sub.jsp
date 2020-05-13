<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>"jstlEx01sub.jsp</title>

</head>

<body>
<h2>"jstlEx01sub.jsp</h2>
<!--  -->

<h3>${requestScope.num1 }</h3>

<h2>두 값의 합 ${requestScope.num1+requestScope.num2 } </h2>
<h2>두 값의 차 ${requestScope.num1-requestScope.num2 }</h2>
<h2>두 값의 곱 ${requestScope.num1*requestScope.num2 }</h2>
<h2>두 값의 몫 ${requestScope.num1/requestScope.num2 }</h2>



</body>

</html>

