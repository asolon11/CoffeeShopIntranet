<?php


?>
<!DOCTYPE html>


<html lang="en">
<head>
<title>Junimo Blog - Add New Post</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>

<body style="padding:50px">
<center><h1>Add New Post!</h1></center>
<hr>
<div class="container">
<form class="form-horizontal" action="" method="post>
	<div class="form-group">
		<label for="title">Title</label>
		<input class="form-control" type="text" name="title" value"<?php if(isset($_POST['title'])) echo $_POST['title'];?>">
	</div>
	<div class="form-group">
		<label for="contents">Contents</label>
		<textarea class="form-control" name="contents" rows="50" cols="100" value"<?php if(isset($_POST['contents'])) echo $_POST['contents'];?>></textarea>
	</div>
	<div class="form-group">
		<label for="category">Category</label>
		<select class="form-control" name="category">
			<?php
			foreach(get_categories() as $category) {
				?>
				<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
				<?php 
			}
			?>
		</select>
	</div>
	<div class="button">
	<center><button type="submit" class="btn btn-success btn-lg">Add Post!</button> </center>
	</div>
</form>
</div>
</body>
</html>