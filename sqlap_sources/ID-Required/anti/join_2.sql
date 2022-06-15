SELECT * FROM Bugs AS b
  INNER JOIN BugsProducts AS bp
    ON b.id = bp.bug_id;
