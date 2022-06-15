SELECT c.*, i.summary, i.status
FROM Comments AS c
INNER JOIN c.issue_type AS i USING (issue_id);
