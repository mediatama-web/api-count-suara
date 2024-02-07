<?php

include "koneksi.php";

$suara = $conn->query("SELECT SUM(suara) as suara FROM tb_suara")->fetch_assoc();
$total = $conn->query("SELECT SUM(jumlah_pemilih) as total FROM tb_kecamatan")->fetch_assoc();

$partai = $conn->query("SELECT SUM(a.suara) as total, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg=b.id_caleg GROUP BY b.partai ORDER BY total DESC");

$suaraKecamatan = $conn->query("SELECT SUM(suara) as total, b.nama_kecamatan, b.jumlah_pemilih FROM tb_suara a LEFT JOIN tb_kecamatan b ON a.id_kecamatan=b.id_kecamatan GROUP BY a.id_kecamatan DESC");

foreach($suaraKecamatan as $b){
    $kecamatan[] = array(
        'kecamatan' => $b['nama_kecamatan'],
        'suara' => $b['total'],
        'jumlah_pemilih' => $b['jumlah_pemilih'],
    );
}

$partailist = [];

foreach($partai as $a){
    $partailist[] = $a['partai'];
    $suaralist[] = $a['total'];
}

$list = array(
    'suara' => $suara['suara'],
    'total' => $total['total'],
);

echo json_encode([
    'pesan' => 'success',
    'suara' => $list,
    'partai' => $partailist,
    'suarapartai' => $suaralist,
    'suarakecamatan' => $kecamatan
]);