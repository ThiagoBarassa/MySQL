create database db_RH2;

use db_RH2;

create table if not exists tb_cargo(
id		bigint auto_increment,
setor	varchar(20),
função	varchar(35),
primary key (id)
);

insert into tb_cargo(setor, função) values 
("TI", "administrador de redes"),
("TI","Analista de suporte"),
("TI","administrador de segurança"),
("TI","Desenvolvedor"),
("TI","Team Leader");

create table if not exists tb_funcionario(
id			bigint auto_increment,
nome		varchar(35),
salario		decimal(10,2),
contrato	varchar(10),
admissao	date,
fk_idCargo	bigint,
primary key(id),
constraint fk_idCargo foreign key (fk_idCargo) references tb_cargo(id)
);

insert into tb_funcionario(nome,salario,contrato,admissao, fk_idCargo) values 
("Alberto",3000,"CLT",'2020/10/9',1),
("kleber",3000,"CLT",'2020/10/9',2),
("Aiton",8000,"CLT",'2020/8/8',5),
("Pedro",5000,"PJ",'2020/10/9',3),
("Alberto",3000,"CLT",'2020/10/9',1),
("Jose",5500,"PJ",'2020/10/9',4),
("Alberto",3000,"CLT",'2020/10/9',1),
("Abner",3500,"CLT",'2020/10/9',2),
("Cleiton",10000,"CLT",'2020/10/9',5),
("Marta",5000,"PJ",'2020/10/9',4),
("Joseane",3000,"CLT",'2020/10/9',2),
("Maria",3000,"CLT",'2020/10/10',3),
("Marcela",4000,"PJ",'2020/10/10',3),
("Angela",10000,"CLT",'2020/10/10',5),
("Thiago",7000,"CLT",'2016/8/23',4),
("Alberto",3000,"CLT",'2016/8/23',1),
("Roberto",3500,"PJ",'2016/8/23',2),
("Marta",3000,"CLT",'2016/8/23',3),
("Marcelo",3000,"CLT",'2016/8/23',4),
("Rodrigo",4500,"PJ",'2016/8/23',4),
("Antonio",6000,"CLT",'2017/3/23',3),
("Matheus",3400,"CLT",'2017/3/23',2),
("Mario",3500,"PJ",'2017/3/23',1),
("Gabriela",4300,"CLT",'2017/3/23',2),
("Gabriel",4000,"CLT",'2017/3/23',3);

insert into tb_funcionario(nome,salario,contrato,admissao, fk_idCargo) values ("Gabriel",4000,"CLT",'2017/9/12',3);

select * from tb_funcionario;

select nome, salario from tb_funcionario where salario > 2000;

select nome, salario from tb_funcionario where salario > 2000 and salario < 4500;

select nome from tb_funcionario where nome like "%c%";

select * from tb_funcionario as f, tb_cargo as c where f.fk_idCargo = c.id;

select f.id, f.nome, f.contrato, c.id, c.função from tb_funcionario as f, tb_cargo as c where c.função = "Desenvolvedor";



