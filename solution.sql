The solution involves using a JOIN instead of a subquery, enabling the correct updating of multiple rows based on conditions:

```sql
UPDATE employees AS e
JOIN (SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department) AS avg_salaries ON e.department = avg_salaries.department
SET e.salary = avg_salaries.avg_salary
WHERE e.department = 'Marketing';
```
This revised query correctly calculates the average salary for each department and updates the salaries of employees accordingly.