/*INSERT*/

/*VAMOS CRIAR UMA TABELA DENTRO DO BANCO hcode*/
CREATE TABLE 'hcode'.'tb_pessoas'(
    'id' INT NOT NULL AUTO_INCREMENT,
    'nome' VARCHAR(100)NOT NULL,
    'sexo' ENUM('M','F')NOT NULL,
    PRIMARY KEY('id'));

USE hcode;

/*INSERT POSICIONAL*/
INSERT INTO tb_pessoas(1,'João','M');

/*INSERT DECLARATIVO*/
INSERT INTO tb_pessoas (sexo, nome) VALUES ('F', 'Maria');

/*INSERT COM VARIOS COMANDOS VALUES*/
INSERT INTO tb_pessoas (nome, sexo) VALUES
('Divanei','M'),
('Luiz','M'),
('Djalma','M'),
('Natali','F'),
('Tatiane','F'),
('Jaqueline','F');

/*COMO COPIAR DADOS DE UMA TABELA PARA OUTRA*/
SELECT * FROM tb_funcionarios; /*id-nome-salario-admissao-sexo-cadastro*/
SELECT * FROM tb_pessoas /*id-nome-sexo*/

--O que a gente n tem a gente define algo padrao,como nesse exemplo: salario=950 , admissao=data atual, cadastro=NULL e o que temos na tabela pegamos pela chave,nesse caso = id,nome,sexo.
INSERT INTO tb_funcionarios SELECT id,nome,950,CURRENT_DATE(),sexo,NULL FROM tb_pessoas;