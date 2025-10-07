-- Write your PostgreSQL query statement below
SELECT Pro.product_name, Sal.year, Sal.price
FROM Sales as Sal
LEFT JOIN Product as Pro
ON Sal.product_id = Pro.product_id