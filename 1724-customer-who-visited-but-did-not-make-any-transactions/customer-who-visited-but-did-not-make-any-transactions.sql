-- Write your PostgreSQL query statement below

SELECT Vis.customer_id, COUNT(Vis.visit_id) as count_no_trans
FROM Visits as Vis
LEFT JOIN Transactions as Transac
ON Vis.visit_id = Transac.visit_id
WHERE Transac.transaction_id IS NULL
GROUP BY Vis.customer_id
