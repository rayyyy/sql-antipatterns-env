SELECT *
FROM Comments AS c
  LEFT OUTER JOIN (
      BugsComments INNER JOIN Bugs AS b
        USING (issue_id)
    ) USING (comment_id)
  LEFT OUTER JOIN (
      FeaturesComments INNER JOIN FeatureRequests AS f
        USING (issue_id)
    ) USING (comment_id)
WHERE c.comment_id = 9876;
