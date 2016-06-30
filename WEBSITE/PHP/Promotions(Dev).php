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

$query = "SELECT Name,ImagePath,Price, PromotionCategory FROM device WHERE InPromotion=1 AND PromotionCategory IS NOT NULL"; //"AND PromotionCategory IS NOT NULL";

$result = $connection->query($query);

$myArray = array(); //create an array to store result
if($result->num_rows >0){
    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $myArray[] = $row;
    }
}
$jsonData = json_encode($myArray);
echo $jsonData; //export in json

$result->close();
$connection->close();


?>
