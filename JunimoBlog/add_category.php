<?php 
include_once('resources/init.php');

if( isset($_POST['name'])) {
	$name = trim($_POST['name']);
	
	if (empty($name)) {
		$error = "You must submit a category name.";
	}
	else if (category_exists($name)) {
		$error = "Category already exists.";
	}
	else if (strlen($name) > 24) {
		$error = "Category names could only be up to 24 characters";
	}
	
	if (!isset($error)) {
		add_category($name);
	}
}

?>


<!DOCTYPE html>


<html lang="en">
<head>
<title>Junimo Blog</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>

<body>
<h1>Add a Category</h1>

<?php 

if(isset($error)) {
	echo "<p> {$error} </p>\n";
}

?>

<form action="" method="post">
	<div>
		<label for="name">Name</label>
		<input type="text" name="name" value="">
	</div>
	<div>
		<input type="submit" value="Add Category">
	</div>
	
	
</form>

</body>

</html>