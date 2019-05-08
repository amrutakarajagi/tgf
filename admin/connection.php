<?php
/*
// mysql_connect("database-host", "username", "password")
$conn = mysql_connect("localhost","root","root") 
			or die("cannot connected");

// mysql_select_db("database-name", "connection-link-identifier")
@mysql_select_db("test2",$conn);
*/

/**
 * mysql_connect is deprecated
 * using mysqli_connect instead
 */

$databaseHost = 'localhost';
$databaseName = 'test2';
$databaseUsername = 'root';
$databasePassword = '';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
	
?>
<?php
// class Database{
 
//     // specify your own database credentials
//     private $host = "localhost";
//     private $db_name = "api_db";
//     private $username = "root";
//     private $password = "";
//     public $conn;
 
//     // get the database connection
//     public function getConnection(){
 
//         $this->conn = null;
 
//         try{
//             $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
//             $this->conn->exec("set names utf8");
//         }catch(PDOException $exception){
//             echo "Connection error: " . $exception->getMessage();
//         }
 
//         return $this->conn;
//     }
// }
?>