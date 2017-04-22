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
	
		<!-- Only if want a login button on homepage rather than have user login first -->
		<!-- <div class="signin">
			<a href="Login" class="btn btn-primary">Login</a>
		</div> -->
		
		<!-- This is to only show login button if user isn't logged in; otherwise username is shown and whether if they're an admin or regular user -->
		<c:choose>
			<c:when test="${sessionScope.loggedIn}">
				<p style="padding: 5px">Welcome ${sessionScope.username}! <a href="Logout">Logout</a>
					<c:choose>
	    				<c:when test="${sessionScope.isAdmin}">
	       					<br><strong>You are an admin</strong>   
	    				</c:when>
	    				<c:otherwise>
	        				<h3><strong>You are a regular user</strong></h3>
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

		<%-- <h1><c:out value="${pageHeader}" /><hr></hr></h1> --%>

		<center><h1>Welcome to Junimo Cafe!<hr></hr></h1></center>

		<br>

		<ul>

			<li><a class="active" href="Homepage">Home</a></li>
			<li><a href="News">News</a></li>
			<li><a href="Menu">Menu</a></li>
			<li><a href="Contact">Contact</a></li>
			<li><a href="About">About</a></li>
			<!-- The following tab should only show up once the user has either logged in or is anonymous -->
			<c:if test="${sessionScope.loggedIn}"> 
				<li><a href="Chatroom">Chatroom</a></li>
			</c:if> 
		</ul>

		<div class="content">

      <center><h2>THE OLD MAN AND THE SEA</h2></center>
	  <br>
	  <br>
	  <h4>The Old Man and the Sea is the story of a fight between an elderly, accomplished fisherman, Santiago, and a really big fish. Like… HUGE. The story opens with Santiago suffering eighty-four days without catching a fish because he’s the unluckiest son-of-a-bitch on planet earth. Honestly, if you were in a boat for eighty-four days, it’d be hard to NOT catch a fish… even by accident. Santiago was so unlucky that his apprentice, Manolin, was forbidden by his Ma and Pa to fish with him. But as The Fresh Prince used to say, ‘Parents Just Don’t Understand’. So the boy visits Santiago’s shack anyway. Ignoring the inherent risks of unsupervised playtime with an elderly man who talks to himself, Manolin helps out, moving Santiago’s fishing gear, making food and talking about baseball. Especially Joe DiMaggio; who used to bump fuzzies with Marilyn Monroe. The next day, Santiago tells Manolin that he’s going way out into the Gulf Stream. WAY OUT north of Cuba. Lady luck is returning! On the eighty-fifth day of his crappy luck, Santiago drops his lines, and by noon, gets a bite from what feels like a big ass fish. He’s sure it’s a winner. He fights and fights and fights but can’t pull the monster in. Santiago’s leaky old boat is pulled by the fish for two days and nights as he holds on for dear life. Even though he’s bloody and beat, Santiago begins to appreciate this mighty adversary. He starts calling him “brother” or maybe even, “bro.” It’s sort of a love story if you really think about it. And like most romantic comedies, the reader pictures a delightful outfit changing montage, followed by the inevitable interspecies wedding. But on the third day, Santiago is freakin’ EXHAUSTED, and decides he just wants the fish to do what he says and not always swim wherever it wants. So he stabs it. With a fucking harpoon. It’s a mess. Super gross. Blood everywhere. Because, like many men his age, Santiago has difficulty expressing his emotions and fears with words – instead giving in to base desires – and imposing his gigantically terrible positions on any given subject through unblinking violence. Typical. Anyway, he straps the marlin to the side of his skiff and hits the road home, ready to act like a total show off to everyone and probably gouge people on the price. But guess what? Pretty soon sharks begin to attack the bleeding marlin’s carcass, because we all know, life is a tragic opera and just when you think you’ve finally found something good and true, sharks come along and rip it all to fucking shreds while dry-humping your dignity with their crazy-weird shark dicks. Sure, Santiago tries killing a few of them, but drops his harpoon because his hands are just as old as he is. By nighttime, the sharks have pretty much eaten the entire marlin. Only a bleach-white skeleton remains, silently mocking him in the murky darkness. Santiago realizes he’s still unlucky. REALLY unlucky. (Duh!) He calls the sharks “dream killers”. Which isn’t really all that fair. I mean, the sharks were just doing their job and the marlin… Jesus, don’t even get me started on the marlin! It was just hanging out one day, minding it’s own business, maybe thinking about ways it could be a better provider for it’s family and WHAM! Harpoon in the brain. Who’s the “dream killer” now, fuckface? The hypocrisy is pretty much boundless at this point. Eventually Santiago makes it ashore. Leaving the bones of the marlin and the boat, he hobbles to his shack. He makes it home and crashes, like I said – he’s super tired. The next morning a group of fishermen gather around Santiago’s boat. One measures the skeleton and, holy shit-shingles! It’s over 18 feet! The head of the fish is given to Pedrico (strange that this is the first mention of him) and the other fishermen ask Manolin to send their glad tidings to the old man. Manolin brings Santiago newspapers and coffee when he wakes and they decide to fish together again. Many years later, there’s a Red Lobster Restaurant in nearly every city in America, offering a casual dining experience and convenient parking.</h4>
    </div>
		<br>


	</body>
</html>
