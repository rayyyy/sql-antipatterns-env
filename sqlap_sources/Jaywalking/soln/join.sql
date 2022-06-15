SELECT p.*
FROM Products AS p INNER JOIN Contacts AS c ON p.product_id = c.product_id
WHERE c.account_id = 34;
