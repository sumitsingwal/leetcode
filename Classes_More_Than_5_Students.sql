SELECT T.class
FROM (SELECT class, count(class) as Total
FROM Courses
GROUP BY class) as T
where T.Total >= 5
