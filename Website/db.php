<?php
$dbServername='localhost';
$username='root';
$password='Ineshrishi1';
$conn=mysqli_connect($dbServername,$username,$password,"crud");
if(!$conn){
 die('Could not Connect My Sql:' .mysql_error());
}
?>