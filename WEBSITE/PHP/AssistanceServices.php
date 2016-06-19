<?php
$servername='localhost';
$username='user1';
$password='user1';
$database='timdatabase';

$connection = new mysqli($servername, $username, $password, $database);
// Check connection
if ($connection->connect_error) {
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$query = 'SELECT Category FROM assistanceservice GROUP BY Category';

$result = $connection->query($query);
if($result->num_rows > 0){
    $myArray = array();
    $i = 0;
    while ($row = $result->fetch_assoc()){
        $myArray[$i] = $row;
        $i++;
    }
    $json = json_encode($myArray);
    echo $json;
}
$result->close();
$connection->close();
?>