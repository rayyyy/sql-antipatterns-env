DELETE FROM TreePaths
WHERE descendant IN (SELECT x.id FROM
                       (SELECT descendant AS id
                        FROM TreePaths
                        WHERE ancestor = 4) AS x);
