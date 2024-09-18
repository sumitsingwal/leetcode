
SELECT name
FROM SalesPerson
WHERE sales_id not in (
SELECT o1.sales_id
FROM Orders o1
LEFT JOIN Company c1
ON o1.com_id = c1.com_id
WHERE c1.name = "RED" 
)
