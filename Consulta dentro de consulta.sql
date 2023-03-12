
-- AMARRA A CONSULTA PARA SABER EM QUAIS BAIRROS DE VENDEDORES POSSUEM CLIENTES

SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES; -- BAIRROS DOS VENDEDORES

SELECT * FROM tabela_de_clientes
WHERE bairro IN (
'Tijuca',
'Jardins',
'Copacabana',
'Santo Amaro')-- POSTANTO BAIRRO DOS VENDEDORES MANUALMENTE
ORDER BY BAIRRO DESC;

------ MELHORANDO A CONSULTA

SELECT * FROM tabela_de_clientes
WHERE BAIRRO IN ( SELECT BAIRRO FROM tabela_de_vendedores)
ORDER BY BAIRRO ASC;
/* DESSE JEITO SEMPRE QUE APARECER ALGO NOVO DENTRO DA TABELA DE VENDEDORES 
AUTOMATICAMENTE IRÁ ALIMENTAR A CONSULTA*/

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


-- PRODUTOS CUJA A VENDA FOI SUPERIOS A 394000 + LISTAR OS SABORES DOS PRODUTOS--
SELECT TBPROD.codigo_do_produto, tbprod.sabor , SUM(ITNF.quantidade) AS SOMA_VENDAS FROM tabela_de_produtos TBPROD
INNER JOIN
itens_notas_fiscais ITNF
ON
TBPROD.codigo_do_produto = itnf.codigo_do_produto
GROUP BY TBPROD.codigo_do_produto, TBPROD.SABOR
HAVING SUM(ITNF.QUANTIDADE) > 394000
;

-----------------------

--USANDO SUB-QUERY PARA SUBSTITUIR O HAVING
SELECT QTD_SOMA.codigo_do_produto , QTD_SOMA.soma FROM
(SELECT inf.codigo_do_produto, SUM(inf.quantidade) AS SOMA FROM itens_notas_fiscais INF
GROUP BY inf.codigo_do_produto) QTD_SOMA
WHERE QTD_SOMA.soma > 394000
;
------------------------
SELECT QTD_SOMA.codigo_do_produto , TBPROD.SABOR QTD_SOMA.soma FROM
(SELECT inf.codigo_do_produto, SUM(inf.quantidade) AS SOMA FROM itens_notas_fiscais INF
GROUP BY inf.codigo_do_produto) QTD_SOMA
INNER JOIN
tabela_de_produtos TBPROD
ON
TBPROD.codigo_do_produto = QTD_SOMA.codigo_do_produto
WHERE QTD_SOMA.soma > 394000
; -- ERRO

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

-- SOMANDO AS EMBALAGENS 
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM;

-- APARECENDO APENAS ACIMA DE 80
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) >80;

-- USANDO SUB CONSULTA AO EM VEZ DE HAVING

SELECT SOMADA.EMBALAGEM , SOMADA.SOMA FROM
(SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM) SOMADA
WHERE
SOMADA.SOMA >80;

-------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

--Redesenhe esta consulta usando subconsultas.

SELECT * FROM 
(select inf.codigo_do_produto , sum(inf.quantidade) from ITENS_NOTAS_FISCAIS  inf
group by inf.codigo_do_produto) as soma , TABELA_DE_PRODUTOS TB
WHERE TB.codigo_do_produto = inf.codigo_do_produto
; -- NÃO SEI FAZER


