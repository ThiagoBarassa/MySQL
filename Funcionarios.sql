create database db_RH;

use db_RH;

create table if not exists Funcionarios(
matricula		bigint auto_increment,
nome			varchar(35) not null,
salario			decimal(7,2) not null,
setor			varchar(25) not null,
contrato		varchar(10) not null,
primary key (matricula)
);
drop table Funcionarios;
select * from Funcionarios;
insert into Funcionarios(nome, salario, setor, contrato) values ("Alberto",3000,"Produção","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Ronaldo",3000,"Produção","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Maria",2200,"RH","Estagio");
insert into Funcionarios(nome, salario, setor, contrato) values ("Joana",3500,"Compras","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Andressa",3600,"Controladoria","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Moara",1900,"Compras","Estagio");
insert into Funcionarios(nome, salario, setor, contrato) values ("Kleber",3000,"Produção","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Thiago",2500,"ICT","PJ");
insert into Funcionarios(nome, salario, setor, contrato) values ("Leonardo",3000,"Produção","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Joao Pedro",3500,"Expedição","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Saulo",3500,"Logistica","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Andre",3400,"Logistica","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Willian",4000,"RH","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Luis",8000,"P&D","CLT");
insert into Funcionarios(nome, salario, setor, contrato) values ("Cristiano",2500,"P&D","Estagio");

select * from Funcionarios;
-- selects 
select * from Funcionarios where salario > 2000.00;
select * from Funcionarios where salario < 2000.00;
-- update
update Funcionarios set salario = 2000.00 where matricula = 8;
-- delete
delete from Funcionarios where matricula = 10;