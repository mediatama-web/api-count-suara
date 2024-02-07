<?php

include "koneksi.php";

$data = $conn->query("SELECT * FROM tb_caleg");

$list = [];
foreach($data as $i => $a){
    $list[] = array(
        'id_caleg' => $a['id_caleg'],
        'nama_caleg' => $a['nama_caleg']
    );
}

echo json_encode([
    'pesan' => 'success',
    'caleg' => $list
]);