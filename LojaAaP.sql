-- CRIAÇÃO DA BASE DE DADOS  --
create schema lojaA;
create database if not exists LOJA;
use loja;

-- desenvolvimento das tabelas --
create table ContaReceber (
	ID int primary key auto_increment not null,
    Cliente_ID int,
    FaturaVendaID int,
    DataConta date not null,
    DataVencimento date not null,
    Valor decimal (18,2) not null,
    Situação ENUM ('1','2','3') not null 
    --  1 – Conta registrada, 2 – Conta cancelada, 3 – Conta paga --
    );
    
    create table Cliente (
		ID int primary key auto_increment not null,
		Nome varchar(80) not null,
		CPF char (11) not null,
        Celular char(11),
        EndLogradouro varchar(100) not null,
        EndNumero varchar(10) not null,
        EndMunicipio INT not null,
        EndCEP char(8),
        Municipio_ID int 
        );
        
        create table Municipio (
			ID int primary key auto_increment not null,
            Estado_ID int,
            Nome varchar(80) not null,
            CodIBGE int not null
            );
            
		create table Estado (
			ID int primary key auto_increment not null,
			Nome varchar(50) not null,
			UF char(2) not null
		);
        
    select * from ContaReceber;
	select * from Cliente;
	select * from Municipio;
	select * from Estado;
                
        
        
        
    




