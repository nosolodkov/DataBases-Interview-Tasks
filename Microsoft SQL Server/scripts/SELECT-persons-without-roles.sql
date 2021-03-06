USE [InterviewTasks]

SELECT TOP 1000 [ID]
      ,[Name]
  FROM [dbo].[Persons]

SELECT TOP 1000 [ID]
      ,[NAME]
  FROM [dbo].[Roles]

-- Get all the names of people without an existing role
SELECT Name
FROM dbo.Persons
WHERE ID NOT IN (
	SELECT p.ID FROM dbo.Persons p
	INNER JOIN dbo.[Roles] r
	ON p.ID = r.ID
	)

