/*
Atividade 2
Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_ecommerce;

use db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    ativo boolean,
    descricao char(255),
    valor double,
    nome char(255),
    primary key(id)
);

INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Caneta azul esferográfica", 2.50, "Caneta Azul");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Caneta vermelha esferográfica", 2.50, "Caneta Vermelha");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Celular Smart Fone", 2500.50, "Celular bom");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Panela de Pressão", 122.50, "Panela de pressão preta");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Guarda Chuva", 90.00, "Guarda Chuva Amarelo");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Massa de modelar várias cores", 25.50, "Massinha de modelar diversas cores");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Maquina de fazer pipoca", 172.50, "Máquina de fazer pipoca Azul");
INSERT INTO tb_produtos (ativo, descricao, valor, nome) value(true, "Controle de ps4", 250, "Controle ps4 vermelho");

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 550.25 WHERE id=5;