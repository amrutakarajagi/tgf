<?php
//including the database connection file
include_once("connection.php");
if($_SERVER['REQUEST_METHOD'] === 'POST') {	

	// checking empty fields
	if(isset($_POST['fullName'])) {
		$name = $_POST['fullName'];
	} else echo 'Enter Full Name'; 

	if(isset($_POST['mobileNumber'])) {
		$mob_no = $_POST['mobileNumber'];
	} else echo 'Enter Mobile Number'; 

	if(!empty($_POST['altMobileNumber'])) {
		$alt_mob_no = $_POST['altMobileNumber'];
	} else $alt_mob_no = Null;

	if(isset($_POST['emailID'])) {
		$email = $_POST['emailID'];
	} else echo 'Enter Email ID';

	if(isset($_POST['companyName'])) {
		$company = $_POST['companyName'];
	} else $company=Null;

	if(isset($_POST['totalAmount'])) {
		$amount = $_POST['totalAmount'];
	} else echo 'Enter Total Amount';

	if(!empty($_POST['partnerMix'])) {
		$partner_mix = $_POST['partnerMix'];
	} else $partner_mix = 0;

	if(!empty($_POST['partnerDouble'])) {
		$partner_double = $_POST['partnerDouble'];
	} else $partner_double = 0;

	if(!empty($_POST['menSingle'])) {
		$men_single = $_POST['menSingle'];
	} else $men_single = 0;

	if(!empty($_POST['menDouble'])) {
		$men_double = $_POST['menDouble'];
	} else $men_double = 0;

	if(!empty($_POST['womenDouble'])) {
		$women_double = $_POST['womenDouble'];
	} else $women_double = 0;

	if(!empty($_POST['womenSingle'])) {
		$women_single = $_POST['womenSingle'];
	} else $women_single = 0;

	if(!empty($_POST['doubleMix'])) {
		$mix_double = $_POST['doubleMix'];
	} else $mix_double = 0;

	if(!empty($_POST['payVenue'])) {
		$pay_at_venue = $_POST['payVenue'];
	} else $pay_at_venue = 0;
	// if(empty($amount)) {
	// 	return "Total Amount field is empty.";
	// }
		
		echo "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner_mix, partner_double, men_single, men_double, women_double, women_single, mix_double, pay_at_venue) VALUES('$name','$mob_no','$alt_mob_no','$email','$company','$amount','$partner_mix','$partner_double','$men_single','$men_double','$women_double','$women_single','$mix_double','$pay_at_venue')";
			
	// if all the mandetory fields are filled (not empty) 
	//insert data to database	
	$result = mysqli_query($mysqli, "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner_mix, partner_double, men_single, men_double, women_double, women_single, mix_double, pay_at_venue) VALUES('$name','$mob_no','$alt_mob_no','$email','$company','$amount','$partner_mix','$partner_double','$men_single','$men_double','$women_double','$women_single','$mix_double','$pay_at_venue')");
	if($result) {
		 echo 'Success'; 
	} else {
		 echo'Some Error Came'; 
	}
}
?>
