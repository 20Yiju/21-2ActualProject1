<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>
</head>
<body>
<h1>Hello World! (boardList)</h1>

<P>  The time on the server is ${serverTime}. </P>

<img src = "./img/IMG_7237.jpg" width = "250" height = "200"/>

<table>
<c:forEach items = "${list}" var = "one">
	<tr><td>${one}</td></tr>
</c:forEach>
</table>

</body>
</html>