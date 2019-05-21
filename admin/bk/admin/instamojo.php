<?php include("instamojoPay.php");


$api = new Instamojo\Instamojo('715723becbeb6a343f262ac1312ea3ce', 'cff4d4b902d8b7baa402dae91ae30957');


try {
    $response = $api->paymentRequestCreate(array(
        "purpose" => "FIFA 16",
        "amount" => "1",
        "send_email" => true,
        "email" => "contact2amruta@gmail.com",
        "redirect_url" => "http://tgfopen.com/admin/success.php"
        ));
    var_dump($response['id']);
    var_dump($response['status']);
}
catch (Exception $e) {
    print('Error: ' . $e->getMessage());
}

?>