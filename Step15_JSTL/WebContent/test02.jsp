<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--tablib +ctrl+space => uri => 따옴표 안에서 ctrl+space => jsp/jstl/core => 따옴표 밖 ctrl+space => prefix --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02.jsp</title>
</head>
<body>
	<%
		List<String> list= new ArrayList<>();
		list.add("흰둥이");
		list.add("짱구");
		list.add("짱아");
		
		// request 영역에 담기 (friends 라는 key 값으로 list(List<String> 타입) 들어있음)
		request.setAttribute("friends", list);
	%>
	<h3>친구 목록 입니다</h3>
	<ul>
		<%-- <c + ctrl + space => forEach --%>
		<c:forEach var="tmp" items="${friends }">
			<li>${tmp }</li>
		</c:forEach>
	</ul>
</body>
</html>