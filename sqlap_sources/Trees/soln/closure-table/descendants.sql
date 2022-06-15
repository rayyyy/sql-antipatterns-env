SELECT c.*
FROM Comments AS c
  INNER JOIN TreePaths AS t ON c.comment_id = t.descendant
WHERE t.ancestor = 4;
