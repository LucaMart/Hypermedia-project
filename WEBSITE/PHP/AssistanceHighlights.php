<?php
$servername='localhost';
$username='hypermediatim';
$password='';
$database='my_hypermediatim';

$connection = new mysqli($servername, $username, $password, $database);
if ($connection->connect_error) {
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}
$query= "SELECT Title, ASServiceID FROM `as-descriptiondiv` WHERE Highlights = 1";
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
