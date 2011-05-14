
\c :db_name

CREATE TABLE unsilo.items
(
    item_id serial CONSTRAINT items_pk PRIMARY KEY,
    title character varying(200) NOT NULL,
    additional_description text,
    quantity numeric(10,2) NOT NULL,
    loc geography(Point,4326) NOT NULL,
    ref_user_account_id integer
        CONSTRAINT items_fk1 REFERENCES unsilo.user_accounts
)
WITH (
    OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE unsilo.items TO unsilo;

CREATE INDEX items_gix ON unsilo.items USING gist (loc);

GRANT USAGE ON TABLE unsilo.items_item_id_seq TO unsilo;
