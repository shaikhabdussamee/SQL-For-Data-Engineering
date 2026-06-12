Syntax: 
SELECT column1, column2, ...
FROM table_name
ORDER BY column_name [ASC|DESC];

Examples
1. Sort in Ascending Order (Default)
SELECT * FROM Employees ORDER BY Salary;
or
SELECT *FROM Employees ORDER BY Salary ASC;

2. Sort in Descending Order
SELECT *FROM EmployeesORDER BY Salary DESC;

3. Sort by Multiple Columns
SELECT * FROM Employees ORDER BY Department ASC, Salary DESC;


First sorts by Department (A-Z)
Within each department, sorts by Salary (highest to lowest)


4. Using Column Position
SELECT EmployeeID, EmployeeName, SalaryFROM EmployeesORDER BY 3 DESC;


Sorts by the 3rd selected column (Salary)


Real Interview Example
Find the top 5 highest-paid employees:
SELECT EmployeeID, EmployeeName, SalaryFROM Employees ORDER BY Salary DESC LIMIT 5; 

For SQL Server:
SELECT TOP 5       EmployeeID,       EmployeeName,       SalaryFROM EmployeesORDER BY Salary DESC;

Important:
ORDER BY is usually the last clause in a query:
  
SELECT column_name FROM table_name WHERE condition GROUP BY column_name HAVING condition ORDER BY column_name;
Execution order (logical):
FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY
