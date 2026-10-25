<!DOCTYPE html>
<html>
<head>
<title>View students Information </title>
 <link rel="icon" href="pic.jpg" type="image/icon type">
</head>
<style>
body {background-color: powderblue;}
</style>
<center>
<body>
    <center><h1>UPDATE school RECORD</h1></center>
        <form action="editstudentsprocess.php" method="post">
            <?php 
            
            if (isset($_GET['id'])) {
                include("connect.php");
                $id = $_GET['id'];
                $sql = "SELECT * FROM students WHERE id=$id";
                $result = mysqli_query($db_con,$sql);
                $row = mysqli_fetch_array($result);
                ?>
				<P> </P>
				
                     <div class="form-elemnt my-4">
			<label for="name">Name</label>
                <input type="text" class="form-control" name="name" placeholder="Book Title:" value="<?php echo $row["name"]; ?>">
            </div><br>
            <div class="form-elemnt my-4">
			<label for="age">Age</label>
                <input type="text" class="form-control" name="age" placeholder="Author Name:" value="<?php echo $row["age"]; ?>">
            </div><br>
			<div class="form-elemnt my-4">
			<label for="class">class</label>
                <input type="text" class="form-control" name="class" placeholder="Author Name:" value="<?php echo $row["class"]; ?>">
            </div><br>
			<div class="form-elemnt my-4">
			<label for="address">address</label>
                <input type="text" class="form-control" name="address" placeholder="Author Name:" value="<?php echo $row["address"]; ?>">
            </div><br>
			<div class="form-elemnt my-4">
			<label for="email">email</label>
                <input type="text" class="form-control" name="email" placeholder="Author Name:" value="<?php echo $row["email"]; ?>">
            </div><br>
             <input type="hidden" value="<?php echo $id; ?>" name="id">
            <div class="form-element my-4">
                <input type="submit" name="edit" value="Edit Record" class="btn btn-primary">
            </div>
                <?php
            }else{
                echo "<h3>students Record Does Not Exist</h3>";
            }
            ?>
           
        </form>
      </center>  
        
    </div>
</body>
</html>