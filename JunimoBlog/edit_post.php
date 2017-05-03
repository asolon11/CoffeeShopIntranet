<?php
include_once('resources/init.php');

$post = get_posts($_GET['id']);

if (isset($_POST['title'], $_POST['contents'], $_POST['category'])) {
	$errors = array();
	
	$title 		= trim($_POST['title']);
	$contents 	= trim($_POST['contents']);
	
	if (empty($title)) {
		$errors[] = 'You need to supply a title.';
	}
	else if (strlen($title) > 255) {
		$errors[] = 'The title is too long! Make it shorter.';
	}
	
	if (empty($contents)) {
		$errors[] = 'You need to supply some text.';
	}
	
	if (category_exists('id', $_POST['category'])) {
		$errors[] = 'That category does not exist';
	}
	
	if (empty($errors)) {
		edit_post($_GET['id'], $title, $contents, $_POST['category']);
		
		
		header("Location: index.php?id=");
		die();
	}
	
	
}
?>
<!DOCTYPE html>


<html lang="en">
<head>
<title>Junimo Blog - Edit Post</title>
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


<center><h1>Edit Post!</h1></center>
<hr>

<?php 
if (isset($errors) && !empty($errors)) {
	echo '<ul><li>', implode('</li><li>', $errors),'</li></ul>';
}
?>


<div class="container">
<form class="form-horizontal" action="" method="post>
	<div class="form-group">
		<label for="title">Title</label>
		<input class="form-control" type="text" name="title" value"<?php echo $post[0]['title'];?>">
	</div>
	<div class="form-group">
		<label for="contents">Contents</label>
		<textarea class="form-control" name="contents" rows="50" cols="100" value"<?php echo $post[0]['contents'];?>></textarea>
	</div>
	<div class="form-group">
		<label for="category">Category</label>
		<select class="form-control" name="category">
			<?php
			foreach(get_categories() as $category) {
				$selected = ($category['name'] == $post[0]['name'])? 'selected' : '';
				?>
				<option value="<?php echo $category['id']; ?>"<?php echo $selected; ?>><?php echo $category['name']; ?></option>
				<?php 
			}
			?>
		</select>
	</div>
	 <div class="button">
	  <center><button type="submit" class="btn btn-success btn-lg">Edit Post!</button> </center>
	</div>
</form>
</div>
</body>
</html>