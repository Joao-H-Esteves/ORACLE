
-- Nome dos cliente e quantidade total de produtos comprados + valor total
SELECT  TABCLI.NOME,   sum(itnf.quantidade) AS TOT_QTD, ROUND(sum(ITNF.PRECO),2) AS TOT_VALOR
FROM 
tabela_de_clientes TABCLI 
inner join notas_fiscais TABNF 
on TABCLI.CPF = TABNF.CPF
inner join itens_notas_fiscais ITNF
on   ITNF.NUMERO = TABNF.NUMERO
GROUP by  TABCLI.NOME
ORDER BY TOT_VALOR DESC ;

-- COM AJUDA DO CHAT GPT




-----------------------------------------------------------------
SELECT * FROM tabela_de_vendedores;

SELECT * FROM notas_fiscais;

--QUANTOS VENDAS CADA VENDEDOR?

SELECT MATRICULA , COUNT(*) AS NUMERO_DE_NOTAS FROM notas_fiscais
GROUP BY matricula;

-- JUNTANDO AS DUAS TABELAS
SELECT TBNF.MATRICULA , TBVEND.NOME, COUNT(*) AS QTD_NOTAS
FROM 
tabela_de_vendedores TBVEND 
INNER JOIN 
notas_fiscais TBNF
ON TBNF.MATRICULA = TBVEND.MATRICULA
GROUP BY TBNF.MATRICULA, TBVEND.NOME ;

-------------------------------------------------------------------
--Produtos mais vendidos + somente os produtos que venderam mais que 394000 litros. COM NOMES
select itnf.codigo_do_produto, tbprod.nome_do_produto,  sum(itnf.quantidade) as total 
from 
tabela_de_produtos tbprod 
inner join 
itens_notas_fiscais itnf
on
tbprod.codigo_do_produto = itnf.codigo_do_produto
group by itnf.codigo_do_produto , tbprod.nome_do_produto
having sum(itnf.quantidade) >= 394000
order by total desc;

-----------------------------------------------------------------
-- SABER SE ALGUM CLIENTE TEM PELO MENOS UM COMPRA

 SELECT DISTINCT tbcli.nome , tbnf.cpf
 
 FROM 
 
 tabela_de_clientes tbcli
 inner join
 notas_fiscais tbnf
 on
 tbcli.cpf = tbnf.cpf
 ; --TEMOS 15 LOINHAS DE SAIDA .. E QUANTOS CLIENTES TEMOS NO TOTAL?
 
 SELECT COUNT(*) FROM tabela_de_clientes; -- 15 ( OU SEJA TODOS COMPRARAM)
 ----------------------------------------------------------------
 
 INSERT INTO tabela_de_clientes (
    cpf,
    nome,
    endereco_1,
    endereco_2,
    bairro,
    cidade,
    estado,
    cep,
    data_de_nascimento,
    idade,
    sexo,
    limite_de_credito,
    volume_de_compra,
    primeira_compra
) VALUES ('23412632331', 'Juliana Silva', 'R. Tramandai', '', 'Bangu', 'Rio de Janeiro', 
'RJ', '23400000', TO_DATE('1989-02-04','YYYY-MM-DD'), 28, 'F', 180000.0000, 24500, 0); 
 -------------------------------------------------------------------------------------------------
 
 -- MOSTRAR QUEM NÃO COMPROU
 SELECT DISTINCT TC.NOME, NF.CPF 
 FROM
 tabela_de_clientes TC
 LEFT JOIN 
 notas_fiscais NF
 ON
 TC.CPF = NF.CPF
 WHERE NF.CPF IS NULL;