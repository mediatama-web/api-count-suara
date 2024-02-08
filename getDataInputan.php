<?php

include "koneksi.php";

$id = $_GET['id'];
$data = $conn->query("SELECT
    a.id_suara,
    a.no_tps,
    c.nama_kelurahan,
    a.suara,
    d.nama_caleg
FROM
    tb_suara a
LEFT JOIN tb_kecamatan b ON
    a.id_kecamatan = b.id_kecamatan
LEFT JOIN tb_kelurahan c ON
    c.id_kelurahan = a.id_kelurahan
LEFT JOIN tb_caleg d ON
    d.id_caleg = a.id_caleg
WHERE
    id_user = '$id' 
ORDER BY a.id_suara DESC");

$list = [];
foreach($data as $i => $a){
    $list[] = array(
        'key' => $i,
        'id' => $a['id_suara'],
        'kelurahan' => $a['nama_kelurahan'],
        'nama_caleg' => $a['nama_caleg'],
        'no_tps' => $a['no_tps'],
        'suara' => $a['suara']
    );
}

echo json_encode([
    'pesan' => 'success',
    'suara' => $list
]);