<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<h1 style="text-align:center">로그인</h1>
<form action="A_info">
	ID : <input type="text" name="ID" placeholder="아이디"><br>
	PW : <input type="text" name="PW" placeholder="비밀번호"><br>
	<input type="submit" value="로그인">	
</form>
<form action="a_sign.jsp">
	<input type="submit" value="회원가입">
</form>
</body>
</html>