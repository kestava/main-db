
\c :db_name

CREATE TABLE kestava.messages
(
  message_id serial NOT NULL,
  created_when timestamp without time zone NOT NULL default date_trunc('second', now()),
  message_text character varying(250),
  ref_user_account_id integer,
  CONSTRAINT messages_pk PRIMARY KEY (message_id),
  CONSTRAINT messages_fk1 FOREIGN KEY (ref_user_account_id)
      REFERENCES kestava.user_accounts (user_account_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);


GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE kestava.messages TO kestava;

GRANT USAGE ON TABLE kestava.messages_message_id_seq TO kestava;