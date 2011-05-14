
\c :db_name

CREATE TABLE unsilo.user_account_ui_settings
(
    ref_user_account_id integer
        CONSTRAINT user_account_ui_settings_pk PRIMARY KEY
        CONSTRAINT user_account_ui_settings_fk1 REFERENCES unsilo.user_accounts,
    ui_layout character varying(20) NOT NULL,
    ui_theme character varying(20) NOT NULL
)
WITH (
  OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE unsilo.user_account_ui_settings TO unsilo;