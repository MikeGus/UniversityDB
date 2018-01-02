CREATE DATABASE Uber;  -- �������� ���� ������

GO  -- ����� ������

USE Uber;  -- �������� ������� �� ��� ������ ������

GO  -- ����� ������

CREATE TABLE tblDrivers  -- ������� ������� "��������"
(
	DriverID INT NOT NULL,  -- ������������� ��������
	DriverName VARCHAR(60) NOT NULL,  -- ������ ��� ��������
	DriverExperience INT NOT NULL,  -- ���������� ������� ��������
	DriverDistrict	VARCHAR(60) NOT NULL -- �����, ��� ����� ���������
);

CREATE TABLE tblPassengers  -- ������� ������� "���������"
(
	PassengerID INT NOT NULL,  -- ������������� ���������
	PassengerName VARCHAR(60) NOT NULL,  -- ������ ��� ���������
	PassengerDistrict VARCHAR(60) NOT NULL, -- �����, ��� ����� ��������
	PassengerOriginID INT NULL -- �������, ������������ ��������� � ����������
);

CREATE TABLE tblAutos  -- ������� ������� "����������"
(
	AutoID INT NOT NULL,  -- ������������� ����������
	AutoModel VARCHAR(60) NOT NULL,  -- ����� ����������
	AutoRating FLOAT NOT NULL, -- ������� �������� ����������
	AutoDistrict VARCHAR(60) NOT NULL -- �����, ��� ��������� ����� ����������
);

GO  -- ����� ������

CREATE TABLE tblRoutes  -- ������� ������� "�������"
(
	RouteID INT NOT NULL,  -- ������������� �������
	DriverID INT NOT NULL,  -- ������������� ��������
	PassengerID INT NOT NULL,  -- ������������� ���������
	AutoID INT NOT NULL,  -- ������������� ����������
	Passengers INT NOT NULL -- ���������� ����������
);

GO  -- ����� ������