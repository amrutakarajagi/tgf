<?php 
session_start();
include_once("connection.php");
include("instamojoPay.php");
?>

<body style="background:#000; color:#52af4c; text-align:center; font-family: 'Poppins', sans-serif; padding-top:100px">

<?php 
$api = new Instamojo\Instamojo('715723becbeb6a343f262ac1312ea3ce', 'cff4d4b902d8b7baa402dae91ae30957');
// $api = new Instamojo\Instamojo('test_47eb37e1668e266835291e1e33e', 'test_0ab040ecc047d76a329f1adcff1');

try {
    $response = $api->paymentRequestStatus($_GET['payment_request_id']);

    // echo $_SESSION["email"];
    // echo $_SESSION["tran_id"];
    if ($_SESSION["tran_id"] == $response['id']) {
		$result = mysqli_query($mysqli, "UPDATE users SET is_paid = 1 WHERE id ='".$_SESSION["reg_id"]."'");
		// echo "UPDATE users SET is_paid = 1 WHERE email ='".$_SESSION["email"]."'";
		// echo "<br>".$result;
		$result = mysqli_query($mysqli, "UPDATE users SET payment_id = '".$response['payments'][0]['payment_id']."' WHERE id ='".$_SESSION["reg_id"]."'");
		// echo "UPDATE users SET payment_id = ".$response['payments'][0]['payment_id']." WHERE email ='".$_SESSION["email"]."'";
		// echo "<br>".$result;
    // print_r($response);
    session_destroy(); 
    echo "<h1>Payment Successful</h1>";
    // echo $_SESSION["tran_id"];
    echo "<br><br><b>Payment ID<b> for your reference : ".$response['payments'][0]['payment_id'];
    }
}
catch (Exception $e) {
    print('Error: ' . $e->getMessage());
}


?>
</body>