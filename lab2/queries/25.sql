DROP TABLE t1

DROP TABLE t2

CREATE TABLE t1
(
	DriverID INT PRIMARY KEY,
	DriverName VARCHAR(60),
	DriverExperience INT NOT NULL
)

GO

INSERT INTO t1
VALUES
(1, 'Ryan Gosling', 200),
(2, 'Kanye West', 500),
(3, 'Robert Pawlson', 100),
(4, 'Vin Diesel', 700)

CREATE TABLE t2
(
	DriverID INT PRIMARY KEY,
	DriverName VARCHAR(60),
	DriverExperience INT NOT NULL
)

GO

INSERT INTO t2
VALUES
(1, 'Ryan Gosleng', 200),
(2, 'Kanye West', 530),
(3, 'Robert Pawlson', 300),
(4, 'Vin Diesel', 700),
(5, 'Brian O`Connor', 700)

GO


MERGE t1 AS TARGET
USING t2 AS SOURCE
ON (TARGET.DriverID = SOURCE.DriverID)

WHEN MATCHED AND TARGET.DriverName <> SOURCE.DriverName
OR TARGET.DriverExperience <> SOURCE.DriverExperience THEN
UPDATE SET TARGET.DriverName = SOURCE.DriverName,
TARGET.DriverExperience = SOURCE.DriverExperience

WHEN NOT MATCHED BY TARGET THEN
INSERT (DriverID, DriverName, DriverExperience)
VALUES (SOURCE.DriverID, SOURCE.DriverName, SOURCE.DriverExperience);

SELECT * FROM t1;
SELECT * FROM t2;
GO