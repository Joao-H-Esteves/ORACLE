

            ---HAVING----
        
--USADO PARA FAZER UMA CONTA VITAR CONDIÇÃO

SELECT CIDADE , SUM(LIMITE_DE_CREDITO) FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

SELECT  CIDADE, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE
FROM TABELA_DE_CLIENTES GROUP BY CIDADE
HAVING SUM(LIMITE_DE_CREDITO) > 900000;

--------------------------------------------------------
-- MAIOR E MENOR CUSTO DAS EMBALAGENS + MAIOR QUE 10 E COM PREÇO MAX MAIOR QUE 30

SELECT EMBALAGEM, MAX(preco_de_lista),MIN(preco_de_lista) FROM tabela_de_produtos 
WHERE preco_de_lista >=10
GROUP BY embalagem
HAVING MAX(preco_de_lista) >30;

-----------------------------------------------------------
--Verifique as quantidades totais de vendas de cada produto e ordene da maior para a menor.

SELECT codigo_do_produto, SUM(quantidade) FROM itens_notas_fiscais
GROUP BY codigo_do_produto
order by SUM(quantidade)desc;

------------------------------------------------------------
--Produtos mais vendidos + somente os produtos que venderam mais que 394000 litros.

SELECT codigo_do_produto, sum(quantidade)as TOTAL_QDT FROM itens_notas_fiscais
GROUP by codigo_do_produto
HAVING sum(quantidade) > 394000
ORDER BY TOTAL_QDT DESC;
