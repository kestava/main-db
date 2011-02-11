--
-- PostgreSQL database dump
--

-- Started on 2011-02-10 16:50:22 PST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2675 (class 0 OID 0)
-- Dependencies: 2367
-- Name: accounts_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jacob
--

SELECT pg_catalog.setval('accounts_account_id_seq', 1, true);


--
-- TOC entry 2672 (class 0 OID 51686)
-- Dependencies: 2368
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: jacob
--

INSERT INTO accounts (account_id, email) VALUES (1, 'jacob@jakewan.com');


-- Completed on 2011-02-10 16:50:23 PST

--
-- PostgreSQL database dump complete
--

