INSERT INTO Comments (comment_id, bug_id, author, comment_date, comment)
  VALUES (8, 1234, 23, CURRENT_TIMESTAMP, '確認お願いします');

INSERT INTO TreePaths (ancestor, descendant)
  SELECT t.ancestor, 8
  FROM TreePaths AS t
  WHERE t.descendant = 5
 UNION ALL
  SELECT 8, 8;
