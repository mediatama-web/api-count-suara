<?php

include "koneksi.php";

$post = json_decode(file_get_contents('php://input'));

$id_caleg       = $post->id_caleg;
$id_kelurahan   = $post->id_kelurahan;
$id_kecamatan   = $post->id_kecamatan;
$no_tps         = $post->no_tps;
$suara          = $post->suara;
$id_user        = $post->id_user;

$simpan = $conn->query("INSERT INTO `tb_suara` (`id_caleg`, `id_kelurahan`, `id_kecamatan`, `no_tps`, `suara`, `id_user`) VALUES ('$id_caleg','$id_kelurahan','$id_kecamatan','$no_tps','$suara',$id_user)");
if($simpan){
    $pesan = "success";
}else{
    $pesan = "error";
}

echo json_encode([
    'pesan' => $pesan
]);