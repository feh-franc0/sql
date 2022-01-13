--where = onde
--usamos ele para ativar filtros 
--WHERE é uma clausula

/*QUAL A DIFERENÇA ENTRE CLAUSULA E OPERADOR
->Um comando possui uma ou mais clausulas(ex:WHERE , ORDER BY),em uma clausula ela pode possui operadores.
->Operador AND e OR são operadores da Clausula WHERE
*/

--SELECIONE TODOS DA TB_FUNCIONARIOS ONDE SEXO = 'M';
SELECT * FROM tb_funcionarios WHERE sexo = 'M';

--SELECIONE TODOS DA TB_FUNCIONARIOS ONDE SEXO DIFERENTE DE 'M';PODE USAR PARA DIFERENTE OS SINAIS '<>' OU '!='.
SELECT * FROM tb_funcionarios WHERE sexo <> 'M';

--SELECIONE TODOS DA TB_FUNCIONARIOS ONDE SEXO = 'M' E SALARIO MAIOR QUE 1000
SELECT * FROM tb_funcionarios WHERE sexo = 'M' AND salario > 1000;

--SELECIONE TODOS DA TB_FUNCIONARIOS ONDE SEXO = 'M' OU(e também que tenha) SALARIO MAIOR QUE 1000
SELECT * FROM tb_funcionarios WHERE sexo = 'M' OR salario > 1000;
