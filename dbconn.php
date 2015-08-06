<?php

$con = mysql_connect("localhost", "root", "root");
if (!$con)
    die("Cannot Connect To The Server!");
$dbselect = mysql_select_db("shs", $con);
if (!$dbselect)
    die("Cannot Connect To The Database!");
?>