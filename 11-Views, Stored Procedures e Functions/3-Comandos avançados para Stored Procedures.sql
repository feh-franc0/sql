/* COMANDOS AVANÇADOS DE STORED PROCEDURE:
    lembra que ja vimos o start transaction, commit, hollback, agora a gente vai fazer isso automaticamente por meio de uma PROCEDURE

AGORA VAMOS VER TRANSAÇÕES E FAZER O SEGUINTE :
    vamos tentar cadastrar um funcionario, se der certo nosso insert na tabela pessoa e capturarmos entao esse lest_insert_id(),com essa informação nos vamos entao para a tabela funcionario cadastrar essa pessoa.Entao inserimos na pessoa e depois inserimos na funcionarios. Mas se der um problema no cadastro da pessoa nos não iremos deixar cadastrar,nesse caso não deixaremos ter o mesmo nome por motivos didaticos ira ficar mais simples de entender,e ai vamos ver o HOLLBACK nos vamos parar e nao vamos inserir na tabela funcionario
*/

DELIMITER $$

CREATE PROCEDURE sp_funcionario_save (
    pdesnome VARCHAR(256),
    pvlsalario DECIMAL(10,2),
    pdtadmissao DATETIME
)
BEGIN
    DECLARE vidpessoa INT;
    START TRANSACTION;
    IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) THEN
        INSERT INTO tb_pessoas VALUES(NULL,pdesnome,NULL);
        SET vidpessoa = LAST_INSERT_ID();

    ELSE
        SELECT 'Usuário já cadastrado!' AS resultado;
        ROLLBACK;

    END IF;

    IF NOT EXISTS(SELECT idpessoa FROM tb_funcionarios WHERE idpessoa = vidpessoa) THEN
        INSERT INTO tb_funcionarios VALUES(NULL, vidpessoa, pvlsalario, pdtadmissao);

    ELSE
        SELECT 'Usuário já cadastrado!' AS resultado;
        ROLLBACK;

    END IF;

    COMMIT;
    SELECT 'Dados cadastrados com sucesso!' AS resultado;



    END $$

--Vamos usar a nossa PROCEDURE
--ESSE USUARIO JA IRA EXISTIR
CALL sp_funcionario_save('João', 50000, CURRENT_DATE())

--Vamos tentar cadastrar um nome que ainda n temos
CALL sp_funcionario_save('Divanei', 41000, CURRENT_DATE())