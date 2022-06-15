SELECT b.issue_id, b.description, b.reporter, b.priority, b.status,
    b.severity, b.version_affected,
    NULL AS sponsor
  FROM Comments AS c
    INNER JOIN (
      BugsComments INNER JOIN Bugs AS b
        USING (issue_id)
    ) USING (comment_id)
  WHERE c.comment_id = 9876;
UNION
  SELECT f.issue_id, f.description, f.reporter, f.priority, f.status,
    NULL AS severity, NULL AS version_affected,
    f.sponsor
  FROM Comments AS c
    INNER JOIN (
      FeaturesComments INNER JOIN FeatureRequests AS f
        USING (issue_id)
    ) USING (comment_id)
  WHERE c.comment_id = 9876;
