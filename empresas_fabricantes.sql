-- Table: public.empresas_fabricantes

-- DROP TABLE IF EXISTS public.empresas_fabricantes;

CREATE TABLE IF NOT EXISTS public.empresas_fabricantes
(
    cnpj character varying(14) COLLATE pg_catalog."default" NOT NULL,
    nome_empresa character varying(255) COLLATE pg_catalog."default" NOT NULL,
    logomarca character varying(100) COLLATE pg_catalog."default" NOT NULL,
    id_fornecedor character varying(14) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT empresas_fabricantes_pkey PRIMARY KEY (cnpj),
    CONSTRAINT fk_fornecedor_cnpj FOREIGN KEY (id_fornecedor)
        REFERENCES public.empresas_fornecedoras (cnpj) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.empresas_fabricantes
    OWNER to postgres;