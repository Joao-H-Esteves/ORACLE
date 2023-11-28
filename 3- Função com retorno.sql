--exibindo a saida na execução de um script
    --SET SERVEROUTPUT ON;
    --DBMS_OUTPUT.PUT_LINE(v_DESCRICAO

SET SERVEROUTPUT ON;
DECLARE
    v_ID        SEGMERCADO.ID%TYPE   := 10003;
    v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE ;
BEGIN
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
    DBMS_OUTPUT.PUT_LINE(v_DESCRICAO);
END;    

-----------------------------------------------

/* FUNÇÃO COM RETORNO

CREATE OR REPLACE FUNCTION
    (DECLARAR OS PARAMETROS)    
    RETURN
        (TIPO DE DADO: DATE,NUMBER,VARCHAR,ETC)
    IS 
        (DECLARAÇÃO DAS VARIAVEIS)
    BEGIN
        (SCRIPT QUE IRÁ RODAR)
END

*/

CREATE OR REPLACE FUNCTION DESCRICAO_SEGMERCADO ( p_ID IN SEGMERCADO.ID%TYPE)

RETURN  SEGMERCADO.DESCRICAO%TYPE
IS
    v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;
BEGIN
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = p_ID;
    RETURN v_DESCRICAO;
    
END;    



SELECT  DESCRICAO_SEGMERCADO(10001) FROM DUAL;

--------------------------------------------------------------------

CREATE OR REPLACE FUNCTION SOMA
(A NUMBER, B IN NUMBER ) -- O "IN" NÃO É OBRIGATORIO
RETURN NUMBER
IS -- OU AS
BEGIN
RETURN A+B;
END;

SELECT SOMA (4,6) FROM DUAL;

---------------------------------------------------------------------

---Construa uma função com o nome RETORNA_CATEGORIA que, passando o código do produto, teremos o retorno da categoria.


CREATE OR REPLACE FUNCTION CATEGORIA_PRODUTO ( p_COD PRODUTO_EXERCICIO.COD%TYPE)
RETURN
    PRODUTO_EXERCICIO.CATEGORIA%TYPE
IS
    v_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE ;

BEGIN
    SELECT CATEGORIA INTO v_CATEGORIA FROM PRODUTO_EXERCICIO WHERE COD = p_COD;
    RETURN v_CATEGORIA;
END;    


SELECT CATEGORIA_PRODUTO (41232) FROM DUAL;

-------------------------------------------------------------------------------
SELECT * FROM SEGMERCADO;
--------------------ERRO------------------------------
-- usando um bloco para chamar ua função
SET SERVEROUTPUT ON
BEGIN
    DECLARE 
     v_ID NUMBER(5,0) ;
     v_CHAMANDO_FUNCAO VARCHAR2 (100);
     
    BEGIN
        v_CHAMANDO_FUNCAO := NULL;
        v_ID := 10001;
        v_CHAMANDO_FUNCAO := CATEGORIA_PRODUTO(10001);
        dbms_output.put_line(' A descricao do segmento é '|| v_CHAMANDO_FUNCAO);
        
    END;    
END;
--------------------------------------------------








