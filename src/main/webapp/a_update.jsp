<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보수정</title>
</head>
<body>
	<%
		String ID = request.getParameter("ID");
	%>
<h1 style="text-align:center">회원 정보 수정</h1>
<form action="A_update" method="post">
	ID : <%=ID %><br>
	<input type="hidden" name="ID" value=<%=ID %>>
	이름 : <input type="text" name="이름" placeholder="이름"><br>
	PW : <input type="text" name="PW" placeholder="비밀번호"><br>
	설명 : <input type="text" name="설명" placeholder="설명"><br>
	<input type="submit" value="수정">	
</form>
<a href="A_login">취소</a>
</form>
</body>
</html>