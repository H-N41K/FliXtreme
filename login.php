<?php
    require_once("includes/config.php");
    require_once("includes/classes/FormSanitizer.php");
    require_once("includes/classes/Constants.php");
    require_once("includes/classes/Account.php");

    $account = new Account($con);

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


    if(isset($_POST["loginButton"])) {


        $username = FormSanitizer::sanitizeFormUsername($_POST["username"]);
        $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);
        
        $success = $account->login($username, $password);

        if($success) {

        $query = $con->prepare("SELECT * FROM active_sessions WHERE username =:un;");
        $query->bindValue(":un", $username);
        $query->execute();

        if($query->rowCount() >= 1) {
            $_SESSION["MultipleSessionsUsername"] = $username;
            header("Location: loginLimit.php");
        }
        else {
            $userIPAddress = getUserIpAddr();
            $device = $_SERVER['HTTP_USER_AGENT'];
            $loginTime = time();

            $query = $con->prepare("INSERT INTO active_sessions(username, ipAddress, device, loginTime) VALUES(:un, :ip, :device, :loginTime);");
            $query->bindValue(":un", $username);
            $query->bindValue(":ip", $userIPAddress);
            $query->bindValue(":device", $device);
            $query->bindValue(":loginTime", $loginTime);

            $query->execute();


            $_SESSION["userLoggedIn"] = $username;
            $_SESSION["loginTime"] = $loginTime;
            header("Location: index.php");
        }

        }
    }

    function getInputValue($name) {
        if(isset($_POST[$name])) {
            echo $_POST[$name];
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
            <h1>Sign In</h1>
            <h2>Sign in to start watching shows and movies<br> or restart your membership.</h2>
        </div>

        <form method="POST">
            <?php 
            if(isset($_GET["reason"]) && $_GET["reason"] == "sessnexp"){ 
                echo "<span class='errorMessage'>Your session has expired! Please login again.</span>";
            }
            ?>
            <?php echo $account->getError(Constants::$loginFailed); ?>
            <input type="text" name="username" placeholder="Username" value="<?php getInputValue("username"); ?>" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" name="loginButton" value="SIGN IN">
        </form>

        <div class="forgotPassword">
            <a href="requestReset.php">Forgot Password? Click here to reset.</a>
        </div>

        <hr>
        <!-- <span class="loginNewSpan">
            <b></b>
        </span> -->
        <a href="register.php" class="button">New to Flixtreme?&nbsp;&nbsp;&nbsp;Sign up now!</a>
    </div>
</div>
</body>
</html>