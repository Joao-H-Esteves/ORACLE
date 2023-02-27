
        --CASE WHEN (TIPO UM IF)
        
SELECT TPROD.nome_do_produto, TPROD.preco_de_lista,
(CASE WHEN TPROD.preco_de_lista >= 12 THEN 'PREÇO ALTO'
        WHEN TPROD.preco_de_lista >= 7 AND TPROD.preco_de_lista <12 THEN 'PREÇO MEDIO'
        ELSE 'PREÇO BARATO'
        END) AS CLASSIFICACAO
FROM tabela_de_produtos TPROD
WHERE TPROD.NOME_DO_PRODUTO LIKE '%Manga%' or TPROD.NOME_DO_PRODUTO LIKE '%manga%'
ORDER BY CLASSIFICACAO DESC;

----------------------------------------------------------------------------------------------

/* Liste somente os nomes dos clientes e os classifique por:

Acima ou igual a 150.000 de limite de crédito - Clientes grandes
Entre 150.000 e 110.000 de limite de crédito - Clientes médios
Menores que 110.000 de limite de crédito - Clientes pequenos*/


SELECT TABCLI.nome, TABCLI.cidade, TABCLI.cep, TABCLI.limite_de_credito,  
    CASE
        WHEN TABCLI.limite_de_credito >= 150000 THEN 'CLIENTE GRANDE'
        WHEN TABCLI.limite_de_credito >= 110000 THEN 'CLIENTE MEDIO'
        ELSE 'CLIENTE PEQUENO'
    END  AS TIPO_DE_CLIENTE  
FROM tabela_de_clientes TABCLI
ORDER BY TABCLI.limite_de_credito DESC; 