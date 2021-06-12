<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top 메뉴 페이지</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/menu.css">
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>

	<header>
		<div id="headerBox">
			<div id="logoBox">
				<a href="<c:url value='/'/>"> <img
					src="<c:url value='image/shopping_log.PNG'/>" id="logoImg"></a>
			</div>
			<div id="topMenuBox">
				<c:if test="${empty sessionScope.sid }">
					<a href=" <c:url value='/Login/loginForm' /> ">로그인</a>
					<a href=" <c:url value='/Login/joinForm' /> ">회원가입</a>
				</c:if>
				<c:if test="${not empty sessionScope.sid }">  
			${sessionScope.sid }님 환영합니다~!	
			<a href=" <c:url value='/logout' /> ">로그아웃</a>
				</c:if>
			</div>


		</div>
	</header>
	<nav>
		<div id="mainMenuBox">
			<ul id="menuItem">
				<li><a href="<c:url value='/member/company'/> ">회사소개</a></li>
				<li><a href="#">쇼핑 리스트</a></li>
				<li><a href="#">Q&A</a></li>
				<li><a href="<c:url value='/member/myPage'/> ">개인정보</a></li>
			</ul>
		</div>
	</nav>



</body>
</html>