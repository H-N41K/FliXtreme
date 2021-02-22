<?php
    require_once("includes/header.php");

    function getUserIpAddr(){
        if(!empty($_SERVER['HTTP_CLIENT_IP'])){
            //ip from share internet
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
            //ip pass from proxy
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }else{
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }

    $userIPAddress = getUserIpAddr();
    $device = $_SERVER['HTTP_USER_AGENT'];

    $query = $con->prepare("DELETE FROM active_sessions WHERE username =:un AND ipAddress=:ip;");
    $query->bindValue(":un", $userLoggedIn);
    $query->bindValue(":ip", $userIPAddress);

    $query->execute();
    session_start();
    session_destroy();
    if(isset($_GET["reason"]) && $_GET["reason"] == "sessnexp"){ 
        header("Location: login.php?reason=sessnexp"); 
    }
    else {
        header("Location: login.php");
    }
    
?>