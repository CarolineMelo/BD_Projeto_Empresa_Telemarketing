-- Table: public.produtos_vendidos

-- DROP TABLE IF EXISTS public.produtos_vendidos;

CREATE TABLE IF NOT EXISTS public.produtos_vendidos
(
    id_produto numeric(50,0) NOT NULL,
    quantidade numeric(50,0) NOT NULL,
    preco numeric(255,0) NOT NULL,
    id_vendedor numeric(50,0) NOT NULL,
    CONSTRAINT produtos_vendidos_pkey PRIMARY KEY (id_produto)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.produtos_vendidos
    OWNER to postgres;