-- Table: public.clientes

-- DROP TABLE IF EXISTS public.clientes;

CREATE TABLE IF NOT EXISTS public.clientes
(
    nome_cliente character varying(255) COLLATE pg_catalog."default" NOT NULL,
    id_cliente numeric(20,0) NOT NULL,
    numero_telefone numeric(15,0) NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clientes
    OWNER to postgres;