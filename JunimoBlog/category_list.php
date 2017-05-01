<?php

include_once('resources/init.php');
?>
<!DOCTYPE html>


<html lang="en">
<head>
<title>Junimo Blog</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>

<body style="padding:30px">
<center><h1>Category List</h1></center>
<div id="container">
<table class="table table-bordered">
		<thead>
			<tr>
				<th>Category Name</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>

		<?php
			foreach(get_categories() as $category) {
		?>
		<tr><td><a href="category.php?id=<?php echo $category['id']; ?>"><?php echo $category['name'];?></a></td>
		<td><a href="delete_category.php?id<?php echo $category['id']; ?>">Delete Category!</a></td></tr>
		<?php 
			}
		?>
</tbody>
</table>
</div>
</body>


</html>