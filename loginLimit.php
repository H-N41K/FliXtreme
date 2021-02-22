<html>
<?php
require_once("includes/config.php");

if(!isset($_SESSION["MultipleSessionsUsername"])) {
    header("Location: login.php");
}

$username = $_SESSION["MultipleSessionsUsername"];

$query = $con->prepare("SELECT * FROM active_sessions WHERE username=:username");
        $query->bindValue(":username", $username);
        $query->execute();
        while($row = $query->fetch(PDO::FETCH_ASSOC)) {
            $session_un = $row["username"];
            $session_ip = $row["ipAddress"];
            $session_device = $row["device"];
            $session_loginTime = $row["loginTime"];
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
<div class="signInContainer">
    <div class="column">
        <div class="header">
            <div style="text-align: center;">
            <img src="owncloud/data/admin/files/assets/images/flixtreme.svg">
            </div>
            <h1>Login Limit Exceeded !!</h1>
            <h2>A session of your account is already active.</h2>
            <p style="color:#3def53;">Username:&nbsp;&nbsp;&nbsp;<?php echo $session_un;?><br><br>
                IP Address :&nbsp;&nbsp;&nbsp;<?php echo $session_ip;?><br><br>
                Device Details:&nbsp;&nbsp;&nbsp;<?php echo $session_device;?><br><br>
                Last Login Time: <?php echo date("d/m/Y @ h:i:s A", $session_loginTime);?>
            </p>
        </div>

            <button onclick='logoutFromAllDevices("<?php echo $username?>");' style="background-color: #E50914;
    color: #fff;
    height: 50px;
    width: 100%;
    max-width: 100%;
    border: none;
    font-weight: bold;
    margin: 24px 0px 12px;
    padding: 12px;
    font-size: 16px;
    border-radius: 4px;"> Click here to log out from all devices. </button>
    </div>
</div>
<script src="assets/js/jquery.min.js"></script>
<script>
function logoutFromAllDevices(username) {
    $.post("ajax/logoutFromAllDevices.php", {username: username }, function(data) {
        if(data !== null && data !== "") {
            //alert(data);
            window.location.href = "logout.php";
        }
    });
}
</script>
</body>
</html>