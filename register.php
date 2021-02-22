<?php
    require_once("includes/config.php");
    require_once("includes/classes/FormSanitizer.php");
    require_once("includes/classes/Account.php");
    require_once("includes/classes/Constants.php");

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

    if(isset($_POST["submitButton"])) {
        $firstName = FormSanitizer::sanitizeFormString($_POST["firstName"]);
        $lastName = FormSanitizer::sanitizeFormString($_POST["lastName"]);
        $username = FormSanitizer::sanitizeFormUsername($_POST["username"]);
        $email = FormSanitizer::sanitizeFormEmail($_POST["email"]);
        $confirmEmail = FormSanitizer::sanitizeFormEmail($_POST["email2"]);
        $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);
        $confirmPassword = FormSanitizer::sanitizeFormPassword($_POST["password2"]);

        $success = $account->register($firstName, $lastName, $username, $email, $confirmEmail, $password, $confirmPassword);

        if($success) {
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
        <link rel="stylesheet" type="text/css" href="assets/style/style.css"/>
        <link href="assets/style/Font-Netflix-Sans.css" rel="stylesheet">
    </head>

    <body>
        <div class="signInContainer" style="height:135vh;">
            <div class="column">
                <div class="header">
                <div style="text-align: center;">
                <img src="owncloud/data/admin/files/assets/images/flixtreme.svg">
                </div>
                    <h1>Sign Up</h1>
                    <h2>to continue to Flixtreme</h2>
                </div>

                <form method="POST">
                    <?php echo $account->getError(Constants::$firstNameCharacters); ?>
                    <input type="text" name="firstName" placeholder="First name" value="<?php getInputValue("firstName"); ?>" required>

                    <?php echo $account->getError(Constants::$lastNameCharacters); ?>
                    <input type="text" name="lastName" placeholder="Last name" value="<?php getInputValue("lastName"); ?>" required>

                    <?php echo $account->getError(Constants::$usernameCharacters); ?>
                    <?php echo $account->getError(Constants::$usernameTaken); ?>
                    <input type="text" name="username" placeholder="Username" value="<?php getInputValue("username"); ?>" required>

                    <?php echo $account->getError(Constants::$emailsDontMatch); ?>
                    <?php echo $account->getError(Constants::$emailInvalid); ?>
                    <?php echo $account->getError(Constants::$emailTaken); ?>
                    <input type="email" name="email" placeholder="Email" value="<?php getInputValue("email"); ?>" required>
                    <input type="email" name="email2" placeholder="Confirm Email" value="<?php getInputValue("email2"); ?>" required>

                    <?php echo $account->getError(Constants::$passwordsDontMatch); ?>
                    <?php echo $account->getError(Constants::$passwordLength); ?>
                    <input type="password" name="password" placeholder="Password" required>
                    <input type="password" name="password2" placeholder="Confirm Password" required>
                    <input type="submit" name="submitButton" value="SUBMIT">
                </form>

                <a href="login.php" class="signInMessage">Already have an account? Sign in here!</a>
            </div>
        </div>
    </body>
</html>