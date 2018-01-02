CREATE DATABASE Uber;  -- Создание базы данных

GO  -- Конец пакета

USE Uber;  -- Изменяет текущую БД для данной сессии

GO  -- Конец пакета

CREATE TABLE tblDrivers  -- Создать таблицу "водители"
(
	DriverID INT NOT NULL,  -- Идентификатор водителя
	DriverName TEXT NOT NULL,  -- Полное имя водителя
	DriverExperience INT NOT NULL,  -- Количество поездок водителя
	DriverDistrict	TEXT NOT NULL -- Район, где живет сотрудник
);

CREATE TABLE tblPassengers  -- Создать таблицу "пассажиры"
(
	PassengerID INT NOT NULL,  -- Идентификатор пассажира
	PassengerName TEXT NOT NULL,  -- Полное имя пассажира
	PassengerDistrict TEXT NOT NULL -- Район, где живет пассажир
);

CREATE TABLE tblAutos  -- Создать таблицу "автомобили"
(
	AutoID INT NOT NULL,  -- Идентификатор автомобиля
	AutoModel TEXT NOT NULL,  -- Марка автомобиля
	AutoRating FLOAT NOT NULL, -- Рейтинг комфорта автомобиля
	AutoDistrict TEXT NOT NULL -- Район, где находится гараж автомобиля
);

GO  -- Конец пакета

CREATE TABLE tblRoutes  -- Создать таблицу "поездки"
(
	RouteID INT NOT NULL,  -- Идентификатор поездки
	DriverID INT NOT NULL,  -- Идентификатор водителя
	PassengerID INT NOT NULL,  -- Идентификатор пассажира
	AutoID INT NOT NULL,  -- Идентификатор автомобиля
	Passengers INT NOT NULL -- Количество пассажиров
);

GO  -- Конец пакета