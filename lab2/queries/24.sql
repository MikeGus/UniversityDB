SELECT RouteID, [1], [2], [3], [4]
FROM tblRoutes
PIVOT (AVG(Passengers) for PassengerID IN ([1], [2], [3], [4])) AS test;