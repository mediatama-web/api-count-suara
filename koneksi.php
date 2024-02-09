<?php

// $conn = new mysqli("localhost",'root','','realtime_count');
$conn = new mysqli("localhost",'mede1442_quickcount','asdasd123456789','mede1442_quickcount');

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, PATCH, OPTIONS');
header('Access-Control-Allow-Headers: token, Content-Type');
header('Access-Control-Max-Age: 1728000');
header('Content-Length: 0');
header('Content-Type: text/plain');
header('Content-Type: application/json');