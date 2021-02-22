<?php
    require_once("includes/header.php");

    $preview = new PreviewProvider($con, $userLoggedIn);
    echo $preview->createMoviesPreviewVideo();

    $containers = new CategoryContainers($con, $userLoggedIn);
    echo $containers->showMoviesCategories();
?>