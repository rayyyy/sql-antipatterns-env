SELECT parent.*
FROM Comments AS c
  INNER JOIN Comments AS parent
    ON parent.nsleft < c.nsleft AND c.nsleft < parent.nsright
  LEFT OUTER JOIN Comments AS in_between
    ON in_between.nsleft < c.nsleft AND c.nsleft < in_between.nsright
    AND parent.nsleft < in_between.nsleft AND in_between.nsleft < parent.nsright
WHERE c.comment_id = 6
  AND in_between.comment_id IS NULL;
