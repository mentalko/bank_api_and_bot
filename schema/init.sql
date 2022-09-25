-- Table: public.accounts

DROP TABLE IF EXISTS public.accounts;

CREATE TABLE IF NOT EXISTS public.accounts
(
    id bigint NOT NULL,
    username character varying(32) COLLATE pg_catalog."default",
    phone_number character varying(15) COLLATE pg_catalog."default",
    balance_usd numeric,
    balance_rub numeric,
    CONSTRAINT accounts_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.accounts
    OWNER to postgres;




-- Table: public.transactions

-- DROP TABLE IF EXISTS public.transactions;

CREATE TABLE IF NOT EXISTS public.transactions
(
    id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    account_from bigint,
    account_to bigint,
    value numeric,
    curency character varying(3) COLLATE pg_catalog."default",
    date date
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.transactions
    OWNER to postgres;



-- INSERT INTO public.transactions(
-- 	id, account_from, account_to, value, curency, date)
-- 	VALUES (1,	785458948,	890590495904,	1500, 'USD', '2022-09-10');





INSERT INTO public.accounts(id, username, phone_number, balance_usd, balance_rub) VALUES (1, 'ilya_2', 94839849, 22099.01, 100);