<?php

$connection = mysqli_connect('localhost','hypermediatim','','my_hypermediatim'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$deviceName = $_POST["device"];
//$deviceName = str_replace("%20"," ",$deviceName);

$query = "SELECT DSL.`Device-Name`, DSL.`SLService-Name` AS SLName, SLS.Category as SLCategory FROM `devices-relatedsl` AS DSL, smartlifeservice as SLS WHERE `Device-Name`='$deviceName' and DSL.`SLService-Name`=SLS.Name";

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
