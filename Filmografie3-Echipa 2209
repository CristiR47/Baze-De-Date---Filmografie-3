-- stergere tabele existente


DROP TABLE IF EXISTS Cineasti CASCADE;
DROP TABLE IF EXISTS Incasari CASCADE;
DROP TABLE IF EXISTS Premii_Obtinute CASCADE;
DROP TABLE IF EXISTS Tipuri_Premii CASCADE;
DROP TABLE IF EXISTS Distributie CASCADE;
DROP TABLE IF EXISTS Filme CASCADE;

--------------------------------------------------------------------------------------------------------

-- creare tabele

CREATE TABLE Cineasti
(
	CodCineast INT NOT NULL,
	NumeCineast VARCHAR(160),
	DataNasterii DATE,
	Tara VARCHAR(160) NOT NULL,
	
	CONSTRAINT PK_Cineasti PRIMARY KEY (CodCineast)

);

CREATE TABLE Filme
(
	
	CodFilm INT NOT NULL,
	NumeFilm VARCHAR(160),
	AnLansare INT,
	CodProducator INT,
	CodRegizor INT,
	Tara VARCHAR(160),
	CostUSD INT,
	
	CONSTRAINT PK_Filme PRIMARY KEY (CodFilm),
	FOREIGN KEY(CodProducator) REFERENCES Cineasti(CodCineast),
	FOREIGN KEY(CodRegizor) REFERENCES Cineasti(CodCineast)
);

CREATE TABLE Distributie 
(
	
	CodFilm INT NOT NULL,
	Rol VARCHAR(50) NOT NULL,
	CodActor INT,
	OnorariuUSD INT,
	
	CONSTRAINT PK_Distributie PRIMARY KEY (CodFilm,Rol),
	FOREIGN KEY(CodActor) REFERENCES Cineasti(CodCineast)
);

CREATE TABLE Incasari
(
	
	CodFilm INT NOT NULL,
	Tara VARCHAR(160) NOT NULL,
	An INT NOT NULL,
	Incasari_USD INT,
	
	CONSTRAINT PK_Incasari PRIMARY KEY (CodFilm,Tara,An)
	
);


CREATE TABLE Tipuri_Premii
(

	CodPremiu INT NOT NULL,
	NumePremiu VARCHAR(160),
	Localitate VARCHAR(160),
	Tara VARCHAR(160) NOT NULL,
	
	CONSTRAINT PK_Tipuri_Premii PRIMARY KEY (CodPremiu)
	

);

CREATE TABLE Premii_Obtinute
(

	IdPremiere INT NOT NULL,
	CodPremiu INT NOT NULL,
	AnDecernare INT,
	CodFilm INT NOT NULL,
	CodCineast INT,
	
	CONSTRAINT PK_Premii_Obtinute PRIMARY KEY (IdPremiere),
	FOREIGN KEY(CodPremiu) REFERENCES Tipuri_Premii(CodPremiu),
	FOREIGN KEY (CodFilm) REFERENCES Filme(CodFilm)

);


------------------------------------------------------------------------------------------------------

-- populare tabele

----------------------------------------------------------------

INSERT INTO Cineasti
VALUES (17,'Tom Hanks',TO_DATE('1957-06-12', 'yyyy-mm-dd'),'USA');

INSERT INTO Cineasti
VALUES (54,'Serban Georgescu',TO_DATE('1987-06-12', 'yyyy-mm-dd'),'Romania');

INSERT INTO Cineasti
VALUES (55,'Andrei Dascalescu',TO_DATE('1992-05-22', 'yyyy-mm-dd'),'Romania');

INSERT INTO Cineasti
VALUES (99,'Paul Negoescu',TO_DATE('1966-02-05', 'yyyy-mm-dd'),'Romania');

INSERT INTO Cineasti
VALUES (18,'Cristian Mungiu',TO_DATE('2001-06-12', 'yyyy-mm-dd'),'Romania');

INSERT INTO Cineasti
VALUES (32,'Dan Aman',TO_DATE('1987-06-12', 'yyyy-mm-dd'),'Turcia');

INSERT INTO Cineasti
VALUES (117,'Yman Sahud',TO_DATE('1982-06-12', 'yyyy-mm-dd'),'Arabia');

INSERT INTO Cineasti
VALUES (19,'Warner Studios',NULL,'USA');

INSERT INTO Cineasti
VALUES (34,'Buftea Studios',NULL,'Romania');

INSERT INTO Cineasti
VALUES (65,'Film Studio Budapest',NULL,'Ungaria');

INSERT INTO Cineasti
VALUES (121,'Warner Studios',NULL,'USA');

INSERT INTO Cineasti
VALUES (12,'Warner Studios',NULL,'USA');

----------------------------------------------------------------

INSERT INTO Filme
VALUES (1001,'Forrest Gump',1994,12,17,'USA',8000000);

INSERT INTO Filme
VALUES (1002,'Varza, cartofi si alti demoni',2016,34,54,'Romania',20000);

INSERT INTO Filme
VALUES (1003,'Planeta Petrila',2016,34,55,'Romania',100000);

INSERT INTO Filme
VALUES (1004,'Doua lozuri',2016,34,99,'Romania',1000);

INSERT INTO Filme
VALUES (1005,'Rasputin',2015,65,19,'Romania',100420);

INSERT INTO Filme
VALUES (1006,'Mafia romana',2017,65,32,'Romania',10343200);

INSERT INTO Filme
VALUES (1007,'Baclava',2005,121,117,'USA',80000);

----------------------------------------------------------------

INSERT INTO Distributie
VALUES (1001,'Principal',18,5000000);

----------------------------------------------------------------

INSERT INTO Tipuri_Premii
VALUES (123,'Oscar-regie','Hollywood','USA');

INSERT INTO Tipuri_Premii
VALUES (124,'Oscar-regie','Hollywood','USA');

----------------------------------------------------------------

INSERT INTO Incasari
VALUES (1001,'USA',1994,200000000);
VALUES (1001,'USA',1995,500000000);

----------------------------------------------------------------

INSERT INTO Premii_obtinute
VALUES (11111,123,1995,1001,25);

-------------------------------------------------------------------
select * from cineasti,distributie,filme,incasari,premii_obtinute,tipuri_premii



--Interogari

--1.Care sunt filmele lansate în 2016 regizate de cineaști români?
/*
SELECT NumeFilm
FROM Filme
INNER JOIN Cineasti ON Filme.CodRegizor=Cineasti.CodCineast OR Filme.CodProducator=Cineasti.CodCineast
WHERE Filme.AnLansare=2016 AND Cineasti.Tara='Romania'
GROUP BY NumeFilm

--2.Câte premii a câştigat filmul Forrest Gump lansat în 1994?

SELECT COUNT(Premii_Obtinute.CodFilm)
FROM Premii_Obtinute
INNER JOIN Filme ON Premii_Obtinute.CodFilm=Filme.CodFilm
WHERE Filme.NumeFilm='Forrest Gump'  
*/


