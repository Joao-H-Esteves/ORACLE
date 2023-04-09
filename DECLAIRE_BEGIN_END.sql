
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
    ; -- A CADA LINHA NO DECLARA É OBRIGATORIO O ";"
    
BEGIN
    
    dbms_output.put_line(v_ID); --função para mostrar a saida de dados

END;

-------------------------------


/*A instrução "SET SERVEROUTPUT ON" é usada no Oracle PL/SQL para habilitar a 
exibição de resultados do código PL/SQL no console ou 
na janela de saída do SQL Developer.*/
    set SERVEROUTPUT on;
DECLARE
    v_ID NUMBER(5)  := 1; -- ":=" significa "recebe"
    
BEGIN
    
    dbms_output.put_line(v_ID); --função para mostrar a saida de dados
    v_ID := 500;
    dbms_output.put_line(v_ID);
END;


------------------------------------------------------------------------------------

--Qual erro (número) do Oracle é apresentado quando esse script é executado?
SET SERVEROUTPUT ON;
DECLARE
   v_ID VARCHAR(10) := 'Novo programa PL/SQL';
BEGIN 
   dbms_output.put_line(v_ID);
   v_ID := 2 ;
   dbms_output.put_line(v_ID);
END;

