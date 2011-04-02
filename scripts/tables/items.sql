
\c :db_name

CREATE TABLE kestava.items
(
  item_id serial NOT NULL,
  title character varying(200) NOT NULL,
  additional_description text,
  quantity numeric(10,2) NOT NULL,
  loc geography(Point,4326) NOT NULL,
  CONSTRAINT items_pk PRIMARY KEY (item_id)
)
WITH (
  OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE kestava.items TO kestava;

CREATE INDEX items_gix
  ON kestava.items
  USING gist
  (loc);

GRANT USAGE ON TABLE kestava.items_item_id_seq TO kestava;