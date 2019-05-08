<?php
//including the database connection file
include_once("connection.php");
if(isset($_POST['Submit'])) {	

	$name = $_POST['fullName'];
	$mob_no = $_POST['mobileNumber'];
	$alt_mob_no = $_POST['altMobileNumber'];
	$email = $_POST['emailID'];
	$company = $_POST['companyName'];
	$amount = $_POST['totalAmount'];
	$partner = $_POST['partnerName'];
		
	// checking empty fields
	if(empty($name)) {
		return "Full Name field is empty.";
	}
	
	if(empty($mob_no)) {
		return "Mobile Number field is empty.";
	}
	
	if(empty($amount)) {
		return "Total Amount field is empty.";
	}
		
			
	// if all the mandetory fields are filled (not empty) 
	//insert data to database	
	$result = mysqli_query($mysqli, "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner) VALUES('$name','$mob_no','$alt_mob_no','$email','$company','$amount','$partner')");
	var_dump($result);
	//display success message
	
	// if(!$_POST['tournamentTypes']) {
	// 	foreach($_POST['tournamentTypes'] as $index => $value) {
	// 	  $skills[$value] = $_POST['percentage'][$index];
	// 	}
	// }

	// return "Data added successfully.";
}
?>
</body>
</html>
