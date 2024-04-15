SELECT DISTINCT salary FROM (
  SELECT employee, salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS RANK
  FROM employee_table
) AS subquery
WHERE RANK = 3;