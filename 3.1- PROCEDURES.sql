
--CRIAR procedure PARA PREENCHER A LISTA DE CLIENTES 

CREATE OR REPLACE PROCEDURE INCLUIR_CLIENTE(
p_ID            CLIENTE.ID%TYPE,
p_RAZAO         CLIENTE.RAZAO_SOCIAL%TYPE,
p_CNPJ          CLIENTE.CNPJ%TYPE,
p_SEGMER        CLIENTE.SEGMERCADO%TYPE,
/*A DATA SER� IMPUTADA DIRETO PELO SISTEMA*/
p_FATURA        CLIENTE.FAT_PREVISTO%TYPE,
p_CATEGORIA     CLIENTE.CATEGORIA%TYPE
)
IS

BEGIN
    INSERT INTO CLIENTE /*PODEMOS OMITIR OS CAMPOS DA TABELA �PARA DEIXAR A FAUNCAO MAIS LIMPA E SIMPLES,
                        ATEN��O PARA N�O PULAR CAMPOS*/
    VALUES(p_ID ,p_RAZAO,p_CNPJ,p_SEGMER,/*FUNCAO DE DATA*/SYSDATE,p_FATURA ,p_CATEGORIA);
        COMMIT;
    
END;

BEGIN 
INCLUIR_CLIENTE (
0001,'SUPERMERCADO_ANDORINHA', 08987000143,10000, 900000, 'MEDIO_GRANDE'
);
END;

CALL INCLUIR_CLIENTE(
0002, 'PROMOFARMA', '09234000133', 10007,50000,'MEDIO'
);

select * from CLIENTE;


------------------------------------------------------
/*exercicio*/


CREATE OR REPLACE PROCEDURE INCLUI_DADOS_COMPRAS (
p_ID            PRODUTO_VENDA_EXERCICIO.ID%TYPE,
p_COD_PRODUTO   VARCHAR2,
p_DATA          DATE,
p_QUANTIDADE    PRODUTO_VENDA_EXERCICIO.QUANTIDADE%TYPE,
p_PRECO         PRODUTO_VENDA_EXERCICIO.PRECO%TYPE,
p_VALOR_TOTAL   PRODUTO_VENDA_EXERCICIO.VALOR_TOTAL%TYPE,
p_PERC_IMPOSTO  PRODUTO_VENDA_EXERCICIO.PERCENTUAL_IMPOSTO%TYPE
)
IS
BEGIN
    INSERT INTO PRODUTO_VENDA_EXERCICIO  (
    ID,
    COD_PRODUTO,
    DATA,
    QUANTIDADE,
    PRECO,
    VALOR_TOTAL,
    PERCENTUAL_IMPOSTO
) VALUES 
    (p_ID,p_COD_PRODUTO,p_DATA, p_QUANTIDADE  ,p_PRECO  ,p_VALOR_TOTAL ,p_PERC_IMPOSTO );
    COMMIT;
END;

BEGIN 
    INCLUI_DADOS_COMPRAS(111, '41232',SYSDATE, 100, 10.34, 1034, 10); 
END;

EXECUTE INCLUI_DADOS_COMPRAS(111, '41232',SYSDATE, 100, 10.34, 1034, 10); 