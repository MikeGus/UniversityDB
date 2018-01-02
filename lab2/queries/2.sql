SELECT DISTINCT D.DriverID, D.DriverName, D.DriverExperience
FROM tblDrivers D
WHERE D.DriverExperience BETWEEN 1 AND 10