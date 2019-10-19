/* logico_atualizadov5: */

CREATE SEQUENCE PESSOAS START 1 INCREMENT 1;
CREATE SEQUENCE AVALIACOES START 1 INCREMENT 1;
CREATE SEQUENCE DOACOES START 1 INCREMENT 1;
CREATE SEQUENCE NECESSIDADES START 1 INCREMENT 1;
CREATE SEQUENCE CATEGORIAS START 1 INCREMENT 1;
CREATE SEQUENCE NEC_CATEGORIAS START 1 INCREMENT 1;
CREATE SEQUENCE STATUS_MENSAGENS START 1 INCREMENT 1;
CREATE SEQUENCE STATUS_NEC_MENSAGENS START 1 INCREMENT 1;
CREATE SEQUENCE STATUS_REQUISICOES 1 INCREMENT 1;
CREATE SEQUENCE STATUS_NEC_REQUISICOES START 1 INCREMENT 1;
CREATE SEQUENCE FOTOS START 1 INCREMENT 1;
CREATE SEQUENCE FOTOS_NECESSIDADE START 1 INCREMENT 1;
CREATE SEQUENCE ESTADOS_ITEM START 1 INCREMENT 1;
CREATE SEQUENCE AVALIACOES START 1 INCREMENT 1;
CREATE SEQUENCE ONGS START 1 INCREMENT 1;
CREATE SEQUENCE MENSAGENS START 1 INCREMENT 1;
CREATE SEQUENCE NEC_MENSAGENS START 1 INCREMENT 1;

CREATE TABLE pessoa (
    CPF BIGINT UNIQUE,
    nome VARCHAR(255),
    ID_pessoa INTEGER PRIMARY KEY,
    num_celular INTEGER,
    email VARCHAR(255),
    data_nascimento DATE,
    saldo INTEGER
);

CREATE TABLE avaliacao_usuario (
    ID_avaliacao INTEGER PRIMARY KEY,
    nota INTEGER,
    comentario VARCHAR(1000),
    fk_pessoa_ID_pessoa INTEGER,
    fk_pessoa_ID_pessoa_ INTEGER
);

CREATE TABLE item_doacao (
    titulo VARCHAR(255),
    latitude DECIMAL(50),
    ID_doacao INTEGER PRIMARY KEY,
    descricao VARCHAR(1000),
    longitude DECIMAL(50),
    bairro VARCHAR(255),
    estado VARCHAR(255),
    cidade VARCHAR(255),
    rua VARCHAR(255),
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
    nome VARCHAR(50),
    valor_medio INTEGER
);

CREATE TABLE foto (
    ID_foto INTEGER PRIMARY KEY,
    caminho VARCHAR(500),
    fk_item_doacao_ID_doacao INTEGER
);

CREATE TABLE estado_item (
    ID_estado INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE status_requisicao (
    ID_status INTEGERL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE mensagem_requisicao (
    ID_mensagem INTEGER PRIMARY KEY,
    conteudo VARCHAR(1000),
    data1 DATE,
    hora TIME,
    fk_status_mensagem_ID_mensagem_status INTEGER
);

CREATE TABLE status_mensagem (
    ID_mensagem_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE ONG (
    cnpj BIGINT UNIQUE,
    num_contato INTEGER,
    email VARCHAR(55),
    latitude DECIMAL(50),
    nome VARCHAR(255),
    ID_ong INTEGER PRIMARY KEY,
    longitude DECIMAL(50),
    rua VARCHAR(255),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    estado VARCHAR(255)
);

CREATE TABLE necessidade (
    descricao VARCHAR(1000),
    ID_necessidade INTEGER PRIMARY KEY,
    titulo VARCHAR(255),
    valor INTEGER,
    rua VARCHAR(255),
    cidade VARCHAR(255),
    bairro VARCHAR(255),
    latitude DECIMAL(50),
    longitude DECIMAL(50),
    fk_categoria_necessidade_ID_categoria INTEGER
);

CREATE TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade (
    fk_status_req_necessidade_ID_mensagem_statusINTEGER,
    fk_pessoa_ID_pessoa INTEGER,
    fk_ONG_ID_ong INTEGER,
    fk_necessidade_ID_necessidade INTEGER
);

CREATE TABLE mensagem_necessidade (
    ID_mensagem INTEGER PRIMARY KEY,
    conteudo VARCHAR(1000),
    data1 DATE,
    hora TIME,
    fk_status_mensagem_nec_ID_status INTEGER
);

CREATE TABLE status_req_necessidade (
    ID_mensagem_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE foto_necessidade (
    ID_foto INTEGER PRIMARY KEY,
    caminho VARCHAR(500),
    fk_necessidade_ID_necessidade INTEGER
);

CREATE TABLE status_mensagem_nec (
    ID_status INTEGER PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE categoria_necessidade (
    ID_categoria INTEGER PRIMARY KEY, 
    nome VARCHAR(55),
    valor_medio INTEGER
);

CREATE TABLE expoe_pessoa_necessidade_ONG (
    fk_pessoa_ID_pessoa INTEGER,
    fk_necessidade_ID_necessidade INTEGER,
    fk_ONG_ID_ong INTEGER
);
 
ALTER TABLE avaliacao_usuario ADD CONSTRAINT FK_avaliacao_usuario_2
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa);

ALTER TABLE avaliacao_usuario ADD CONSTRAINT FK_avaliacao_usuario_3
    FOREIGN KEY (fk_pessoa_ID_pessoa_)
    REFERENCES pessoa (ID_pessoa);
 
ALTER TABLE item_doacao ADD CONSTRAINT FK_item_doacao_2
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa);
 
ALTER TABLE item_doacao ADD CONSTRAINT FK_item_doacao_3
    FOREIGN KEY (fk_categoria_ID_categoria)
    REFERENCES categoria (ID_categoria);
 
ALTER TABLE item_doacao ADD CONSTRAINT FK_item_doacao_4
    FOREIGN KEY (fk_estado_item_ID_estado)
    REFERENCES estado_item (ID_estado);
 
ALTER TABLE requisita_doacao_requisita ADD CONSTRAINT FK_requisita_doacao_requisita_1
    FOREIGN KEY (fk_status_requisicao_ID_status)
    REFERENCES status_requisicao (ID_status);
 
ALTER TABLE requisita_doacao_requisita ADD CONSTRAINT FK_requisita_doacao_requisita_2
    FOREIGN KEY (fk_pessoa_ID_pessoa)
    REFERENCES pessoa (ID_pessoa);
 
ALTER TABLE requisita_doacao_requisita ADD CONSTRAINT FK_requisita_doacao_requisita_3
    FOREIGN KEY (fk_item_doacao_ID_doacao)
    REFERENCES item_doacao (ID_doacao);
 
ALTER TABLE foto ADD CONSTRAINT FK_foto_2
    FOREIGN KEY (fk_item_doacao_ID_doacao)
    REFERENCES item_doacao (ID_doacao);
 
ALTER TABLE mensagem_requisicao ADD CONSTRAINT FK_mensagem_requisicao_2
    FOREIGN KEY (fk_status_mensagem_ID_mensagem_status)
    REFERENCES status_mensagem (ID_mensagem_status);
 
ALTER TABLE necessidade ADD CONSTRAINT FK_necessidade_2
    FOREIGN KEY (fk_categoria_necessidade_ID_categoria)
    REFERENCES categoria_necessidade (ID_categoria);
 
ALTER TABLE requisicao_ajuda_supre_pessoa_ONG_necessidade ADD CONSTRAINT FK_requisicao_ajuda_supre_pessoa_ONG_necessidade_1
    FOREIGN KEY (fk_status_req_necessidade_ID_mensagem_status)
    REFERENCES status_req_necessidade (ID_mensagem_status);
 
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
    REFERENCES status_mensagem_nec (ID_status);
 
ALTER TABLE foto_necessidade ADD CONSTRAINT FK_foto_necessidade_2
    FOREIGN KEY (fk_necessidade_ID_necessidade)
    REFERENCES necessidade (ID_necessidade);
 
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
