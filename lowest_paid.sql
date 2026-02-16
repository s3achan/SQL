WITH projects2 AS (
    SELECT ep.employee_id as employee_id,
           COUNT(project_id) AS completed_projects 
    FROM projects p 
    LEFT JOIN employee_projects ep
    ON p.id = ep.project_id
    WHERE end_date IS NOT NULL 
    GROUP BY ep.employee_id 
    HAVING COUNT(project_id) >= 2 
)

SELECT employee_id,
    salary,
    completed_projects
FROM employees e JOIN projects2 p 
ON e.id = p.employee_id
ORDER BY salary ASC 
LIMIT 3 

---- Other Solution -- 

SELECT  ep.employee_id, e.salary, COUNT(p.id) AS completed_projects
FROM employee_projects AS ep
JOIN employees AS e ON e.id = ep.employee_id
JOIN projects AS p ON  ep.project_id = p.id
WHERE p.end_date IS NOT NULL
GROUP BY 1
HAVING completed_projects > 1
ORDER BY 2
LIMIT 3
