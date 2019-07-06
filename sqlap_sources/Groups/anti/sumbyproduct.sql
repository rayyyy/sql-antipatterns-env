SELECT product_id, SUM(hours) AS total_project_estimate, bug_id
FROM Bugs INNER JOIN BugsProducts USING (bug_id)
GROUP BY product_id;
