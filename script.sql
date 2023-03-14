CREATE DATABASE seguradora;

USE seguradora;

CREATE TABLE Clientes (
  CodCliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Nome VARCHAR(45) NOT NULL,
  CPF VARCHAR(45) NOT NULL UNIQUE,
  Sexo VARCHAR(20),
  Estado VARCHAR(45),
  Cidade VARCHAR(45) DEFAULT 'Itapira',
  Bairro VARCHAR(45),
  Numero VARCHAR(45),
  Rua VARCHAR(45),
  TelefoneCelular VARCHAR(45) NOT NULL UNIQUE,
  Cidade VARCHAR(45) DEFAULT 'Itapira'
);

CREATE TABLE Carro (
  CodCarro INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Marca VARCHAR(45) NOT NULL,
  Placa VARCHAR(45),
  Modelo VARCHAR(45) NOT NULL,
  Ano INT NOT NULL
  Chassi VARCHAR (45),
  Cor VARCHAR (45),
);

CREATE TABLE Apólice (
  CodApolice INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  CodApolice INT PRIMARY KEY,
  ValorCobertura DECIMAL NOT NULL,
  ValorFranquia DECIMAL NOT NULL,
  DataInicioVigencia DATE NOT NULL,
  DataFimVigencia DATE NOT NULL,
  Cliente_CodCliente INT NOT NULL,
  Carro_CodCarro INT NOT NULL,
  DataInicioVigencia DATE NOT NULL CHECK (DataInicioVigencia > GETDATE()),
  CONSTRAINT FK_Cliente_Apolice FOREIGN KEY (CodCliente) REFERENCES Clientes(CodCliente),
  CONSTRAINT FK_Carro_Apolice FOREIGN KEY (CodCarro) REFERENCES Carro(CodCarro)
);

CREATE TABLE Sinistro (
  CodApolice INT NOT NULL,
  CodCarro INT NOT NULL,
  HoraSinistro INT,
  DataSinistro DATE,
  LocalSinistro VARCHAR(45),
  Condutor VARCHAR(45),
  PRIMARY KEY (CodApolice, CodCarro),
  CONSTRAINT FK_Apolice_Sinistro FOREIGN KEY (CodApolice) REFERENCES Apólice(CodApolice),
  CONSTRAINT FK_Carro_Sinistro FOREIGN KEY (CodCarro) REFERENCES Carro(CodCarro)
);


DROP TABLE Clientes;
