-- Agrupando campos numericos GROUP BY
        -- SUM SOMA
        -- AVG MEDIA
        -- MAX MAXIMO
        -- MIN MINIMO
SELECT * FROM tabela_de_clientes;

SELECT cidade , idade from tabela_de_clientes;

SELECT cidade , idade from tabela_de_clientes order by cidade, idade ;

SELECT cidade , SUM(idade) from tabela_de_clientes GROUP BY CIDADE order by cidade;

-- O CAMPO QUE SERA SOMADO NÃO PODE MAIS FICAR LISTADO NO ORDER BY

--------------------------------------------------------------------------------------

-- media de idade e lim de credito por bairro

SELECT bairro, avg(limite_de_credito), avg(idade) FROM tabela_de_clientes group by bairro order by bairro desc;

-----------------------------------------------------------------------------------------

-- o produto mais caro de cada embalagem

select * from tabela_de_produtos;

select embalagem ,max (preco_de_lista) from tabela_de_produtos group by embalagem;

------------------------------------------------------------------------------------
select embalagem, COUNT(*) from tabela_de_produtos GROUP BY embalagem order by embalagem;

select embalagem, count(*) as QTD_DE_PROD from tabela_de_produtos WHERE sabor = 'Laranja' group by embalagem order by embalagem;

--------------------------------------------------------------------------------

--QUANTIDADE DE UNICADE VENDIDAS DO CODIGO EM QUESTÃO
select codigo_do_produto, count(*) from ITENS_NOTAS_FISCAIS 
where codigo_do_produto = 1101035
GROUP by codigo_do_produto;

SELECT * FROM itens_notas_fiscais
WHERE codigo_do_produto= 1101035;

SELECT codigo_do_produto, COUNT(*) FROM itens_notas_fiscais
WHERE quantidade= 99 AND codigo_do_produto = 1101035
GROUP BY codigo_do_produto;

-------------------SEMPRE QUE USAR COUNT TEM QUE TER A CLAUSULA COUNT----------------------------------------------


