<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>

	<div id="wrap">

		<!--  TOP -->
     <jsp:include page="/WEB-INF/views/top.jsp" flush="true" />




<div style="width: auto; height: auto; text-align: center">
    <img src="<c:url value='/image/online_shopping.png'/>" 
    style="width: auto; max-width: 100%; vertical-align: middle" />
</div> 


		<!-- BOTTOM -->
     <jsp:include page="/WEB-INF/views/bottom.jsp" flush="true" />

	</div>
</body>
</html>
