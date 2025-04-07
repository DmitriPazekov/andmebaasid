-- SQL komentaar 
-- SQL Server management Stuudio
-- connect to
--(localdb)\mssqllocaldb
--Authentification: Windows Auth  -  admini õigused localhostsis
--Authentification: SQL Server Auth  - varem loodud kasutajad
--New Query
CREATE DATABASE pazekovTIT;
 --Object Explorer on vaja pidevalt uuendada käsitsi!
USE pazekovTIT;
--tabeli loomine 
CREATE TABLE opilane(
opilaneID int Primary Key identity(1,1),
eesnimi varchar(25),
perenimi varchar(30) Unique,
synniaeg date,
aadress TEXT,
opilaskodu bit
);
SELECT * FROM opilane;

--tabeli kustutamine
DROP table opilane;
-- andmete lisamine tabelisse
INSERT INTO opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu)
VALUES	('Dmitri','Pazekov','2007-09-13','Tallinn', 1),
('Dmitri1','Pazekov1','2007-09-13','Tallinn', 0)
('Dmitri2','Pazekov2','2007-09-13','Tallinn', 0)

