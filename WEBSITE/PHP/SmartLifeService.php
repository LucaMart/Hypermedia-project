<?php

$connection = mysqli_connect('localhost','user1','user1','timdatabase'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$serviceName=$_POST["service"];

$query = "SELECT Name,Description,ActivationAndRules,Price,SLImagePath,RelatedProductsImagePath FROM smartlifeservice WHERE Name='$serviceName'";


$result = $connection->query($query);

if($result->num_rows >0)
{
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
