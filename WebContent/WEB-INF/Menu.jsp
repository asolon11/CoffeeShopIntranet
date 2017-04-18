






































<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu - Junimo Cafe</title>
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
	
		<!-- Only if want a login button on homepage rather than have user login first -->
		<div class="signin">
			<a href="Login" class="btn btn-primary">Login</a>
		</div>

		<br></br>

		<%-- <h1><c:out value="${pageHeader}" /><hr></hr></h1> --%>

		<center><h1>Menu!- Junimo Cafe<hr></hr></h1> </center>

		<br>

		<ul>
			<li><a class="active" href="Homepage">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="#about">About</a></li>
		</ul>

<!--<body>

		<ul>
			<li><a class="active" href="Home">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="#about">About</a></li>
		</ul>


<center>
		<div class="input-group" style="width: 300px">
			<input type="text" class="form-control" id="search">
			<span class="input-group-btn">
				<button type="button" class="btn btn-primary" placeholder="Search">Search</button>
			</span>
		</div>
		
		
		<div class="signin">
			<a href="Login" class="btn btn-primary">Login</a>
		</div>
		
		<br></br>
		
		<h1>Menu! - Junimo Cafe<hr></hr></h1> 
</center>-->

<div class="container">
<h3>Our Cafe menu offers different kinds of stuvves... :D</h3>

<br>
<h3>Coffees</h3>
<table class="table table-bordered" style="background-color:lightgreen;"> 
<tr class="active">
<th>Name</th><th>Description</th>			
</tr>
<tr><td>Regular Coffee</td><td>If you're on the go!</td></tr>
<tr><td>Iced Coffee</td><td>If you want it kewwwl...</td></tr>
<tr><td>Chai Latte</td><td>Black tea infused with cinnamon, clove, and other warming spices is combined with steamed milk and topped with foam for the perfect balance of sweet and spicy.</td></tr>
<tr><td>Mocha Latte</td><td>Chocolate sauce blended with espresso and steamed 2% or skim milk, topped with whipped cream and chocolate drizzle</td></tr>
</table>

<hr>

<br>
<h3>Teas and Frappes</h3>
<table class="table table-bordered" style="background-color:#FFFFFF;"> 
<tr class="active">
<th>Name</th><th>Description</th>			
</tr>
<tr><td>Emperor's Green Tea</td><td>This gently smoky, softly sweet green tea is cultivated at 3,500 feet, shrouded in ethereal clouds and mist. It's tasty no matter what language you say it in</td></tr>
<tr><td>Honey Citrus Mint Tea</td><td>A customer creation so popular it's now on the menu. Jade Citrus Mint Green Tea, Peach Herbal Tea, hot water, steamed lemonade and a touch of honey mingle tastefully well together for a tea that comforts from the inside out.</td></tr>
<tr><td>Sweet Tea</td><td>High quality black iced tea brewed double-strength with real cane sugar. It's the authentic Sweet Tea flavor you love.</td></tr>
<tr><td>Java Chip Light Frappe</td><td>Mocha sauce, Frappuccino chips are blended with coffee and nonfat milk and ice. It's a lighter chip off the original java block.</td></tr>
<tr><td>Mocha Frappe Blended Coffee</td><td>Mocha sauce, Frappuccino roast coffee, milk and ice all come together for a mocha flavor that'll leave you wanting more...</td></tr>
<tr><td>Double Chocolaty Chip Creme Frappe Blended Creme</td><td>Rich mocha-flavored sauce meets up with chocolaty chips, milk and ice for a blender bash. Top it off with sweetened whipped cream and mocha drizzle for a real party in your mouth.</td></tr>
</table>

<hr>


<br>
<h3>Cakes and Pastries</h3>
<table class="table table-bordered" style="background-color:lightgreen;"> 
<tr class="active">
<th>Name</th><th>Description</th>			
</tr>
<tr><td>Oreo Cheesecake</td><td>If it seems like a shame to crush the OREO Cookies before you get to eat them, one bite of this delectable cheesecake will change your mind.</td></tr>
<tr><td>Strawberry Shortcake</td><td>Made from fresh strawberries, it consists of sliced strawberries that have been macerated with whipped cream served over a white cake or biscuit.</td></tr>
<tr><td>Chocolate Mousse</td><td>Bed of rich chocolate pound cake with delicious chocolate mousse, topped with our signature cream and chocolate chips for a treat like no other.</td></tr>
<tr><td>Black Forest Cake</td><td>Mouth-watering layers of liqueur-moistened chocolate cake, brimming with maraschino cherries and finished with generous chocolate curls.</td></tr>
<tr><td>Cheesy Ensaymada</td><td>A Filipino pastry, it's a Soft, moist bread topped with butter, loads of sugar and cheesy deliciousness.</td></tr>
<tr><td>Cheese Roll</td><td>Sweet, flaky pastry dough filled with cream cheese filling. </td></tr>
<tr><td>Donut</td><td>Whether you like, sugar, glazed, chocolate, jelly, or bavarian creme... we got it all for you!</td></tr>
</table>

<br>
<h3>Desserts</h3>
<table class="table table-bordered" style="background-color:#FFFFFF;"> 
<tr class="active">
<th>Name</th><th>Description</th>			
</tr>
<tr><td>Sundae</td><td>Smooth and creamy vanilla soft serve, topped with your choice of sweet strawberry, yummy caramel, or hot fudge sauce... Mmmm yummy.</td></tr>
<tr><td>Swirly Bitz</td><td>Deliciousness starts with creamy vanilla soft serve swirled together with your favorite mix-ins. Choose from one of 4 toppings: from Kit-Kat to Oreo to M&M's to Nestle' Crunch! and enjoy the yummy taste.</td></tr>
<tr><td>Thickly Milkshake!</td><td>Thick, smooth and deliciously creamy soft serve, mixed with your choice of decadent chocolate, strawberry or vanilla syrup for an extra taste of yumminess.</td></tr>
<tr><td>Junimo Cone</td><td>Make time for a moment of sweetness with a creamy vanilla soft serve in a crispy cone. Choose from different colors of Junimo, from green to yellow, to even dark chocolate! YeaOh!</td></tr>
</table>







</div>-->




</body>
</html>