<?php

include 'connection.php';

$namabarang = $_POST['namabarang'];
$stok = $_POST['stok'];

$sql = "INSERT INTO stok set 
        namabarang='$namabarang', 
        stok='$stok'"; 
$result = $connect->query($sql);

if($result){
    echo json_encode(array(
        "succes" => true,
      
    ));
}else{
    echo json_encode(array(
        "succes" => false,
   
    ));
}