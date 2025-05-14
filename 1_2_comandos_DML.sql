-- Resposta do Comando SQL item a)

    --Sequence
    CREATE SEQUENCE SQ_MC_DEPTO
    START WITH 1 
    INCREMENT BY 1;  
    
        --TRIGGERS
        
CREATE OR REPLACE TRIGGER depto_trigger        
BEFORE INSERT ON mc_depto
FOR EACH ROW
BEGIN
    :NEW.CD_depto := SQ_MC_DEPTO.NEXTVAL;
END;

/

INSERT INTO mc_depto (NM_DEPTO, ST_DEPTO) 
    VALUES ('COMERCIAL', 'A');

INSERT INTO mc_depto (NM_DEPTO, ST_DEPTO) 
    VALUES ('FINANCEIRO', 'A');

INSERT INTO mc_depto (NM_DEPTO, ST_DEPTO) 
    VALUES ('SAC', 'A');

-- Resposta do Comando SQL item b)

    --Sequence
    CREATE SEQUENCE SQ_MC_FUNCIONARIO 
    START WITH 1 
    INCREMENT BY 1 ;
     
        --TRIGGERS
        
CREATE OR REPLACE TRIGGER funcionario_trigger        
BEFORE INSERT ON mc_funcionario
FOR EACH ROW
BEGIN
    :NEW.CD_funcionario := SQ_MC_FUNCIONARIO.NEXTVAL;
END;

/

--Departamento comercial
INSERT INTO mc_funcionario (nm_funcionario, cd_depto, ds_cargo, vl_salario, dt_nascimento, fl_sexo_biologico, ds_email, ST_FUNC, DT_CADASTRAMENTO)
    VALUES ('Leticia Hayla', 1, 'Vendedora', 2350, TO_DATE('02/07/1986','DD/MM/YYYY'), 'm', 'Leticia Hayla@gmail.com',  'A', TO_DATE('05/10/2023','DD/MM/YYYY'));

INSERT INTO mc_funcionario (nm_funcionario, cd_depto, ds_cargo, vl_salario, dt_nascimento, fl_sexo_biologico, ds_email, ST_FUNC, DT_CADASTRAMENTO)
    VALUES ('Alice Silva', 1, 'Analista de Marketing', 5700,  TO_DATE('15/05/1990','DD/MM/YYYY'), 'F', 'alice.silva@gmail.com',  'A', TO_DATE('04/01/2024','DD/MM/YYYY'));

INSERT INTO mc_funcionario (nm_funcionario, cd_depto, ds_cargo, vl_salario, dt_nascimento, fl_sexo_biologico, ds_email, ST_FUNC, DT_CADASTRAMENTO)
    VALUES ('Pedro Santos', 1, 'Vendedor', 2350, TO_DATE('20/09/1985','DD/MM/YYYY'), 'M', 'pedro.santos@gmail.com',  'A', TO_DATE('24/08/2022','DD/MM/YYYY'));

--Departamento Financeiro
INSERT INTO mc_funcionario (nm_funcionario, cd_depto, ds_cargo, vl_salario, dt_nascimento, fl_sexo_biologico, ds_email, ST_FUNC, DT_CADASTRAMENTO)
    VALUES ('João Pereira', 2, 'Analista Financeiro Sênior', 4000,  TO_DATE('01/11/1988','DD/MM/YYYY'), 'M', 'joao.pereira@gmail.com',  'A', TO_DATE('04/01/2024','DD/MM/YYYY'));

INSERT INTO mc_funcionario (nm_funcionario, cd_depto, ds_cargo, vl_salario, dt_nascimento, fl_sexo_biologico, ds_email, ST_FUNC, DT_CADASTRAMENTO)
    VALUES ('Mariana Oliveira', 2, 'Controller Financeiro', 6500, TO_DATE('12/10/1982','DD/MM/YYYY'), 'F', 'mariana.oliveira@gmail.com', 'A', TO_DATE('10/06/2023','DD/MM/YYYY'));

INSERT INTO mc_funcionario (nm_funcionario, cd_depto, ds_cargo, vl_salario, dt_nascimento, fl_sexo_biologico, ds_email, ST_FUNC, DT_CADASTRAMENTO)
    VALUES ('Carla Costa', 2, 'Auditor Financeiro', 7000, TO_DATE('07/08/1995','DD/MM/YYYY'), 'F', 'carla.costa@gmail.com',  'A', TO_DATE('05/08/2021','DD/MM/YYYY'));

-- Resposta do Comando SQL item c)

--ESTADO

INSERT INTO Mc_estado (sg_estado, nm_estado)
    VALUES ('RJ', 'Rio De Janeiro');

INSERT INTO Mc_estado (sg_estado, nm_estado)
    VALUES ('SP', 'São Paulo');

--CIDADE
    --Sequence
    CREATE SEQUENCE SQ_MC_CIDADE 
    START WITH 1 
    INCREMENT BY 1;  
    
        --TRIGGERS
        
CREATE OR REPLACE TRIGGER cidade_trigger        
 BEFORE INSERT ON mc_cidade
FOR EACH ROW
BEGIN
    :NEW.CD_cidade := SQ_MC_CIDADE.NEXTVAL;
END;

/

INSERT INTO Mc_cidade (sg_estado,nm_cidade,nr_ddd)
    VALUES ('RJ', 'Mesquita', '021');

INSERT INTO Mc_cidade (sg_estado,nm_cidade,nr_ddd)
    VALUES ('RJ', 'São João De Meriti', '021');

INSERT INTO Mc_cidade (sg_estado,nm_cidade,nr_ddd)
    VALUES ('SP', 'Barueri', '011');

INSERT INTO Mc_cidade (sg_estado,nm_cidade,nr_ddd)
    VALUES ('SP', 'Cotia', '011');

--BAIRRO

    CREATE SEQUENCE SQ_MC_BAIRRO 
    START WITH 1 
    INCREMENT BY 1;  
    
        --TRIGGERS
        
CREATE OR REPLACE TRIGGER bairro_trigger        
BEFORE INSERT ON mc_bairro
FOR EACH ROW
BEGIN
    :NEW.CD_bairro := SQ_MC_BAIRRO.NEXTVAL;
END;

/

INSERT INTO Mc_bairro (cd_cidade,nm_bairro,nm_zona_bairro)
    VALUES ( '1', 'Vila Emil', 'Zona leste');

INSERT INTO Mc_bairro (cd_cidade,nm_bairro,nm_zona_bairro)
    VALUES ( '2', 'Vilar dos Teles', 'Zona Norte');

INSERT INTO Mc_bairro (cd_cidade,nm_bairro,nm_zona_bairro)
    VALUES ( '2', 'Jardim Alegria', 'Zona Leste');

INSERT INTO Mc_bairro (cd_cidade,nm_bairro,nm_zona_bairro)
    VALUES ( '3', 'Granja Viana', 'Zona Leste');

INSERT INTO Mc_bairro (cd_cidade,nm_bairro,nm_zona_bairro)
    VALUES ( '4', 'Alphaville Industrial', 'Zona Norte');

--LOGRADOURO
    CREATE SEQUENCE SQ_MC_LOGRADOURO 
    START WITH 1 
    INCREMENT BY 1;  
    
        --TRIGGERS
        
CREATE OR REPLACE TRIGGER logradouro_trigger        
BEFORE INSERT ON mc_logradouro
FOR EACH ROW
BEGIN
    :NEW.CD_logradouro := SQ_MC_LOGRADOURO.NEXTVAL;
END;
/

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '1','Avenida da Eternidade', '26580205');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '1','Avenida Dona Flaviana', '26580200');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '3','Alameda Delta', '25571030');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '2','Avenida Alagoas', '25555780');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '4','Alameda Alemanha', '06474240');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '4','Alameda Amazonas', '06454070');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '3','Alameda Bristol', '06709710');

INSERT INTO Mc_logradouro (cd_bairro,nm_logradouro,nr_cep)
    VALUES ( '3','Alameda das Araucárias', '06707210');

-- Resposta do Comando SQL item d)
INSERT INTO Mc_end_func (cd_funcionario, cd_logradouro, nr_end, Dt_inicio, st_end)
    VALUES ( '1','2', '210', TO_DATE('05/10/2023', 'DD/MM/YYYY'),'A');

INSERT INTO Mc_end_func (cd_funcionario, cd_logradouro, nr_end, Dt_inicio, st_end)
    VALUES( '4','7', '181', TO_DATE('04/01/2024', 'DD/MM/YYYY'),'A');

INSERT INTO Mc_end_func (cd_funcionario, cd_logradouro, nr_end, Dt_inicio, st_end)
    VALUES( '6','3', '954', TO_DATE('05/08/2021', 'DD/MM/YYYY'),'A');

-- Resposta do Comando SQL item e)
SELECT * FROM mc_cli_fisica;

CREATE SEQUENCE SQ_MC_CLIENTE
    START WITH 1
    INCREMENT BY 1;
    
ALTER TABLE mc_cliente
    MODIFY nr_cliente DEFAULT sq_mc_cliente.nextval;

ALTER TABLE mc_cli_fisica
    MODIFY nr_cliente DEFAULT sq_mc_cliente.nextval;

ALTER TABLE mc_cli_juridica
    MODIFY nr_cliente DEFAULT sq_mc_cliente.nextval;

/

-- Inserção de Cliente
INSERT INTO Mc_cliente (nm_cliente,qt_estrelas,vl_medio_compra,st_cliente,ds_email,nr_telefone,nm_login,ds_senha)
    VALUES ('João da Silva', '4', '100', 'A', 'joaosilva542@gmail.com', '11976665109', 'joaosilva', '4QInXhlTIB');

-- Inserção de cliente PF
INSERT INTO Mc_cli_fisica (nr_cliente, Dt_nascimento,fl_sexo_biologico,nr_cpf)
    VALUES ((SELECT MAX(nr_cliente) FROM mc_cliente), TO_DATE('20/05/1990', 'DD/MM/YYYY'), 'M', '55065134707');

-- Inserção de Cliente
INSERT INTO Mc_cliente (nm_cliente,qt_estrelas,vl_medio_compra,st_cliente,ds_email,nr_telefone,nm_login,ds_senha)
    VALUES ('Maria Souza', '3', '80', 'A', 'mariasouza12@gmail.com', '219953060411', 'mariasouza', 'YOrlKUoG0A');

-- Inserção de cliente PF
INSERT INTO Mc_cli_fisica (nr_cliente, Dt_nascimento,fl_sexo_biologico,nr_cpf)
    VALUES ((SELECT MAX(nr_cliente) FROM mc_cliente), TO_DATE('10/12/1985', 'DD/MM/YYYY'), 'F', '72161184563');

-- Inserção de Cliente
INSERT INTO Mc_cliente (nm_cliente,qt_estrelas,vl_medio_compra,st_cliente,ds_email,nr_telefone,nm_login,ds_senha)
    VALUES ('Empresa ABC Ltda', '5', '500', 'A', 'contato@empresaabc.com', '987654321', 'empresaabc', 'ex6pJfO2kQ');

-- Inserção de cliente PJ
INSERT INTO Mc_cli_juridica (nr_cliente, dt_fundacao, nr_cnpj, nr_inscr_est)
    VALUES ((SELECT MAX(nr_cliente) FROM mc_cliente), TO_DATE('19/06/2002', 'DD/MM/YYYY'), '12345678901234', '9876543210987');

-- Resposta do Comando SQL item f)
INSERT INTO Mc_cliente (nm_cliente, qt_estrelas, vl_medio_compra, st_cliente, ds_email, nr_telefone, nm_login, ds_senha)
    VALUES ('João Oliveira Silva', 2, 324.00, 'A', 'joaoolisilva@gmail.com', '11976422584', 'joaosilva', '45yhtwzJwR');
    
-- Resposta do Comando SQL item g) 
-- Inserindo as categorias na tabela de categorias de produtos
    -- Sequence
CREATE SEQUENCE sq_mc_categoria_prod
    START WITH 1
    INCREMENT BY 1;

        --TRIGGERS
CREATE OR REPLACE TRIGGER categoria_trigger      
BEFORE INSERT ON mc_categoria_prod
FOR EACH ROW
BEGIN
    :NEW.CD_categoria := sq_mc_categoria_prod.NEXTVAL;
END;
/

INSERT INTO mc_categoria_prod (tp_categoria, ds_categoria, dt_inicio, st_categoria)
    VALUES ('P', 'Produtos de esporte e lazer', TO_DATE('04/03/2023','DD/MM/YYYY'), 'A');

INSERT INTO mc_categoria_prod (tp_categoria, ds_categoria, dt_inicio, st_categoria)
    VALUES ('P', 'Itens para seu pet', TO_DATE('09/06/2022','DD/MM/YYYY'), 'A');

INSERT INTO mc_categoria_prod (tp_categoria, ds_categoria, dt_inicio, st_categoria)
    VALUES ('P', 'Produtos eletrônicos', TO_DATE('06/05/2023','DD/MM/YYYY'), 'A');

-- Resposta do Comando SQL item h)
CREATE SEQUENCE SQ_MC_PRODUTO
    START WITH 1 
    INCREMENT BY 1;
     
        --TRIGGERS
        
CREATE OR REPLACE TRIGGER produto_trigger      
BEFORE INSERT ON mc_produto
FOR EACH ROW
BEGIN
    :NEW.CD_produto := SQ_MC_PRODUTO.NEXTVAL;
END;
/

-- Inserção dos produtos
INSERT INTO mc_produto (cd_produto, cd_categoria, nr_cd_barras_prod, ds_produto, vl_unitario, tp_embalagem, st_produto, vl_perc_lucro, ds_completa_prod) 
    VALUES((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), '1234567890123', 'Bola de Futebol', 29.99, 'Unidade', 'A', 5.00, 'Bola oficial de futebol tamanho 5');

INSERT INTO mc_produto (cd_produto, cd_categoria, nr_cd_barras_prod, ds_produto, vl_unitario, tp_embalagem, st_produto, vl_perc_lucro, ds_completa_prod) 
    VALUES((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), '9876543210987', 'Raquete de Tênis', 99.99, 'Unidade', 'A', 8.00, 'Raquete profissional de tênis');

INSERT INTO mc_produto (cd_produto, cd_categoria, nr_cd_barras_prod, ds_produto, vl_unitario, tp_embalagem, st_produto, vl_perc_lucro, ds_completa_prod) 
    VALUES((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), '0123456789012', 'Smartphone', 899.99, 'Unidade', 'A', 10.00, 'Smartphone de última geração');

INSERT INTO mc_produto (cd_produto, cd_categoria, nr_cd_barras_prod, ds_produto, vl_unitario, tp_embalagem, st_produto, vl_perc_lucro, ds_completa_prod) 
    VALUES((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), '5432109876543', 'Fone de Ouvido Bluetooth', 49.99, 'Unidade', 'A', 5.00, 'Fone de ouvido sem fio');

INSERT INTO mc_produto (cd_produto, cd_categoria, nr_cd_barras_prod, ds_produto, vl_unitario, tp_embalagem, st_produto, vl_perc_lucro, ds_completa_prod) 
    VALUES((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), '6789054321098', 'Ração para Cães', 39.99, 'Pacote', 'A', 0.00, 'Ração balanceada para cães adultos');

SELECT * FROM MC_PRODUTO;

-- Resposta do Comando SQL item i)
-- Inserindo as categorias na tabela de videos de produtos
    -- Sequence
CREATE SEQUENCE sq_mc_produto_video
    START WITH 1
    INCREMENT BY 1;

        --TRIGGERS
CREATE OR REPLACE TRIGGER tipo_video_trigger      
BEFORE INSERT ON mc_sgv_produto_video
FOR EACH ROW
BEGIN
    :NEW.CD_categoria := sq_mc_categoria_prod.NEXTVAL;
END;
/

INSERT INTO mc_sgv_produto_video (cd_produto, nr_sequencia, cd_categoria, tp_video_prod, ds_path_video_prod, st_video_prod)
    VALUES ((SELECT MAX(cd_produto) FROM mc_produto), sq_mc_produto_video.NEXTVAL, (SELECT MAX(cd_categoria) FROM mc_categoria_prod), 'Instalacao', 'path_video.mp4', 'A');

INSERT INTO mc_sgv_produto_video (cd_produto, nr_sequencia, cd_categoria, tp_video_prod, ds_path_video_prod, st_video_prod)
    VALUES ((SELECT MAX(cd_produto) FROM mc_produto), sq_mc_produto_video.NEXTVAL, (SELECT MAX(cd_categoria) FROM mc_categoria_prod), 'Uso diario', 'path_video.mp4', 'A');

SELECT * FROM MC_PRODUTO;

SELECT * FROM MC_CATEGORIA_PROD;
-- Resposta do Comando SQL item j)
    --Sequence
    CREATE SEQUENCE SQ_MC_SGV_VIDEO
    START WITH 1
    INCREMENT BY 1;

        --TRIGGERS
        
CREATE OR REPLACE TRIGGER sgv_video_nr_sequencia_trigger
BEFORE INSERT ON MC_SGV_PRODUTO_VIDEO
FOR EACH ROW
BEGIN
    :NEW.NR_SEQUENCIA := SQ_MC_SGV_VIDEO.NEXTVAL;
END;
/

-- Inserindo as novas categorias
INSERT INTO MC_SGV_PRODUTO_VIDEO (cd_produto, cd_categoria, tp_video_prod, ds_path_video_prod, st_video_prod)
    VALUES ((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), 'Instalacao', 'path_video1.mp4', 'A');

INSERT INTO MC_SGV_PRODUTO_VIDEO (cd_produto, cd_categoria, tp_video_prod, ds_path_video_prod, st_video_prod)
    VALUES ((SELECT MAX(cd_produto) FROM mc_produto), (SELECT MAX(cd_categoria) FROM mc_categoria_prod), 'Uso diario', 'path_video2.mp4', 'A');

SELECT * FROM MC_SGV_PRODUTO_VIDEO;

        --TRIGGERS
        
CREATE OR REPLACE TRIGGER sgv_produto_video_trigger
BEFORE INSERT ON mc_sgv_produto_video
FOR EACH ROW
BEGIN
    :NEW.CD_PRODUTO := sq_mc_sgv_video.NEXTVAL;
END;
/

-- Inserindo os dados dos vídeos na tabela MC_SGV_PRODUTO_VIDEO
INSERT INTO MC_SGV_PRODUTO_VIDEO (nr_sequencia, cd_categoria, vd_produto, tp_video_prod, ds_path_video_prod, st_video_prod)
    VALUES (1, (SELECT MAX(cd_categoria) FROM mc_categoria_prod), NULL, 'Tipo1', 'path_video1.mp4', 'A');

INSERT INTO MC_SGV_PRODUTO_VIDEO (nr_sequencia, cd_categoria, vd_produto, tp_video_prod, ds_path_video_prod, st_video_prod)
    VALUES (2, (SELECT MAX(cd_categoria) FROM mc_categoria_prod), NULL, 'Tipo2', 'path_video2.mp4', 'A');

-- Resposta do Comando SQL item k)

-- Resposta do Comando SQL item l)
COMMIT;

-- Resposta do Comando SQL item m)
UPDATE mc_funcionario func SET
    ds_cargo = 'Gerente Comercial',
    vl_salario = func.vl_salario * 1.12
WHERE 
    func.cd_funcionario = 1

-- Resposta do Comando SQL item n)
UPDATE mc_depto dpto SET
    nm_depto = 'SAC'
WHERE
    dpto.nm_depto = 'SAC (SERVIÇO DE ATENDIMENTO AO CLIENTE)'

-- Resposta do Comando SQL item o)
UPDATE mc_cli_fisica cli_fis SET
    dt_nascimento = TO_DATE('18/05/2002', 'DD/MM/YYYY')
WHERE 
    cli_fis.nr_cliente = 1

-- Resposta do Comando SQL item p)
UPDATE mc_funcionario func SET
    st_func = 'I',
    dt_desligamento = TO_DATE(sysdate, 'DD/MM/YYYY')
WHERE 
    func.cd_funcionario = 1 

-- Resposta do Comando SQL item q)
UPDATE mc_end_cli end_cli SET
    st_end = 'I',
    dt_termino = TO_DATE('16/04/2024', 'DD/MM/YYYY')
WHERE 
    end_cli.cd_logradouro_cli = 1
    
-- Resposta do Comando SQL item r)
DELETE FROM mc_estado
    WHERE sg_estado = 'SP';

-- Resposta do Comando SQL item s) 
UPDATE mc_produto SET 
    st_produto = 'X'
WHERE cd_produto = '12345';

-- Resposta do Comando SQL item t) 
COMMIT;