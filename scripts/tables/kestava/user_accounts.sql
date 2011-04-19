
\c :db_name

CREATE TABLE kestava.user_accounts
(
  user_account_id serial NOT NULL,
  user_name character varying(40) NOT NULL,
  first_name character varying(100) NOT NULL,
  last_name character varying(100),
  email character varying(320) NOT NULL,
  PRIMARY KEY (user_account_id),
  UNIQUE (user_name),
  UNIQUE (email)
)
WITH (
  OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE kestava.user_accounts TO kestava;

GRANT USAGE ON TABLE kestava.user_accounts_user_account_id_seq TO kestava;