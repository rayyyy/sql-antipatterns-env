DELETE FROM TreePaths
WHERE descendant IN (SELECT x.id FROM (SELECT descendant AS id
                     FROM TreePaths
                     WHERE ancestor = 6) AS x)
  AND ancestor IN (SELECT y.id FROM (SELECT ancestor AS id
                   FROM TreePaths
                   WHERE descendant = 6
                     AND ancestor != descendant) AS y);
