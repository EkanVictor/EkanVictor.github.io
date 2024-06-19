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
--7 Write q query to find all the employees whose salary is between 50000 to 100000.
--8 Write a query to find the names of employees that begin with ‘S’
SELECT *
FROM [dbo].['Employee Info$']
WHERE EmpFname LIKE 'S%'

--9 Write a query to fetch top N records.
--10 Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
SELECT *
		,CONCAT(EmpFname,' ',EmpLname) AS 'Full_Name'
FROM [dbo].['Employee Info$']

--11 Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975 and are grouped according to gender

--12 Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.
SELECT *
FROM [dbo].['Employee Info$']
ORDER BY EmpLname desc
		, Department

