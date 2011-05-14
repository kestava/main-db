
\c :db_name

INSERT INTO unsilo.user_accounts (
    user_account_id, user_name, first_name, last_name, email)
VALUES (1, 'jakewan', 'Jacob', 'Wan', 'jacob@jakewan.com');

ALTER SEQUENCE unsilo.user_accounts_user_account_id_seq RESTART WITH 2;