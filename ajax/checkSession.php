<?php
    require_once("../includes/config.php");
    if(isset($_POST["username"]) && isset($_POST["loginTime"])) {
        $username = $_POST["username"];
        $loginTime = $_POST["loginTime"];
        $query = $con->prepare("SELECT * FROM active_sessions WHERE username =:un AND loginTime =:loginTime");
        $query->bindValue(":un", $username);
        $query->bindValue(":loginTime", $loginTime);
        $query->execute();

        if($query->rowCount() >= 1) {
            echo "EXISTS";
        }
        else {
            echo "DOES NOT EXIST";
        } 
    } else {
        echo "ERROR";
    }
?>