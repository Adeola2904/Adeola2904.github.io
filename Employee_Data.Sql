select *
from [dbo].['Employee Info$']

delete from [dbo].['Employee Info$']
where EmpID = '6'

select *
from [dbo].['Employee position$']

(1)
Select upper(EmpFname) as EmpName
from [dbo].['Employee Info$']

(2)
select COUNT(*) as NumEmp
from [dbo].['Employee Info$']
where Department = 'HR'

(4)
SELECT SUBSTRING (EmpLname,1,4) as firstfourchar
FROM [dbo].['Employee Info$']

select * into NewTable
from [dbo].['Employee Info$']


(7)
select EmpID,Salary
from [dbo].['Employee position$']
where Salary between '50000'and '100000'

(8)
select *
from [dbo].['Employee Info$']
where EmpFname LIKE 'S%'

(10)
SELECT EmpFname + ' ' + EmpLname AS FullNAME
FROM [dbo].['Employee Info$']

(11)
SELECT GENDER, COUNT(*) AS NUMEMPLOYEE
FROM [dbo].['Employee Info$']
WHERE DOB BETWEEN '1970-05-02' AND '1995-12-31'
GROUP BY Gender

(12)
SELECT *
FROM [dbo].['Employee Info$']
ORDER BY EmpLname DESC, Department ASC

(13)
select EmpLname
from [dbo].['Employee Info$']
where EmpLname like '____A'

(14)
select *
from [dbo].['Employee Info$']
where EmpFname NOT IN ('Sanjay', 'Sonia')

(15)
select *
from [dbo].['Employee Info$']
where Address = 'DELHI(DEL)'

(16)
SELECT *
FROM [dbo].['Employee position$']
WHERE EmpPosition = 'MANAGER'

(17)
SELECT Department, COUNT(*) AS Numemployee
from [dbo].['Employee Info$']
group by department
order by Numemployee ASC

(18)
SELECT *
FROM [dbo].['Employee Info$']
WHERE Gender ='M' AND Department = 'HR'


SELECT *
FROM [dbo].['Employee Info$']
INNER JOIN [dbo].['Employee position$'] 
ON [dbo].['Employee Info$'].EmpID = [dbo].['Employee position$'].EmpID
WHERE DateOfJoining IS NOT NULL

Select Top 2 salary
from [dbo].['Employee position$']
order by Salary asc


Select Top 2 salary
from [dbo].['Employee position$']
order by Salary desc




