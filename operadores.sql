-- Table: public.operadores

-- DROP TABLE IF EXISTS public.operadores;

CREATE TABLE IF NOT EXISTS public.operadores
(
    cod_operador numeric(50,0)[] NOT NULL,
    nome_operador character varying(255) COLLATE pg_catalog."default" NOT NULL,
    lista_para_ligacao character varying(300) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT operadores_pkey PRIMARY KEY (cod_operador)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.operadores
    OWNER to postgres;