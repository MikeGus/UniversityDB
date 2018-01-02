SELECT TD.DriverID, TD.DriverExperience, (
	SELECT AVG(AutoRating) 
	FROM tblAutos A JOIN tblRoutes R ON A.AutoID = R.AutoID
	JOIN tblDrivers D ON R.DriverID = TD.DriverID
) AS 'AvgRat'
	
FROM tblDrivers TD
