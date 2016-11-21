-- https://www.codewars.com/kata/580fb94e12b34dd1c40001f0
SELECT 
  j.job_title,
  ROUND(SUM(j.salary) / COUNT(p)::DECIMAL, 2)::FLOAT as average_salary,
  COUNT(p.id) as total_people,
  ROUND(SUM(j.salary)::DECIMAL, 2)::FLOAT as total_salary
  FROM people p
    JOIN job j ON p.id = j.people_id
  GROUP BY j.job_title
  ORDER BY average_salary DESC
