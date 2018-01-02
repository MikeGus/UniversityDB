DELETE tblRoutes
WHERE AutoID IN (SELECT A.AutoId
	FROM tblAutos A
	JOIN tblRoutes R ON (R.AutoID = A.AutoID)
	WHERE A.AutoRating > 3.5
	)