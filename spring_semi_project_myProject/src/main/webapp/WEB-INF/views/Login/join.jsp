<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>			
<link rel="stylesheet" type="text/css" href="<c:url value='css/join.css'/>">
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/idCheck.js"></script>

</head>
<body>
<div>
  <h1>회원 가입 페이지입니다</h1>
</div>
<div id="wrap">
<!--  회원 가입 폼  -->
<section>
    <form id="joinForm" name="joinForm" method="post"   action="<c:url value="/join"/>" >
	   <table>
	     <tr><th> 성명</th><td><input type="text" id="memName" name="memName" ></td></tr>
	     <tr><th> ID</th><td><input type="text" id="memId" name="id" > 
	           <input type="button" id="idCheck" value="ID 중복 체크"></td></tr>
	     <tr><th>비밀번호</th><td><input type="password" id="memPwd" name="pw"></td></tr>
	     <tr><th>이메일</th><td><input type="text" id="email1" name="memEmail" ></td></tr>
	     <tr><th>휴대폰 번호</th><td>
	            <input type="text" id="memHp" name="memTel" placeholder="(-)없이 입력"></td></tr>   
	     <tr><td>성별</td><td><input type="text" id="gender" name="memGender" size="5" placeholder="M / F"></td></tr>        
	    <tr><td>나이</td><td><input type="text" id="age" name="memAge" size="5"></td></tr>

<tr><td colspan="2" align="center" id="button"><br>
  <input type="submit" value="가입하기">
  <input type="reset" value="취소">
</td></tr>
             
</table>
</form>	
</section>
      
</div>
</body>
</html>


