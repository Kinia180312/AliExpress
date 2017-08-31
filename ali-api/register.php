<?php
header('Access-Control-Allow-Origin: *'); 
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');

include('db-pass.php');

$request_body = file_get_contents('php://input');
$data = json_decode($request_body);

$array =  (array) $data;

$u = $array['username'];
$p = $array['password'];
$f = $array['firstName'];
$l = $array['lastName'];

if(empty($u)){
	die();
}

try {
    $dbh = new PDO('mysql:host='.$host.';dbname='.$dbName.'', $user, $pass);

	$statement=$dbh->prepare("INSERT INTO `users` (`id`, `username`, `password`, `firstName`, `lastName`) VALUES (NULL, '".$u."', '".$p."', '".$f."', '".$l."');");
    $statement->execute();
header('HTTP/1.1 200 OK');
	echo json_encode("OK");
    $dbh = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}



?>