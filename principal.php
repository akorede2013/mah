
<?php
session_start();

// Protect the page
if (!isset($_SESSION["username"])) {
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>principal - AL-AMIN ACADEMY</title>

    <link rel="stylesheet" href="style.css">

</head>

<body>

    <!-- SIDEBAR -->

    <div class="sidebar">

        <h2>AL-AMIN ACADEMY</h2>

        <a href="dashboard.php">🏠 Dashboard</a>

        <a href="students.php">👨‍🎓 Students</a>

        <a href="teachers.php">👨‍🏫 Teachers</a>

        <a href="admin.php">👤 Admin</a>
		
		   <a href="principal.php">👨‍🏫 principal</a>
		
        <a href="logout.php">🚪 Logout</a>

	
    </div>


    <!-- MAIN CONTENT -->

    <div class="main-content">

        <h1>principal</h1>

        <div class="card">

            <h2>principal</h2>

            <p>
                Welcome to the principal page.
            </p>

            <p>
                principal information will be managed here later.
            </p>
this is wre all the pricipal information will be kept and also data of the principal
			</p>
        </div>

    </div>

</body>

</html>

