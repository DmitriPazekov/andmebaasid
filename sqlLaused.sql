-- sql komentaar
--xampp control panel (start apache, start

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

----tabel Rühm
---identity (1,1)
CREATE TABLE ryhm(
ryhmID int not null primary key identity(1,1),
ryhm varchar(10) unique,
osakond varchar(20)
)
INSERT INTO ryhm(ryhm, osakond)
Values('TITpv24', 'IT'),('KRRpv23','Rätsep');

Select * from ryhm
--lisame uus veerg RyhmID tabelisse opilane
ALTER TABLE opilane ADD ryhmID int;

Select * from opilane;
--lisame foreign key veergule ryhmID mis on seotud--
--tabeliga ryhm ja veerguga ryhmID

ALTER TABLE opilane 
ADD foreign key (ryhmID) references ryhm(ryhmID)

Use pazekovTIT;



--forign key kontroll
INSERT INTO opilane
(eesnimi, perenimi, synniaeg, aadress, opilaskodu, ryhmID)
VALUES	('Dmitri','Pazekove','2007-09-13','Tallinn', 2, 1);

Select * from opilane;

Select * from opilane JOIN ryhm
ON opilane.ryhmID=ryhm.ryhmID;

Select opilane.perenimi, ryhm.ryhm from opilane JOIN ryhm
ON opilane.ryhmID=ryhm.ryhmID;
--
Select o.perenimi, r.ryhm, o.aadress 
from opilane o JOIN ryhm r
ON o.ryhmID=r.ryhmID;


CREATE TABLE hinne(
ryhmID int not null primary key identity(1,1),
ryhm varchar(10) unique,
osakond varchar(20)
)

INSERT INTO hinne
(hinneID, opilaneID, Hinne, oppeaine)
VALUES	('hinneID'),('opilaneID'),('Hinne'),('oppeaine');

DROP table hinne;

CREATE TABLE hinne(
hinneID int Primary Key identity(1,1),
Hinne int,
opilaneID int,
oppeaine varchar(50)
);

ALTER TABLE hinne
ADD foreign key (opilaneID) references opilane(opilaneID);

INSERT INTO hinne
(opilaneID, oppeaine, hinne)
VALUES	(18,'inglise keel', 3);

select * from hinne;
-- select ...hinne join opilane!



