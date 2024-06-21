--1 Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.
SELECT EmpFname
FROM [dbo].['Employee Info$']


--2 Write a query to fetch the number of employees working in the department ‘HR’.
SELECT COUNT(Department)
FROM [dbo].['Employee Info$']
WHERE Department = 'HR'


--3 Write a query to get the current date.
SELECT GETDATE()


--4 Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
SELECT SUBSTRING(EmpLname,1,4)
FROM [dbo].['Employee Info$']


--5 Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.
SELECT SUBSTRING(Address,1,CHARINDEX('(',Address)-1)
FROM [dbo].['Employee Info$']


--6 Write a query to create a new table that consists of data and structure copied from the other table.
SELECT *
FROM [dbo].['Employee Info$']


--7 Write a query to find all the employees whose salary is between 50000 to 100000.
SELECT EmpID
		,Salary
FROM [dbo].['Employee position$']
WHERE Salary BETWEEN 50000 AND 100000


--8 Write a query to find the names of employees that begin with ‘S’
SELECT *
FROM [dbo].['Employee Info$']
WHERE EmpFname LIKE 'S%'


--9 Write a query to fetch top N records.
SELECT *
FROM [dbo].['Employee Info$']
WHERE EmpLname LIKE '%N%'


--10 Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
SELECT *
		,CONCAT(EmpFname,' ',EmpLname) AS 'Full_Name'
FROM [dbo].['Employee Info$']


--11 Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.
SELECT *
FROM [dbo].['Employee Info$']
ORDER BY EmpLname desc
		, Department


--12 Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.
SELECT *
FROM [dbo].['Employee Info$']
WHERE EmpLname LIKE '____%A'


--13 Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
SELECT *
FROM [dbo].['Employee Info$']
WHERE EmpFname NOT IN ('Sanjay','Sandra')



--14 Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order
SELECT Department
		,COUNT(EmpID) AS [Total Employee]
FROM [dbo].['Employee Info$']
GROUP BY Department 


--15 Write a query to feth Male employees in HR department
SELECT*
FROM [dbo].['Employee Info$']
WHERE Department = 'HR' AND Gender = 'M'


--16 Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table
SELECT I.[EmpID] 	
      ,I.[EmpFname]	
      ,I.[EmpLname]	
      ,I.[Department]	
      ,I.[Project]	
      ,I.[Address]	
      ,I.[DOB]	
      ,I.[Gender]	
      ,I.[Age]	
      ,I.[Full Name]	
	  ,P.EmpID
	  ,P.[DateOfJoining]
	  ,P.EmpPosition
	  ,P.Salary
  FROM [dbo].['Employee Info$'] AS I
  JOIN [dbo].['Employee position$'] AS P	
ON I.[EmpID] = P.[EmpID]





--17 Write a query to retrieve two minimum and maximum salaries from the EmployeePosition table
SELECT TOP(2) *
FROM [dbo].['Employee position$']
ORDER BY Salary desc                    SELECT TOP(2) *
FROM [dbo].['Employee position$']
ORDER BY Salary 


--18 Write a query to fetch details of employees with the address as “DELHI(DEL)”
SELECT*
FROM [dbo].['Employee Info$']
WHERE Address = 'DELHI(DEL)'


--19 Write a query to fetch all employees who also hold the managerial position.
SELECT *
FROM [dbo].['Employee position$']
WHERE EmpPosition = 'Manager'
















