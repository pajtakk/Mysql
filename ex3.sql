/*
Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno(
	id bigint auto_increment,
    nome char(255),
    idade int,
    turma char(255),
    nota double,
    primary key (id)
);

INSERT INTO tb_aluno (nome, idade, turma, nota) value("Igor", 30, "56", 10);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Jose", 22, "56", 9.5);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Ana", 19, "56", 2);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Paula", 24, "56", 1.25);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Stefanie", 18, "56", 6);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Julia", 28, "56", 7);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Allan", 35, "56", 7);
INSERT INTO tb_aluno (nome, idade, turma, nota) value("Jojo", 18, "56", 4.5);

SELECT * from tb_aluno WHERE nota > 7;
SELECT * from tb_aluno WHERE nota < 7;

UPDATE tb_aluno SET nota = 10 WHERE id = 4;