/*UPDATE E DELETE*/

/*USAR O BANCO DE DADOS hcode*/
USE hcode;

/*SELECIONAR TODAS AS COLUNNAS DA TABELA tb_funcionarios*/
SELECT * FROM tb_funcionarios;

/*MODIFICAR NA TABELA tb_funcionarios todas as colunas onde é SETado salario e atribuir nesse salario 10% de aumento,SEMPRE USE O WHERE,ESSE CASO É PARA EXPLICAR FACILMENTE*/
/*UPDATE SEM WHERE ESTA ERRADO*/
UPDATE tb_funcionarios SET salario = salario * 1.1;

/*DELETAR TODAS AS COLUNAS DE tb_funcionarios,SEMPRE USE O WHERE,ESSE CASO É PARA EXPLICAR FACILMENTE*/

/*DELETE SEM WHERE ESTA ERRADO*/
DELETE FROM tb_funcionarios;