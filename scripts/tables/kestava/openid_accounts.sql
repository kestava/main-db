
\c :db_name

CREATE TABLE kestava.openid_accounts
(
  openid_identifier character varying NOT NULL,
  ref_user_account_id integer NOT NULL,
  CONSTRAINT openid_accounts_pk PRIMARY KEY (openid_identifier),
  CONSTRAINT openid_accounts_fk1 FOREIGN KEY (ref_user_account_id)
      REFERENCES kestava.user_accounts (user_account_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE kestava.openid_accounts TO kestava;