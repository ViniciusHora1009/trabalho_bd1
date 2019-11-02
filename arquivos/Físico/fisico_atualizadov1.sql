/* logico_atualizadov1: */

CREATE TABLE pessoa (
    ID_pessoa INTEGER PRIMARY KEY,
    CPF BIGINT(11) UNIQUE,
    nome VARCHAR(255),
    data_nascimento DATETIME,
    num_celular BIGINT(11),
    email VARCHAR(255),
    saldo DECIMAL(10)
);

CREATE TABLE avaliacao_usuario (
    ID_avaliacao INTEGER PRIMARY KEY,
    nota INTEGER,
    comentario VARCHAR(1000),
    fk_pessoa_ID_pessoa INTEGER,
    fk_pessoa_ID_pessoa_ INTEGER
);

CREATE TABLE item_doacao (
    ID_doacao INTEGER PRIMARY KEY,
    titulo VARCHAR(255),
    descricao VARCHAR(1000),
    latitude DECIMAL(50),
    longitude DECIMAL(50),
    fk_pessoa_ID_pessoa INTEGER,
    fk_categoria_ID_categoria INTEGER,
    fk_estado_item_ID_estado INTEGER
);

CREATE TABLE requisita_doacao_requisita (
    fk_status_requisicao_ID_status INTEGER,
    fk_pessoa_ID_pessoa INTEGER,
    fk_item_doacao_ID_doacao INTEGER
);

CREATE TABLE categoria (
    ID_categoria INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE foto (
    ID_foto INTEGER PRIMARY KEY,
    nome_arquivo VARCHAR(255),
    fk_item_doacao_ID_doacao INTEGER
);

CREATE TABLE estado_item (
    ID_estado INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE status_requisicao (
    ID_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE mensagem_requisicao (
    ID_mensagem INTEGER PRIMARY KEY,
    conteudo VARCHAR(1000),
    data_horario DATETIME,
    fk_status_mensagem_ID_mensagem_status INTEGER
);

CREATE TABLE status_mensagem (
    ID_mensagem_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE ONG (
    ID_ong INTEGER PRIMARY KEY,
    cnpj BIGINT(10) UNIQUE,
    nome VARCHAR(255),
    num_contato BIGINT(11),
    email VARCHAR(55),
    latitude DECIMAL(50),
    longitude DECIMAL(50)
);

CREATE TABLE necessidade (
    ID_necessidade INTEGER PRIMARY KEY,
    titulo VARCHAR(255),
    descricao VARCHAR(1000),
    valor INTEGER
);

CREATE TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade (
    fk_status_req_necessidade_ID_mensagem_status INTEGER,
    fk_pessoa_ID_pessoa INTEGER,
    fk_ONG_ID_ong INTEGER,
    fk_necessidade_ID_necessidade INTEGER
);

CREATE TABLE mensagem_necessidade (
    ID_mensagem INTEGER PRIMARY KEY,
    conteudo VARCHAR(1000),
    data_horario DATETIME,
    fk_status_mensagem_nec_ID_status INTEGER
);

CREATE TABLE status_req_necessidade (
    ID_mensagem_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE foto_necessidade (
    ID_foto INTEGER PRIMARY KEY,
    nome_arquivo VARCHAR(255),
    fk_necessidade_ID_necessidade INTEGER
);

CREATE TABLE status_mensagem_nec (
    ID_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE expoe_pessoa_necessidade_ONG (
    fk_pessoa_ID_pessoa INTEGER,
    fk_necessidade_ID_necessidade INTEGER,
    fk_ONG_ID_ong INTEGER
);
 
ALTER TABLE avaliacao_usuario ADD CONSTRAINT FK_avaliacao_usuario_2
    FOREIGN KEY (fk_pessoa_ID_pessoa, fk_pessoa_ID_pessoa_)
    REFERENCES pessoa (ID_pessoa, ID_pessoa)
    ON DELETE CASCADE;
 
ALTER TABLE item_doacao ADD CONSTRAINT FK_item_doacao_2
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa)
    ON DELETE CASCADE;
 
ALTER TABLE item_doacao ADD CONSTRAINT FK_item_doacao_3
    FOREIGN KEY (fk_categoria_ID_categoria)
    REFERENCES categoria (ID_categoria)
    ON DELETE CASCADE;
 
ALTER TABLE item_doacao ADD CONSTRAINT FK_item_doacao_4
    FOREIGN KEY (fk_estado_item_ID_estado)
    REFERENCES estado_item (ID_estado)
    ON DELETE CASCADE;
 
ALTER TABLE requisita_doacao_requisita ADD CONSTRAINT FK_requisita_doacao_requisita_1
    FOREIGN KEY (fk_status_requisicao_ID_status)
    REFERENCES status_requisicao (ID_status)
    ON DELETE CASCADE;
 
ALTER TABLE requisita_doacao_requisita ADD CONSTRAINT FK_requisita_doacao_requisita_2
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa);
 
ALTER TABLE requisita_doacao_requisita ADD CONSTRAINT FK_requisita_doacao_requisita_3
    FOREIGN KEY (fk_item_doacao_ID_doacao)
    REFERENCES item_doacao (ID_doacao);
 
ALTER TABLE foto ADD CONSTRAINT FK_foto_2
    FOREIGN KEY (fk_item_doacao_ID_doacao)
    REFERENCES item_doacao (ID_doacao)
    ON DELETE CASCADE;
 
ALTER TABLE mensagem_requisicao ADD CONSTRAINT FK_mensagem_requisicao_2
    FOREIGN KEY (fk_status_mensagem_ID_mensagem_status)
    REFERENCES status_mensagem (ID_mensagem_status)
    ON DELETE CASCADE;
 
ALTER TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade ADD CONSTRAINT FK_requisicao_ajuda_supre_pessoa_ONG_necessidade_1
    FOREIGN KEY (fk_status_req_necessidade_ID_mensagem_status)
    REFERENCES status_req_necessidade (ID_mensagem_status)
    ON DELETE CASCADE;
 
ALTER TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade ADD CONSTRAINT FK_requisicao_ajuda_supre_pessoa_ONG_necessidade_2
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa);
 
ALTER TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade ADD CONSTRAINT FK_requisicao_ajuda_supre_pessoa_ONG_necessidade_3
    FOREIGN KEY (fk_ONG_ID_ong)
    REFERENCES ONG (ID_ong);
 
ALTER TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade ADD CONSTRAINT FK_requisicao_ajuda_supre_pessoa_ONG_necessidade_4
    FOREIGN KEY (fk_necessidade_ID_necessidade)
    REFERENCES necessidade (ID_necessidade);
 
ALTER TABLE mensagem_necessidade ADD CONSTRAINT FK_mensagem_necessidade_2
    FOREIGN KEY (fk_status_mensagem_nec_ID_status)
    REFERENCES status_mensagem_nec (ID_status)
    ON DELETE CASCADE;
 
ALTER TABLE foto_necessidade ADD CONSTRAINT FK_foto_necessidade_2
    FOREIGN KEY (fk_necessidade_ID_necessidade)
    REFERENCES necessidade (ID_necessidade)
    ON DELETE CASCADE;
 
ALTER TABLE expoe_pessoa_necessidade_ONG ADD CONSTRAINT FK_expoe_pessoa_necessidade_ONG_1
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa)
    ON DELETE NO ACTION;
 
ALTER TABLE expoe_pessoa_necessidade_ONG ADD CONSTRAINT FK_expoe_pessoa_necessidade_ONG_2
    FOREIGN KEY (fk_necessidade_ID_necessidade)
    REFERENCES necessidade (ID_necessidade)
    ON DELETE NO ACTION;
 
ALTER TABLE expoe_pessoa_necessidade_ONG ADD CONSTRAINT FK_expoe_pessoa_necessidade_ONG_3
    FOREIGN KEY (fk_ONG_ID_ong)
    REFERENCES ONG (ID_ong)
    ON DELETE SET NULL;