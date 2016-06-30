<?php
header('Access-Control-Allow-Origin: *');

$connection = mysqli_connect('localhost','hypermediatim','','my_hypermediatim'); //establish a connection with the database

if (mysqli_connect_errno()){
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

/**SQL Query Template:
SELECT * FROM device WHERE
col=".$var." ORDER BY id DESC GROUP BY….
*/

$chosenCategory = $_POST["category"];
if (!(is_string($chosenCategory))) {
    print("Error : the variable $chosenCategory is not a string");
    exit();
}

$query = "SELECT Name,ImagePath,Price FROM device WHERE Category='$chosenCategory'";


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
