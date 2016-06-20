<?php
$servername='localhost';
$username='user1';
$password='user1';
$database='timdatabase';

$connection = new mysqli($servername, $username, $password, $database);
if ($connection->connect_error) {
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}
$query= "SELECT Title FROM `as-descriptiondiv` WHERE Highlights = 1";
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