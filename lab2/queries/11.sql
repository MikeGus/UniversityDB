DROP TABLE #Experienced

SELECT DriverID, DriverExperience
INTO #Experienced
FROM tblDrivers
WHERE DriverExperience > 10;

SELECT *
FROM #Experienced