USE OurFirstDatabase
GO

SELECT * FROM dbo.Student
GO

SELECT * FROM dbo.Course
GO

--- (INNER) JOIN
SELECT s.RollNumber,s.StudentName,c.CourseID 
FROM dbo.Student AS s
INNER JOIN dbo.Course AS c
ON (s.RollNumber = c.RollNumber)

--- (OUTER) LEFT JOIN
SELECT s.RollNumber,s.StudentName,c.CourseID 
FROM dbo.Student AS s
LEFT JOIN dbo.Course AS c
ON (s.RollNumber = c.RollNumber)

--- (OUTER) RIGHT JOIN
SELECT s.RollNumber,s.StudentName,c.CourseID 
FROM dbo.Student AS s
RIGHT JOIN dbo.Course AS c
ON (s.RollNumber = c.RollNumber)

--- (OUTER) FULL JOIN
SELECT s.RollNumber,s.StudentName,c.CourseID 
FROM dbo.Student AS s
FULL JOIN dbo.Course AS c
ON (s.RollNumber = c.RollNumber)