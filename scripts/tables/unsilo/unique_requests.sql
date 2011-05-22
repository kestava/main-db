
\c :db_name

CREATE TABLE unsilo.unique_requests
(
    session_key character varying(40),
    request_key character varying(100),
    request_value character varying(40) NOT NULL,
    request_data text,
    created_when timestamp without time zone NOT NULL default date_trunc('second', now()),
    CONSTRAINT unique_requests_pk PRIMARY KEY (session_key, request_key)
)
WITH (
    OIDS=FALSE
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE unsilo.unique_requests TO unsilo;
