USE hcode;
/*Contar a quantidade de registros(linhas q temos dentro da tabela)*/
--AS usado para dar apelido a coluna
SELECT COUNT(*) AS total FROM tb_funcionarios;

/*SELECT PARA FAZER UMA SIMULAÇÃO.PARA SABER COMO SERIA SE OS FUNCIONARIOS TIVESSEM 10% DE AUMENTO,IRA CRIAR UMA COLUNA DE COMO SERIA*/
SELECT nome,salario AS atual,CONVERT(salario * 1.1, DEC(10,2)) AS 'salario com aumento de 10%' FROM tb_funcionarios;