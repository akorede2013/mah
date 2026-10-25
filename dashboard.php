
<?php
session_start();

// Protect the dashboard
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

    <title>Dashboard - AL-AMIN ACADEMY </title>

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

        <h1>Dashboard</h1>

        <div class="card">

            <h2>Welcome, <?php echo $_SESSION["username"]; ?>!</h2>

            <p>
                Welcome to the AL-AMIN ACADEMY Management System.
            </p>

            <p>
                Use the sidebar to navigate through the system.
            </p>

        </div>

    </div>

</body>
</html>

