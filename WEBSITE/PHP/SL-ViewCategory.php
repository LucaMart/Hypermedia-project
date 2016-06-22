<?php

$connection = mysqli_connect('localhost','user1','user1','timdatabase'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

/**SQL Query Template:
SELECT * FROM device WHERE
col=".$var." ORDER BY id DESC GROUP BY….
*/

$chosenCategory = $_POST["category"];

$query = "SELECT Name,Category,Comment,Subcategory,SLImagePath FROM smartlifeservice WHERE Category='$chosenCategory'";


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
