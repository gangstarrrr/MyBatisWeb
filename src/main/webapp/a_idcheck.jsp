<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>중복확인</title>
</head>
<body>
<%
	List<HashMap<String, Object>> data 
			= (List<HashMap<String, Object>>) request.getAttribute("data");
	request.setAttribute("data", data);
	System.out.println(data);
		%>
	<h1 style="text-align:center">중복확인</h1>
	<form action="A_idcheck2">
		<input type="text" name="ID" placeholder="아이디입력 ㄱ">
		<input type="submit" value="중복확인ㄱ">
	</form>

	<form action="a_sign.jsp">
		<input type="submit" value="취소">
	</form>
</body>
</html>