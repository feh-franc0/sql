/*Stored Procedures : ou procedimento armazenado, que é nada mais que colocar grupos de comandos SQL dentro do banco de dados compila-los,dar um nome para eles e toda vez que eu preciso eu chamo essa Procedures.
A diferença principal de Procedures para Views é que eu posso passar parametros para essa procedures,de maneira que eu posso inserir,alterar,excluir e executar qualquer comando do banco de dados dentro de uma Procedures
*/

DELIMITER $$ --COMANDO QUE IRA SER RESPONSAVEL POR DELIMITAR ONDE SERA O FINAL DA EXECUÇÃO DO CODIGO
CREATE PROCEDURE sp_pessoa_save(
    pdesnome VARCHAR(256)
)
BEGIN --corpo da PROCEDURE
    INSERT INTO tb_pessoas (pdesnome) VALUES (pdesnome);
    SELECT * FROM tb_pessoas WHERE idpessoa = last_insert_id();
END $$

DELIMITER ;

CALL sp_pessoa_save('Massaharu'); --USE CALL PARA CHAMAR A PROCEDURE

--PROCEDURE MELHORA O DESEMPENHO E A SEGURANÇA DO BANCO DE DADOS