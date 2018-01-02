SELECT DriverID, 
	CASE DriverExperience
		WHEN 1 THEN 'One passenger'
		ELSE CAST(DriverExperience AS VARCHAR(60)) + ' passengers'
	END AS 'Experience'
FROM tblDrivers