create database escola;

use escola;

create table alunos(
id int auto_increment primary key not null,
nome varchar(40) not null,
idade int not null,
endereco varchar(40) not null,
nota double not null
);

insert into alunos(nome,idade,endereco,nota) values ('Marcelo',15,'Rua Cruz e Souza, 3.105', 7.5);
insert into alunos(nome,idade,endereco,nota) values ('Beatriz',14,'Rua Cruz e Souza, 3.104', 8.0);
insert into alunos(nome,idade,endereco,nota) values ('Julia',16,'Rua Cruz e Souza, 3.103', 7.9);
insert into alunos(nome,idade,endereco,nota) values ('Marcos',15,'Rua Cruz e Souza, 3.102', 10);
insert into alunos(nome,idade,endereco,nota) values ('Felipe',13,'Rua Cruz e Souza, 3.101', 9.8);

insert into alunos(nome,idade,endereco,nota) values ('Caique',18,'Rua Itu, 1.120 ', 1.5);
insert into alunos(nome,idade,endereco,nota) values ('Marcio',19,'Rua Itu, 1.120 ', 2.5);
insert into alunos(nome,idade,endereco,nota) values ('Maria',17,'Rua Itu, 1.120 ', 6.6);
insert into alunos(nome,idade,endereco,nota) values ('Lucas',18,'Rua Itu, 1.120 ', 7.5);
insert into alunos(nome,idade,endereco,nota) values ('Paulo',17,'Rua Itu, 1.120 ', 5.5);

insert into alunos(nome,idade,endereco,nota) values ('Paula',13,'Rua Cruz e Souza, 3.101', 9.0);
insert into alunos(nome,idade,endereco,nota) values ('Felipa',15,'Rua Cruz e Souza, 3.101', 7.8);
insert into alunos(nome,idade,endereco,nota) values ('Fernanda',14,'Rua Cruz e Souza, 3.101', 8.8);
insert into alunos(nome,idade,endereco,nota) values ('Tatiane',13,'Rua Cruz e Souza, 3.101', 10);
insert into alunos(nome,idade,endereco,nota) values ('Antonia',13,'Rua Cruz e Souza, 3.101', 10);

select * from alunos;

select nome,nota from alunos
where nota > 7;

select nome,nota from alunos
where nota < 7;

update alunos
set endereco = 'Rua da paz, 727'
where id = 1;

select * from alunos;


