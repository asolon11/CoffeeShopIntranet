<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Junimo Cafe</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	
		<div class="input-group" style="width: 300px">
			<input type="text" class="form-control" id="search">
			<span class="input-group-btn">
				<button type="button" class="btn btn-primary" placeholder="Search">Search</button>
			</span>
		</div>
		
		<!-- Only if want a login button on homepage rather than have user login first -->
		<div class="signin">
			<a href="Login" class="btn btn-primary">Login</a>
		</div>
		
		<br></br>
		
		<%-- <h1><c:out value="${pageHeader}" /><hr></hr></h1> --%>
		
		<h1>Welcome to Junimo Cafe!<hr></hr></h1> 
		
		<br>
		
		<ul>
			<li><a class="active" href="#home">Home</a></li>
			<li><a href="#news">News</a></li>
			<li><a href="#menu">Menu</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="#about">About</a></li>
		</ul>
		
		<div class="content">
			Content Here
		</div>
		

	</body>
</html>