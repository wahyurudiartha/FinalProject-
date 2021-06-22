<?php

include 'connection.php';

$id = $_POST['id'];
$namabarang = $_POST['namabarang'];
$stok = $_POST['stok'];

$sql = "UPDATE stok set 
        
        namabarang='$namabarang', 
        stok='$stok'WHERE id='$id'"; 
       
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