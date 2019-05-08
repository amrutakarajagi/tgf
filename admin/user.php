<?php
//including the database connection file
include_once("connection.php");
if($_SERVER['REQUEST_METHOD'] === 'POST') {	

	// checking empty fields
	if(isset($_POST['fullName'])) {
		$name = $_POST['fullName'];
	} else return 0;

	if(isset($_POST['mobileNumber'])) {
		$name = $_POST['mobileNumber'];
	} else return 0;

	if(isset($_POST['altMobileNumber'])) {
		$alt_mob_no = $_POST['altMobileNumber'];
	} else return 0;

	if(isset($_POST['emailID'])) {
		$email = $_POST['emailID'];
	} else return 0;

	if(isset($_POST['companyName'])) {
		$company = $_POST['companyName'];
	} else return 0;

	if(isset($_POST['totalAmount'])) {
		$amount = $_POST['totalAmount'];
	} else return 0;

	if(isset($_POST['partnerMix'])) {
		$partner_mix = $_POST['partnerMix'];
	} else return 0;

	if(isset($_POST['partnerDouble'])) {
		$partner_double = $_POST['partnerDouble'];
	} else return 0;

	if(isset($_POST['menSingle'])) {
		$men_single = $_POST['menSingle'];
	} else return 0;

	if(isset($_POST['menDouble'])) {
		$men_double = $_POST['menDouble'];
	} else return 0;

	if(isset($_POST['womenDouble'])) {
		$women_double = $_POST['womenDouble'];
	} else return 0;

	if(isset($_POST['womenSingle'])) {
		$women_single = $_POST['womenSingle'];
	} else return 0;

	if(isset($_POST['doubleMix'])) {
		$mix_double = $_POST['doubleMix'];
	} else return 0;

	if(isset($_POST['payVenue'])) {
		$pay_at_venue = $_POST['payVenue'];
	} else return 0;
	// if(empty($amount)) {
	// 	return "Total Amount field is empty.";
	// }
		
		
			
	// if all the mandetory fields are filled (not empty) 
	//insert data to database	
	$result = mysqli_query($mysqli, "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner_mix, partner_double, men_single, men_double, women_double, women_single, mix_double, pay_at_venue) VALUES('$name','$mob_no','$alt_mob_no','$email','$company','$amount','$partner_mix','$partner_double','$men_single','$men_double','$women_double','$women_single','$mix_double','$pay_at_venue')");
	if($result) {
		return 1;
	} else {
		return 0;
	}
}
?>
