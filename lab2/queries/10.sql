SELECT DriverID, DriverExperience, 
	CASE 
		WHEN DriverExperience > 10 THEN 'Experienced'
		ELSE 'Rookie'
	END AS 'Experience'
FROM tblDrivers
ORDER BY DriverExperience