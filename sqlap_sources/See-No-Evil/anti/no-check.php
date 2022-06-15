    <?php
①  $pdo = new PDO("mysql:dbname=test;host=db.example.com",
        "dbuser", "dbpassword");
    $sql = "SELECT bug_id, summary, date_reported FROM Bugs
        WHERE assigned_to = ? AND status = ?";
②  $stmt = $pdo->prepare($sql);
③  $stmt->execute(array(1, "OPEN"));
④  $bug = $stmt->fetch();
