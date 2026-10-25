```php
<?php

include("connect.php");


/* =========================================
   CHECK teacher ID
========================================= */

if (isset($_GET['id']) && is_numeric($_GET['id'])) {

    $id = mysqli_real_escape_string(
        $db_con,
        $_GET['id']
    );


    /* =========================================
       DELETE teacher
    ========================================= */

    $sql = "DELETE FROM teacher WHERE id='$id'";


    if (mysqli_query($db_con, $sql)) {

        session_start();

        $_SESSION["delete"] =
            "teacher Record Deleted Successfully!";

        header("Location: viewteacher.php");

        exit();

    } else {

        die(
            "Unable to delete teacher record. Please try again."
        );

    }

} else {

    echo "Invalid teacher record.";

}

?>
```
