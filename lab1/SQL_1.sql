CREATE DATABASE Uber;  -- �������� ���� ������

GO  -- ����� ������

USE Uber;  -- �������� ������� �� ��� ������ ������

GO  -- ����� ������

CREATE TABLE tblDrivers  -- ������� ������� "��������"
(
	DriverID INT NOT NULL,  -- ������������� ��������
	DriverName TEXT NOT NULL,  -- ������ ��� ��������
	DriverExperience INT NOT NULL,  -- ���������� ������� ��������
	DriverDistrict	TEXT NOT NULL -- �����, ��� ����� ���������
);

CREATE TABLE tblPassengers  -- ������� ������� "���������"
(
	PassengerID INT NOT NULL,  -- ������������� ���������
	PassengerName TEXT NOT NULL,  -- ������ ��� ���������
	PassengerDistrict TEXT NOT NULL -- �����, ��� ����� ��������
);

CREATE TABLE tblAutos  -- ������� ������� "����������"
(
	AutoID INT NOT NULL,  -- ������������� ����������
	AutoModel TEXT NOT NULL,  -- ����� ����������
	AutoRating FLOAT NOT NULL, -- ������� �������� ����������
	AutoDistrict TEXT NOT NULL -- �����, ��� ��������� ����� ����������
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