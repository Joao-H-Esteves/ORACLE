
-- criando um usuario novo com permiss�o ADM


-- comando faz com que possamos editar o script principal
ALTER SESSION SET "_ORACLE_SCRIPT" = true;


--comando para criar o usuario
CREATE USER joaoesteves IDENTIFIED BY 123456 DEFAULT TABLESPACE USERS;
    --      nome do usuario         senha       tamanho padr�o do espa�o do usuario
    

--comando para dar permiss�es ao usuario novo
GRANT connect, resource TO joaoesteves;