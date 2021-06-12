<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보</title>
<link rel="stylesheet" type="text/css" href="<c:url value='css/memlist.css'/>" >

</head>
<body>
<div>
	<h3>개인정보</h3>
</div>
<div>
	<table id="list_table">
		<tr><th>이름</th><td>${mem.memName }</td></tr>
		<tr><th>아이디</th><td>${mem.id }</td></tr>
		<tr><th>비번</th><td>${mem.pw }</td></tr>
		<tr><th>이메일</th><td>${mem.memEmail }</td></tr>
		<tr><th>연락처</th><td>${mem.memTel }</td></tr>
		<tr><th>성별</th><td>${mem.memGender }</td></tr>
		<tr><th>나이</th><td>${mem.memAge }</td></tr>
	</table>
</div>	
<br><br>
</body>
</html>











