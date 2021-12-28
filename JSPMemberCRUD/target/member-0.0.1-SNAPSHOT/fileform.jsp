<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.dao.MemberDAO,com.member.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileform</title>
</head>
<body>
<h1>File Form</h1>
<form method = 'post' action = 'fileupload.jsp' enctype = "multipart/form-data">
	<input type = 'file' name = 'photo'>
	<input type = 'submit' value = 'upload'>
</form>

</body>
</html>