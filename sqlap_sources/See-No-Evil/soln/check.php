    <?php
    try {
        $pdo = new PDO("mysql:dbname=test;host=localhost",
            "dbuser", "dbpassword");
①  } catch (PDOException $e) {
        report_error($e->getMessage());
        return;
    }

    $sql = "SELECT bug_id, summary, date_reported FROM Bugs
        WHERE assigned_to = ? AND status = ?";

②  if (($stmt = $pdo->prepare($sql)) === false) {
        $error = $pdo->errorInfo();
        report_error($error[2]);
        return;
    }

③  if ($stmt->execute(array(1, "OPEN")) === false) {
        $error = $stmt->errorInfo();
        report_error($error[2]);
        return;
    }

④  if (($bug = $stmt->fetch()) === false) {
        $error = $stmt->errorInfo();
        report_error($error[2]);
        return;
    }
