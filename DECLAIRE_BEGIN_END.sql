
--- PROGRAMA EM PL/SQL

/* ESTRUTURA BASICA DE BLOCOS:

    DECLARE
        (VARIAVEIS E CONSTANTES)
    BEGIN
        (PROGRAMA)
    END
    */

DECLARE
    v_ID NUMBER(5)
    ; -- A CADA LINHA NO DECLARA � OBRIGATORIO O ";"
    
BEGIN
    
    dbms_output.put_line(v_ID); --fun��o para mostrar a saida de dados

END;

-------------------------------


/*A instru��o "SET SERVEROUTPUT ON" � usada no Oracle PL/SQL para habilitar a 
exibi��o de resultados do c�digo PL/SQL no console ou 
na janela de sa�da do SQL Developer.*/
    set SERVEROUTPUT on;
DECLARE
    v_ID NUMBER(5)  := 1; -- ":=" significa "recebe"
    
BEGIN
    
    dbms_output.put_line(v_ID); --fun��o para mostrar a saida de dados
    v_ID := 500;
    dbms_output.put_line(v_ID);
END;


------------------------------------------------------------------------------------

--Qual erro (n�mero) do Oracle � apresentado quando esse script � executado?
SET SERVEROUTPUT ON;
DECLARE
   v_ID VARCHAR(10) := 'Novo programa PL/SQL';
BEGIN 
   dbms_output.put_line(v_ID);
   v_ID := 2 ;
   dbms_output.put_line(v_ID);
END;

