-- Table: public.empresa_telemarketing

-- DROP TABLE IF EXISTS public.empresa_telemarketing;

CREATE TABLE IF NOT EXISTS public.empresa_telemarketing
(
    id_cliente character varying(255) COLLATE pg_catalog."default" NOT NULL,
    fornecedores character varying(255) COLLATE pg_catalog."default" NOT NULL,
    id_operador numeric(50,0) NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.empresa_telemarketing
    OWNER to postgres;