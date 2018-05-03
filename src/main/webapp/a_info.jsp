<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보</title>
</head>
<body>
<%
		HashMap<String, Object> data 
			= (HashMap<String, Object>) request.getAttribute("data");
		%>
		<h1>이름 : <%= data.get("이름") %></h1>
		<h1>ID : <%= data.get("ID") %></h1>
		<h1>설명 : <%= data.get("설명") %></h1>
		<a href="A_login">돌아가기</a>
		<a href="a_update.jsp?ID=<%=data.get("ID")%>">수정</a>
</body>
</html>