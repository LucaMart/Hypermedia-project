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

$id = $_POST ["id"];

$query = "SELECT Category FROM assistanceservice WHERE ID='$id'";
$result = $connection->query($query);
if($result->num_rows == 1){
    $bridge = $result->fetch_assoc();
    $category = $bridge['Category'];
    $query = "SELECT SubCategory FROM assistanceservice WHERE Category ='$category' GROUP BY SubCategory";
    $result = $connection->query($query);
    $i = 0;
    while($row = $result->fetch_assoc()){
        $c = 0;
        $myArray[$i][$c] = $row['SubCategory'];
        $subCategory = $myArray[$i][$c];
        $query = "SELECT Name, ID FROM assistanceservice WHERE subCategory='$subCategory'and Category='$category'";
        $result2 = $connection->query($query);
        while($row2 = $result2->fetch_assoc()){
            $c++;
            $myArray[$i][$c] = $row2['Name'];
            $c++;
            $myArray[$i][$c] = $row2['ID'];
        
        }
        $i++;
    }
    echo json_encode($myArray);
}else{
    echo "Nothing found";    
}
$result2->close();
$result->close();
$connection->close();
?>
