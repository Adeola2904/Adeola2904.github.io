SELECT [EMPLOYEE_ID]
      ,[FULL_NAME]
      ,[MANAGER_ID]
      ,[DATE_OF_JOINING]
      ,[CITY]
  FROM [dbo].[EMPLOYEE_DETAILS]


--INSERT STATEMENT
INSERT INTO [dbo].[EMPLOYEE_DETAILS]
VALUES ('121','JOHN SNOW','321','01-31-2019','TORONTO'),
        ('321','WALTER WHITE','986','01-30-2020','CALIFORNIA'),
		    ('421','KULDEEP RANA','876','11-27-2021','NEW DELHI'),
		    ('655','ALEX BROWN','955','02-28-2020','LONDON'),
		    ('577','CHRIS GEORGE','487','04-02-2021','MANCHESTER')

SELECT *
FROM [dbo].[EMPLOYEE_DETAILS]
  
CREATE TABLE EMPLOYEE_SALARY  (EMPLOYEE_ID VARCHAR(99)
                                 ,PROJECT VARCHAR(99)
								                 ,SALARY DECIMAL(10)
								                 ,VARIABLE VARCHAR(99)
								                  )
INSERT INTO [dbo].[EMPLOYEE_SALARY]
VALUES ('121','P1','8000','500'),
        ('321','P2','10000','1000'),
		('421','P1','12000','0'),
		('655','P1','14000','500'),
		('577','P2','16000','1000')

SELECT *
FROM [dbo].[EMPLOYEE_SALARY]
  
SELECT *
FROM [dbo].[EMPLOYEE_DETAILS]

--A query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’
SELECT EMPLOYEE_ID, FULL_NAME,MANAGER_ID
FROM [dbo].[EMPLOYEE_DETAILS]
WHERE MANAGER_ID = '986'

--A query to fetch the different projects available from the EmployeeSalary table.
SELECT DISTINCT PROJECT
FROM [dbo].[EMPLOYEE_SALARY]

--A query to fetch the count of employees working in project ‘P1’.
SELECT COUNT(*)
FROM [dbo].[EMPLOYEE_SALARY]
WHERE PROJECT = 'P1'

--A query to find the maximum, minimum, and average salary of the employees.
SELECT
MAX(SALARY)as MAXSALARY,
MIN (SALARY)as MINSALARY,
AVG (SALARY)aS AVGSALARY
FROM [dbo].[EMPLOYEE_SALARY]

--A query to find the employee id whose salary lies in the range of 9000 and 15000.
SELECT EMPLOYEE_ID, SALARY
FROM [dbo].[EMPLOYEE_SALARY]
WHERE SALARY BETWEEN '9000'AND'15000'

--A query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
SELECT EMPLOYEE_ID, CITY, MANAGER_ID
FROM [dbo].[EMPLOYEE_DETAILS]
WHERE CITY = 'TORONTO'AND MANAGER_ID =321

--A query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
SELECT EMPLOYEE_ID, CITY, MANAGER_ID
FROM [dbo].[EMPLOYEE_DETAILS]
WHERE CITY = 'CALIFORNIA'OR MANAGER_ID =321

--A query to fetch all those employees who work on Projects other than P1.
SELECT EMPLOYEE_ID, PROJECT, SALARY, VARIABLE
FROM[dbo].[EMPLOYEE_SALARY]
WHERE PROJECT NOT IN ('P1')

--A query to display the total salary of each employee adding the Salary with Variable value.
SELECT EMPLOYEE_ID, (SALARY + VARIABLE) AS TOTALSALARY
FROM [dbo].[EMPLOYEE_SALARY]

--A query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.
SELECT EMPLOYEE_ID, FULL_NAME
FROM [dbo].[EMPLOYEE_DETAILS]
WHERE FULL_NAME like '__hn%'

--A query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
SELECT EMPLOYEE_ID
FROM [dbo].[EMPLOYEE_SALARY]
UNION
SELECT EMPLOYEE_ID
FROM [dbo].[EMPLOYEE_DETAILS]


