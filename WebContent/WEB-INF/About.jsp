<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>About</title>
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
		<br><br>
		
		<center><h1>About Us!<hr></hr></h1></center>

		<br>

		<ul>

			<li><a class="active" href="Homepage">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="About">About</a></li>
			<!-- The following tab should only show up once the user has logged in -->
			<c:if test="${sessionScope.loggedIn}"> 
				<li><a href="http://192.168.1.130:8080/chat.html">Chatroom</a></li>
				<c:if test="${sessionScope.isAdmin}">
					<li><a>Blog</a></li>
				</c:if>
			</c:if> 
		</ul>
		
		<div class="about">
		
			<u><center><h2>About Junimo Cafe</h2></center></u>
			<p>At the Junimo Cafe, our goal is to provide the freshest and tastiest pastries, coffees, teas, and desserts
			to all our customers. Setting in a contemporary, modern, and comfortable location, our mission is to give you the best cafe experience
			there is. Everything we make is only to the best of our chef's standards. Our specialized coffees and teas are crafted to your liking,
			just let us know!
			<br><br>
			Junimo Cafe also provides an intranet service. Users within the range of the "cs3337-coffeenet" network can access this service. Once connected,
			users can open their web browser and access one of the many features. Features include the coffee shops web pages, chat system, and blog 
			entries. 
			</p>
			
			<br>
			<i><p>"Good communication is just as stimulating as black coffee, and just as hard to sleep after" <br>
			 -Anne Morrow Lindbergh
			</p></i>
			
			<hr>
			
			<h2>
			<u><center>Location</u></center>
			</h2>
			<center><p>14784 Rose, FL, 12430</p></center>
		
		</div>
		
		<br>
		
	</body>
</html>