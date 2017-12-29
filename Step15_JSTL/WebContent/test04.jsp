<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04.jsp</title>
</head>
<body>
	<h3>jstl 의 if 문</h3>
	
	<%-- <c + ctrl + space => c:if ("" 안의 조건이 true 면 if 문 출력) --%>
	<c:if test="true">
		<p>출력됨</p>
	</c:if>
	<c:if test="false">
		<p>출력됨2</p>
	</c:if>
	<c:if test="${10 gt 2} }">
		<p>10 은 2 보다 커요</p>
	</c:if>
	<c:if test="${10 lt 2 }">
		<p>10 은 2 보다 작아요</p>
	</c:if>
</body>
</html>