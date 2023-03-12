
------------- FUNÇÕES NUMERICAS -------------------------

-- ROUND >> AREDONDA PARA BAIXO OU PARA CIMA

SELECT 3.4 FROM DUAL; --3.4

SELECT ROUND(3.4) FROM DUAL; --3 

SELECT ROUND(3.6) FROM DUAL; --4

SELECT ROUND(3.5) FROM DUAL; --4

--------------------------------------------------------------------------------

-- TRUNC >> ARREDONDA PARA BAIXO

SELECT TRUNC(3.4) FROM DUAL; --3 

SELECT TRUNC(3.6) FROM DUAL; --3

SELECT TRUNC(3.5) FROM DUAL; --3

--------------------------------------------------------------------------------

-- FLOOR >> IGNORA AS CASAS DECIMAIS

SELECT FLOOR(4.51465846) FROM DUAL; --4
SELECT FLOOR(9.91465846) FROM DUAL; --9
--------------------------------------------------------------------------------

--CEIL >> ARREDONDA PARA CIMA

SELECT CEIL(4.51465846) FROM DUAL; --5
SELECT CEIL(4.2) FROM DUAL; --5

--------------------------------------------------------------------------------

--POWER >> ELEVA A POTENCIA

SELECT POWER(3,4) FROM DUAL; --81

SELECT POWER(3,2) FROM DUAL; --9

SELECT POWER(3,5) FROM DUAL; --243
--------------------------------------------------------------------------------

--EXP >> NUMERO EXPONENCIAL

SELECT EXP(3) FROM DUAL; --20,08553692318766774092852965458171789706

--------------------------------------------------------------------------------

--SQRT >> RAIZ QUADRADA

SELECT SQRT(9) FROM DUAL; --3
SELECT SQRT(100) FROM DUAL; --10

--------------------------------------------------------------------------------

--SIGN >> RETORNA SE É POSITIVO, NEGATIVO OU NULO

SELECT SIGN(-20) FROM DUAL; -- -1
SELECT SIGN(20) FROM DUAL; -- +1
SELECT SIGN(0) FROM DUAL; -- 0
--------------------------------------------------------------------------------

--ABS VALOR ABSOLUTO (SEMPRE POSITIVO)

SELECT ABS(-20) FROM DUAL; --  +20

--------------------------------------------------------------------------------

--MOD >> RESTO DA DIVISÃO

SELECT MOD(10,6) FROM DUAL; -- RESTO 4

------------------------------------------------------------------------------------------

/*Na tabela de notas fiscais, temos o valor do imposto.
Já na tabela de itens, temos a quantidade e o faturamento. 
Calcule o valor do imposto pago no ano de 2016, 
arredondando para o menor inteiro.*/



SELECT NF.NUMERO, ITENF.QUANTIDADE, ITENF.PRECO AS PRECO_UNITARIO,
(ITENF.QUANTIDADE * ITENF.PRECO) AS VALOR_TOTAL, NF.IMPOSTO ,
TRUNC((ITENF.QUANTIDADE * ITENF.PRECO) * NF.IMPOSTO) AS IMPOSTO_PAGO
FROM NOTAS_FISCAIS NF
INNER JOIN
 ITENS_NOTAS_FISCAIS ITENF
ON
NF.NUMERO = ITENF.NUMERO;


-------------------------
SELECT TO_CHAR(DATA_VENDA, 'YYYY'), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) 
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = INF.NUMERO
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = 2016
GROUP BY TO_CHAR(DATA_VENDA, 'YYYY');

--2016	4656937

------------------------------

SELECT
    TO_CHAR(DATA_VENDA,'YYYY') AS ANO,
    FLOOR(SUM(NF.IMPOSTO * (INF.QUANTIDADE * INF.PRECO))) AS IMPOSTO,
    FLOOR(SUM(INF.QUANTIDADE * INF.PRECO)) AS VLR_BRUTO,
    FLOOR(SUM(INF.QUANTIDADE * INF.PRECO)) - FLOOR(SUM(NF.IMPOSTO * (INF.QUANTIDADE * INF.PRECO))) AS VLR_LIQ
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
    ON INF.NUMERO = NF.NUMERO
WHERE TO_CHAR(DATA_VENDA,'YYYY') = 2016
GROUP BY TO_CHAR(DATA_VENDA,'YYYY');
