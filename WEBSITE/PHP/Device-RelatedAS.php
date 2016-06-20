<?php

$connection = mysqli_connect('localhost','user1','user1','timdatabase'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$deviceName = $_POST["device"];
//$deviceName = str_replace("%20"," ",$deviceName);

$query = "SELECT `AssistanceService-ID`,Name AS ASName, Category as ASCategory, SubCategory AS ASsubcategory FROM `devices-relatedas`, assistanceservice WHERE `Device-Name`='$deviceName' and `devices-relatedas`.`AssistanceService-ID`=assistanceservice.ID";

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
