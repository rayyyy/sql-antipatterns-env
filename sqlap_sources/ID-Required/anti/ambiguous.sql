SELECT b.id, a.id
FROM Bugs b
INNER JOIN Accounts a ON b.assigned_to = a.id
WHERE b.status = 'OPEN';
