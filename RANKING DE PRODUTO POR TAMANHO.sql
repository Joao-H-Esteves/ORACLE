
--Modifique o relat�rio, mas agora para ver o ranking das vendas por tamanho.

-- PASSO 1 SELECIONAR AS TABELAS 

SELECT TABPRD.CODIGO_DO_PRODUTO, TABPRD.TAMANHO FROM TABELA_DE_PRODUTOS TABPRD;

SELECT ITNF.NUMERO, ITNF.CODIGO_DO_PRODUTO, ITNF.QUANTIDADE FROM ITENS_NOTAS_FISCAIS ITNF;

SELECT NFS.CPF, NFS.NUMERO, NFS.DATA_VENDA FROM NOTAS_FISCAIS NFS;

-- PASSO 2 LIGAR TABELAS E FAZER ELA VIRAR UMA SUB-CONSULTA

SELECT
 TABPRD.TAMANHO ,EXTRACT(YEAR FROM NFS.DATA_VENDA) AS ANO ,SUM(ITNF.QUANTIDADE)AS QTD
FROM
TABELA_DE_PRODUTOS TABPRD
INNER JOIN
ITENS_NOTAS_FISCAIS ITNF
ON TABPRD.CODIGO_DO_PRODUTO = ITNF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NFS
ON NFS.NUMERO = ITNF.NUMERO
GROUP BY TABPRD.TAMANHO, EXTRACT(YEAR FROM NFS.DATA_VENDA); --TAB_AUXILIAR
--ORDER BY ANO, QTD DESC; --TAB_AUXILIAR


--PASSO 3 EXTRAIS O VALOR TOTAL POR ANO

SELECT
 EXTRACT(YEAR FROM NFS.DATA_VENDA) AS ANO ,SUM(ITNF.QUANTIDADE)AS QTD
FROM
TABELA_DE_PRODUTOS TABPRD
INNER JOIN
ITENS_NOTAS_FISCAIS ITNF
ON TABPRD.CODIGO_DO_PRODUTO = ITNF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NFS
ON NFS.NUMERO = ITNF.NUMERO
GROUP BY  EXTRACT(YEAR FROM NFS.DATA_VENDA); --TOTAL_ANO

--PASSO 4 TESTAR A QUERY COM A OP~��O DE SELE��O POR ANO

SELECT * FROM 
(SELECT
 TABPRD.TAMANHO ,EXTRACT(YEAR FROM NFS.DATA_VENDA) AS ANO ,SUM(ITNF.QUANTIDADE)AS QTD
FROM
TABELA_DE_PRODUTOS TABPRD
INNER JOIN
ITENS_NOTAS_FISCAIS ITNF
ON TABPRD.CODIGO_DO_PRODUTO = ITNF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NFS
ON NFS.NUMERO = ITNF.NUMERO
GROUP BY TABPRD.TAMANHO, EXTRACT(YEAR FROM NFS.DATA_VENDA)) TAB_AUXILIAR
WHERE TAB_AUXILIAR.ANO = '2015';

-- PASSO 5 JUNTADO O 3 TOTAL_ANO E O 4 TAB_AUXILIAR + CALD DE PERCENT


SELECT TAB_AUXILIAR.TAMANHO, TAB_AUXILIAR.ANO, TAB_AUXILIAR.QTD AS QUANTIDADE ,
ROUND(((TAB_AUXILIAR.QTD / TOTAL_ANO.QTD)*100),1) AS PORCENTAGEM_ANUAL
FROM 
(SELECT
 TABPRD.TAMANHO ,EXTRACT(YEAR FROM NFS.DATA_VENDA) AS ANO ,SUM(ITNF.QUANTIDADE)AS QTD
FROM
TABELA_DE_PRODUTOS TABPRD
INNER JOIN
ITENS_NOTAS_FISCAIS ITNF
ON TABPRD.CODIGO_DO_PRODUTO = ITNF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NFS
ON NFS.NUMERO = ITNF.NUMERO
GROUP BY TABPRD.TAMANHO, EXTRACT(YEAR FROM NFS.DATA_VENDA)
ORDER BY QTD DESC) TAB_AUXILIAR
INNER JOIN
(SELECT
 EXTRACT(YEAR FROM NFS.DATA_VENDA) AS ANO ,SUM(ITNF.QUANTIDADE)AS QTD
FROM
TABELA_DE_PRODUTOS TABPRD
INNER JOIN
ITENS_NOTAS_FISCAIS ITNF
ON TABPRD.CODIGO_DO_PRODUTO = ITNF.CODIGO_DO_PRODUTO
INNER JOIN
NOTAS_FISCAIS NFS
ON NFS.NUMERO = ITNF.NUMERO
GROUP BY  EXTRACT(YEAR FROM NFS.DATA_VENDA))TOTAL_ANO
ON TOTAL_ANO.ANO = TAB_AUXILIAR.ANO
WHERE TAB_AUXILIAR.ANO = '2016';







--------------------------------------------------------
--RESPOSTA DO PROFESSOR

SELECT CONSULTA_RELATORIO.TAMANHO, 
CONSULTA_RELATORIO.ANO,
CONSULTA_RELATORIO.QUANTIDADE_TOTAL,
ROUND((CONSULTA_RELATORIO.QUANTIDADE_TOTAL/CONSULTA_RELATORIO.QUANTIDADE_GERAL)*100,2) AS 
PERCENTUAL_PARTICIPACAO
FROM
(SELECT
TP.TAMANHO,EXTRACT(YEAR FROM NF.DATA_VENDA) AS ANO ,SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
,(SELECT TOTAL_ANO.QUANTIDADE_GERAL FROM
(SELECT
EXTRACT(YEAR FROM NF.DATA_VENDA) AS ANO
,SUM(INF.QUANTIDADE) AS QUANTIDADE_GERAL
FROM
NOTAS_FISCAIS NF
INNER JOIN
ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
WHERE EXTRACT(YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY EXTRACT(YEAR FROM NF.DATA_VENDA)) TOTAL_ANO
) AS QUANTIDADE_GERAL
FROM TABELA_DE_PRODUTOS TP
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE EXTRACT(YEAR FROM NF.DATA_VENDA) = 2016
GROUP BY TP.TAMANHO,EXTRACT(YEAR FROM NF.DATA_VENDA)
ORDER BY SUM(INF.QUANTIDADE) DESC) CONSULTA_RELATORIO;

