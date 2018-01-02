INSERT tblPassengers (PassengerID, PassengerName, PassengerDistrict, PassengerOriginID)
SELECT (SELECT MAX(PassengerID)
		FROM tblPassengers
		) + 1),'Ryan Gosling', 'Old City', 1
FROM tblPassengers