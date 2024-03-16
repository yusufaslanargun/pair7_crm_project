--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-16 17:39:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE pair7_crm;
--
-- TOC entry 4785 (class 1262 OID 25285)
-- Name: pair7_crm; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pair7_crm WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE pair7_crm OWNER TO postgres;

\connect pair7_crm

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 25286)
-- Name: Customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Customer" (
    customer_id integer NOT NULL,
    first_name character varying NOT NULL,
    middle_name character varying,
    last_name character varying NOT NULL,
    birth_date date NOT NULL,
    gender integer NOT NULL,
    father_name character varying,
    mother_name character varying,
    nationality_id character varying NOT NULL,
    gsm_number character varying,
    order_number integer DEFAULT 0,
    account_number integer
);


ALTER TABLE public."Customer" OWNER TO postgres;

--
-- TOC entry 4779 (class 0 OID 25286)
-- Dependencies: 215
-- Data for Name: Customer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4635 (class 2606 OID 25293)
-- Name: Customer Customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY (customer_id);


-- Completed on 2024-03-16 17:39:47

--
-- PostgreSQL database dump complete
--

