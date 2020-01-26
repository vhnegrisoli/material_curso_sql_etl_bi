--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Março-27-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACABAMENTO
--------------------------------------------------------

  CREATE TABLE "ACABAMENTO" 
   (	"ACABAMENTO_ID" NUMBER(6,0), 
	"PAPEL" VARCHAR2(20 BYTE), 
	"CAPA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ANO
--------------------------------------------------------

  CREATE TABLE "ANO" 
   (	"ANO_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTORES
--------------------------------------------------------

  CREATE TABLE "AUTORES" 
   (	"AUTOR_ID" NUMBER(6,0), 
	"NOME_AUTOR" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "CLIENTE" 
   (	"CPF" NUMBER(11,0), 
	"NOME" VARCHAR2(60 BYTE), 
	"ENDERECO" VARCHAR2(120 BYTE), 
	"EMAIL" VARCHAR2(60 BYTE), 
	"TELEFONE" VARCHAR2(11 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMPRA
--------------------------------------------------------

  CREATE TABLE "COMPRA" 
   (	"COMPRA_ID" NUMBER(6,0), 
	"LIVRO_ID" NUMBER(4,0), 
	"ANO_ID" NUMBER(4,0), 
	"ID_MES" NUMBER(2,0), 
	"VALOR" NUMBER(5,2), 
	"CUSTO" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EDITORA
--------------------------------------------------------

  CREATE TABLE "EDITORA" 
   (	"EDITORA_ID" NUMBER(6,0), 
	"NOME_EDITORA" VARCHAR2(60 BYTE), 
	"PAIS_ID" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEMDACOMPRA
--------------------------------------------------------

  CREATE TABLE "ITEMDACOMPRA" 
   (	"COMPRA_ID" NUMBER(6,0), 
	"CPF" NUMBER(11,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIVRO
--------------------------------------------------------

  CREATE TABLE "LIVRO" 
   (	"LIVRO_ID" NUMBER(4,0), 
	"TITULO" VARCHAR2(120 BYTE), 
	"SITUACAO" VARCHAR2(60 BYTE), 
	"EDITORA_ID" NUMBER(6,0), 
	"AUTOR_ID" NUMBER(6,0), 
	"ACABAMENTO_ID" NUMBER(6,0), 
	"ANOPUB" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MES
--------------------------------------------------------

  CREATE TABLE "MES" 
   (	"ID_MES" NUMBER(2,0), 
	"MES" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PAISEDITORA
--------------------------------------------------------

  CREATE TABLE "PAISEDITORA" 
   (	"PAIS_ID" NUMBER(6,0), 
	"NOME_PAIS" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_AUDIT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_AUDIT"  MINVALUE 1 MAXVALUE 300 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CURSO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_CURSO"  MINVALUE 1 MAXVALUE 10 INCREMENT BY 1 START WITH 9 CACHE 4 ORDER  CYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MATRICULA
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_MATRICULA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into ACABAMENTO
SET DEFINE OFF;
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('1','Papel Pólen','Brochura');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('2','Papel Couché','Brochura');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('3','Papel LWC','Brochura');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('4','Papel Pisa Brite','Brochura');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('5','Papel Pólen','Capa Dura');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('6','Papel Couché','Capa Dura');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('7','Papel LWC','Capa Dura   ');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('8','Papel Pisa Brite','Capa Cartonada');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('9','Papel Coiché','Capa Cartonada');
Insert into ACABAMENTO (ACABAMENTO_ID,PAPEL,CAPA) values ('10','Papel LWC','Capa Cartonada');
REM INSERTING into ANO
SET DEFINE OFF;
Insert into ANO (ANO_ID) values ('2010');
Insert into ANO (ANO_ID) values ('2011');
Insert into ANO (ANO_ID) values ('2012');
Insert into ANO (ANO_ID) values ('2013');
Insert into ANO (ANO_ID) values ('2014');
Insert into ANO (ANO_ID) values ('2015');
Insert into ANO (ANO_ID) values ('2016');
Insert into ANO (ANO_ID) values ('2017');
Insert into ANO (ANO_ID) values ('2018');
REM INSERTING into AUTORES
SET DEFINE OFF;
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('1','John Byrne');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('2','Alan Moore');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('3','Grant Morrison');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('4','Geoff Johns');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('5','Mark Waid');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('6','Paula Pimenta');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('7','Cornelia Funke');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('8','Agatha Christie');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('9','Arthur Conan Doyle');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('10','J. R. R Tolkien');
Insert into AUTORES (AUTOR_ID,NOME_AUTOR) values ('12','J. K. Rowling');
REM INSERTING into CLIENTE
SET DEFINE OFF;
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('36121830018','Kauan Cardoso Fernandes','Rua Josué Meireles','kauanc@gmail.com','6637357074');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('59781833505','Anna Sousa Barbosa','Rua Boa Água','annasb@gmail.com','815107127');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('81553687779','Rodrigo Araujo Ferreira','Rua Josué Meireles','rodrigoaf@gmail.com','43866288431');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('24262676668','Vinícius Goncalves Ribeiro','Rua Josué Meireles','vinigribeiro@gmail.com','43221017857');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('5559121916','Brenda Rodrigues Souza','Rua Josué Meireles','brendarsouza@gmail.com','43068824402');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('94762866016','Gabrielle Oliveira Ferreira','Rua Josué Meireles','gabrielefe@gmail.com','43580861535');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('33147298710','Miguel Costa Correia','Rua Josué Meireles','miguelcorreia@gmail.com','43675643563');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('33539424598','Rafael Carvalho Martins','Rua Josué Meireles','rafaelcarvalho@gmail.com','43115420028');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('11852925272','Sarah Melo Rodrigues','Rua Josué Meireles','sarahrodrigues@gmail.com','43442631370');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('61516549198','Luiz Gomes Melo','Rua Josué Meireles','luizgomesm@gmail.com','43342017454');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('73464371875','Victor Hugo Negrisoli','Rua Josué Meireles','vhnegrisoli@gmail.com','43086356718');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('43496553367','Natália Cristina Martins de Sá','Rua Josué Meireles','nataliasa@gmail.com','43111444132');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('40765290227','Eric Maycon da Conceição Pessoa','Rua Josué Meireles','ericmaycon@gmail.com','43577344132');
Insert into CLIENTE (CPF,NOME,ENDERECO,EMAIL,TELEFONE) values ('72111314897','Rafael Nonino Filho','Rua Josué Meireles','rafinhanonino@gmail.com','43313085427');
REM INSERTING into COMPRA
SET DEFINE OFF;
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('1','1','2017','2','19,9','12,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('2','1','2016','6','19,9','12,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('3','1','2016','7','19,9','12,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('4','1','2016','1','19,9','12,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('5','1','2018','12','19,9','12,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('6','3','2015','3','110','55,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('7','3','2016','5','110','55,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('8','3','2015','4','110','55,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('9','3','2015','12','110','55,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('10','3','2017','10','110','55,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('11','3','2018','11','110','55,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('12','4','2010','1','22,9','6,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('13','4','2012','3','22,9','6,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('14','4','2012','5','22,9','6,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('15','4','2015','10','22,9','6,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('16','6','2017','1','92','68');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('17','6','2017','3','92','68');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('18','6','2018','5','92','68');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('19','6','2018','10','92','68');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('20','8','2018','5','96','55');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('21','8','2016','5','96','55');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('22','8','2015','7','96','55');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('23','8','2015','6','96','55');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('24','9','2013','1','55','16,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('25','9','2014','3','55','16,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('26','9','2015','5','55','16,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('27','9','2013','10','55','16,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('28','11','2017','5','72','23,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('29','11','2017','3','72','23,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('30','11','2018','9','72','23,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('31','12','2017','1','11,9','3,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('32','12','2017','3','11,9','3,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('33','13','2013','1','71,9','30,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('34','13','2013','3','71,9','30,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('35','13','2013','1','71,9','30,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('36','13','2014','3','71,9','30,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('37','15','2013','2','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('38','15','2011','2','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('39','15','2011','4','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('40','15','2015','4','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('41','15','2011','5','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('42','15','2013','6','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('43','16','2013','4','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('44','16','2014','4','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('45','16','2014','8','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('46','16','2015','8','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('47','17','2015','9','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('48','17','2015','10','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('49','17','2016','11','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('50','17','2017','5','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('51','18','2017','5','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('52','18','2017','5','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('53','18','2017','6','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('54','18','2018','7','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('55','18','2018','5','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('56','18','2018','7','39,9','10,5');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('57','23','2017','1','124','56');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('58','23','2018','3','124','56');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('59','23','2018','1','124','56');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('60','24','2010','5','32,5','9,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('61','24','2010','9','32,5','9,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('62','24','2011','11','32,5','9,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('63','25','2012','1','32,5','9,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('64','26','2011','1','39,5','12,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('65','26','2012','3','39,5','12,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('71','18','2017','3','39,5','12,9');
Insert into COMPRA (COMPRA_ID,LIVRO_ID,ANO_ID,ID_MES,VALOR,CUSTO) values ('70','17','2016','3','39,5','12,9');
REM INSERTING into EDITORA
SET DEFINE OFF;
Insert into EDITORA (EDITORA_ID,NOME_EDITORA,PAIS_ID) values ('1','Panini Comics Brasil','1');
Insert into EDITORA (EDITORA_ID,NOME_EDITORA,PAIS_ID) values ('2','DC Comics','2');
Insert into EDITORA (EDITORA_ID,NOME_EDITORA,PAIS_ID) values ('5','Editora Gutenberg','1');
Insert into EDITORA (EDITORA_ID,NOME_EDITORA,PAIS_ID) values ('6','Editora Cia dos Livros','1');
Insert into EDITORA (EDITORA_ID,NOME_EDITORA,PAIS_ID) values ('8','Editora HarperCollins Brasil','1');
Insert into EDITORA (EDITORA_ID,NOME_EDITORA,PAIS_ID) values ('10','Editora Martins Fontes','1');
REM INSERTING into ITEMDACOMPRA
SET DEFINE OFF;
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('1','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('2','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('3','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('4','36121830018');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('5','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('6','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('7','59781833505');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('8','59781833505');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('9','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('10','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('11','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('12','72111314897');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('13','72111314897');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('14','72111314897');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('15','24262676668');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('16','24262676668');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('17','24262676668');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('37','43496553367');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('43','43496553367');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('47','43496553367');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('51','43496553367');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('18','81553687779');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('19','81553687779');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('20','81553687779');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('21','81553687779');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('22','81553687779');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('23','81553687779');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('24','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('25','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('26','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('27','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('28','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('29','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('30','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('31','94762866016');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('31','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('33','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('34','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('35','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('36','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('37','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('38','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('39','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('40','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('41','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('42','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('43','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('44','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('38','33539424598');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('39','33539424598');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('40','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('41','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('42','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('43','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('44','61516549198');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('45','61516549198');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('46','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('47','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('48','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('49','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('50','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('51','61516549198');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('52','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('53','61516549198');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('54','61516549198');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('55','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('56','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('57','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('58','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('59','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('60','33147298710');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('61','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('62','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('63','61516549198');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('64','73464371875');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('65','5559121916');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('70','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('71','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('70','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('71','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('70','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('71','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('71','40765290227');
Insert into ITEMDACOMPRA (COMPRA_ID,CPF) values ('70','40765290227');
REM INSERTING into LIVRO
SET DEFINE OFF;
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('1','O Homem de Aço','Em estoque','1','1','10','2003');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('2','Man of Steel','Indisponível','1','2','10','1991');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('3','Watchmen','Em estoque','1','2','6','2015');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('4','A Piada Mortal','Em estoque','1','2','6','2009');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('6','Multiverso','Em estoque','1','3','6','2017');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('5','Final Crisis','Indisponível','2','3','6','2010');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('7','JLA: New World Order','Indisponível','2','3','10','2015');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('8','Crise Final','Em estoque','1','3','6','2015');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('9','Superman: Origem Secreta','Em estoque','1','4','6','2013');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('10','Crise Infinita','Indisponível','2','4','6','2015');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('11','Liga da Justiça: A Guerra da Trindade','Em Estoque','2','4','10','2017');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('12','DC: Renascimento','Em estoque','1','4','3','2015');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('13','O Reino do Amanhã','Em estoque','1','5','6','2013');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('14','Superman Birthright','Indisponível','2','4','6','2004');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('15','Minha Vida Fora de Série','Em estoque','5','6','1','2011');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('16','Minha Vida Fora de Série 2','Em estoque','5','6','1','2013');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('17','Minha Vida Fora de Série 3','Em estoque','5','6','1','2015');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('18','Minha Vida Fora de Série 4','Em estoque','5','6','1','2017');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('23','Box Sherlock Holmes - 4 Volumes','Em estoque','8','9','6','2017');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('24','O Senhor dos Anéis - A Sociedade do Anel','Em estoque','10','10','1','2000');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('25','O Senhor dos Anéis - As Duas Torres','Em estoque','10','10','1','2000');
Insert into LIVRO (LIVRO_ID,TITULO,SITUACAO,EDITORA_ID,AUTOR_ID,ACABAMENTO_ID,ANOPUB) values ('26','O Senhor dos Anéis - O Retorno do Rei','Em estoque','10','10','1','2000');
REM INSERTING into MES
SET DEFINE OFF;
Insert into MES (ID_MES,MES) values ('1','Janeiro');
Insert into MES (ID_MES,MES) values ('2','Fevereiro');
Insert into MES (ID_MES,MES) values ('3','Março');
Insert into MES (ID_MES,MES) values ('4','Abril');
Insert into MES (ID_MES,MES) values ('5','Maio');
Insert into MES (ID_MES,MES) values ('6','Junho');
Insert into MES (ID_MES,MES) values ('7','Julho');
Insert into MES (ID_MES,MES) values ('8','Agosto');
Insert into MES (ID_MES,MES) values ('9','Setembro');
Insert into MES (ID_MES,MES) values ('10','Outubro');
Insert into MES (ID_MES,MES) values ('11','Novembro');
Insert into MES (ID_MES,MES) values ('12','Dezembro');
REM INSERTING into PAISEDITORA
SET DEFINE OFF;
Insert into PAISEDITORA (PAIS_ID,NOME_PAIS) values ('1','Brasil');
Insert into PAISEDITORA (PAIS_ID,NOME_PAIS) values ('2','Estados Unidos da América');
Insert into PAISEDITORA (PAIS_ID,NOME_PAIS) values ('3','Alemanha');
Insert into PAISEDITORA (PAIS_ID,NOME_PAIS) values ('4','Itália');
--------------------------------------------------------
--  DDL for Index ACABAMENTO_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ACABAMENTO_ID" ON "ACABAMENTO" ("ACABAMENTO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011773
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011773" ON "ANO" ("ANO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTOR_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "AUTOR_ID" ON "AUTORES" ("AUTOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CPF
--------------------------------------------------------

  CREATE UNIQUE INDEX "CPF" ON "CLIENTE" ("CPF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMPRA_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMPRA_ID" ON "COMPRA" ("COMPRA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EDITORA_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "EDITORA_ID" ON "EDITORA" ("EDITORA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LIVRO_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "LIVRO_ID" ON "LIVRO" ("LIVRO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011774
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011774" ON "MES" ("ID_MES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PAIS_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAIS_ID" ON "PAISEDITORA" ("PAIS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;
--------------------------------------------------------
--  Constraints for Table ACABAMENTO
--------------------------------------------------------

  ALTER TABLE "ACABAMENTO" ADD CONSTRAINT "ACABAMENTO_ID" PRIMARY KEY ("ACABAMENTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ANO
--------------------------------------------------------

  ALTER TABLE "ANO" ADD PRIMARY KEY ("ANO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTORES
--------------------------------------------------------

  ALTER TABLE "AUTORES" ADD CONSTRAINT "AUTOR_ID" PRIMARY KEY ("AUTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "CLIENTE" ADD CONSTRAINT "CPF" PRIMARY KEY ("CPF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPRA
--------------------------------------------------------

  ALTER TABLE "COMPRA" ADD CONSTRAINT "COMPRA_ID" PRIMARY KEY ("COMPRA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EDITORA
--------------------------------------------------------

  ALTER TABLE "EDITORA" ADD CONSTRAINT "EDITORA_ID" PRIMARY KEY ("EDITORA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LIVRO
--------------------------------------------------------

  ALTER TABLE "LIVRO" ADD CONSTRAINT "LIVRO_ID" PRIMARY KEY ("LIVRO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LIVRO" MODIFY ("ANOPUB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MES
--------------------------------------------------------

  ALTER TABLE "MES" ADD PRIMARY KEY ("ID_MES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAISEDITORA
--------------------------------------------------------

  ALTER TABLE "PAISEDITORA" ADD CONSTRAINT "PAIS_ID" PRIMARY KEY ("PAIS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPRA
--------------------------------------------------------

  ALTER TABLE "COMPRA" ADD FOREIGN KEY ("LIVRO_ID")
	  REFERENCES "LIVRO" ("LIVRO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EDITORA
--------------------------------------------------------

  ALTER TABLE "EDITORA" ADD FOREIGN KEY ("PAIS_ID")
	  REFERENCES "PAISEDITORA" ("PAIS_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMDACOMPRA
--------------------------------------------------------

  ALTER TABLE "ITEMDACOMPRA" ADD FOREIGN KEY ("COMPRA_ID")
	  REFERENCES "COMPRA" ("COMPRA_ID") ENABLE;
  ALTER TABLE "ITEMDACOMPRA" ADD FOREIGN KEY ("CPF")
	  REFERENCES "CLIENTE" ("CPF") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVRO
--------------------------------------------------------

  ALTER TABLE "LIVRO" ADD FOREIGN KEY ("EDITORA_ID")
	  REFERENCES "EDITORA" ("EDITORA_ID") ENABLE;
  ALTER TABLE "LIVRO" ADD FOREIGN KEY ("AUTOR_ID")
	  REFERENCES "AUTORES" ("AUTOR_ID") ENABLE;
  ALTER TABLE "LIVRO" ADD FOREIGN KEY ("ACABAMENTO_ID")
	  REFERENCES "ACABAMENTO" ("ACABAMENTO_ID") ENABLE;
