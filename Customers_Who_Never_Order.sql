#Solution 1

SELECT c1.name as Customers
FROM Customers as c1
LEFT JOIN Orders as o1
ON c1.id = o1.customerId
WHERE o1.customerId IS NULL

# Solution 2

SELECT name AS Customers
FROM Customers
where id NOT IN (SELECT CustomerId FROM Orders)
