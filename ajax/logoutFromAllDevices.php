<?php
    require_once("../includes/config.php");

    if(isset($_POST["username"])) {
        $username = $_POST["username"];
        $query = $con->prepare("DELETE FROM active_sessions WHERE username =:un");
        $query->bindValue(":un", $username);
        $query->execute();
        echo "DONE"; 
    } else {
        echo "ERROR";
    }
?>