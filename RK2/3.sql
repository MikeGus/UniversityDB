USE Family;
GO

WITH Family_cte(FatherID, MotherID, nChildren) 
AS (
		SELECT Child.FatherID, Child.MotherID, count(Child.FatherID)
		FROM Person AS Child
		WHERE 
			Child.FatherID is not null 
			AND
			Child.MotherID is not null
		GROUP BY
			Child.FatherID, Child.MotherID
	)
SELECT
	(SELECT Father.FirstName+' '+Father.LastName FROM Person AS Father WHERE Father.PersonID = Fml.FatherID) AS FatherFullName,
	(SELECT Mother.FirstName+' '+Mother.LastName FROM Person AS Mother WHERE Mother.PersonID = Fml.MotherID) AS MotherFullName,
	Fml.nChildren
FROM Family_cte AS Fml;