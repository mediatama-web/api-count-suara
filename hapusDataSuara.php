<?php

include "koneksi.php";

$id = $_GET['id'];
$data = $conn->query("DELETE FROM tb_suara WHERE id_suara = '$id'");

if($data){
    echo json_encode([
        'pesan' => true
    ]);
}else{
    echo json_encode([
        'pesan' => false
    ]);
}