-- Write your PostgreSQL query statement below
UPDATE Salary
SET sex = case sex
    when 'm' then 'f'
    else 'm'
    end