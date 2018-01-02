ALTER TABLE tblPassengers
ADD CONSTRAINT FK_PassengerOriginID FOREIGN KEY (PassengerOriginID) REFERENCES tblPassengers (PassengerID)