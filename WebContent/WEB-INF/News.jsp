<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>News</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	
		<!-- Referred to stackoverflow for help with formatting the search bar -->
		<div class="input-group" style="width: 300px">
			<input type="text" class="form-control" id="search">
			<span class="input-group-btn">
				<button type="button" class="btn btn-primary" placeholder="Search">Search</button>
			</span>
		</div>

		<!-- This is to only show login button if user isn't logged in; otherwise username is shown and whether if they're an admin or regular user -->
		<c:choose>
			<c:when test="${sessionScope.loggedIn}">
				<p style="padding: 5px">Welcome ${sessionScope.username}! <a href="Logout">Logout</a>
					<c:choose>
	    				<c:when test="${sessionScope.isAdmin}">
	       					<br><strong>You are an admin</strong>   
	    				</c:when>
	    				<c:otherwise>
	        				<br><strong>You are a regular user</strong>
	    				</c:otherwise>
					</c:choose></p>
			</c:when>
			<c:otherwise>
				<div class="signin">
					<a href="Login" class="btn btn-primary">Login</a>
				</div>
			</c:otherwise>
		</c:choose>

		<br>
	
		<center><h1>News!<hr></hr></h1></center>
		
		<br>
		
		<ul>
			<li><a class="active" href="Homepage">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="About">About</a></li>
			<!-- The following tab should only show up once the user has either logged in or is anonymous -->
			<c:if test="${sessionScope.loggedIn}"> 
				<li><a href="http://192.168.1.130:8080/chat.html">Chatroom</a></li>
				<c:if test="${sessionScope.isAdmin}">
					<li><a>Blog</a></li>
				</c:if>
			</c:if> 
		</ul>
		
		<div class="news-content">
			<!-- The following c:if is so that the edit option shows up only if user is an admin -->
			<p style="float: right">
				<c:if test="${sessionScope.isAdmin}">
					<a href="Edit">Edit</a>
				</c:if>
			</p>
			
			<h2 style="text-align: center; text-decoration: underline;">Opening Event!</h2>
			
			<h3 style="text-align: center;">Get A Free Drink!</h3>
			
			<br>
			
			<img src='./images/openingPromotion.jpg' style='width:230px;height:300px; display: block; margin: auto;'>
		
			<p style="text-align: center;"> 
			Create or post on the Blog and <br>you'll be eligible to get a free drink of your choice!<br> Just show us what you posted at the time of ordering!
			<br>
			</p>
			
			<hr />
			<br>
			
			<h2 style="text-align: center;">Coming Soon!</h2>
			<br>
			
			<img src='./images/chocoButternutDonut.png' style='width:230px;height:130px; display: block; margin: auto;'>
		
			<p style="text-align: center;"> 
			Choco Butternut Donut!<br><br> A yummy delicacy from the Philippines!
			<br>
			Coming May 8th!
			</p>
			
			<hr />
			<br>
			
			<h2 style="text-align: center;">We have a new dessert item!</h2>
			<br>
			
			<img src='./images/flan.gif' style='width:230px;height:130px; display: block; margin: auto;'>
			
			<p style="text-align: center;"> 
			Nice Cold Flan!<br><br>Just in time to keep you cool for the summer! Yum!
			<br>
			Coming in the Summer!
			</p>
			
			<hr />
			
			<p>Any other new information will be added later on.</p>
		</div>
		<br>

	</body>
</html>