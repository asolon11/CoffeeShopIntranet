<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Create An Account</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	
		<form action="CreateAccount" method="post">
			<br>
			<!-- <h1>Create Your Account!</h1> -->
				<div class="news-content">
					<fieldset>
						<legend>Customer Info</legend>
						<div>
							<label for="firstName">First Name:</label>
							<input type="text" style="width: 525px" id="firstName" name="firstName" required>
						</div>
						<div>
							<label for="lastName">Last Name:</label>
							<input type="text" style="width: 525px" id="lastName" name="lastName" required>
						</div>
						<div>
							<label for="username">Username:</label>
							<input type="text" id="username" name="username" required>
						</div>
						<div>
							<label for="password">Password:</label>
							<input type="password" id="password" name="password" required>
						</div>
					
				
					</fieldset>
					
					<br>
					
					<div class="button">
						<button type="submit" class="btn btn-primary">Submit Info</button>
					</div>
				</div>
		
		</form>
	
		<br>
	</body>
</html>