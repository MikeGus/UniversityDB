USE Family;
GO

SELECT *
FROM Person AS Man
WHERE Man.PersonID NOT IN (SELECT HusbandID FROM Marriage)
	AND Man.PersonID IN (SELECT FatherID FROM Person);