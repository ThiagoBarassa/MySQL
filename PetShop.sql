create database db_PetShop;

use db_PetShop;

create table if not exists pet(
id		bigint auto_increment,
nome	varchar(10),
animal	varchar(35),
peso	decimal(10,2),
idade	int,
primary key (id)
);
drop table pet;
select * from pet;
insert into pet(nome, animal, peso, idade) values ("belinha","cachorro",5.5,9);
insert into pet(nome, animal, peso, idade) values ("bela","cachorro",4.5,9);
insert into pet(nome, animal, peso, idade) values ("bola","gato",5.5,5);
insert into pet(nome, animal, peso, idade) values ("ana","cachorro",20.5,10);
insert into pet(nome, animal, peso, idade) values ("bigode","gato",10.5,9);
insert into pet(nome, animal, peso, idade) values ("belinha","cachorro",23.5,13);
insert into pet(nome, animal, peso, idade) values ("mel","gato",4,12);
insert into pet(nome, animal, peso, idade) values ("carla","cachorro",15.5,9);
insert into pet(nome, animal, peso, idade) values ("mila","cachorro",24,9);
insert into pet(nome, animal, peso, idade) values ("toby","cachorro",20.5,19);
insert into pet(nome, animal, peso, idade) values ("bob","gato",5.5,9);
insert into pet(nome, animal, peso, idade) values ("marley","cachorro",25,7);
insert into pet(nome, animal, peso, idade) values ("bel","cachorro",5.5,2);
insert into pet(nome, animal, peso, idade) values ("linha","cachorro",5.5,5);
insert into pet(nome, animal, peso, idade) values ("let","cachorro",10.5,9);
insert into pet(nome, animal, peso, idade) values ("messi","cachorro",5.5,9);

select * from pet where nome like "b%";
select nome, animal, peso from pet where peso > 20.00;

delete from pet where id = 11;

update pet set peso = 30.00 where id = 2;