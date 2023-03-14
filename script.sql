CREATE DATABASE seguradora;

USE seguradora;

CREATE TABLE Clientes (
  CodCliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  CPF VARCHAR(45) NOT NULL UNIQUE,
  TelefoneCelular VARCHAR(45) NOT NULL UNIQUE,
  Cidade VARCHAR(45) DEFAULT 'Campinas'
);

CREATE TABLE Carro (
  CodCarro INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Marca VARCHAR(45) NOT NULL,
  Modelo VARCHAR(45) NOT NULL,
  Ano INT NOT NULL
);

CREATE TABLE Apólice (
  CodApolice INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  CodCliente INT NOT NULL,
  CodCarro INT NOT NULL,
  DataInicioVigencia DATE NOT NULL CHECK (DataInicioVigencia > GETDATE()),
  CONSTRAINT FK_Cliente_Apolice FOREIGN KEY (CodCliente) REFERENCES Clientes(CodCliente),
  CONSTRAINT FK_Carro_Apolice FOREIGN KEY (CodCarro) REFERENCES Carro(CodCarro)
);

CREATE TABLE Sinistro (
  CodApolice INT NOT NULL,
  CodCarro INT NOT NULL,
  PRIMARY KEY (CodApolice, CodCarro),
  CONSTRAINT FK_Apolice_Sinistro FOREIGN KEY (CodApolice) REFERENCES Apólice(CodApolice),
  CONSTRAINT FK_Carro_Sinistro FOREIGN KEY (CodCarro) REFERENCES Carro(CodCarro)
);


DROP TABLE Clientes;
