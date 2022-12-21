/*AS = APELIDANDO AS COLUNAS*/

SELECT
    produto AS "Codigo do Produto",
    nome,
    embalagem,
    tamanho,
    sabor,
    preco_lista
FROM
    tb_produtos;

 /*----------------------------------------*/
 
 select * from tb_produtos
 where sabor = 'Melancia' or sabor = 'Limao';
 
 /*--------------------------*/
 /*FAZENDO UPDATE EM TODOS OS SABORES LIMAO PARA CITRICOS*/
 
 UPDATE tb_produtos SET sabor = 'Citrico' where sabor = 'Limao';
 
 select * from tb_produtos where sabor = 'Citrico';
 
  /*----------------------------------------*/
       /* Clientes menores ou = a 22 */
  select * from tb_clientes where idade <= 22;
  
   /*----------------------------------------*/
        /* comissão menor que 17 % */
   select* from tb_vendedores vend where vend.percen_comis < 17;
   
    /*----------------------------------------*/
         /* Datas de um ano em especifico */
    SELECT * FROM tb_clientes ;     
    
    SELECT * FROM tb_clientes where data_nascimento >= '01/01/00' and  data_nascimento <= '31/12/00';    
    
    SELECT nome,data_nascimento FROM tb_clientes where to_char (data_nascimento,'yyyy')= 1995;
    
         /* Vendedores admitidos em 2020 em diante */
    
    SELECT * FROM  tb_vendedores ;
    SELECT * FROM  tb_vendedores where to_char(data_admissao, 'yyyy') >=2020;
    
    /*----------------------------------------*/
    
    -- Quais os vendedores que possuem comissões maiores que 0,19 ou menores que 0,15?
    
    SELECT * FROM tb_vendedores vend where vend.percen_comis > 19 or vend.percen_comis <15;
    
        /*----------------------------------------*/
        --CONCATENANDO CAMPOS
        SELECT * FROM TB_CLIENTES;
    SELECT 
    NOME,
    ENDERECO1 ||' BAIRRO: ' || BAIRRO || ' - ' || CIDADE || ',' || ESTADO AS "ENDEREÇO COMPLETO"
    FROM tb_clientes 
    
     /*----------------------------------------*/
        --Sub consulta com ALIAS
    
    SELECT  
    X.nome "Nome Cliente",
    V.nome "Nome Vendedor"
    FROM 
    (SELECT * FROM tb_clientes C) X,
    tb_vendedores V;
    
    
    