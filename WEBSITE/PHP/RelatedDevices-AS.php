<?php

$connection = mysqli_connect('localhost','hypermediatim','','my_hypermediatim'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$serviceIdentifier=$_POST["serviceIdentifier"];

$query = "SELECT `Device-Name` AS Name, A.Name AS ServiceName ,D.imagePath,D.Price FROM `devices-relatedas` AS DAS,device AS D,assistanceservice AS A WHERE `Device-Name`=D.Name and `assistanceservice-ID`='$serviceIdentifier' and A.ID='$serviceIdentifier'";

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
