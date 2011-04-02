
\c :db_name

CREATE TABLE kestava.accounts
(
  account_id serial NOT NULL,
  email character varying NOT NULL,
  CONSTRAINT user_accounts_pk PRIMARY KEY (account_id)
)
WITH (
  OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE kestava.accounts TO kestava;

GRANT USAGE ON TABLE kestava.accounts_account_id_seq TO kestava;