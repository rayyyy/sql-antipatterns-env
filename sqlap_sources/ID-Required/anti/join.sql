SELECT * FROM Bugs AS b
  INNER JOIN BugsProducts AS bp
    ON b.bug_id = bp.bug_id;
