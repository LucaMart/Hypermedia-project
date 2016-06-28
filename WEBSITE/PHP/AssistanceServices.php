<?php
$servername='localhost';
$username='hypermediatim';
$password='';
$database='my_hypermediatim';

$connection = new mysqli($servername, $username, $password, $database);
// Check connection
if ($connection->connect_error) {
    print("Error connecting to DBMS:".mysqli_connect_error());
    exit();
}

$query = 'SELECT Category, ID FROM assistanceservice GROUP BY Category';

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
