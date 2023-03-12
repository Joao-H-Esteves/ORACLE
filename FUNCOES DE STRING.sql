-- FUN��ES NA PRATICA --

 -- LOWER >> TUDO MINUSCULO 
 
 SELECT NOME , LOWER(NOME) FROM TABELA_DE_CLIENTES;
 
 ------------------------------------------------------
 
 --UPPER >> TUDO MAIUSCULO
 
 SELECT NOME , UPPER(NOME) FROM TABELA_DE_CLIENTES;
 
 ----------------------------------------------------
 
 -- INITCAP >> PRIMEIRA LETRA MAIUSCULA RESTO EM MINUSCULO
 
 SELECT NOME, INITCAP(NOME) FROM TB_VENDEDORES;
 
 ----------------------------------------------------
 
 --CONCAT >> CONCATENANDO CAMPOS ( JUNTAND0)
 
 SELECT ENDERECO_1 , BAIRRO FROM TABELA_DE_CLIENTES;
 
  SELECT CONCAT(ENDERECO_1 , BAIRRO) FROM TABELA_DE_CLIENTES; --JUNTOU SEM ESPA�O 
 
   SELECT CONCAT(ENDERECO_1,CONCAT(' ' , BAIRRO)) FROM TABELA_DE_CLIENTES;
        --CONCAT S� ACEITA 2 ARGUMENTOS

SELECT ENDERECO_1 || ' '||  BAIRRO || ' ' || CIDADE || '-' || ESTADO FROM TABELA_DE_CLIENTES;
    -- CONCATENANDO DIVERSOS CAMPOS COM PYPI |||||

----------------------------------------------------

--LPAD  COMPLETA A ESQUERDA (LEFT) >> (CAMPO, QTD, 'CONDI��O')

SELECT NOME_DO_PRODUTO , LPAD(NOME_DO_PRODUTO, 60,'*') FROM tabela_de_produtos;

----------------------------------------------------

 --RPAD  COMPLETA A DIREITA (RIGHT) >> (CAMPO, QTD, 'CONDI��O')

SELECT NOME_DO_PRODUTO , RPAD(NOME_DO_PRODUTO, 60,'*') FROM tabela_de_produtos;

----------------------------------------------------

--SUBSTR >> PEGAR UM PEDA�O DO TEXTO (CAMPO,CASA INICIAL, QTD DE LETRAS)

SELECT NOME_DO_PRODUTO , SUBSTR(NOME_DO_PRODUTO, 4,6) FROM tabela_de_produtos;

----------------------------------------------------

--INSTR >> PROCURAR UMA PALAVRA ESPECIFICA E O RETORNO � EM QUAL POSI��O DA STRING ELA COME�A

SELECT NOME_DO_PRODUTO , INSTR(NOME_DO_PRODUTO, 'Campo') FROM tabela_de_produtos;

SELECT NOME FROM tabela_de_clientes WHERE INSTR(NOME , 'Silva') <>0; -- usando a fun��o
SELECT NOME FROM tabela_de_clientes WHERE nome like '%Silva%';
----------------------------------------------------

--REPLACE >> SUBSTITUIR UM PEDA�O DA STRING

SELECT NOME_DO_PRODUTO, REPLACE(NOME_DO_PRODUTO, 'Litro','L') FROM TABELA_DE_PRODUTOS; -- FICOU Ls O PLURAL
SELECT NOME_DO_PRODUTO, REPLACE(REPLACE(NOME_DO_PRODUTO, 'Litro','L'),'Ls','L') FROM TABELA_DE_PRODUTOS;
 