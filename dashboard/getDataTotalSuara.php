<?php

include "../koneksi.php";

$suara = $conn->query("SELECT SUM(suara) as suara FROM tb_suara")->fetch_assoc();
$total = $conn->query("SELECT SUM(jumlah_pemilih) as total FROM tb_kecamatan")->fetch_assoc();

$list = array(
    'suara' => $suara['suara'],
    'total' => $total['total'],
);

// suara per partai
$partai = $conn->query("SELECT SUM(a.suara) as total, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg=b.id_caleg GROUP BY b.partai ORDER BY total DESC");

foreach($partai as $a){
    $partailist[] = $a['partai'];
    $suaralist[] = $a['total'];
}

// suara perkecamatan
$suaraKecamatan = $conn->query("SELECT SUM(suara) as total, b.nama_kecamatan, b.jumlah_pemilih FROM tb_suara a LEFT JOIN tb_kecamatan b ON a.id_kecamatan=b.id_kecamatan GROUP BY a.id_kecamatan DESC");
$kecamatan = [];
foreach($suaraKecamatan as $b){
    $kecamatan[] = array(
        'kecamatan' => $b['nama_kecamatan'],
        'suara' => $b['total'],
        'jumlah_pemilih' => $b['jumlah_pemilih'],
    );
}

// suara caleg 1-25
$calegskortertinggi1 = $conn->query("SELECT SUM(a.suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg GROUP BY b.id_caleg ORDER BY total DESC LIMIT 1,25"); 
$calegsuara1 = [];
foreach($calegskortertinggi1 as $c){
    $calegsuara1[] = array(
        'nama_caleg' => $c['nama_caleg'],
        'partai' => $c['partai'],
        'total' => $c['total']
    );
}

// suara caleg 26-50
$calegskortertinggi2 = $conn->query("SELECT SUM(a.suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg GROUP BY b.id_caleg ORDER BY total DESC LIMIT 26,50"); 
$calegsuara2 = [];
foreach($calegskortertinggi2 as $d){
    $calegsuara2[] = array(
        'nama_caleg' => $d['nama_caleg'],
        'partai' => $d['partai'],
        'total' => $d['total']
    );
}

echo json_encode([
    'pesan' => 'success',
    'suara' => $list,
    'partai' => $partailist,
    'suarapartai' => $suaralist,
    'suarakecamatan' => $kecamatan,
    'suaracaleg1' => $calegsuara1,
    'suaracaleg2' => $calegsuara2,
]);