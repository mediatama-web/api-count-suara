<?php

include "../koneksi.php";

// suara partai per dapil 1
$suarapartaidapil1 = $conn->query("SELECT SUM(c.suara) as total, a.nama_partai FROM tb_partai AS a LEFT JOIN tb_caleg AS b ON b.partai=a.nama_partai LEFT JOIN tb_suara AS c ON c.id_caleg=b.id_caleg WHERE c.id_kecamatan = 11 GROUP BY a.nama_partai ORDER BY total DESC");
$partaidapi1 = [];
foreach($suarapartaidapil1 as $u){
    $partaidapi1[] = array(
        'partai' => $u['nama_partai'],
        'total' => $u['total'],
        'kecamatan' => 'Kecamatan Koto Tangah'
    );
}

// suara partai per dapil 2
$suarapartaidapil2 = $conn->query("SELECT SUM(c.suara) as total, a.nama_partai FROM tb_partai AS a LEFT JOIN tb_caleg AS b ON b.partai=a.nama_partai LEFT JOIN tb_suara AS c ON c.id_caleg=b.id_caleg WHERE c.id_kecamatan = 9 GROUP BY a.nama_partai ORDER BY total DESC");
$partaidapi2 = [];
foreach($suarapartaidapil2 as $v){
    $partaidapi2[] = array(
        'partai' => $v['nama_partai'],
        'total' => $v['total'],
        'kecamatan' => 'Kecamatan Kuranji'
    );
}

// suara partai per dapil 3
$suarapartaidapil3 = $conn->query("SELECT SUM(c.suara) as total, a.nama_partai FROM tb_partai AS a LEFT JOIN tb_caleg AS b ON b.partai=a.nama_partai LEFT JOIN tb_suara AS c ON c.id_caleg=b.id_caleg WHERE c.id_kecamatan = 10 AND c.id_kecamatan = 2 GROUP BY a.nama_partai ORDER BY total DESC");
$partaidapi3 = [];
foreach($suarapartaidapil3 as $w){
    $partaidapi3[] = array(
        'partai' => $w['nama_partai'],
        'total' => $w['total'],
        'kecamatan' => 'Kecamatan Pauh dan Lubuk Kilangan'
    );
}

// suara partai per dapil 4
$suarapartaidapil4 = $conn->query("SELECT SUM(c.suara) as total, a.nama_partai FROM tb_partai AS a LEFT JOIN tb_caleg AS b ON b.partai=a.nama_partai LEFT JOIN tb_suara AS c ON c.id_caleg=b.id_caleg WHERE c.id_kecamatan = 1 AND c.id_kecamatan = 3 GROUP BY a.nama_partai ORDER BY total DESC");
$partaidapi4 = [];
foreach($suarapartaidapil4 as $x){
    $partaidapi4[] = array(
        'partai' => $x['nama_partai'],
        'total' => $x['total'],
        'kecamatan' => 'Kecamatan Bungus Teluk Kabung dan Lubuk Begalung'
    );
}

// suara partai per dapil 5
$suarapartaidapil5 = $conn->query("SELECT SUM(c.suara) as total, a.nama_partai FROM tb_partai AS a LEFT JOIN tb_caleg AS b ON b.partai=a.nama_partai LEFT JOIN tb_suara AS c ON c.id_caleg=b.id_caleg WHERE c.id_kecamatan = 4 AND c.id_kecamatan = 5 GROUP BY a.nama_partai ORDER BY total DESC");
$partaidapi5 = [];
foreach($suarapartaidapil5 as $y){
    $partaidapi5[] = array(
        'partai' => $y['nama_partai'],
        'total' => $y['total'],
        'kecamatan' => 'Kecamatan Padang Selatan dan Padang Timur'
    );
}

// suara partai per dapil 6
$suarapartaidapil6 = $conn->query("SELECT SUM(c.suara) as total, a.nama_partai FROM tb_partai AS a LEFT JOIN tb_caleg AS b ON b.partai=a.nama_partai LEFT JOIN tb_suara AS c ON c.id_caleg=b.id_caleg WHERE c.id_kecamatan = 6 AND c.id_kecamatan = 7 GROUP BY a.nama_partai ORDER BY total DESC");
$partaidapi6 = [];
foreach($suarapartaidapil6 as $z){
    $partaidapi6[] = array(
        'partai' => $z['nama_partai'],
        'total' => $z['total'],
        'kecamatan' => 'Kecamatan Padang Barat, Padang Utara'
    );
}


echo json_encode([
    'pesan' => 'success',
    // suara partai / dapil
    'partaidapil1' => $partaidapi1,
    'partaidapil2' => $partaidapi2,
    'partaidapil3' => $partaidapi3,
    'partaidapil4' => $partaidapi4,
    'partaidapil5' => $partaidapi5,
    'partaidapil6' => $partaidapi6,
]);