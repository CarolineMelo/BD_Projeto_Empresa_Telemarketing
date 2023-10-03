-- Table: public.clientes

-- DROP TABLE IF EXISTS public.clientes;

CREATE TABLE IF NOT EXISTS public.clientes
(
    cpf character varying(11) COLLATE pg_catalog."default" NOT NULL,
    nome_cliente character varying(255) COLLATE pg_catalog."default" NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    dia_preferencial_ligacao timestamp NOT NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (cpf)
)

CREATE TABLE IF NOT EXISTS public.clientes_telefones
(
    id_cliente character varying(11) COLLATE pg_catalog."default" NOT NULL,
    numero_telefone character varying(15) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cliente_telefone PRIMARY KEY (id_cliente, numero_telefone),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente)
        REFERENCES public.clientes (cpf) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)


TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clientes
    OWNER to postgres;