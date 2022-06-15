<?php
$quoted_status = $pdo->quote($_REQUEST["status"]);
$sql = "SELECT * FROM Accounts WHERE account_status = $quoted_status";
$stmt = $pdo->query($sql);
