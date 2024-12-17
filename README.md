# SQL Update with Multi-Row Subquery
This repository demonstrates a common SQL error involving the use of a subquery that returns multiple rows in an UPDATE statement.  The provided `bug.sql` file contains the erroneous query, while `solution.sql` offers a corrected version.

The error arises because the subquery calculates the average salary for the 'Sales' department and attempts to update the salary of all 'Marketing' employees to this single average value. However, this violates the constraint that a subquery in an UPDATE statement must return only one row. 

The solution provided in `solution.sql` addresses this issue by using a different approach, allowing for multiple row updates.