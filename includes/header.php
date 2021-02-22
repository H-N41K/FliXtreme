<?php
    require_once("includes/config.php");
    require_once("includes/classes/PreviewProvider.php");
    require_once("includes/classes/CategoryContainers.php");
    require_once("includes/classes/Entity.php");
    require_once("includes/classes/EntityProvider.php");
    require_once("includes/classes/ErrorMessage.php");
    require_once("includes/classes/SeasonProvider.php");
    require_once("includes/classes/Season.php");
    require_once("includes/classes/Video.php");
    require_once("includes/classes/VideoProvider.php");
    require_once("includes/classes/User.php");

    if(!isset($_SESSION["userLoggedIn"])) {
        header("Location: login.php");
    }

    $userLoggedIn = $_SESSION["userLoggedIn"];
    $userLoginTime = $_SESSION["loginTime"];

?>

<!DOCTYPE html>
<html>

    <head>
        <title>Flixtreme</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
        <meta name="theme-color" content="#d2063a">
        <meta property="og:title" content="Flixtreme">
        <meta property="og:site_name" content="Flixtreme">
        <meta property="og:url" content="">
        <meta property="og:description" content="Stream your favourite Movies & TV Shows.">
        <meta property="og:type" content="Video Streaming">
        <meta property="og:image" content="owncloud/data/admin/files/assets/images/flixtreme.svg">
        <link rel="icon" type="image/png" href="owncloud/data/admin/files/assets/images/favicon.ico">

        <link rel="stylesheet" type="text/css" href="assets/style/style.css"/>
        
        <link href="assets/style/Font-Netflix-Sans.css" rel="stylesheet">
        <link href="assets/style/video-js.css" rel="stylesheet" />
        <link href="assets/style/videojs-seek-buttons.css" rel="stylesheet" />

        <script src="assets/js/jquery.min.js" ></script>
        <script src="assets/js/2439cbaba2.js" crossorigin="anonymous"></script>
        <script src="assets/js/script.js"></script>

        
        
        <?php 
        $currentFileName = basename($_SERVER['PHP_SELF']);
        if($currentFileName == 'watch.php') { ?>
        <script data-main="assets/js/main.js" src="assets/js/require.js"></script>
        <?php }
        if($currentFileName == 'billing.php'){
        ?>
        <link rel="stylesheet" href="assets/style/bootstrap.min.css">
        <script src="assets/js/regenerator-runtime@0.13.3/runtime.js"></script>
        <script src="assets/js/web3.js@1.2.1/web3.min.js"></script>
        <script src="assets/js/bootstrap.min.js" ></script>
        <?php } ?>
        
        <script>checkSessionTimer('<?php echo $userLoggedIn;?>', '<?php echo $userLoginTime;?>');</script>
    </head>

    <body>
        <div class="wrapper">

<?php
    if(!isset($hideNav)) {
        include_once("includes/navBar.php");
    }
?>