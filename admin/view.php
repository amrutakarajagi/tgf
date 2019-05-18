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
// $result = mysqli_query($mysqli, "UPDATE users SET is_paid=1 WHERE id=189");
// $result = mysqli_query($mysqli, "UPDATE users SET payment_id='MOJO9515205A73740648' WHERE id=189");
	// echo "hiiiiiiiiiiiii";
// $result = mysqli_query($mysqli, "ALTER TABLE users ADD is_trash BOOLEAN NOT NULL DEFAULT FALSE");
// echo mysqli_error($mysqli);
// $sql = "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner_mix, men_single, men_double, women_single, women_double, mix_double, partner_double, is_paid, pay_at_venue, payment_id) VALUES('Sumit Varma', '9619001088', NULL, 'sumit@prateeksha.net', NULL, '700', NULL, '1', '1', '0', '0', '0', NULL, '1', '0', 'MOJO9507G05N79921496')";
// // // echo $sql;
// mysqli_query($mysqli, $sql);
// 		    $last_id = mysqli_insert_id($mysqli);
// 		    echo $last_id;

$result = mysqli_query($mysqli, "SELECT * FROM users WHERE is_trash=0 ORDER BY id ASC");
} else {
$result = mysqli_query($mysqli, "SELECT * FROM users WHERE ".$_GET['value']."=1 AND is_trash=0 ORDER BY id ASC");
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
	text-align: center;
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
			<td>Delete</td>
			<td>Full Name</td>
			<td>Mobile No</td>
			<td>Email</td>
			<td>Paid</td>
			<td>Company</td>
			<!-- <td>Amount</td> -->
			<?php if ( $_GET['value']=='women_double' || $_GET['value']=='men_double' || $_GET['value']=='mix_double' ) { ?>
				<td>Partner</td>
			<?php } ?>
			<td>Payment ID</td>
		</tr>
		<?php
		$i = 1;
		while($res = mysqli_fetch_array($result)) {		
			echo "<tr style='border-top:1px solid;'>";
			echo "<td>".$i++."</td>";
			$title = urlencode($_GET['title']);
			$delete_link = "delete.php?id=".$res['id']."&value=".$_GET['value']."&title=".$title."";
			echo "<td>".(($res['is_trash']) ? "" : "<a style=text-decoration:none; href=".$delete_link.">X</a>")."</td>";
			echo "<td>".$res['name']."</td>";
			echo "<td><b>".$res['mob_no']."</b><br>".($res['alt_mob_no'] ? $res['alt_mob_no'] : '')."</td>";
			echo "<td>".$res['email']."</td>";	
			echo "<td>".(($res['is_paid']) ? '<span style="color:green">Yes</span>' : '<span style="color:red">No</span>')."</td>";	
			echo "<td>".$res['company']."</td>";
			if ( $_GET['value']=='women_double' || $_GET['value']=='men_double' ) {
			if ( $res['women_double']  || $res['men_double'] ) {
				echo "<td>".$res['partner_double']."</td>";	
			}	
			}
			if ( $res['mix_double']  && $_GET['value']=='mix_double') {
				echo "<td>".$res['partner_mix']."</td>";	
			}
			echo "<td>".$res['payment_id']."</td>";
			echo "</tr>";	
			// echo "<td><a href=\"edit.php?id=$res[id]\">Edit</a> | <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";		
		}
		?>
	</table>	
</body>
</html>
