<?php

include "koneksi.php";

$post = json_decode(file_get_contents('php://input'));

$username = $post->username;
$password = $post->password;

$user = $conn->query("SELECT * FROM tb_users WHERE username = '$username'")->fetch_assoc();

if($user){
    if(password_verify($password, $user['password'])){
        $pesan = "success";
        $data = array(
            'id_user' => $user['id_user'],
            'nama_user' => $user['nama_user'],
            'id_kecamatan' => $user['id_kecamatan']
        );
    }else{
        $pesan = "password salah!";
        $data = array(
            'id_user' => $user['id_user'],
            'nama_user' => $user['nama_user'],
            'id_kecamatan' => $user['id_kecamatan']
        );
    }
}else{
    $pesan = "Username salah!";
    $data = [];
}

echo json_encode([
    'pesan' => $pesan,
    'user' => $data
]);