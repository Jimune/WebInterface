<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="style.css" type="text/css">
	<title>Login</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<div class="content center login-container">
		<form method="post" action="login">
			<label class="align-left" for="name">Username: </label>
			<input class="align-right" type="text" name="name" id="name"><br>
			<label class="align-left" for="pass">Password: </label>
			<input class="align-right" type="password" name="pass" id="pass"><br>
			<input class="align-right submit-button" type="submit" value="Login">
		</form>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>