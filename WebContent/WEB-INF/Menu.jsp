<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Menu - Junimo Cafe</title>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
			integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
			crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>


		<!-- Referred to stackoverflow for help with formatting the search bar -->
		<div class="input-group" style="width: 300px">
			<input type="text" class="form-control" id="search"> <span
				class="input-group-btn">
				<button type="button" class="btn btn-primary" placeholder="Search">Search</button>
			</span>
		</div>

		<!-- This is to only show login button if user isn't logged in; otherwise username is shown and whether if they're an admin or regular user -->
		<c:choose>
			<c:when test="${sessionScope.loggedIn}">
				<p style="padding: 5px">
					Welcome ${sessionScope.username}! <a href="Logout">Logout</a>
					<c:choose>
						<c:when test="${sessionScope.isAdmin}">
							<br>
							<strong>You are an admin</strong>
						</c:when>
						<c:otherwise>
							<br><strong>You are a regular user</strong>
						</c:otherwise>
					</c:choose>
				</p>
			</c:when>
			<c:otherwise>
				<div class="signin">
					<a href="Login" class="btn btn-primary">Login</a>
				</div>
			</c:otherwise>
		</c:choose>

		<br>

		<center>
			<h1>
				Junimo Cafe Menu!
				<hr></hr>
			</h1>
		</center>


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


		<div class="container">
		
			<p style="float: right">
				<c:if test="${sessionScope.isAdmin}">
					<a href="Edit">Edit</a>
				</c:if>
			</p>
			
			<h3>Our Cafe menu offers different kinds of drinks, desserts and Pastries!</h3>
			<center>
				<br>
				<h3>Coffee's and Hot Chocolate</h3>
				<table class="table table-bordered"
					style="background-color: lightgreen;">
					<tr class="active">
						<th>Name</th>
						<th>Description</th>
					</tr>
					<tr>
						<td><img src='./images/hotCoffee.jpg' style='width:230px;height:130px;'><br>Regular Coffee</td>
						<td>If you're on the go!</td>
					</tr>
					<tr>
						<td><img src='./images/icedCoffee.jpg' style='width:230px;height:130px;'><br>Iced Coffee</td>
						<td>If you want your coffee cold..</td>
					</tr>
					<tr>
						<td><img src='./images/chaiLatte.jpg' style='width:230px;height:130px;'><br>Chai Latte</td>
						<td>Black tea infused with cinnamon, clove, and other warming<br>
							spices is combined with steamed milk and topped with foam<br> for the
							perfect balance of sweet and spicy.</td>
					</tr>
					<tr>
						<td><img src='./images/mochaLatte.jpg' style='width:230px;height:130px;'><br>Mocha Latte</td>
						<td>Chocolate sauce blended with espresso and steamed 2% or
							skim milk, topped with whipped cream and chocolate drizzle</td>
					</tr>
					<tr>
						<td><img src='./images/hotChocolate.jpg' style='width:230px;height:130px; display: block; margin: auto;'><br>Hot Chocolate</td>
						<td>With a picture on top that changes!</td>
					</tr>
					<tr>
						<td><img src='./images/javaChip.jpg' style='width:230px;height:130px;'><br>Java Chip Light Frappe</td>
						<td>Mocha sauce, Frappuccino chips are blended with coffee and
							nonfat milk and ice. It's a lighter chip off the original java
							block.</td>
					</tr>
					<tr>
						<td><img src='./images/mochaFrappe.jpg' style='width:230px;height:130px;'><br>Mocha Frappe Blended Coffee</td>
						<td>Mocha sauce, Frappuccino roast coffee, milk and ice all
							come together for a mocha flavor that'll leave you wanting more...</td>
					</tr>
				</table>

				<hr>

				<br>
				<h3>Teas</h3>
				<table class="table table-bordered"
					style="background-color: #FFFFFF;">
					<tr class="active">
						<th>Name</th>
						<th>Description</th>
					</tr>
					<tr>
						<td><img src='./images/greenTea.jpg' style='width:230px;height:130px; display: block; margin: auto;'>Emperor's Green Tea</td>
						<td>This gently smoky, softly sweet green tea is cultivated at
							3,500 feet, shrouded in ethereal clouds and mist. It's tasty no
							matter what language you say it in</td>
					</tr>
					<tr>
						<td><img src='./images/honeyMintTea.jpg' style='width:230px;height:130px; display: block; margin: auto;'>Honey Citrus Mint Tea</td>
						<td>A customer creation so popular it's now on the menu. Jade
							Citrus Mint Green Tea, Peach Herbal Tea, hot water, steamed
							lemonade and a touch of honey mingle tastefully well together for
							a tea that comforts from the inside out.</td>
					</tr>
					<tr>
						<td><img src='./images/sweetTea.jpg' style='width:230px;height:150px; display: block; margin: auto;'>Sweet Tea</td>
						<td>High quality black iced tea brewed double-strength with
							real cane sugar. It's the authentic Sweet Tea flavor you love.</td>
					</tr>
				</table>

				<hr>


				<br>
				<h3>Cakes and Pastries</h3>
				<table class="table table-bordered"
					style="background-color: lightgreen;">
					<tr class="active">
						<th>Name</th>
						<th>Description</th>
					</tr>
					<tr>
						<td><img src='./images/strawberryShortcake.jpg' style='width:230px;height:130px;'><br>Strawberry Shortcake</td>
						<td>Made from fresh strawberries, it consists of sliced
							strawberries that have been macerated with whipped cream served
							over a white cake or biscuit.</td>
					</tr>
					<tr>
						<td><img src='./images/chocolateMousseCake.jpg' style='width:230px;height:130px;'><br>Chocolate Mousse</td>
						<td>Bed of rich chocolate pound cake with delicious chocolate
							mousse, topped with our signature cream and chocolate chips for a
							treat like no other.</td>
					</tr>
					<tr>
						<td><img src='./images/cheeseEnsaymada.png' style='width:230px;height:130px; display: block; margin: auto;'>Cheesy Ensaymada</td>
						<td>A Filipino pastry, it's a Soft, moist bread topped with
							butter, loads of sugar and cheesy deliciousness.</td>
					</tr>
					<tr>
						<td><img src='./images/milkFudge.png' style='width:230px;height:130px; display: block; margin: auto;'>Milk Fudge</td>
						<td>This candy is a Belizean favorite made from boiled sweetened condensed milk, sugar and spices. 
						Peanuts, cashews, coconut flakes or raisins are sometimes added.</td>
					</tr>
					<tr>
						<td><img src='./images/donuts.jpg' style='width:230px;height:130px;'><br>Donut</td>
						<td>Whether you like, sugar, glazed, chocolate, jelly, or
							bavarian creme... we got it all for you!</td>
					</tr>
				</table>

				<br>
				<h3>Desserts</h3>
				<table class="table table-bordered"
					style="background-color: #FFFFFF;">
					<tr class="active">
						<th>Name</th>
						<th>Description</th>
					</tr>
					<tr>
						<td><img src='./images/swirlyBitzSundae.jpg' style='width:230px;height:130px;'><br>Swirly Bitz Sundae</td>
						<td>Deliciousness starts with creamy soft serve ice cream,<br> Your choice of:
							Vanilla, Chocolate, or Swirl.<br>Together with your favorite mix-ins:<br>
							Choose from: Kit-Kat, Oreo, M&M's, Nestle' Crunch.<br>
							Topped with your choice of drizzle: <br>Strawberry, Caramel or Hot Fudge sauce.<br>
							<p>50 additional topping or sauce</p>
						</td>
					</tr>
					<tr>
						<td><img src='./images/thicklyMilkshake.jpg' style='width:230px;height:130px;'><br>Thickly Milkshake!</td>
						<td>Thick, smooth and deliciously creamy soft serve, <br>mixed
							with your choice of decadent<br>Chocolate, Strawberry or Vanilla
							syrup <br>for an extra taste of yumminess.</td>
					</tr>
					<tr>
						<td><img src='./images/junimoCone.jpg' style='width:230px;height:130px;'><br>Junimo Cone</td>
						<td>Make time for a moment of sweetness with<br>a creamy vanilla
							soft serve in a crispy cone.<br>Choose from different colors of
							Junimo!<br>from green to yellow, to even dark chocolate!<br></td>
					</tr>
				</table>

			</center>

		</div>



	</body>
</html>