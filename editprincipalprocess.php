
<?php

include("connect.php");


/* =========================================
   CHECK FORM SUBMISSION
========================================= */

if (isset($_POST["edit"])) {

    $name = mysqli_real_escape_string(
        $db_con,
        $_POST["name"]
    );

    $age = mysqli_real_escape_string(
        $db_con,
        $_POST["age"]
    );

    $address = mysqli_real_escape_string(
        $db_con,
        $_POST["address"]
    );

    $position = mysqli_real_escape_string(
        $db_con,
        $_POST["position"]
    );

    $id = mysqli_real_escape_string(
        $db_con,
        $_POST["id"]
    );


    /* =========================================
       UPDATE principal RECORD
    ========================================= */

    $sqlUpdate = "
        UPDATE principal
        SET
            name = '$name',
            age = '$age',
            address = '$address',
            position = '$position'
        WHERE id = '$id'
    ";


    if (mysqli_query($db_con, $sqlUpdate)) {

        session_start();

        $_SESSION["update"] =
            "principal Record Updated Successfully!";

        header("Location: viewprincipal.php");

        exit();

    } else {

        die(
            "Unable to update principal record. Please try again."
        );

    }

} else {

    echo "Invalid request.";

}

?>

