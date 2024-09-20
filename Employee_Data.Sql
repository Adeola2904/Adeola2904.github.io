select *
from [dbo].['Employee Info$']


select *
from [dbo].['Employee position$']

--A Query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.
Select upper(EmpFname) as EmpName
from [dbo].['Employee Info$']

--A query to fetch the number of employees working in the department ‘HR’.
select COUNT(*) as NumEmp
from [dbo].['Employee Info$']
where Department = 'HR'

--A query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
SELECT SUBSTRING (EmpLname,1,4) as firstfourchar
FROM [dbo].['Employee Info$']

--A query to find all the employees whose salary is between 50000 to 100000.
select EmpID,Salary
from [dbo].['Employee position$']
where Salary between '50000'and '100000'

--A query to find the names of employees that begin with ‘S’
select *
from [dbo].['Employee Info$']
where EmpFname LIKE 'S%'

--A query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
SELECT EmpFname + ' ' + EmpLname AS FullNAME
FROM [dbo].['Employee Info$']

-- A query to find number of employees whose DOB is between 02/05/1970 to 31/12/1995 and are grouped according to genderSELECT GENDER, COUNT(*) AS NUMEMPLOYEE
FROM [dbo].['Employee Info$']
WHERE DOB BETWEEN '1970-05-02' AND '1995-12-31'
GROUP BY Gender

--A query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.
SELECT *
FROM [dbo].['Employee Info$']
ORDER BY EmpLname DESC, Department ASC

--A query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.
select EmpLname
from [dbo].['Employee Info$']
where EmpLname like '____A'

--A query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
select *
from [dbo].['Employee Info$']
where EmpFname NOT IN ('Sanjay', 'Sonia')

--A query to fetch details of employees with the address as “DELHI(DEL)”
select *
from [dbo].['Employee Info$']
where Address = 'DELHI(DEL)'

--A query to fetch all employees who also hold the managerial position.
SELECT *
FROM [dbo].['Employee position$']
WHERE EmpPosition = 'MANAGER'

--A query to fetch the department-wise count of employees sorted by department’s count in ascending order
SELECT Department, COUNT(*) AS Numemployee
from [dbo].['Employee Info$']
group by department
order by Numemployee ASC

--A query to fecth Male employees in HR department
SELECT *
FROM [dbo].['Employee Info$']
WHERE Gender ='M' AND Department = 'HR'

--A SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table
SELECT *
FROM [dbo].['Employee Info$']
INNER JOIN [dbo].['Employee position$'] 
ON [dbo].['Employee Info$'].EmpID = [dbo].['Employee position$'].EmpID
WHERE DateOfJoining IS NOT NULL

--A query to retrieve two minimum and maximum salaries from the EmployeePosition table
Select Top 2 salary
from [dbo].['Employee position$']
order by Salary asc

Select Top 2 salary
from [dbo].['Employee position$']
order by Salary desc




