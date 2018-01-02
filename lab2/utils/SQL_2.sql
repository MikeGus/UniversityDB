USE Uber;  -- Изменяет текущую БД для данной сессии

GO  -- Конец пакета

ALTER TABLE tblDrivers  -- Модификация таблицы "Водители"
ADD  -- Добавление
CONSTRAINT PK_DriverID PRIMARY KEY (DriverID),
CONSTRAINT DF_DriverExperience DEFAULT 0 FOR DriverExperience;

ALTER TABLE tblPassengers  -- Модификация таблицы "Пассажиры"
ADD  -- Добавление
CONSTRAINT PK_PassengerID PRIMARY KEY (PassengerID),
CONSTRAINT FK_OriginID FOREIGN KEY (PassengerOriginID) REFERENCES tblPassengers (PassengerID);

ALTER TABLE tblAutos  -- Модификация таблицы "Выплаты"
ADD  -- Добавление
CONSTRAINT PK_AutoID PRIMARY KEY (AutoID);

ALTER TABLE tblRoutes -- Модификация таблицы "Поездки"
ADD
CONSTRAINT PK_RouteID PRIMARY KEY (RouteID),
CONSTRAINT FK_DriverID FOREIGN KEY (DriverID) REFERENCES tblDrivers (DriverID),
CONSTRAINT FK_PassengerID FOREIGN KEY (PassengerID) REFERENCES tblPassengers (PassengerID),
CONSTRAINT FK_AutoID FOREIGN KEY (AutoID) REFERENCES tblAutos (AutoID);

GO  -- Конец пакета

CREATE RULE RUL_GreaterOrEqualZero AS @value >= 0;  -- Создать правило

GO  -- Конец пакета

CREATE RULE RUL_BetweenOneAndFive AS (@value >= 1 AND @value <= 5); -- Создать правило

GO  -- Конец пакета

CREATE RULE RUL_BetweenOneAndFour AS (@value >= 1 AND @value <= 4); -- создать правило

GO  -- Конец пакета

EXEC sp_bindrule 'RUL_GreaterOrEqualZero', 'tblDrivers.DriverExperience';  -- Связать поле с правилом
EXEC sp_bindrule 'RUL_BetweenOneAndFive', 'tblAutos.AutoRating';  -- Связать поле с правилом
EXEC sp_bindrule 'RUL_BetweenOneAndFour', 'tblRoutes.Passengers';  -- Связать поле с правилом

GO  -- Конец пакета