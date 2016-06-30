<?php
header('Access-Control-Allow-Origin: *');

$servername='localhost';
$username='hypermediatim';
$password='';
$database='my_hypermediatim';

$connection = new mysqli($servername, $username, $password, $database);
if ($connection->connect_error) {
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}
$id = $_POST ["id"];
$query= "SELECT `Name`, Question, Answer, ID FROM faquestion JOIN assistanceservice WHERE ID=ASServiceID AND ID='$id'";
$result = $connection->query($query);
 if($result->num_rows >0){
    $myArray = array(); //create an array to store result
    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $myArray[] = $row;
    }
    $jsonData = json_encode($myArray);
    echo $jsonData; //export in json
}

$result->close();
$connection->close();
?>
