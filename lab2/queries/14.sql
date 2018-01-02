SELECT D.DriverID, AVG(A.AutoRating) AS 'AvgAutoRat', MAX(A.AutoRating) AS 'MaxAutoRat'
FROM tblDrivers D
JOIN tblRoutes R ON (D.DriverID = R.DriverID)
JOIN tblAutos A ON (A.AutoID = R.AutoID)

GROUP BY D.DriverID