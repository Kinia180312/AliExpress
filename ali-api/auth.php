<?php
header('Access-Control-Allow-Origin: *'); 
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');

include('db-pass.php');

$request_body = file_get_contents('php://input');
$data = json_decode($request_body);

$array =  (array) $data;

$u = $array['username'];
$p = $array['password'];

if(empty($u) || empty($p)){
	die();
}

try {
    $dbh = new PDO('mysql:host='.$host.';dbname='.$dbName.'', $user, $pass);

	$statement=$dbh->prepare("SELECT * FROM `users` WHERE `username` = '".$u."' AND `password` = '".$p."'");
    $statement->execute();
    $results=$statement->fetchAll(PDO::FETCH_ASSOC);
	
	$results[0]['token'] = 'fake-jwt-token';
	
	if(isset($results[0]['id'])){
		
	
    echo json_encode($results[0]);
	} else {
		header('HTTP/1.0 403 Forbidden');
	}
	
	
    $dbh = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

?>