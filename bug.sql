The following SQL query attempts to update a table based on a subquery that returns multiple rows, violating the single-row subquery constraint.  This often leads to an error, depending on the specific database system.  The error message can vary, but it commonly indicates that the subquery returned more than one row.

```sql
UPDATE employees
SET salary = (SELECT AVG(salary) FROM employees WHERE department = 'Sales')
WHERE department = 'Marketing';
```