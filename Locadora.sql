create database db_locadorara;

use db_locadora;

create table if not exists filmes(
id			bigint auto_increment,
titulo		varchar(30),
ano			int,
genero		varchar(15),
disponivel	boolean,
primary key (id)
);

insert into filmes(titulo, ano, genero, disponivel) values ("nao sei",2020,"drama",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Top",2010,"ação",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Carros",2016,"drama",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Motos",2010,"comedia",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Muito bom",2014,"drama",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Faca mortal",2020,"comedia",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Corrida mortal",2020,"drama",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Tecnolog",2010,"ação",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Morte do mal",2010,"ação",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Friends",2016,"ação",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Dr esquisito",2010,"drama",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Shrek",2020,"comedia",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Cinderela",2008,"ação",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Panda",2008,"comedia",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Iron man",2020,"comeida",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Vingadores",2014,"ação",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Se beber nao case",2005,"drama",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Sai de baixo",2016,"comedia",true);
insert into filmes(titulo, ano, genero, disponivel) values ("So pedrada",2020,"drama",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Batman",2020,"drama",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Super man",2008,"comedia",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Capitao America do Sul",2020,"comedia",false);
insert into filmes(titulo, ano, genero, disponivel) values ("Incriveis",2020,"comedia",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Barbaros",2020,"drama",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Smallvile",1999,"ação",false);
insert into filmes(titulo, ano, genero, disponivel) values ("SQL",2020,"ação",true);
insert into filmes(titulo, ano, genero, disponivel) values ("Revolucao",2014,"drama",true);

select titulo, genero, disponivel from filmes where titulo like "s%";

select titulo, genero from filmes where genero = "comedia";

delete from filmes where id = 10;

update filmes set disponivel = false where id = 24;
select * from filmes;