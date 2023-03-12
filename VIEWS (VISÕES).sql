
--VIEWS ( TABELAS VIRTUAIS USADAS PARA RELATORIOS)

--USANDO ESSA PESQUIDA PARA FAZER UMA VIEW
SELECT SOMADA.EMBALAGEM , SOMADA.SOMA FROM
(SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM) SOMADA
WHERE
SOMADA.SOMA >80;


CREATE VIEW VW_SOMADA AS
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM; -- VIEW CRIADA

SELECT * FROM vw_somada;

SELECT EMBALAGEM , SOMA FROM vw_somada
WHERE SOMA > 60;


--------------------------------------------
SELECT tp.nome_do_produto , tp.embalagem , vs.soma from tabela_de_produtos tp
inner join
vw_somada vs
on vs.embalagem = tp.embalagem
where 
vs.soma >60;

------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- creando view para somar soma de compras por produto
CREATE VIEW VW_QTD_VEND AS
SELECT inf.codigo_do_produto , SUM(inf.quantidade) AS SOMA FROM itens_notas_fiscais INF
GROUP BY inf.codigo_do_produto; --VIEW CRIADA

SELECT tp.codigo_do_produto, tp.nome_do_produto, VQV.soma FROM tabela_de_produtos TP
INNER JOIN vw_qtd_vend VQV
ON tp.codigo_do_produto = VQV.codigo_do_produto
WHERE VQV.soma > 39400
ORDER BY VQV.SOMA DESC;

------------------- ALTERANDO A VIEW ( MELHORANDO ELA)ALTER SÓ PODE SER USADO SE MANTIVER AS MESMA COLUNAS

CREATE OR REPLACE VIEW VW_QTD_VEND ("codprod","nomprod","SOMA")AS
SELECT inf.codigo_do_produto as codprod ,tp.nome_do_produto as nomprod, SUM(inf.quantidade)as soma 
FROM
itens_notas_fiscais INF 
INNER JOIN 
TABELA_DE_PRODUTOS TP
ON TP.codigo_do_produto = inf.codigo_do_produto
GROUP BY inf.codigo_do_produto, tp.nome_do_produto;

SELECT * FROM vw_qtd_vend
WHERE SOMA > 39400; 

