SELECT a.*
FROM Accounts AS a INNER JOIN Contacts AS c ON a.account_id = c.account_id
WHERE c.product_id = 123;
