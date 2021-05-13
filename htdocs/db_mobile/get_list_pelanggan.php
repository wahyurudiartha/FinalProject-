<?php

include 'connection.php';

$sql = "SELECT * FROM pelanggan";
$result = $connect->query($sql);

if($result->num_rows >0){
    $data = array();
    while($baris = $result->fetch_assoc()){
        $data[] = $baris;
    }
    echo json_encode(array(
        "succes"=>true,
        "data" => $data,
    ));
}else{
    echo json_encode(array(
        "succes" => false,
        "data" => [],
    ));
}