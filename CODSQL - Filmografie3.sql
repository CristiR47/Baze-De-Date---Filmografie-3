-- Drop Tables

DROP TABLE IF EXISTS Filme
DROP TABLE IF EXISTS Cineasti
DROP TABLE IF EXISTS Distributie
DROP TABLE IF EXISTS Tipuri_Premii
DROP TABLE IF EXISTS Incasari
DROP TABLE IF EXISTS Premii_Obtinute

--------------------------------------------------------------------------------------------------------

-- Create Table

CREATE TABLE Filme
(
	
	CodFilm INT NOT NULL,
	NumeFilm VARCHAR(160),
	AnLansare INT,
	CodProducator INT,
	Tara VARCHAR(160),
	CostUSD INT,
	
	CONSTRAINT PK_Filme PRIMARY KEY CodFilm
	
);

CREATE TABLE Distributie 
(
	
	CodFilm INT NOT NULL,
	Rol VARCHAR(50) NOT NULL,
	CodActor INT,
	OnorariuUSD INT,
	
	CONSTRAINT PK_Distributie PRIMARY KEY (CodFilm,Rol)
	
);

CREATE TABLE Incasari
(
	
	CodFilm INT NOT NULL,
	Tara VARCHAR(160) NOT NULL,
	An INT NOT NULL,
	Incasari_USD INT,
	
	CONSTRAINT PK_Incasari PRIMARY KEY (CodFilm,Tara,An)
	
);

CREATE TABLE Cineasti
(
	CodCineast INT NOT NULL,
	NumeCineast VARCHAR(160),
	DataNasterii TIMESTAMP,
	Tara VARCHAR(160) NOT NULL,
	
	CONSTRAINT PK_Cineasti PRIMARY KEY (CodCineast)
	
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
	
	CONSTRAINT PK_Premii_Obtinute PRIMARY KEY (IdPremiere)


);


	
	
