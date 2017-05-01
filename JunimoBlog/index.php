<?php
include_once('resources/init.php');

$posts = (isset($_GET['id'])) ? get_posts($_GET['id']) : get_posts();

//$posts = get_posts((isset($_GET['id'])) ? get_posts($_GET['id'] : null));
?>
<!DOCTYPE html>


<html lang="en">
<head>
<title>Junimo Blog! - Main!</title>
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


<center>
<h1>The Junimo Blog!</h1>
<h3>A place where Junimo Customers can write whatever stuff they want.</h3>
<hr>
</center>

	


<?php 

foreach($posts as $post) {
	if (! category_exists('name', $post['name'])) {
		$post['name'] = 'Uncategorized';
	}
	?>
	<div class="well">
		<h3><?php echo $post['title'];?></h3>
		<p>Posted on <?php echo date('d-m-Y h:i:s', strtotime($post['date_posted']));?>
		in <a href="category.php?id=<?php echo $post['category_id']?>"><?php echo $post['name'];?></a>
		</p>
		<div>
		<?php echo nl2br($post['contents']);?>
		</div>
		<br>
		<p>
			<a class="btn btn-primary" target="_blank" href="index.php?id=<?php echo $post['post_id'];?>">
				Click Me!
			</a>
			<a class="btn btn-primary" target="_blank" href="edit_post.php?id=<?php echo $post['post_id'];?>">
				Edit Me!
			</a>
			<a class="btn btn-primary" target="_blank" href="delete_post.php?id=<?php echo $post['post_id'];?>">
				Delete Me!
			</a>
		</p>
	</div>
	<?php 
	
	
	
	
}

?>
</body>
</html>