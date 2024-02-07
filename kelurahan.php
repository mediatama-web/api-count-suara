<?php

include "koneksi.php";

$id_kecamatan = $_GET['id_kecamatan'];
$data = $conn->query("SELECT * FROM tb_kelurahan WHERE id_kecamatan='$id_kecamatan'");

$list = [];
foreach($data as $i => $a){
    $list[] = array(
        'id_kelurahan' => $a['id_kelurahan'],
        'nama_kelurahan' => $a['nama_kelurahan']
    );
}

echo json_encode([
    'pesan' => 'success',
    'kelurahan' => $list
]);