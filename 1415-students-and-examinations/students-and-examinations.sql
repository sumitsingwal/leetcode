-- Write your PostgreSQL query statement below

SELECT Stu.student_id, Stu.student_name, Stu.subject_name, COUNT(Exa.subject_name) as attended_exams
FROM (SELECT * FROM Students CROSS JOIN Subjects) as Stu
LEFT JOIN Examinations as Exa
ON Stu.student_id = Exa.student_id AND Stu.subject_name = Exa.subject_name
GROUP BY Exa.subject_name, Stu.subject_name, Stu.student_id, Stu.student_name
ORDER BY Stu.student_id, Stu.subject_name