SELECT b.* FROM BugsText t INNER JOIN Bugs b ON t.docid = b.bug_id
WHERE BugsText MATCH 'crash';
