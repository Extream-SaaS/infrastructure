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

DROP TABLE if EXISTS public.organisations;

CREATE TABLE public.organisations
(
    id serial,
    public_id uuid DEFAULT uuid_generate_v4 (),
    name text,
    website text,
    user_id uuid,
    parent uuid,
    landing_page uuid,
    PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.organisations
    OWNER to postgres;

DROP TABLE if EXISTS public.events;

CREATE TABLE public.events
(
    id serial,
    public_id uuid DEFAULT uuid_generate_v4 (),
    name text,
    website text,
    organisation_id uuid,
    start_date timestamp,
    end_date timestamp,
    parent uuid,
    landing_page uuid,
    PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.events
    OWNER to postgres;