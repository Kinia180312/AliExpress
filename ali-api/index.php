<?php
header('Access-Control-Allow-Origin: *'); 

include('db-pass.php');

if(isset($_GET["w"]) && $_GET["w"] == "last"){
	$limit = "LIMIT 4";
} else {
	$limit = "";
}

try {
    $dbh = new PDO('mysql:host='.$host.';dbname='.$dbName.'', $user, $pass);

    $statement=$dbh->prepare("SELECT * FROM `opinions`,`users` WHERE `users`.`id` = `opinions`.`user` ORDER BY `opinions`.`id` DESC ".$limit."");
    $statement->execute();
    $results=$statement->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($results);
        
    $dbh = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>