--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-02 12:27:59 CET

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
-- TOC entry 221 (class 1259 OID 17646)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    id character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL,
    email character varying(32) NOT NULL,
    id_vertical character varying(32) NOT NULL
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17611)
-- Name: campus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campus (
    id character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL
);


ALTER TABLE public.campus OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17656)
-- Name: notas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notas (
    id character varying(32) NOT NULL,
    id_alumno character varying(32) NOT NULL,
    id_proyecto character varying(32),
    nota character varying(32)
);


ALTER TABLE public.notas OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17596)
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor (
    id character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL
);


ALTER TABLE public.profesor OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17616)
-- Name: promocion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promocion (
    id character varying(32) NOT NULL,
    mes character varying(32),
    fecha_inicio character varying(32),
    id_campus character varying(32)
);


ALTER TABLE public.promocion OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17641)
-- Name: proyectos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proyectos (
    id character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL
);


ALTER TABLE public.proyectos OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17601)
-- Name: ta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ta (
    id character varying(32) NOT NULL,
    id_profesor character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL
);


ALTER TABLE public.ta OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17626)
-- Name: vertical; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vertical (
    id character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL,
    id_promocion character varying(32),
    id_profesor character varying(32)
);


ALTER TABLE public.vertical OWNER TO postgres;

--
-- TOC entry 3243 (class 2606 OID 17650)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 17615)
-- Name: campus campus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campus
    ADD CONSTRAINT campus_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 17660)
-- Name: notas notas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 17600)
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 17620)
-- Name: promocion promocion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promocion
    ADD CONSTRAINT promocion_pkey PRIMARY KEY (id);


--
-- TOC entry 3241 (class 2606 OID 17645)
-- Name: proyectos proyectos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyectos_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 17605)
-- Name: ta ta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ta
    ADD CONSTRAINT ta_pkey PRIMARY KEY (id);


--
-- TOC entry 3239 (class 2606 OID 17630)
-- Name: vertical vertical_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vertical
    ADD CONSTRAINT vertical_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 17661)
-- Name: notas fk_alumnos_notas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT fk_alumnos_notas FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id);


--
-- TOC entry 3247 (class 2606 OID 17621)
-- Name: promocion fk_campus_ver; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promocion
    ADD CONSTRAINT fk_campus_ver FOREIGN KEY (id_campus) REFERENCES public.campus(id);


--
-- TOC entry 3246 (class 2606 OID 17606)
-- Name: ta fk_profesor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ta
    ADD CONSTRAINT fk_profesor FOREIGN KEY (id_profesor) REFERENCES public.profesor(id);


--
-- TOC entry 3248 (class 2606 OID 17636)
-- Name: vertical fk_profesor_ver; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vertical
    ADD CONSTRAINT fk_profesor_ver FOREIGN KEY (id_profesor) REFERENCES public.profesor(id);


--
-- TOC entry 3249 (class 2606 OID 17631)
-- Name: vertical fk_promocion_ver; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vertical
    ADD CONSTRAINT fk_promocion_ver FOREIGN KEY (id_promocion) REFERENCES public.promocion(id);


--
-- TOC entry 3252 (class 2606 OID 17666)
-- Name: notas fk_proyectos_notas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT fk_proyectos_notas FOREIGN KEY (id_proyecto) REFERENCES public.proyectos(id);


--
-- TOC entry 3250 (class 2606 OID 17651)
-- Name: alumnos fk_vertical; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT fk_vertical FOREIGN KEY (id_vertical) REFERENCES public.vertical(id);


-- Completed on 2023-11-02 12:27:59 CET

--
-- PostgreSQL database dump complete
--

