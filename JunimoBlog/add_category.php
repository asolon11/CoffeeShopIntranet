<?php 
include_once('resources/init.php');

if( isset($_POST['name'])) {
	$name = trim($_POST['name']);
	
	if (empty($name)) {
		$error = "You must submit a category name.";
	}
	else if (category_exists('name', $name)) {
		$error = "Category already exists.";
	}
	else if (strlen($name) > 24) {
		$error = "Category names could only be up to 24 characters";
	}
	
	if (!isset($error)) {
		add_category($name);
		
		header("Location: add_post.php");
		die();
	}
}

?>


<!DOCTYPE html>


<html lang="en">
<head>
<title>Junimo Blog</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>

<body style="padding:50px">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">Junimo Blog!</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="category.php">Index - Category</a></li>
      <li><a href="add_post.php">Add a Post</a></li>
      <li><a href="add_category.php">Add a Category</a></li>
      <li><a href="category_list.php">Category List</a></li>
    </ul>
  </div>
</nav>

<center><h1>Add a Category</h1></center>
<hr>
<?php 

if(isset($error)) {
	echo "<p> {$error} </p>\n";
}

?>

<form class="form-horizontal" action="" method="post">
	<div class="form-group">
		<label for="name">Name</label>
		<input class="form-control" type="text" name="name" value="">
	</div>
	<div class="button">
	  <center><button type="submit" class="btn btn-success btn-lg">Add Category!</button> </center>
	</div>
	
	
</form>

</body>

</html>