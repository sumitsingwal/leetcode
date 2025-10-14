-- Write your PostgreSQL query statement below
SELECT * 
FROM (
    SELECT Pro.product_name, SUM(Ord.Unit) as unit
    FROM Orders as Ord
    LEFT JOIN Products as Pro
    ON Ord.product_id = Pro.product_id
    WHERE Ord.order_date BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY Ord.product_id, Pro.product_name
)
WHERE unit > 99


