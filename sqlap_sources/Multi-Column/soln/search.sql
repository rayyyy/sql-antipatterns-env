SELECT * FROM Bugs INNER JOIN Tags USING (bug_id)
WHERE tag = 'performance';
