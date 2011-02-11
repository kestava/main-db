--
-- PostgreSQL database dump
--

-- Started on 2011-02-10 16:59:41 PST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2677 (class 0 OID 0)
-- Dependencies: 2370
-- Name: messages_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jacob
--

SELECT pg_catalog.setval('messages_message_id_seq', 4, true);


--
-- TOC entry 2674 (class 0 OID 51710)
-- Dependencies: 2371
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: jacob
--

INSERT INTO messages (message_id, created_when, message_text, ref_account_id) VALUES (1, '2011-02-10 16:54:01.62201', 'This is a test', 1);
INSERT INTO messages (message_id, created_when, message_text, ref_account_id) VALUES (2, '2011-02-10 16:54:38.261096', 'This is a system message', NULL);
INSERT INTO messages (message_id, created_when, message_text, ref_account_id) VALUES (3, '2011-02-10 16:56:58.872443', 'System message.', NULL);
INSERT INTO messages (message_id, created_when, message_text, ref_account_id) VALUES (4, '2011-02-10 16:58:01.263958', 'Hello', 1);


-- Completed on 2011-02-10 16:59:41 PST

--
-- PostgreSQL database dump complete
--

