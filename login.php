<?php

include "koneksi.php";

$post = json_decode(file_get_contents('php://input'));

$username = $post->username;
$password = $post->password;

$user = $conn->query("SELECT a.id_user, a.nama_user, a.password, a.id_kecamatan, b.nama_kecamatan FROM tb_users a LEFT JOIN tb_kecamatan b ON b.id_kecamatan=a.id_kecamatan WHERE a.username = '$username'")->fetch_assoc();

if($user){
    if(password_verify($password, $user['password'])){
        $pesan = "success";
        $data = array(
            'id_user' => $user['id_user'],
            'nama_user' => $user['nama_user'],
            'id_kecamatan' => $user['id_kecamatan'],
            'nama_kecamatan' => $user['nama_kecamatan'],
        );
    }else{
        $pesan = "password salah!";
        $data = array();
    }
}else{
    $pesan = "Username salah!";
    $data = [];
}

echo json_encode([
    'pesan' => $pesan,
    'user' => $data
]);