SELECT DISTINCT DO.DriverDistrict, 
(
	SELECT AVG(DriverExperience)
	FROM TblDrivers D 
	WHERE D.DriverDistrict = DO.DriverDistrict
) AvgExp

FROM tblDrivers DO

GROUP BY DO.DriverDistrict, DriverExperience
