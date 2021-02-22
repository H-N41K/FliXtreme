<?php
    require_once("includes/header.php");

    $preview = new PreviewProvider($con, $userLoggedIn);
    echo $preview->createTVShowPreviewVideo();

    $containers = new CategoryContainers($con, $userLoggedIn);
    echo $containers->showTVShowCategories();
?>