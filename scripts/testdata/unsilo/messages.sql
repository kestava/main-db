
\c :db_name

INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (1, '2011-02-10 16:54:01', 'This is a test', 1);
INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (2, '2011-02-10 16:54:38', 'This is a system message', NULL);
INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (3, '2011-02-10 16:56:58', 'System message.', NULL);
INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (4, '2011-02-10 16:58:01', 'Hello', 1);
INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (5, '2011-04-02 04:00:00', 'Messages at same moment in time #1', 1);
INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (6, '2011-04-02 04:00:00', 'Messages at same moment in time #2', 1);
INSERT INTO unsilo.messages (message_id, created_when, message_text, ref_user_account_id) VALUES (7, '2011-04-02 04:00:00', 'Messages at same moment in time #3', 1);

ALTER SEQUENCE unsilo.messages_message_id_seq RESTART WITH 8;