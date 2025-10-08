-- Write your PostgreSQL query statement below
SELECT DISTINCT Sal.product_id, Pro.product_name
FROM Product as Pro
RIGHT JOIN Sales as Sal
ON Pro.product_id = Sal.product_id
WHERE Sal.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
AND Pro.product_id NOT IN (SELECT DISTINCT product_id FROM Sales WHERE sale_date > '2019-03-31' OR sale_date < '2019-01-01')