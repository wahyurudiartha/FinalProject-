<?php

include 'connection.php';

$nama = $_POST['nama'];
$nohp = $_POST['nohp'];
$alamat = $_POST['alamat'];

$sql = "INSERT INTO pelanggan set 
        nama='$nama', 
        nohp='$nohp', 
        alamat='$alamat'";
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