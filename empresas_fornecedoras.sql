-- Table: public.empresas_fornecedoras

-- DROP TABLE IF EXISTS public.empresas_fornecedoras;

CREATE TABLE IF NOT EXISTS public.empresas_fornecedoras
(
    cnpj character varying(14) COLLATE pg_catalog."default" NOT NULL,
    nome_fornecedor character varying(255) COLLATE pg_catalog."default" NOT NULL,
    cep character varying(8) COLLATE pg_catalog."default" NOT NULL,
    logradouro character varying(255) COLLATE pg_catalog."default" NOT NULL,
    numero character varying(10) COLLATE pg_catalog."default" NOT NULL,
    complemento character varying(255) COLLATE pg_catalog."default" NOT NULL,
    nome_representante character varying(255) COLLATE pg_catalog."default" NOT NULL,
    telefone_representante character varying(14) COLLATE pg_catalog."default" NOT NULL,
    email_representante character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT empresas_fornecedoras_pkey PRIMARY KEY (cnpj)
)

CREATE TABLE IF NOT EXISTS public.fornecendo
(
    id_cliente character varying(11) COLLATE pg_catalog."default" NOT NULL,
    id_fornecedor character varying(14) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT fornecendo_pkey PRIMARY KEY (id_cliente, id_fornecedor),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente)
        REFERENCES public.clientes (cpf) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_id_fornecedor FOREIGN KEY (id_fornecedor)
        REFERENCES public.empresas_fornecedoras (cnpj) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.empresas_fornecedoras
    OWNER to postgres;