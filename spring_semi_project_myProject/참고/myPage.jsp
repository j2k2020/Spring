<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>개인정보</title>
	</head>
	<body>
		<h3>개인정보</h3>
		<table border="1" width="600">
			<tr><th>이름</th><th>아이디</th>
					<th>비번</th><th>이메일</th><th>연락처</th><th>성별</th><th>나이</th></tr>
		    	<c:forEach items="${memList }" var="mem">
		    	<tr>
		    		<td>${mem.memName }</td>
		    		<td>${mem.id }</td>
		    		<td>${mem.pw }</td>
		    		<td>${mem.memEmail }</td>
		    		<td>${mem.memTel }</td>
		    		<td>${mem.memGender }</td>
		    		<td>${mem.memAge }</td>
		    	</tr>
		    	 </c:forEach>	
		</table><br><br>
	</body>
</html>











