<?php
include "_secret.php";
$db=new PDO("mysql:host=".HOST.";dbname=".DBNAME,USERNAME,PASSWORD);
if ($db){
    echo "is connected";
}