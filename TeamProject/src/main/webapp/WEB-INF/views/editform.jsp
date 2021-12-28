<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="handong.csee.edu.board.BoardDAO,handong.csee.edu.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form commandName="boardVO" method="POST" action = "../editok" accept-charset="utf-8">
	<form:hidden path = "seq"/>
	<table id = "edit">
		<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
		<tr><td>NickName:</td><td><input type="text" name="nickname"/></td></tr>
		<tr><td>Phone Number:</td><td><input type="text" name="phone"/></td></tr>
		<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
		<tr><td>BirthDay:</td><td><input type="text" name="birth"/></td></tr>
		
		
		
	</table>
	<input type = "submit" value="수정하기"/>
	<input type = "reset" value="초기화하기"/>
	<input type = "button" value="취소하기" onclick = "history.back()"/>

</form:form>
</body>
</html>
