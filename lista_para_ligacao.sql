-- Table: public.lista_para_ligacao

-- DROP TABLE IF EXISTS public.lista_para_ligacao;

CREATE TABLE IF NOT EXISTS public.lista_para_ligacao
(
    id_cliente numeric(50,0) NOT NULL,
    sku numeric(50,0) NOT NULL,
    text_to_read character varying(500) COLLATE pg_catalog."default" NOT NULL,
    melhor_data_ligacao character varying(50) COLLATE pg_catalog."default" NOT NULL,
    duracao_ligacao numeric(20,0) NOT NULL,
    data_ligacao numeric(50,0),
    horario_ligacao numeric(50,0),
    CONSTRAINT lista_para_ligacao_pkey PRIMARY KEY (id_cliente, sku)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lista_para_ligacao
    OWNER to postgres;