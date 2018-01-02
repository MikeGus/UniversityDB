SELECT *
FROM tblRoutes
WHERE EXISTS (
	SELECT D.DriverID
	FROM tblDrivers D LEFT JOIN tblRoutes R
	ON D.DriverID = R.DriverID
	WHERE D.DriverID IS NOT NULL
)