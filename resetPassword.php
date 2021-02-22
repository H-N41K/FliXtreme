<?php
    require_once("includes/config.php");

    if(!isset($_GET["code"])) {
        exit("Sorry this link is broken.");
    }
    $code = $_GET["code"];

    $query = $con->prepare("SELECT email FROM resetPasswords WHERE code=:code");
        $query->bindValue(":code", $code);
        $query->execute();

        if($query->rowCount() != 1) {
            exit("Sorry this link is broken.");
        }

    if(isset($_POST["password"]) && isset($_POST["password2"])) {

        $pw = $_POST["password"];
        $pw2 = $_POST["password2"];
        if($pw != $pw2) {
            $samePageUrl = basename($_SERVER['REQUEST_URI']);
            $exitMsg = "<script> alert('Make sure both the passwords match!');
                location.href = '$samePageUrl';
             </script>";
            exit($exitMsg);
        }
        $pw = hash("sha512", $pw);

        $email = $query->fetchColumn();

        $query = $con->prepare("UPDATE users SET password=:pw WHERE email=:email");
        $query->bindValue(":pw", $pw);
        $query->bindValue(":email", $email);
        
        if($query->execute()) {
            $query = $con->prepare("DELETE FROM resetPasswords WHERE code=:code");
            $query->bindValue(":code", $code);
            $query->execute();
            $exitMsg = "<script>
            var redir = confirm('Password updated successfully! Please login again! ');
            if (redir == true || redir == false) {
            window.location.href = 'login.php';
        }
            </script>";
            exit($exitMsg);
        } else {
            exit("Sorry, something went wrong.");
        }
    }
?>



<!DOCTYPE html>
<html>

<head>
    <title>Flixtreme</title>
    <link rel="icon" type="image/png" href="owncloud/data/admin/files/assets/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="assets/style/style.css"/>
    <link href="assets/style/Font-Netflix-Sans.css" rel="stylesheet">
</head>

<body>
<div class="signInContainer" style="height:120vh;">
    <div class="column">
        <div class="header">
            <div style="text-align: center;">
            <img src="owncloud/data/admin/files/assets/images/flixtreme.svg">
            </div>
            <h1>Set a new password</h1>
        </div>

    <form method="POST">
    <input type="password" name="password" placeholder="New password" minlength="6" maxlength="25">
    <input type="password" name="password2" placeholder="New password (again)" minlength="6" maxlength="25">
    <br>
    <input type="submit" name="submit" value="Update Password">
    </form>

        <hr>
        <!-- <span class="loginNewSpan">
            <b></b>
        </span> -->
        <a href="login.php" class="signInMessage">Already have an account? Sign in here!</a>
    </div>
</div>
</body>
</html>