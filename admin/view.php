<?php session_start(); ?>

<?php
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
?>

<?php
//including the database connection file
include_once("connection.php");

//fetching data in descending order (lastest entry first)
if ($_GET['value'] == 'all') {
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC");
} else {
$result = mysqli_query($mysqli, "SELECT * FROM users WHERE ".$_GET['value']."=1 ORDER BY id DESC");
}
	
?>

<html>
<head>
	<title>Homepage</title>
</head>

<body>
	<a href="index.php">Home</a> | <a href="logout.php">Logout</a>
	<br/><br/>
	
	<table width='100%' border=0>
		<tr bgcolor='#CCCCCC'>
			<td>Full Name</td>
			<td>Mobile No</td>
			<td>Email</td>
			<td>Company</td>
			<!-- <td>Amount</td> -->
			<td>Partner</td>
			<td>Paid</td>
		</tr>
		<?php
		while($res = mysqli_fetch_array($result)) {		
			echo "<tr>";
			echo "<td>".$res['name']."</td>";
			echo "<td>".$res['mob_no']."<br>".$res['alt_mob_no']."</td>";
			echo "<td>".$res['email']."</td>";	
			echo "<td>".$res['company']."</td>";	
			echo "<td>".$res['partner_mix']."</td>";	
			echo "<td>".(($res['is_paid']) ? 'Yes' : 'No')."</td>";	
			// echo "<td><a href=\"edit.php?id=$res[id]\">Edit</a> | <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";		
		}
		?>
	</table>	
</body>
</html>
