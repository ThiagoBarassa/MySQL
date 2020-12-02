create database db_ecommerce2;
use db_ecommerce2;

create table if not exists tb_categoria(
id				bigint auto_increment,
nome			varchar(25),
departamento	varchar(25),
primary key (id)
);
insert into tb_categoria(nome, departamento) values
("eletronicos","Celulares"),
("eletronicos","Computadores"),
("eletronicos","Notbooks"),
("eletronicos","Perifericos"),
("eletronicos","Consoles");

create table if not exists tb_produto(
id			bigint auto_increment,
nome		varchar(25),
valor		decimal(10,2),
marca		varchar(15),
emEstoque	boolean,
fk_idCat	bigint,
primary key(id),
constraint fk_idCat foreign key (fk_idCat) references tb_categoria (id)
);
select * from tb_produto;
drop table tb_produto;
insert into tb_produto(nome, valor, marca, emEstoque, fk_idCat) values
("Pc dell",5000,"dell",true,2),
("Pc HP",3500,"HP",true,2),
("Pc Acer",4000,"Acer",false,2),
("Mac ",13000,"Apple",true,2),
("MacBook",10000,"Apple",true,3),
("Notbook Dell",6000,"dell",true,3),
("Notbook Acer",4000,"Acer",false,3),
("Notbook Sansung",5000,"Sansung",true,3),
("Iphone 12",6000,"Apple",true,1),
("A10 ",2000,"Sansung",true,1),
("Xiaomi",1900,"Xiaomi",false,1),
("Teclado",800,"Red Dragon",true,4),
("Mouse",500,"Red Dragon",true,4),
("Xbox one",2000,"Xbox",true,5),
("Playstation 5",5000,"Sony",true,5);

select nome,valor,emEstoque from tb_produto where valor > 2000;

select nome,valor,emEstoque from tb_produto where valor >= 1000 and valor <= 2000;

select * from tb_produto where nome like "%c%";

select * from tb_produto as p inner join tb_categoria as c where c.id = p.fk_idCat;

select p.nome, p.valor, c.departamento from tb_produto as p inner join tb_categoria as c where c.id = 1;