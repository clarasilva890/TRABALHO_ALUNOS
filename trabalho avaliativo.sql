CREATE DATABASE senai_bp;

USE senai_bp;

CREATE TABLE cursos (
 cod_curso INT,
 nome_curso VARCHAR (100),
 PRIMARY KEY(cod_curso)
 
 );
 
 
CREATE TABLE alunos (
 cod_aluno INT,
 nome VARCHAR(45),
 sobrenome VARCHAR (45),
 data_nascimento DATE,
  cod_curso INT,
 PRIMARY KEY (cod_aluno),
 FOREIGN KEY (cod_curso)
 REFERENCES cursos (cod_curso)
 
 );

INSERT INTO cursos
(cod_curso,nome_curso)
values
('101', 'Introdução ao Desenvolvimento de Projetos');

INSERT INTO cursos
(cod_curso,nome_curso)
values
('102', 'Inglês Técnico Aplicado ao Desenvolivimento de Sistemas');

INSERT INTO cursos
(cod_curso,nome_curso)
values
('103', 'Higiene do Alimento:Microbiologia de Alimentos');

INSERT INTO cursos
(cod_curso,nome_curso)
values
('104', 'Ferramentos Digitais de Gestão');

INSERT INTO cursos
(cod_curso,nome_curso)
values
('105', 'Introdução a IOT para manutenção Industrial');

INSERT INTO cursos
(cod_curso,nome_curso)
values
('106', 'Introducao a Industria 4.0');

INSERT INTO cursos
(cod_curso,nome_curso)
values
('107', 'Administrador de Banco de Dados');


select * from alunos where cod_aluno = 1100;
select * from cursos ;

INSERT INTO  alunos values ('1100', 'Clara', 'Aparecida', '2006-01-26', '107');

-- 1)Consulte os alunos que nasceram depoisde 1998 ordenado pela data de nascimento 
select *
from alunos
where year(data_nascimento) > 1998
order by data_nascimento;

-- 2)Faça a contagem dos alunos que são menores de idade 





-- 3)Faça a contagem de cursos existentes
select count(*) as quantidade_cursos
from cursos;

-- 4)Consulte a quantidade de alunos por curso
select c.nome_curso as curso, count(a.cod_curso) as quantidade_alunos from cursos c
inner join alunos a on c.cod_curso=a.cod_curso
group by c.nome_curso;

-- 5)Liste o nome completo somente dos alunos que são estão matriculados no curso de Introdução à Indústria 4.0 
select concat(a.nome,' ',a.sobrenome) as nome_completo
from alunos a
inner join cursos c on a.cod_curso=c.cod_curso
where c.cod_curso=106;



 

