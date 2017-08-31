<?php
header('Access-Control-Allow-Origin: *'); 
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');

include('db-pass.php');

$request_body = file_get_contents('php://input');
$data = json_decode($request_body);

$array =  (array) $data;

$n = $array['name'];
$string = $array['content'];
$l = $array['link'];
$p = $array['price'];
$u = $array['idUser'];

$a = array( 'Ę', 'Ó', 'Ą', 'Ś', 'Ł', 'Ż', 'Ź', 'Ć', 'Ń', 'ę', 'ó', 'ą',
		  'ś', 'ł', 'ż', 'ź', 'ć', 'ń' );
$b = array( 'E', 'O', 'A', 'S', 'L', 'Z', 'Z', 'C', 'N', 'e', 'o', 'a',
		  's', 'l', 'z', 'z', 'c', 'n' );

  $string = str_replace( $a, $b, $string );
  $string = preg_replace( '#[^a-z0-9]#is', ' ', $string );
  $string = trim( $string );
  $string = preg_replace( '#\s{2,}#', ' ', $string );
  $string = str_replace( ' ', '-', $string );


if(empty($n)){
	die();
}

try {
    $dbh = new PDO('mysql:host='.$host.';dbname='.$dbName.'', $user, $pass);

	$statement=$dbh->prepare("INSERT INTO `opinions` (`id`, `name`, `content`, `user`, `link`, `price`) VALUES (NULL, '".$n."', '".$string."', '".$u."', '".$l."', '".$p."');");
    $statement->execute();
	header('HTTP/1.1 200 OK');
	echo json_encode("OK");
    $dbh = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

?>