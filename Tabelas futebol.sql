create database futebol;

use futebol;

create table usuario (
idusuario int primary key auto_increment,
nomeususario varchar(50) not null,
senhausuario varchar(30) not null,
cpfusuario char(11) not null,
celularusuario varchar(15) not null,
telefoneusuario varchar(15)
);

create table estadio (
idestadio int primary key auto_increment,
nomeestadio varchar(50) not null,
cnpj char(14) not null,
cep char(8) not null, 
numeroestadio varchar(4) not null,
telefone varchar(15),
gramado varchar(10) constraint chkgramado check (gramado in ('Sintetico', 'Natural'))
);

create table equipamentos (
idequipamentos int primary key auto_increment,
nomeequipamento varchar(40) not null,
qntequipamento int not null,
precoequipamento decimal(5,2),
dtequipamento date
);

create table sensor (
idsensor int primary key auto_increment,
nomesensor varchar(30) not null,
tiposensor varchar(30) not null,
capturasensor double,
estadosensor tinyint,
dtatualsensor datetime default current_timestamp
);