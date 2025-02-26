-- Script to create the DataWarehouse database and necessary schemas (bronze, silver, gold)
-- Ensures the database and schemas are only created if they do not already exist

-- Check if database exists, if not, create it
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    CREATE DATABASE DataWarehouse;
    PRINT 'Database DataWarehouse created successfully';
END
ELSE
BEGIN
    PRINT 'Database DataWarehouse already exists';
END
GO

-- Use the database
USE DataWarehouse;
GO

-- Create schemas with checks
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
    PRINT 'Schema bronze created successfully';
END
ELSE
BEGIN
    PRINT 'Schema bronze already exists';
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver');
    PRINT 'Schema silver created successfully';
END
ELSE
BEGIN
    PRINT 'Schema silver already exists';
END
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold');
    PRINT 'Schema gold created successfully';
END
ELSE
BEGIN
    PRINT 'Schema gold already exists';
END
GO

