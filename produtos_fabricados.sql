-- Table: public.produtos_fabricados

-- DROP TABLE IF EXISTS public.produtos_fabricados;

CREATE TABLE IF NOT EXISTS public.produtos_fabricados
(
    sku character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descricao character varying(255) COLLATE pg_catalog."default" NOT NULL,
    preco numeric(10,3) NOT NULL,
    categoria character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_fabricante character varying(14) NOT NULL,
    CONSTRAINT produtos_fabricados_pkey PRIMARY KEY (sku),
    CONSTRAINT fk_fabricante_cnpj FOREIGN KEY (id_fabricante)
        REFERENCES public.empresas_fabricantes (cnpj) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.produtos_fabricados
    OWNER to postgres;