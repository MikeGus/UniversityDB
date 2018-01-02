SELECT R.RouteID, R.DriverID, D.DriverDistrict
FROM tblRoutes R JOIN tblDrivers D ON (R.DriverID = D.DriverID)
WHERE R.DriverID IN (
	SELECT DriverID
	FROM tblDrivers
	WHERE DriverDistrict = 'Eastern'
)