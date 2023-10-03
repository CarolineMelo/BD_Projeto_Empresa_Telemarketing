-- Table: public.lista_para_ligacao

-- DROP TABLE IF EXISTS public.lista_para_ligacao;

CREATE TABLE IF NOT EXISTS public.lista_para_ligacao
(
    id_operador numeric(10) NOT NULL,
    texto_para_ler character varying(500) COLLATE pg_catalog."default" NOT NULL,
    data_hora_ligacao timestamp NOT NULL,
    duracao_ligacao time,
    CONSTRAINT data_hora_ligacao_pkey PRIMARY KEY (data_hora_ligacao),
    CONSTRAINT fk_id_operador FOREIGN KEY (id_operador)
        REFERENCES public.operadores (id_operador) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

-- tabela de ligação entre clientes e lista_para_ligacao
CREATE TABLE IF NOT EXISTS public.ligacao_cliente
(
    id_cliente character varying(11) COLLATE pg_catalog."default" NOT NULL,
    id_lista_para_ligacao timestamp NOT NULL,
    CONSTRAINT ligacao_cliente_pkey PRIMARY KEY (id_cliente, id_lista_para_ligacao),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente)
        REFERENCES public.clientes (cpf) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_id_lista_para_ligacao FOREIGN KEY (id_lista_para_ligacao)
        REFERENCES public.lista_para_ligacao (data_hora_ligacao) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

-- tabela de vendas entre clientes e produtos_fabricados
CREATE TABLE IF NOT EXISTS public.venda_produto
(
    sku character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_lista_para_ligacao timestamp NOT NULL,
    quantidade numeric(5,0) NOT NULL,
    preco numeric(10,3) NOT NULL,
    CONSTRAINT venda_produto_pkey PRIMARY KEY (sku, id_lista_para_ligacao),
    CONSTRAINT fk_sku FOREIGN KEY (sku)
        REFERENCES public.produtos_fabricados (sku) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_id_lista_para_ligacao FOREIGN KEY (id_lista_para_ligacao)
        REFERENCES public.lista_para_ligacao (data_hora_ligacao) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.lista_para_ligacao
    OWNER to postgres;