
\c :db_name

INSERT INTO kestava.messages (message_id, created_when, message_text, ref_account_id) VALUES (1, '2011-02-10 16:54:01.62201', 'This is a test', 1);
INSERT INTO kestava.messages (message_id, created_when, message_text, ref_account_id) VALUES (2, '2011-02-10 16:54:38.261096', 'This is a system message', NULL);
INSERT INTO kestava.messages (message_id, created_when, message_text, ref_account_id) VALUES (3, '2011-02-10 16:56:58.872443', 'System message.', NULL);
INSERT INTO kestava.messages (message_id, created_when, message_text, ref_account_id) VALUES (4, '2011-02-10 16:58:01.263958', 'Hello', 1);

ALTER SEQUENCE kestava.messages_message_id_seq RESTART WITH 5;