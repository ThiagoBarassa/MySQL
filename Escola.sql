create database db_escola;

use db_escola;

create table if not exists alunos(
ra		bigint auto_increment,
nome	varchar(30) not null,
idade	int not null,
turma	varchar(10) not null,
nota	decimal(2,1),
primary key(ra)
);
drop table alunos;
insert into alunos (nome, idade, turma, nota) values("Joao",12,"turma 2A",3.5);
insert into alunos (nome, idade, turma, nota) values("Airton",14,"turma 3A",5.5);
insert into alunos (nome, idade, turma, nota) values("Pele",14,"turma 3A",6);
insert into alunos (nome, idade, turma, nota) values("Garrincha",14,"turma 3B",7);
insert into alunos (nome, idade, turma, nota) values("Ronaldo",12,"turma 2B",8);
insert into alunos (nome, idade, turma, nota) values("Gaucho",11,"turma 1A",9);
insert into alunos (nome, idade, turma, nota) values("Bebeto",15,"turma 3B",3);
insert into alunos (nome, idade, turma, nota) values("Romario",15,"turma 3A",2);
insert into alunos (nome, idade, turma, nota) values("Cristiano",12,"turma 2A",7);
insert into alunos (nome, idade, turma, nota) values("Lionel",13,"turma 2B",9);
insert into alunos (nome, idade, turma, nota) values("Pogba",11,"turma 2A",8);
insert into alunos (nome, idade, turma, nota) values("Rooney",15,"turma 3B",9.5);
insert into alunos (nome, idade, turma, nota) values("Marta",15,"turma 3A",6);
insert into alunos (nome, idade, turma, nota) values("Formiga",13,"turma 2B",2.5);
insert into alunos (nome, idade, turma, nota) values("Ludmila",11,"turma 1A",4.5);
insert into alunos (nome, idade, turma, nota) values("Renata",12,"turma 1B",4);
insert into alunos (nome, idade, turma, nota) values("Carla",11,"turma 1B",5);
insert into alunos (nome, idade, turma, nota) values("Dudu",10,"turma 1A",6);
insert into alunos (nome, idade, turma, nota) values("Cansado",12,"turma 2A",7);
insert into alunos (nome, idade, turma, nota) values("Muito",12,"turma 2B",5);
insert into alunos (nome, idade, turma, nota) values("Nome",13,"turma 2A",5.5);

select * from alunos;

select ra, nome, turma, nota from alunos where nota > 7.0;

select ra, nome, turma, nota from alunos where nota < 7.0;

delete from alunos where ra = 21;

update alunos set nota = 9.5 where ra = 10;
