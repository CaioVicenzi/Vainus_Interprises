drop database catolica;
create database catolica;
use catolica;

create table Ramo_Atividade (
	cd_ramo int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ds_ramo varchar(30) NOT NULL
);

create table Tipo_Assinante(
	cd_tipo int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ds_tipo varchar(30) NOT NULL
);

create table Assinante (
    cd_assinante int PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nm_assinante varchar(50) NOT NULL,
    cd_tipo int NOT NULL,
    cd_ramo int,
    FOREIGN KEY (cd_tipo) REFERENCES Tipo_Assinante (cd_tipo),
    FOREIGN KEY (cd_ramo) REFERENCES Ramo_Atividade (cd_ramo)
);

create table Municipio(
	cd_municipio int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ds_municipio varchar(30) NOT NULL
);

create table Endereco (
	cd_endereco int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cd_assinante int NOT NULL,
    ds_endereco varchar(50) NOT NULL,
    complemento varchar(50),
    bairro varchar(50) NOT NULL,
    cep varchar(50),
    cd_municipio int NOT NULL,
    FOREIGN KEY (cd_municipio) REFERENCES Municipio (cd_municipio),
    FOREIGN KEY (cd_assinante) REFERENCES Assinante (cd_assinante)
);

create table Telefone (
	cd_fone int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ddd int(3),
    n_fone varchar(10),
    cd_endereco int NOT NULL,
    FOREIGN KEY (cd_endereco) REFERENCES Endereco (cd_endereco)
);

