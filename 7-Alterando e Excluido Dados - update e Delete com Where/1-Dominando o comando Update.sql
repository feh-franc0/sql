--Update: comando de alteração.



--SET = apontando/setando
UPDATE tb_funcionarios SET salario = 3000 WHERE id = 5;

SELECT * FROM tb_funcionarios WHERE id = 5;

UPDATE tb_funcionarios SET salario = 4000, admissao = '2015-12-20' WHERE salario = 1000 AND sexo = 'M';

SELECT * FROM tb_funcionarios WHERE sexo = 'M' AND salario = 4000;

UPDATE tb_funcionarios SET salario = 4000.50 WHERE id = 7;