-- Table: public.operadores

-- DROP TABLE IF EXISTS public.operadores;

CREATE TABLE IF NOT EXISTS public.operadores
(
    id_operador numeric(10) NOT NULL,
    nome_operador character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT operadores_pkey PRIMARY KEY (id_operador)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.operadores
    OWNER to postgres;