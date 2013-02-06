<?php
error_reporting(0);
$connect = mysql_connect("mysql.lrk.si","tt3710","tt3710") or die("Dostop zavrnjen!");
mysql_select_db("tt3710") or die("Ni dostopa do baze podatkov!");
?>