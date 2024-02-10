<?php

include "../koneksi.php";

// suara per caleg dappil 1 1-25
$suaracalegdapil1 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 11 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg1 = [];
foreach($suaracalegdapil1 as $e){
    $dapilcaleg1[] = array(
        'nama_caleg' => $e['nama_caleg'],
        'partai' => $e['partai'],
        'total' => $e['total'],
        'kecamatan' => 'Kecamatan Koto Tangah'
    );
}

// suara per caleg dappil 1 26-50
$suaracalegdapil11 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 11 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 26,50");
$dapilcaleg11 = [];
foreach($suaracalegdapil11 as $e){
    $dapilcaleg11[] = array(
        'nama_caleg' => $e['nama_caleg'],
        'partai' => $e['partai'],
        'total' => $e['total'],
        'kecamatan' => 'Kecamatan Koto Tangah'
    );
}

// suara per caleg dappil 2 1-25
$suaracalegdapil2 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 9 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg2 = [];
foreach($suaracalegdapil2 as $e){
    $dapilcaleg2[] = array(
        'nama_caleg' => $e['nama_caleg'],
        'partai' => $e['partai'],
        'total' => $e['total'],
        'kecamatan' => 'Kecamatan Kuranji'
    );
}

// suara per caleg dappil 2 26-50
$suaracalegdapil22 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 9 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 26,50");
$dapilcaleg22 = [];
foreach($suaracalegdapil22 as $e){
    $dapilcaleg22[] = array(
        'nama_caleg' => $e['nama_caleg'],
        'partai' => $e['partai'],
        'total' => $e['total'],
        'kecamatan' => 'Kecamatan Kuranji'
    );
}

// suara per caleg dappil 3 1-25
$suaracalegdapil3 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 10 AND a.id_kecamatan = 2 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg3 = [];
foreach($suaracalegdapil3 as $f){
    $dapilcaleg3[] = array(
        'nama_caleg' => $f['nama_caleg'],
        'partai' => $f['partai'],
        'total' => $f['total'],
        'kecamatan' => 'Kecamatan Pauh dan Lubuk Kilangan '
    );
}

// suara per caleg dappil 3 26-50
$suaracalegdapil33 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 10 AND a.id_kecamatan = 2 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 26,50");
$dapilcaleg33 = [];
foreach($suaracalegdapil33 as $g){
    $dapilcaleg33[] = array(
        'nama_caleg' => $g['nama_caleg'],
        'partai' => $g['partai'],
        'total' => $g['total'],
        'kecamatan' => 'Kecamatan Pauh dan Lubuk Kilangan '
    );
}

// suara per caleg dappil 4 1-25
$suaracalegdapil4 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 1 AND a.id_kecamatan = 3 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg4 = [];
foreach($suaracalegdapil4 as $h){
    $dapilcaleg4[] = array(
        'nama_caleg' => $h['nama_caleg'],
        'partai' => $h['partai'],
        'total' => $h['total'],
        'kecamatan' => 'Kecamatan Bungus Teluk Kabung dan Lubuk Begalung'
    );
}

// suara per caleg dappil 4 26-50
$suaracalegdapil44 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 1 AND a.id_kecamatan = 3 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 26,50");
$dapilcaleg44 = [];
foreach($suaracalegdapil44 as $i){
    $dapilcaleg44[] = array(
        'nama_caleg' => $i['nama_caleg'],
        'partai' => $i['partai'],
        'total' => $i['total'],
        'kecamatan' => 'Kecamatan Bungus Teluk Kabung dan Lubuk Begalung'
    );
}

// suara per caleg dappil 5 1-25
$suaracalegdapil5 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 4 AND a.id_kecamatan = 5 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg5 = [];
foreach($suaracalegdapil5 as $j){
    $dapilcaleg5[] = array(
        'nama_caleg' => $j['nama_caleg'],
        'partai' => $j['partai'],
        'total' => $j['total'],
        'kecamatan' => 'Kecamatan Padang Selatan dan Padang Timur'
    );
}

// suara per caleg dappil 5 26-50
$suaracalegdapil55 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 4 AND a.id_kecamatan = 5 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 26,50");
$dapilcaleg55 = [];
foreach($suaracalegdapil55 as $k){
    $dapilcaleg55[] = array(
        'nama_caleg' => $k['nama_caleg'],
        'partai' => $k['partai'],
        'total' => $k['total'],
        'kecamatan' => 'Kecamatan Padang Selatan dan Padang Timur'
    );
}

// suara per caleg dappil 6 1-25
$suaracalegdapil6 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 4 AND a.id_kecamatan = 5 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg6 = [];
foreach($suaracalegdapil6 as $l){
    $dapilcaleg6[] = array(
        'nama_caleg' => $l['nama_caleg'],
        'partai' => $l['partai'],
        'total' => $l['total'],
        'kecamatan' => 'Kecamatan Padang Selatan dan Padang Timur'
    );
}

// suara per caleg dappil 6 26-50
$suaracalegdapil66 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 4 AND a.id_kecamatan = 5 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 26,50");
$dapilcaleg66 = [];
foreach($suaracalegdapil66 as $m){
    $dapilcaleg66[] = array(
        'nama_caleg' => $m['nama_caleg'],
        'partai' => $m['partai'],
        'total' => $m['total'],
        'kecamatan' => 'Kecamatan Padang Selatan dan Padang Timur'
    );
}


echo json_encode([
    // suara caleg / dapil
    'dapilcaleg1' => $dapilcaleg1,
    'dapilcaleg11' => $dapilcaleg11,
    'dapilcaleg2' => $dapilcaleg2,
    'dapilcaleg22' => $dapilcaleg22,
    'dapilcaleg3' => $dapilcaleg3,
    'dapilcaleg33' => $dapilcaleg33,
    'dapilcaleg4' => $dapilcaleg4,
    'dapilcaleg44' => $dapilcaleg44,
    'dapilcaleg5' => $dapilcaleg5,
    'dapilcaleg55' => $dapilcaleg55,
    'dapilcaleg6' => $dapilcaleg6,
    'dapilcaleg66' => $dapilcaleg66
]);