<?php
$stmt = $pdo->prepare("SELECT * FROM Bugs ORDER BY date_reported ?");
$stmt->bindValue(1, "DESC", PDO::PARAM_STR);
$stmt->execute();
