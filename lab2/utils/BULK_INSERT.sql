BULK INSERT Uber.dbo.tblDrivers
FROM 'C:\Users\User\Desktop\DB\Misha\lab2\dbGenerator\data\drivers.dat'
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR = '\n')

GO

BULK INSERT Uber.dbo.tblPassengers
FROM 'C:\Users\User\Desktop\DB\Misha\lab2\dbGenerator\data\passengers.dat'
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR = '\n')

GO

BULK INSERT Uber.dbo.tblAutos
FROM 'C:\Users\User\Desktop\DB\Misha\lab2\dbGenerator\data\autos.dat'
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR = '\n')

GO

BULK INSERT Uber.dbo.tblRoutes
FROM 'C:\Users\User\Desktop\DB\Misha\lab2\dbGenerator\data\routes.dat'
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR = '\n')

GO