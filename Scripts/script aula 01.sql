CREATE TABLE DIMCLIENTE (
    CPF            NUMERIC(11) PRIMARY KEY,
    NOME            VARCHAR2(60)
);

INSERT INTO DIMCLIENTE (CPF, NOME)
SELECT DISTINCT c.CPF, c.NOME FROM CLIENTE c
WHERE EXISTS (SELECT 'x' 
              FROM ITEMDACOMPRA it
              INNER JOIN COMPRA cm ON cm.COMPRA_ID = it.COMPRA_ID
              WHERE it.CPF = c.CPF);

SELECT * FROM DIMCLIENTE;

CREATE TABLE DIMLIVRO (
    LIVRO_ID        NUMERIC(4) PRIMARY KEY,
    TITULO          VARCHAR2(120),
    SITUACAO        VARCHAR2(120),
    NOME_AUTOR      VARCHAR2(120),
    CAPA            VARCHAR(60),
    PAPEL           VARCHAR(60)
);

-- LIVRO l, AUTOR a, ACABAMENTO ac
DESC AUTORES;

INSERT INTO DIMLIVRO (LIVRO_ID, TITULO, SITUACAO, NOME_AUTOR, CAPA, PAPEL)
SELECT DISTINCT 
    l.LIVRO_ID, 
    l.TITULO,
    l.SITUACAO,
    a.NOME_AUTOR,
    ac.CAPA,
    ac.PAPEL
FROM LIVRO l
INNER JOIN AUTORES a ON a.AUTOR_ID = l.AUTOR_ID
INNER JOIN ACABAMENTO ac ON ac.ACABAMENTO_ID = l.ACABAMENTO_ID
ORDER BY l.LIVRO_ID;

CREATE TABLE DIMEDITORA (
    EDITORA_ID      NUMERIC(4) PRIMARY KEY,
    NOME_EDITORA    VARCHAR2(60),
    PAISEDITORA     VARCHAR2(60)
); 
-- EDITORA e, PAISEDITORA p
INSERT INTO DIMEDITORA (EDITORA_ID, NOME_EDITORA, PAISEDITORA)
SELECT DISTINCT 
        e.EDITORA_ID,
        e.NOME_EDITORA,
        p.NOME_PAIS
FROM EDITORA e
INNER JOIN PAISEDITORA p ON e.PAIS_ID = p.PAIS_ID
ORDER BY e.EDITORA_ID;

CREATE TABLE DIMDATA (
    ID_MES      NUMERIC(4) PRIMARY KEY,
    MES         VARCHAR2(14)
);

INSERT INTO DIMDATA (ID_MES, MES)
SELECT m.ID_MES, m.MES
FROM MES m
WHERE EXISTS (SELECT 'x' FROM COMPRA c INNER JOIN MES m ON c.ID_MES = m.ID_MES);

SELECT * FROM DIMCLIENTE;
SELECT * FROM DIMEDITORA;
SELECT * FROM DIMLIVRO;
SELECT * FROM DIMDATA;

DESC DIMCLIENTE;

CREATE TABLE VENDAFATO (
    CPF                 NUMERIC(11),
    LIVRO_ID            NUMERIC(4),
    EDITORA_ID          NUMERIC(4),
    VALOR               NUMERIC(10,2),
    CUSTO               NUMERIC(10,2),
    ID_MES              NUMERIC(4),
    ANO_ID              NUMERIC(4),
    QUANTIDADE          NUMERIC(5),
    MARGEMDELUCRO       NUMERIC(10,2),
    FATURAMENTO         NUMERIC(10,2),
    PERCENTUALDELUCRO   NUMERIC(10,2),
    FOREIGN KEY (CPF)           REFERENCES DIMCLIENTE (CPF),
    FOREIGN KEY (LIVRO_ID)      REFERENCES DIMLIVRO (LIVRO_ID),
    FOREIGN KEY (EDITORA_ID)    REFERENCES DIMEDITORA (EDITORA_ID),
    FOREIGN KEY (ID_MES)        REFERENCES DIMDATA(ID_MES)
);

