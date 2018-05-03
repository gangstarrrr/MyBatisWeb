<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
	<h1 style="text-align:center">중복확인</h1>
	<% 
	List<HashMap<String, Object>> data 
			= (List<HashMap<String, Object>>) request.getAttribute("data");
	String ID = request.getParameter("ID");
	String html="";
	System.out.println(data);
		int yes=0;
		for(int i = 0; i < data.size(); i++){
			if(ID.equals(data.get(i).get("ID"))){
				yes=1;	
			}
		}
		if(yes==1){
			html="아이디 중복입니다.";
		
		}else{
			html="아이디 사용 가능합니다.";
		}
	request.setAttribute("data", data);	
	%>
	<%=html %>
	<form action="a_sign.jsp">
		<input type="submit" value="취소">
	</form>
	<form action="a_idcheck.jsp">
		<input type="submit" value="다시 검사하기">
	</form>
</body>
</html>