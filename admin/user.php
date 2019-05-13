<?php
//including the database connection file
include_once("connection.php");
include("instamojoPay.php");

// $result = mysqli_query($mysqli, "DROP TABLE users_types");
// $result = mysqli_query($mysqli, "DELETE FROM login WHERE username = 'admin';");
// $result = mysqli_query($mysqli, "DELETE FROM users WHERE id < 20);
// $result = mysqli_query($mysqli, "ALTER TABLE users ADD payment_id VARCHAR( 500 )");
// $result = mysqli_query($mysqli, "UPDATE login SET password=md5('TGFopen2019') WHERE username='tgf_event_admin'");
try {

	if($_SERVER['REQUEST_METHOD'] === 'POST') {	

		// checking empty fields
		if(isset($_POST['fullName'])) {
			$name = $_POST['fullName'];
		} else echo 'Enter Full Name'; 

		if(isset($_POST['mobileNumber'])) {
			$mob_no = $_POST['mobileNumber'];
		} else echo 'Enter Mobile Number'; 

		if(!is_null($_POST['altMobileNumber']) && !empty($_POST['altMobileNumber']) ) {
			$alt_mob_no = $_POST['altMobileNumber'];
		} else $alt_mob_no = 0;

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
		} else $partner_mix = '';

		if(!empty($_POST['partnerDouble'])) {
			$partner_double = $_POST['partnerDouble'];
		} else $partner_double = '';

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
			
			// echo "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner_mix, partner_double, men_single, men_double, women_double, women_single, mix_double, pay_at_venue) VALUES('$name','$mob_no','$alt_mob_no','$email','$company','$amount','$partner_mix','$partner_double','$men_single','$men_double','$women_double','$women_single','$mix_double','$pay_at_venue')";
				
		// if all the mandetory fields are filled (not empty) 
		//insert data to database	
		$sql = "INSERT INTO users(name, mob_no, alt_mob_no, email, company, amount, partner_mix, partner_double, men_single, men_double, women_double, women_single, mix_double, pay_at_venue) VALUES('$name','$mob_no','$alt_mob_no','$email','$company','$amount','$partner_mix','$partner_double','$men_single','$men_double','$women_double','$women_single','$mix_double','$pay_at_venue')";

		if (mysqli_query($mysqli, $sql)) {
		    $last_id = mysqli_insert_id($mysqli);
		    // echo $last_id;

			session_start();
			$_SESSION["mob_no"] = $mob_no;
			$_SESSION["email"] = $email;


			try {
				$api = new Instamojo\Instamojo('715723becbeb6a343f262ac1312ea3ce', 'cff4d4b902d8b7baa402dae91ae30957');
				// $api = new Instamojo\Instamojo('test_47eb37e1668e266835291e1e33e', 'test_0ab040ecc047d76a329f1adcff1');

				$response = $api->paymentRequestCreate(array(
					"purpose" => "TGF Open",
					"amount" => $amount,
					"phone" => $mob_no,
					"send_email" => true,
					"send_sms" => true,
					"email" => $email,
					"buyer_name" => $name,
					"redirect_url" => "http://localhost/tgf/tgf/admin/success.php"
				));
				// echo($response['id']);
				// exit(header("Location: ".$response['longurl']));

				$_SESSION["reg_id"] = $last_id;
				$_SESSION["tran_id"] = $response['id'];
				echo($response['longurl']);
			}
			catch (Exception $e) {
			    print('Error: ' . $e->getMessage());
			}
		} else {
		    echo "Error: " . $sql . "<br>" . mysqli_error($mysqli);
		}
	}
}
catch (Exception $e) {
    print('Error: ' . $e->getMessage());
}
?>
