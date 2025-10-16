-- Write your PostgreSQL query statement below
SELECT *
FROM(
    SELECT Usr.name, SUM(Transac.amount) as balance
    FROM Users as Usr
    LEFT JOIN Transactions as Transac
    ON Usr.account = Transac.account
    GROUP BY Transac.account, usr.name
)
WHERE balance > 10000
