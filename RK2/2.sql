USE Family;
GO

WITH Family_cte(ChildID, FatherID, MotherID) AS (
	SELECT 
		Child.PersonID, Child.FatherID, Child.MotherID
	FROM
		Person AS Child left join Marriage AS Parent
		on Child.FatherID = Parent.HusbandID and Child.MotherID = Parent.WifeID
	WHERE 
		Parent.MarriageID is null
)
SELECT *
FROM Person AS Child
WHERE Child.PersonID = (SELECT ChildID FROM Family_cte AS Fml WHERE Fml.FatherID is not null and Fml.MotherID is not null)
;