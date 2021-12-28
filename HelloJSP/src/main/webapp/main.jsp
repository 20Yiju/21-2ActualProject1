<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>My Calculator</h1>
<jsp:useBean id = "mycal" class="com.mycom.test.Calculator"/>
<%
	out.println("10 + 20 =" + mycal.sum(10, 20));

%>


</body>
</html>