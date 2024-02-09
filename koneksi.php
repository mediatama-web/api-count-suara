<?php

$conn = new mysqli("localhost",'root','','realtime_count');

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");