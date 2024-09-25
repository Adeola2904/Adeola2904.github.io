ELECT [Year]
      ,[Team]
      ,[NAME ]
      ,[No#]
      ,[Pos]
      ,[Ht]
      ,[Wt]
      ,[Age]
      ,[Exp]
      ,[College]
      ,[FirstName]
      ,[LastName]
      ,[Ft]
      ,[In]
      ,[Inches]
  FROM [dbo].['Football Players Data$']

GO


SELECT *
FROM [dbo].['Football Players Data$']

--A query to find all the players in the "Arizona" team.
SELECT *
FROM [dbo].['Football Players Data$']
WHERE TEAM = 'Arizona'

--A query to find all the players who play as a "WR" (Wide Receiver).
SELECT *
FROM [dbo].['Football Players Data$']
WHERE Pos = 'WR'


--A query to list all players taller than 6 feet 2 inches.
SELECT FirstName, LastName, Team, Inches
from [dbo].['Football Players Data$']
where inches > '74'

--A query to find all players who attended the "Washington" college.
SELECT FirstName, LastName, Team, College
from [dbo].['Football Players Data$']
where College = 'Washington'

--A query to list players who are 25 years old or younger.
SELECT FirstName, LastName, Team, Age
from [dbo].['Football Players Data$']
where Age <= '25'

--A query to find all players with missing Age data.
SELECT FirstName, LastName, Team, Age
from [dbo].['Football Players Data$']
where Age is null

--A query to find players who are rookies (Exp = 'R').
SELECT FirstName, LastName, Team, Exp
from [dbo].['Football Players Data$']
where Exp = 'R'

--A query to find the tallest player on the "New Orleans" team.
SELECT FirstName, LastName, Team, Inches
FROM [dbo].['Football Players Data$']
WHERE TEAM = 'NEW ORLEANS'
ORDER BY INCHES DESC

--A query to find players weighing more than 250 pounds.
SELECT FirstName, LastName, Team, Wt
FROM [dbo].['Football Players Data$']
WHERE Wt > 250

--A query to calculate the average height of players at each position.
SELECT  AVG(inches) as Avg_Height
        ,Pos
FROM [dbo].['Football Players Data$']
Group by Pos
