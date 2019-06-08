<?php
session_start(); ?>
<html>
<head>
	<title>Homepage</title>
	<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="header">
		Welcome to Admin!
	</div>
	<?php
	if(isset($_SESSION['valid'])) {			
		include("connection.php");					
		$result = mysqli_query($mysqli, "SELECT * FROM login");
	?>
				
		Welcome <?php echo $_SESSION['name'] ?> ! <a href='logout.php'>Logout</a><br/>
		<br/>
		<a href='view.php?value=all&title=All Members'><b>View Members - All</b></a><br><br>
		<a href='view.php?value=women_single&title=Women Single'><b>View Members - Women Single</b></a><br><br>
		<a href='view.php?value=women_double&title=Women Double'><b>View Members - Women Double</b></a><br><br>
		<a href='view.php?value=men_single&title=Men Single'><b>View Members - Men Single</b></a><br><br>
		<a href='view.php?value=men_double&title=Men Double'><b>View Members - Men Double</b></a><br><br>
		<a href='view.php?value=mix_double&title=Mix Double'><b>View Members - Mix Double</b></a><br><br>
		<br/><br/>
	<?php	
	} else {
		echo "You must be logged in to view this page.<br/><br/>";
		echo "<a href='login.php'>Login</a>";
	}
	?>
</body>
</html>
