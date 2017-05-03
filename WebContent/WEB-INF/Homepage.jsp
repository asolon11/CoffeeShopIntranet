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

		<br><br>

		<center><h1>Welcome to Junimo Cafe!<hr></hr></h1></center>

		<ul>

			<li><a class="active" href="Homepage">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="About">About</a></li>
			<!-- The following tabs should only show up once the user has logged in -->
			<c:if test="${sessionScope.loggedIn}"> 
				<li><a href="http://192.168.1.130:8080/chat.html">Chatroom</a></li>
				<c:if test="${sessionScope.isAdmin}">
					<li><a>Blog</a></li>
				</c:if>
			</c:if> 
		</ul>
		
		<h2 style="margin-left: 290px;">Come try delicacies from around the world! </h2>
		<br>
				
		<div class="manualSlideshow">
		
			<img class="mySlides" src="./images/chocoButternut.png" style="width: 100%">
			<img class="mySlides" src="./images/chaiLatte.jpg" style="width: 100%">
			<img class="mySlides" src="./images/cheeseEnsaymada.png" style="width: 100%">
			<img class="mySlides" src="./images/hotCoffee.jpg" style="width: 100%">
			<img class="mySlides" src="./images/milkFudge.png" style="width: 100%">
			<img class="mySlides" src="./images/honeyMintTea.jpg" style="width: 100%">
		
			<button class="button black display-left" onclick="plusDivs(-1)">&#10094;</button>
			<button class="button black display-right" onclick="plusDivs(+1)">&#10095;</button>
		</div>
		
		<script>
			var slideIndex = 1;
			showDivs(slideIndex);

			function plusDivs(n) {
 				showDivs(slideIndex += n);
			}

			function showDivs(n) {
  			var i;
 			 var x = document.getElementsByClassName("mySlides");
 			 if (n > x.length) {slideIndex = 1}    
  				if (n < 1) {slideIndex = x.length}
 					 for (i = 0; i < x.length; i++) {
   						  x[i].style.display = "none";  
  					}
  				x[slideIndex-1].style.display = "block";  
			}
		</script>
		<br>
		
	</body>
</html>
