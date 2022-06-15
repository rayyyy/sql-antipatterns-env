<?php

define('DATA_DIRECTORY', '/var/bugtracker/data/');

$stmt = $pdo->query("SELECT image_path FROM Screenshots
                     WHERE bug_id = 1234 AND image_id = 1");
$row = $stmt->fetch();
$image_path = $row[0];

// 実際の画像の読み込み -- パスが正しいものでありますように!
$image = file_get_contents(DATA_DIRECTORY . $image_path);
