-- Write your PostgreSQL query statement below

SELECT p.product_id, 
CASE 
    WHEN ROUND(SUM(P.price * 1.0 * US.units)/SUM(US.units), 2) IS NULL THEN 0
    ELSE
        ROUND(SUM(P.price * 1.0 * US.units)/SUM(US.units), 2)
    END as average_price
FROM Prices as P
LEFT JOIN UnitsSold as US
ON P.product_id = US.product_id AND US.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id
