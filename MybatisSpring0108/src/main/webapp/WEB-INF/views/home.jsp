<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<!-- 회원로그인을 한 경우 -->
	<c:if test="${sessionScope.loginId != null}">
		<h1>${sessionScope.loginId}님 환영합니다!</h1>
		<form action="logout">
			<input type="submit" value="Logout">
		</form>
	</c:if>
	
	
	<!-- 새로 들어온 경우(회원 로그인을 하지 않은 경우) -->
	<c:if test="${sessionScope.loginId == null}">
	
	<!-- 회원가입폼 이동액션 -->
	<form action="signUp">
		<input type="submit" value="SIGN UP">
	</form> 
	<!-- 로그인폼 이동액션 -->
	<form action="login">
		<input type="submit" value="LOGIN">
	</form>
	
	</c:if>
	
</body>
</html>
