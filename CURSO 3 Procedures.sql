
-- criando um usuario novo com permissão ADM


-- comando faz com que possamos editar o script principal
ALTER SESSION SET "_ORACLE_SCRIPT" = true;


--comando para criar o usuario
CREATE USER joaoesteves IDENTIFIED BY 123456 DEFAULT TABLESPACE USERS;
    --      nome do usuario         senha       tamanho padrão do espaço do usuario
    

--comando para dar permissões ao usuario novo
GRANT connect, resource TO joaoesteves;