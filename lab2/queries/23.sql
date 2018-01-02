WITH NEWTABLE (PassengerID, PassengerName, PassengerDistrict, ParentID)
AS
(
    SELECT *
	FROM tblPassengers
)
SELECT ORIGINAL.PassengerName AS 'NewComer', NEWTABLE.PassengerName AS 'Original' FROM
tblPassengers ORIGINAL
JOIN NEWTABLE ON (ORIGINAL.PassengerOriginID = NEWTABLE.PassengerID)
