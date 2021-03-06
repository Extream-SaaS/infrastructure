CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
DROP TABLE if EXISTS public.users;

CREATE TABLE public.users
(
    id serial,
    public_id uuid DEFAULT uuid_generate_v4 (),
    username text,
    user_password text,
    fields jsonb,
    user_type text DEFAULT 'audience',
    PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.users
    OWNER to postgres;

DROP TABLE IF EXISTS public.access_tokens;

CREATE TABLE public.access_tokens
(
    id serial,
    access_token text,
    user_id integer,
    PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.access_tokens
    OWNER to postgres;