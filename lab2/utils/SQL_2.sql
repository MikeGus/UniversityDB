USE Uber;  -- �������� ������� �� ��� ������ ������

GO  -- ����� ������

ALTER TABLE tblDrivers  -- ����������� ������� "��������"
ADD  -- ����������
CONSTRAINT PK_DriverID PRIMARY KEY (DriverID),
CONSTRAINT DF_DriverExperience DEFAULT 0 FOR DriverExperience;

ALTER TABLE tblPassengers  -- ����������� ������� "���������"
ADD  -- ����������
CONSTRAINT PK_PassengerID PRIMARY KEY (PassengerID),
CONSTRAINT FK_OriginID FOREIGN KEY (PassengerOriginID) REFERENCES tblPassengers (PassengerID);

ALTER TABLE tblAutos  -- ����������� ������� "�������"
ADD  -- ����������
CONSTRAINT PK_AutoID PRIMARY KEY (AutoID);

ALTER TABLE tblRoutes -- ����������� ������� "�������"
ADD
CONSTRAINT PK_RouteID PRIMARY KEY (RouteID),
CONSTRAINT FK_DriverID FOREIGN KEY (DriverID) REFERENCES tblDrivers (DriverID),
CONSTRAINT FK_PassengerID FOREIGN KEY (PassengerID) REFERENCES tblPassengers (PassengerID),
CONSTRAINT FK_AutoID FOREIGN KEY (AutoID) REFERENCES tblAutos (AutoID);

GO  -- ����� ������

CREATE RULE RUL_GreaterOrEqualZero AS @value >= 0;  -- ������� �������

GO  -- ����� ������

CREATE RULE RUL_BetweenOneAndFive AS (@value >= 1 AND @value <= 5); -- ������� �������

GO  -- ����� ������

CREATE RULE RUL_BetweenOneAndFour AS (@value >= 1 AND @value <= 4); -- ������� �������

GO  -- ����� ������

EXEC sp_bindrule 'RUL_GreaterOrEqualZero', 'tblDrivers.DriverExperience';  -- ������� ���� � ��������
EXEC sp_bindrule 'RUL_BetweenOneAndFive', 'tblAutos.AutoRating';  -- ������� ���� � ��������
EXEC sp_bindrule 'RUL_BetweenOneAndFour', 'tblRoutes.Passengers';  -- ������� ���� � ��������

GO  -- ����� ������