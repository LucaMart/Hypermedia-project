<?php
    $connection = mysqli_connect('localhost','hypermediatim','','my_hypermediatim'); //establish a connection with the database

    if (mysqli_connect_errno()){
        print("Error connecting to DBMS:".mysqli_connect_error());
        exit();
    }
    $radio = json_decode($_POST['radio']);
    $checkbox = json_decode($_POST['checkbox']);
    $field = "";
    $i;

    $chosenCategory = $_POST["category"];
    if (!(is_string($chosenCategory))) {
        print("Error : the variable $chosenCategory is not a string");
        exit();
    }
    if(sizeof($checkbox)>0){
        $field = $checkbox[0]->Name;
        $query = "SELECT Name,ImagePath,Price,".$field;
        $query= $query." FROM device WHERE Category='$chosenCategory'";
            
    }else{
        $query = "SELECT Name,ImagePath,Price FROM device WHERE     Category='$chosenCategory'";
    }
    if($radio[0]->Value != "all"){
        $value = $radio[0]->Value;
        $name = $radio[0]->Name;
        $query = $query." AND ".$name."='$value'";
    }
    $myArray = array(); //create an array to store result
    $result = $connection->query($query);
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
