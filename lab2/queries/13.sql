SELECT P.PassengerID, P.PassengerName
FROM tblPassengers P
WHERE P.PassengerID IN (
	SELECT R.PassengerID
	FROM tblRoutes R JOIN tblPassengers PA
	ON (R.PassengerID = PA.PassengerID)
	WHERE R.PassengerID IN (
		SELECT RO.PassengerID
		FROM tblRoutes RO JOIN tblPassengers PAS
		ON (PAS.PassengerID = RO.PassengerID)
		WHERE PAS.PassengerDistrict = 'Old City' AND
		RO.PassengerID IN (
			SELECT ROU.PAssengerID
			FROM tblRoutes ROU JOIN tblPassengers PASS
			ON (ROU.PassengerID = PASS.PassengerID)
			JOIN tblDrivers DR ON (DR.DriverID = ROU.DriverID)
			WHERE DR.DriverName IS NOT NULL
		)
	)
)
