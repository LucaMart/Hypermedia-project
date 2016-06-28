<?php

$connection = mysqli_connect('localhost','hypermediatim','','my_hypermediatim'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$type = $_POST["featuredType"];

if (strcmp($type,"SmartLifeService")==0) {
    $query = "SELECT Name,Introduction,SLImagePath FROM smartlifeservice WHERE Featured=1";
}

if (strcmp($type,"Project")==0) {
    $query = "SELECT Name,imagePath, Introduction FROM project WHERE Featured=1";
}


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
