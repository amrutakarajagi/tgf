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
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id ASC");
} else {
$result = mysqli_query($mysqli, "SELECT * FROM users WHERE ".$_GET['value']."=1 ORDER BY id ASC");
}
	
?>

<html>
<head>
	<title>Homepage</title>
<style type="text/css">
td {
    padding: 10px;
}
td {
    border-top: 1px solid #000000;
}
</style>
</head>

<body>
	<a href="index.php">Home</a> | <a href="logout.php">Logout</a>
	<br/><br/>
<h1><?php echo $_GET['title'] ?></h1>
<br>
<br>
	
	<table width='100%' border=0>
		<tr bgcolor='#CCCCCC'>
			<td></td>
			<td>Full Name</td>
			<td>Mobile No</td>
			<td>Email</td>
			<td>Company</td>
			<!-- <td>Amount</td> -->
			<?php if ( $_GET['value']=='women_double' || $_GET['value']=='men_double' || $_GET['value']=='mix_double' ) { ?>
				<td>Partner</td>
			<?php } ?>
			<td>Paid</td>
			<td>Payment ID</td>
		</tr>
		<?php
		$i = 1;
		while($res = mysqli_fetch_array($result)) {		
			echo "<tr style='border-top:1px solid;'>";
			echo "<td>".$i++."</td>";
			echo "<td>".$res['name']."</td>";
			echo "<td><b>".$res['mob_no']."</b><br>".($res['alt_mob_no'] ? $res['alt_mob_no'] : '')."</td>";
			echo "<td>".$res['email']."</td>";	
			echo "<td>".$res['company']."</td>";
			if ( $_GET['value']=='women_double' || $_GET['value']=='men_double' ) {
			if ( $res['women_double']  || $res['men_double'] ) {
				echo "<td>".$res['partner_double']."</td>";	
			}	
			}
			if ( $res['mix_double']  && $_GET['value']=='mix_double') {
				echo "<td>".$res['partner_mix']."</td>";	
			}
			echo "<td>".(($res['is_paid']) ? '<span style="color:green">Yes</span>' : '<span style="color:red">No</span>')."</td>";	
			echo "<td>".$res['payment_id']."</td>";
			echo "</tr>";	
			// echo "<td><a href=\"edit.php?id=$res[id]\">Edit</a> | <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";		
		}
		?>
	</table>	
</body>
</html>
