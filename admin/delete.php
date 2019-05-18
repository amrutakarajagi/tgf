<?php session_start(); 
// error_reporting(0);

if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}

//including the database connection file
include("connection.php");

//getting id of the data from url
$id = $_GET['id'];
$value = $_GET['value'];

//deleting the row from table
// $result=mysqli_query($mysqli, "DELETE FROM users WHERE id=$id");
$result = mysqli_query($mysqli, "UPDATE users SET is_trash = 1 WHERE id ='".$id."'");
//redirecting to the display page (view.php in our case)
header("Location:view.php?value=".$_GET['value']."&title=".$_GET['title']);
?>