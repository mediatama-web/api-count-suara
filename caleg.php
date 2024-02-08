<?php

include "koneksi.php";

$data = $conn->query("SELECT * FROM tb_caleg ORDER BY nama_caleg ASC");

$list = [];
foreach($data as $i => $a){
    $list[] = array(
        'value' => $a['id_caleg'],
        'label' => $a['nama_caleg']
    );
}

echo json_encode([
    'pesan' => 'success',
    'caleg' => $list
]);