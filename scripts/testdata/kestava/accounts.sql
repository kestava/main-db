
\c :db_name

INSERT INTO kestava.accounts (account_id, email) VALUES (1, 'jacob@jakewan.com');

ALTER SEQUENCE kestava.accounts_account_id_seq RESTART WITH 2;