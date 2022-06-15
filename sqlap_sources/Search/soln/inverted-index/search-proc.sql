   CREATE PROCEDURE BugsSearch(keyword VARCHAR(40))
   BEGIN
     SET @keyword = keyword;

①   PREPARE s1 FROM 'SELECT MAX(keyword_id) INTO @k FROM Keywords
       WHERE keyword = ?';
     EXECUTE s1 USING @keyword;
     DEALLOCATE PREPARE s1;

     IF (@k IS NULL) THEN
②     PREPARE s2 FROM 'INSERT INTO Keywords (keyword) VALUES (?)';
       EXECUTE s2 USING @keyword;
       DEALLOCATE PREPARE s2;
③     SELECT LAST_INSERT_ID() INTO @k;
④     PREPARE s3 FROM 'INSERT INTO BugsKeywords (bug_id, keyword_id)
         SELECT bug_id, ? FROM Bugs
         WHERE summary REGEXP CONCAT('' [[:<:]]'', ?, '' [[:>:]]'')
           OR description REGEXP CONCAT('' [[:<:]]'', ?, '' [[:>]]'')';
       EXECUTE s3 USING @k, @keyword, @keyword;
       DEALLOCATE PREPARE s3;
     END IF;

⑤   PREPARE s4 FROM 'SELECT b.* FROM Bugs b
       INNER JOIN BugsKeywords k USING (bug_id)
       WHERE k.keyword_id = ?';
     EXECUTE s4 USING @k;
     DEALLOCATE PREPARE s4;
   END
