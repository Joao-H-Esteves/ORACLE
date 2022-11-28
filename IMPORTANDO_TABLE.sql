CREATE TABLE TB_CLIENTE (
  CPF varchar2 (11),
  NOME varchar2(100) default NULL,
  ENDERECO varchar2(100) default NULL,
  NUM_END varchar2(5) default NULL,
  CEP varchar2(10) default NULL,
  CIDADE varchar2(50),
  ESTADO varchar2(50) default NULL,
  NACIONALIDADE varchar2(100) default NULL,
  NASC data,
  PRI_COMPR varchar2(3) default NULL,
  LIM_CRED number(10)
  )

  CREATE TABLE TB_CLIENTE (
  CPF varchar2 (11),
  NOME varchar2(100) default NULL,
  ENDERECO varchar2(100) default NULL,
  NUM_END varchar2(5) default NULL,
  CEP varchar2(10) default NULL,
  CIDADE varchar2(50),
  ESTADO varchar2(50) default NULL,
  NACIONALIDADE varchar2(100) default NULL,
  NASC data,
  PRI_COMPR varchar2(3) default NULL,
  LIM_CRED number(10)
  )

UPDATE  TB_CLIENTES SET  CPF  = "62365557874",  NOME  = "Holmes Flynn",  ENDERECO  = "Ap Rua 142-7961 Fusce St.",   NUM_END = 823,  CEP  = "65616-086",  CIDADE  = "São Luís",  ESTADO  = "Maranhão",  NACIONALIDADE  = "Belgium",  NASC  = "09/16/1990",  PRI_COMPR  = "Yes",  LIM_CRED  = "1328.19" WHERE  id  = 1;
UPDATE  TB_CLIENTES SET  CPF  = "75762754414",  NOME  = "Fredericka Bailey",  ENDERECO  = "Ap Rua 170-6454 Augue. Rd.",   NUM_END = 485,  CEP  = "88780-791",  CIDADE  = "Itajaí",  ESTADO  = "Santa Catarina",  NACIONALIDADE  = "Singapore",  NASC  = "12/20/1980",  PRI_COMPR  = "No",  LIM_CRED  = "6983.44" WHERE  id  = 2;
UPDATE  TB_CLIENTES SET  CPF  = "66574363143",  NOME  = "Gillian Gutierrez",  ENDERECO  = "789-8459 Arcu. Avenue",   NUM_END = 142,  CEP  = "21910-784",  CIDADE  = "São João de Meriti",  ESTADO  = "Rio de Janeiro",  NACIONALIDADE  = "Nigeria",  NASC  = "03/26/2000",  PRI_COMPR  = "Yes",  LIM_CRED  = "7272.85" WHERE  id  = 3;
UPDATE  TB_CLIENTES SET  CPF  = "33567389889",  NOME  = "Carly Cummings",  ENDERECO  = "948-1476 Turpis Rd.",   NUM_END = 543,  CEP  = "58374-383",  CIDADE  = "Sousa",  ESTADO  = "Paraíba",  NACIONALIDADE  = "Spain",  NASC  = "08/10/1999",  PRI_COMPR  = "Yes",  LIM_CRED  = "5610.53" WHERE  id  = 4;
UPDATE  TB_CLIENTES SET  CPF  = "63789893475",  NOME  = "Byron Holman",  ENDERECO  = "Ap Rua 728-7527 Interdum. Rd.",   NUM_END = 587,  CEP  = "75751-408",  CIDADE  = "Águas Lindas de Goiás",  ESTADO  = "Goiás",  NACIONALIDADE  = "New Zealand",  NASC  = "07/15/2001",  PRI_COMPR  = "Yes",  LIM_CRED  = "4178.73" WHERE  id  = 5;
UPDATE  TB_CLIENTES SET  CPF  = "64323267168",  NOME  = "Meredith Christian",  ENDERECO  = "600-3084 Ante. Av.",   NUM_END = 123,  CEP  = "75778-457",  CIDADE  = "Luziânia",  ESTADO  = "Goiás",  NACIONALIDADE  = "Ukraine",  NASC  = "06/22/2002",  PRI_COMPR  = "No",  LIM_CRED  = "6611.57" WHERE  id  = 6;
UPDATE  TB_CLIENTES SET  CPF  = "48357772279",  NOME  = "Jack Whitfield",  ENDERECO  = "P.O. Box 813, 5963 Ac Street",   NUM_END = 413,  CEP  = "44585-344",  CIDADE  = "Feira de Santana",  ESTADO  = "Bahia",  NACIONALIDADE  = "Canada",  NASC  = "12/29/1993",  PRI_COMPR  = "No",  LIM_CRED  = "9439.52" WHERE  id  = 7;
UPDATE  TB_CLIENTES SET  CPF  = "79796542175",  NOME  = "Isadora Johnson",  ENDERECO  = "Ap Rua 335-8254 Sit St.",   NUM_END = 457,  CEP  = "83105-184",  CIDADE  = "Curitiba",  ESTADO  = "Paraná",  NACIONALIDADE  = "Nigeria",  NASC  = "07/09/1982",  PRI_COMPR  = "No",  LIM_CRED  = "2627.74" WHERE  id  = 8;
UPDATE  TB_CLIENTES SET  CPF  = "47624786353",  NOME  = "Shannon Sparks",  ENDERECO  = "642-3919 Neque Road",   NUM_END = 375,  CEP  = "58941-145",  CIDADE  = "Sousa",  ESTADO  = "Paraíba",  NACIONALIDADE  = "Germany",  NASC  = "07/27/1995",  PRI_COMPR  = "Yes",  LIM_CRED  = "4298.55" WHERE  id  = 9;
UPDATE  TB_CLIENTES SET  CPF  = "66235896762",  NOME  = "May Cooper",  ENDERECO  = "Ap Rua 779-6207 Mauris St.",   NUM_END = 377,  CEP  = "63412-472",  CIDADE  = "Maranguape",  ESTADO  = "Ceará",  NACIONALIDADE  = "Germany",  NASC  = "12/22/1995",  PRI_COMPR  = "Yes",  LIM_CRED  = "6871.32" WHERE  id  = 10;
UPDATE  TB_CLIENTES SET  CPF  = "53138841668",  NOME  = "Gary Casey",  ENDERECO  = "Ap Rua 474-6928 Nibh Avenue",   NUM_END = 252,  CEP  = "65769-457",  CIDADE  = "Santa Inês",  ESTADO  = "Maranhão",  NACIONALIDADE  = "Belgium",  NASC  = "11/15/1994",  PRI_COMPR  = "Yes",  LIM_CRED  = "9045.71" WHERE  id  = 11;
UPDATE  TB_CLIENTES SET  CPF  = "82596258742",  NOME  = "Brent Whitfield",  ENDERECO  = "880-1270 Volutpat. St.",   NUM_END = 573,  CEP  = "88113-813",  CIDADE  = "Joinville",  ESTADO  = "Santa Catarina",  NACIONALIDADE  = "Colombia",  NASC  = "12/08/1982",  PRI_COMPR  = "Yes",  LIM_CRED  = "7741.56" WHERE  id  = 12;
UPDATE  TB_CLIENTES SET  CPF  = "87254489243",  NOME  = "Cain Larsen",  ENDERECO  = "Ap Rua 653-1290 Amet Street",   NUM_END = 215,  CEP  = "60633-273",  CIDADE  = "Itapipoca",  ESTADO  = "Ceará",  NACIONALIDADE  = "Chile",  NASC  = "07/02/1984",  PRI_COMPR  = "Yes",  LIM_CRED  = "5117.43" WHERE  id  = 13;
UPDATE  TB_CLIENTES SET  CPF  = "67139154745",  NOME  = "Nathaniel Bean",  ENDERECO  = "Ap Rua 228-424 Lectus Rd.",   NUM_END = 685,  CEP  = "75724-631",  CIDADE  = "Aparecida de Goiânia",  ESTADO  = "Goiás",  NACIONALIDADE  = "Italy",  NASC  = "03/29/1981",  PRI_COMPR  = "Yes",  LIM_CRED  = "6255.32" WHERE  id  = 14;
UPDATE  TB_CLIENTES SET  CPF  = "81343946737",  NOME  = "Breanna Franklin",  ENDERECO  = "Ap Rua 617-2465 Arcu Av.",   NUM_END = 927,  CEP  = "88354-528",  CIDADE  = "Joinville",  ESTADO  = "Santa Catarina",  NACIONALIDADE  = "Peru",  NASC  = "03/19/1986",  PRI_COMPR  = "No",  LIM_CRED  = "5365.63" WHERE  id  = 15;
UPDATE  TB_CLIENTES SET  CPF  = "68755553864",  NOME  = "Suki Hernandez",  ENDERECO  = "P.O. Box 248, 2518 Aliquam Avenue",   NUM_END = 14,  CEP  = "97313-866",  CIDADE  = "Santa Maria",  ESTADO  = "Rio Grande do Sul",  NACIONALIDADE  = "Colombia",  NASC  = "10/27/1989",  PRI_COMPR  = "Yes",  LIM_CRED  = "5256.92" WHERE  id  = 16;
UPDATE  TB_CLIENTES SET  CPF  = "77473424613",  NOME  = "Joseph Dorsey",  ENDERECO  = "406-1756 At, Street",   NUM_END = 190,  CEP  = "37386259",  CIDADE  = "Uberaba",  ESTADO  = "Minas Gerais",  NACIONALIDADE  = "Mexico",  NASC  = "09/10/1987",  PRI_COMPR  = "Yes",  LIM_CRED  = "2352.55" WHERE  id  = 17;
UPDATE  TB_CLIENTES SET  CPF  = "83447762344",  NOME  = "Forrest Decker",  ENDERECO  = "757-5083 Nisi Avenue",   NUM_END = 432,  CEP  = "76790-451",  CIDADE  = "Goiânia",  ESTADO  = "Goiás",  NACIONALIDADE  = "South Korea",  NASC  = "04/01/1998",  PRI_COMPR  = "No",  LIM_CRED  = "5877.84" WHERE  id  = 18;
UPDATE  TB_CLIENTES SET  CPF  = "49828417424",  NOME  = "Patrick Chambers",  ENDERECO  = "P.O. Box 908, 1987 Ipsum Rd.",   NUM_END = 213,  CEP  = "68481-314",  CIDADE  = "Ananindeua",  ESTADO  = "Pará",  NACIONALIDADE  = "Colombia",  NASC  = "03/29/1991",  PRI_COMPR  = "Yes",  LIM_CRED  = "7718.49" WHERE  id  = 19;
UPDATE  TB_CLIENTES SET  CPF  = "68852258828",  NOME  = "Pandora Munoz",  ENDERECO  = "Ap Rua 633-718 Nec, St.",   NUM_END = 117,  CEP  = "45256-519",  CIDADE  = "Lauro de Freitas",  ESTADO  = "Bahia",  NACIONALIDADE  = "Mexico",  NASC  = "06/07/1988",  PRI_COMPR  = "Yes",  LIM_CRED  = "7437.76" WHERE  id  = 20;

CREATE TABLE TB_VENDEDORES (
MATRICULA number(5,0) ,
NOME VARCHAR2 (100),
DATA_ADMISSAO DATE,
PERCEN_COMIS NUMBER (2)

)

CREATE TABLE TB_CLIENTES(
CPF VARCHAR2(11),
NOME VARCHAR2(100),
ENDERECO VARCHAR2 (120),
NUM_END VARCHAR2 (6),
CEP NUMBER (8),
CIDADE VARCHAR2 (15),
ESTADO VARCHAR2 (15),
NACIONALIDADE varchar2(100) default NULL,
DAT_NASC DATE,
PRIM_COMPRA NUMBER(1),
LIM_CRED NUMBER (15,2)

)

/*-------------------------*/
ALTER TABLE TB_VENDEDORES

MODIFY COLUMN PERCEN_COMIS NUMBER (0.2);

DROP TABLE TB_CLIENTES;
SELECT * FROM TB_PRODUTOS ;

DELETE FROM TB_PRODUTOS

WHERE

PRODUTO = '1856';

/*--------------------------*/
SELECT
    matricula,
    nome,
    data_admissao,
    percen_comis
FROM
    tb_vendedores;
     
    DELETE FROM TB_VENDEDORES WHERE MATRICULA = 934

