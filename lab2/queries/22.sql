WITH NEWTABLE (DriverID, RealExp)
AS
(
    SELECT D.DriverID, COUNT(*)
	FROM tblDrivers D JOIN tblRoutes R ON (D.DriverID = R.DriverID)
	GROUP BY D.DriverID
)
SELECT AVG(RealExp) AS 'Average experience'
FROM NEWTABLE
