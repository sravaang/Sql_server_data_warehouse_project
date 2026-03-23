/*
======
creating Database and Schemas
======

Script Purpose : The script is to create a database named 'Datawarehouse' . If the Database already exists , The DB will be deleted and a new one will be created with the same name.Additionally schema with bronze , silver and gold layer are created.
Warning : If the Database is deleted , entire data on the DB will be permanently deleted.ensure backups are present


*/

use master;
go 

--Drop and recreate the 'Datawarehouse' database 
IF EXISTS (select 1 from sys.databases where name = 'DataWarehouse')
Begin 
  alter database datawarehouse set single user with rollback immediate;
  drop database datawarehouse;
end 
go

--create a database 'Datawarehouse'
create database 'Datawarehouse';
go 

use Datawarehouse;
go 

--create schemas 
create schema bronze;
go 
create schema silver;
go 
create schema gold;
