SELECT *
FROM tblDrivers
WHERE DriverExperience > ALL (
	SELECT DriverExperience
	FROM tblDrivers
	WHERE DriverDistrict = 'Eastern'
)