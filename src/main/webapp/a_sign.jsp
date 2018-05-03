<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>

<h1 style="text-align:center">회원가입</h1>
<form action="A_sign" method="post">
	이름 : <input type="text" name="이름" placeholder="이름"><br>
	ID : <input type="text" name="ID" placeholder="아이디">
	<a href="A_idcheck">중복확인</a><br>
	PW : <input type="text" name="PW" placeholder="비밀번호"><br>
	설명 : <input type="text" name="설명" placeholder="설명"><br>
	<input type="submit" value="가입">	
</form>
<form action="A_login">
	<input type="submit" value="취소">
</form>
</body>
</html>