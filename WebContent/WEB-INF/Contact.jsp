<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Contact Us</title>
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
		<br><br>
		
		<h1>Questions? Concerns? <br>Let Us Know!</h1>
		
		<ul>
			<li><a class="active" href="Homepage">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="#about">About</a></li>
		</ul>
		
		<div id="narrow">
			
			<div class="contact">
				<h2 style="text-indent: 20px">Get In Touch</h2>
				<br>
				<p>You can also contact us at: </p>
				<p style="text-indent: 30px"><em>(555) 545-3421</em></p>
				<address>
					<a href="mailto:webmaster@example.com">webmaster@example.com</a>
				</address>
				<p style="margin-left: 30px">PO Box 310<br>Rose, FL, 12430<br>USA</p>
				
			</div>
		</div>
		
		<div id="wide">
			<form action="Inquiry" method="post">
				
				<div class="contact" style="text-align: center">
					
					<br><br>
					<label>Name </label>
					<input type="text" id="contactName" name="contactName" required>
					<br><br>
					<label>Email </label>
					<input type="email" id="email" name="email" required>
					<br><br>
					<label>Phone </label>
					<input type="text" id="phoneNumber" name="phoneNumber">
					<br><br>
					<p class="field">
						<label>Message: </label>
					<!-- <input type="text" id="message" name="message"> -->
						<textarea> </textarea>
					</p>
					<br><br>
					
					<button type="send" class="btn btn-success">Send</button>
					<br>
				</div>
			</form>
		</div>
		
	</body>
</html>