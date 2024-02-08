<?php

include "koneksi.php";

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

// suara per caleg dappil 1 1-25
$suaracalegdapil1 = $conn->query("SELECT SUM(suara) AS total, b.nama_caleg, b.partai FROM tb_suara a LEFT JOIN tb_caleg b ON a.id_caleg = b.id_caleg  WHERE a.id_kecamatan = 11 GROUP BY a.id_caleg ORDER BY total DESC LIMIT 1,25");
$dapilcaleg1 = [];
foreach($suaracalegdapil1 as $e){
    $dapilcaleg1[] = array(
        'nama_caleg' => $e['nama_caleg'],
        'partai' => $e['partai'],
        'total' => $e['total'],
        'kecamatan' => 'Koto Tangah'
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
        'kecamatan' => 'Koto Tangah'
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
        'kecamatan' => 'Kuranji'
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
        'kecamatan' => 'Kuranji'
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
    // suara dapil
    'dapilcaleg1' => $dapilcaleg1,
    'dapilcaleg11' => $dapilcaleg11,
    'dapilcaleg2' => $dapilcaleg2,
    'dapilcaleg22' => $dapilcaleg22,
]);