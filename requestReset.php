<?php
    require_once("includes/config.php");
    require_once("email/php-mailjet-v3-simple.class.php");

    if(isset($_POST["email"])) {
        $emailTo = $_POST["email"];
        $code = uniqid();

        $query = $con->prepare("SELECT email FROM users WHERE email=:email");
        $query->bindValue(":email", $emailTo);
        $query->execute();

        if($query->rowCount() != 1) {
            $exitMsg = "<script> alert('Error! The email address is not associated with any account!');
                location.href = 'requestReset.php'; </script>";
            exit($exitMsg);
        }

        $query = $con->prepare("INSERT INTO resetPasswords(code, email) VALUES(:code, :email)");
        $query->bindValue(":code", $code);
        $query->bindValue(":email", $emailTo);
        $query->execute();
            
        $query = $con->prepare("SELECT username FROM users WHERE email=:email");
        $query->bindValue(":email", $emailTo);
        $query->execute();

        $username = $query->fetchColumn();
        $logoUrl = "http://" . $_SERVER["HTTP_HOST"] . "/email/flixtreme.png";
        $resetUrl = "http://" . $_SERVER["HTTP_HOST"]  . "/resetPassword.php?code=$code";
        //MAIL SEND 
        $html_part = file_get_contents("email/resetPassword.html");
        $html_part = str_replace('{_FLIXTREME_LOGO_URL_}', $logoUrl, $html_part);
        $html_part = str_replace('{_FLIXTREME_USERNAME_}', $username, $html_part);
        $html_part = str_replace('{_FLIXTREME_RESET_PWD_LINK_}', $resetUrl, $html_part);

$mj = new Mailjet('API_KEY','API_CRED');
    $params = array(
        "method" => "POST",
        "from" => "sender@gmail.com",
        "to" => $emailTo,
        "subject" => "Password reset request made for ".$username." | Flixtreme 📺",
        "html" => $html_part
    );

    $result = $mj->sendEmail($params);

    if ($mj->_response_code == 200)
       echo "Success - email has been sent! Please check your inbox for instructions to reset your password.";
    else
       echo "error - ".$mj->_response_code;

        
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
            <h1>Reset your password</h1>
        </div>

        <form method="POST">
            <input type="email" name="email" placeholder="Enter your email" autocomplete="off">
            <br>
            <input type="submit" name="submit" value="Reset Password">
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
