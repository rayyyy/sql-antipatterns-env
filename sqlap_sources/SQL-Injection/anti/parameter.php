<?php
$stmt = $pdo->prepare("SELECT * FROM Projects WHERE project_name = ?");
$stmt->bindValue(1, $_REQUEST["name"], PDO::PARAM_STR);
$stmt->execute();
