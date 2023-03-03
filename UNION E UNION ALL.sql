SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES; --12 BAIRROS

SELECT DISTINCT BAIRRO FROM tabela_de_vendedores; -- 4 BAIRROS

-- USANDO O UNION

SELECT BAIRRO FROM tabela_de_clientes
UNION
SELECT BAIRRO FROM tabela_de_vendedores; -- 13 BAIRROS (APAGOU OS BAIRROS REPETIDOS

-- USANDO O UNION ALL

SELECT BAIRRO FROM tabela_de_clientes
UNION ALL
SELECT BAIRRO FROM tabela_de_vendedores; -- 20 BAIRROS ( MOSTRA OS REPETIDOS

-------------------------------------------------------------------------------------------

-- USANDO ALIAS PARA IDENTIFICAR CAMPOS (CONSTANTE)

SELECT BAIRRO , 'CLIENTE' AS ORIGEM FROM tabela_de_clientes
UNION /*ALL*/
SELECT BAIRRO , 'FORNECEDOR' AS ORIGEM FROM tabela_de_vendedores;