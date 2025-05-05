-- Gerado por Oracle SQL Developer Data Modeler 21.1.0.092.1221
--   em:        2025-04-28 21:46:20 BRT
--   site:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE imc (
    data              DATE NOT NULL,
    peso              NUMBER(3) NOT NULL,
    altura            NUMBER(3) NOT NULL,
    analiseimcpessoa  VARCHAR2(20) NOT NULL,
    valorimcpessoa    NUMBER NOT NULL,
    cpf               CHAR(11 BYTE)
);

ALTER TABLE imc ADD CONSTRAINT imc_pk PRIMARY KEY ( data );

CREATE TABLE logseguranca (
    cpf       unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    data      unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    operacao  unknown 
--  ERROR: Datatype UNKNOWN is not allowed 

);

CREATE TABLE usuario (
    cpf          CHAR(11 BYTE) NOT NULL,
    nomeusuario  VARCHAR2(60 CHAR) NOT NULL,
    sexo         unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    sexo         CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( cpf );

ALTER TABLE imc
    ADD CONSTRAINT relation_1 FOREIGN KEY ( cpf )
        REFERENCES usuario ( cpf );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              3
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   4
-- WARNINGS                                 1
