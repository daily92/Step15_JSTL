<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test05.jsp</title>
</head>
<body>
<%
	//session 은 jsp 기본 객체
	session.setAttribute("id", "white");
%>
	<h3>session 에 id 가 담겨 있는지 여부</h3>
	<p>session 영역에 id 가 있는 지 여부 : <strong>${not empty id }</strong></p>
	<%-- taglibrary 에는 else if 문 없어 => 대신 다른 거 있어
		 => (test06.jsp) <c:choose> / <c:when> / <c:otherwise> --%>
	<c:if test="${not empty id }">
		<p><strong>${id }</strong>님 로그인 중...</p>
	</c:if>
</body>
</html>