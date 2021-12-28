<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>

body {
	background-image: url(data:image/jpeg;base64,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);
	background-repeat: repeat;
	background-size: 100% 100%;
}

label {
	display: inline-block;
	color: #CC006;
	width : 130px;
}

button {
	background-color: rgb(255, 231, 231);
	color: #CC0066;
	font-size: 15px;
	border: 5px rgb(252, 170, 170);
	padding: 7px;
	border-radius: 5px;
}
 fieldset {
 	line-height : 50px;
 	width : 500px;
 	height : 300px;
 	margin : 0 auto;
 }


</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding: 10px'>
		
		<form method="post" action="loginOk">
		<fieldset>
		<legend>🙋🏻‍♀️Login Page🙋🏻</legend>
		<label>User ID: </label><input type='text' name='userid' />
		<br>
		<label>Password: </label> <input type='password' name='password' />
		<br>
		<button type='submit'>Login</button>
		</fieldset>	
		</form>
	</div>
</body>
</html>