SELECT *
FROM BugsComments AS b
  INNER JOIN Comments AS c USING (comment_id)
WHERE b.issue_id = 1234;
