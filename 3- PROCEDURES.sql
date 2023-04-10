-- PROCEDURES = COMANDOS AMIGAVEIS QUE FICAM NA MEMORIA DO BANCO, APARECE QUANDO VC CHAMA ELAS 

/*
CREATE OR REPLACE PROCEDURE

    (COMO SE FOSSE O DECLARE > INICIALIZAR  AS VARIAVEIS E SEUS TIPOS)
IS
    (ADICIONAR A VARIAVEL + VALOR)
BEGIN

END;
*/

CREATE PROCEDURE Incluir_SegMercado
(
p_ID IN NUMBER ,
p_DESCRICAO IN VARCHAR2
)
IS
BEGIN
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES (p_ID , INITCAP(p_DESCRICAO));
    COMMIT;
END;

--------------------------------------------------------------------
--usando a procedure

--FORMA 1
EXECUTE Incluir_SegMercado (10006,'ESTACIONAMENTO');

--FORMA 2
BEGIN
 Incluir_SegMercado (10007,'FARMACEUTICOS');
 END;
-----------------------------------------------
CREATE OR REPLACE PROCEDURE Incluir_SegMercado
(
    p_ID        IN SEGMERCADO.ID%TYPE,
    p_DESCRICAO IN SEGMERCADO.DESCRICAO%TYPE
)
IS
BEGIN
    INSERT INTO SEGMERCADO (ID,DESCRICAO) VALUES (p_ID, INITCAP(p_DESCRICAO));
    COMMIT;
END;

--------------------------------------------------
CREATE OR REPLACE PROCEDURE Incluir_Produto
(
    p_COD           IN PRODUTO_EXERCICIO.COD%TYPE,
    p_DESCRICAO     IN PRODUTO_EXERCICIO.DESCRICAO%TYPE,
    p_CATEGORIA     IN PRODUTO_EXERCICIO.CATEGORIA%TYPE
)
IS
BEGIN
    INSERT INTO PRODUTO_EXERCICIO (COD,DESCRICAO, CATEGORIA) VALUES (p_COD, INITCAP(p_DESCRICAO), INITCAP(p_CATEGORIA));
    COMMIT;
END;

------------------------------------------------
CREATE OR REPLACE PROCEDURE Alterar_Categoria_Produto
(
    p_COD       IN PRODUTO_EXERCICIO.COD%TYPE,
    p_CATEGORIA IN PRODUTO_EXERCICIO.CATEGORIA%TYPE
)
IS
BEGIN
    UPDATE PRODUTO_EXERCICIO SET PRODUTO_EXERCICIO.CATEGORIA = INITCAP(p_CATEGORIA) WHERE PRODUTO_EXERCICIO.COD = p_COD;
    COMMIT;
END;

-------------------------------------------
CREATE OR REPLACE PROCEDURE Excluir_produto
(
    p_COD   IN PRODUTO_EXERCICIO.COD%TYPE
)
IS
BEGIN
    DELETE FROM PRODUTO_EXERCICIO WHERE PRODUTO_EXERCICIO.COD = p_COD;
    COMMIT;
END;        

---------------------------------------------------
/*
Incluindo dois novos produto:

COD: 33854

DESCRICAO: Frescor da Montanha - Aroma Laranja - 1 Litro

CATEGORIA: Mate

COD: 89254

DESCRICAO: Frescor da Montanha - Aroma Uva - 1 Litro

CATEGORIA: Águas
*/

EXECUTE INCLUIR_PRODUTO('33854','Frescor da Montanha - Aroma Laranja - 1 Litro','MATE');
EXECUTE INCLUIR_PRODUTO('89254','Frescor da Montanha - Aroma Uva - 1 Litro','AGUAS');
EXECUTE INCLUIR_PRODUTO('89255','Frescor da Montanha - Aroma Uva - 1 Litro','AGUAS');

SELECT * FROM PRODUTO_EXERCICIO;

----------------------------------------------------------
/*
b) Alterando a categoria do produto 33854 para Águas.

c) Excluindo o produto 89255.*/

EXECUTE ALTERAR_CATEGORIA_PRODUTO ('33854','AGUAS');

EXECUTE EXCLUIR_PRODUTO ('89255');
