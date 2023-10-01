-- Table: public.produtos_fabricados

-- DROP TABLE IF EXISTS public.produtos_fabricados;

CREATE TABLE IF NOT EXISTS public.produtos_fabricados
(
    sku character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descricao character varying(255) COLLATE pg_catalog."default" NOT NULL,
    preco numeric(255,0) NOT NULL,
    categoria character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_fabricante numeric(50,0) NOT NULL,
    CONSTRAINT produtos_fabricados_pkey PRIMARY KEY (sku)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.produtos_fabricados
    OWNER to postgres;