<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<form action="Login" method="post">
			<h1>Login<hr /></h1>
			
			<div class="userlogin">
			
				<label for="username">Username:</label>
				<input type="text" id="username" name="username" required>
				<br></br>
				<label for="password">Password:</label>
				<br>
				<input type="password" id="password" name="password" required>
				
				<br></br>
				<button type="submit" class="btn btn-success">Login</button>
				<a href="CreateAccount" class="btn btn-primary" id="createAcc">Create An Account</a>
			
			</div>
			
			
		</form>

	</body>
</html>