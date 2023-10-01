-- Table: public.empresa_fornecedora

-- DROP TABLE IF EXISTS public.empresa_fornecedora;

CREATE TABLE IF NOT EXISTS public.empresa_fornecedora
(
    cnpj character varying(14) COLLATE pg_catalog."default" NOT NULL,
    nome_fornecedor character varying(255) COLLATE pg_catalog."default" NOT NULL,
    cep numeric(9,0) NOT NULL,
    nome_representante character varying(255) COLLATE pg_catalog."default" NOT NULL,
    telefone_representante character varying(14) COLLATE pg_catalog."default" NOT NULL,
    email_representante character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT empresa_fornecedora_pkey PRIMARY KEY (cnpj)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.empresa_fornecedora
    OWNER to postgres;