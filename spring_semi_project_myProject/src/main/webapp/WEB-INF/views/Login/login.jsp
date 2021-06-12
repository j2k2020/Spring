<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="<c:url value='css/login.css'/>">

</head>
<body>

	<div>
		<h1>* 로그인 해주세요^^ *</h1>
	</div>
	<div class="wrap">

		<!--  로그인 폼  -->
		<section class="bg-text">

			<form method="post" id="loginForm" action="<c:url value="/login"/>">

				<table id="table1">
					<tr>
						<th>ID</th>
						<td><input type="text" id="id" name="id" placeholder="아이디 입력"></td>
					</tr>
					<tr>
						<th>PASSWORD</th>
						<td><input type="password" id="pw" name="pw"
							placeholder="비밀번호 입력"></td>
					</tr>
				</table>
				<table id="table2">
					<tr>
						<td colspan="2" align="center" id="button"><br> <input
							type="submit" value="로그인"> <input type="reset" value="취소"></td>
					</tr>
					<tr>
						회원가입을 안하셨나요? -->
						<a href=" <c:url value='/Login/joinForm' /> ">회원가입</a>
					</tr>
				</table>
			</form>
		</section>

	</div>
	
</body>
</html>