--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-01 02:18:41

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16471)
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    year_of_issue integer NOT NULL
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16470)
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.albums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 219
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- TOC entry 225 (class 1259 OID 16526)
-- Name: compilations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compilations (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.compilations OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16525)
-- Name: compilations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compilations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compilations_id_seq OWNER TO postgres;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 224
-- Name: compilations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compilations_id_seq OWNED BY public.compilations.id;


--
-- TOC entry 226 (class 1259 OID 16532)
-- Name: compilations_tracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compilations_tracks (
    compilation_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE public.compilations_tracks OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16441)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16440)
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 214
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- TOC entry 218 (class 1259 OID 16455)
-- Name: genres_performers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres_performers (
    genr_id integer NOT NULL,
    performer_id integer NOT NULL
);


ALTER TABLE public.genres_performers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16449)
-- Name: performers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.performers (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.performers OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16510)
-- Name: performers_albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.performers_albums (
    performer_id integer NOT NULL,
    album_id integer NOT NULL
);


ALTER TABLE public.performers_albums OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16448)
-- Name: performers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.performers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.performers_id_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 216
-- Name: performers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.performers_id_seq OWNED BY public.performers.id;


--
-- TOC entry 222 (class 1259 OID 16496)
-- Name: tracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tracks (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    duration timestamp without time zone NOT NULL,
    album integer
);


ALTER TABLE public.tracks OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16495)
-- Name: tracks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tracks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tracks_id_seq OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 221
-- Name: tracks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tracks_id_seq OWNED BY public.tracks.id;


--
-- TOC entry 3207 (class 2604 OID 16474)
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 16529)
-- Name: compilations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compilations ALTER COLUMN id SET DEFAULT nextval('public.compilations_id_seq'::regclass);


--
-- TOC entry 3205 (class 2604 OID 16444)
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 16452)
-- Name: performers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performers ALTER COLUMN id SET DEFAULT nextval('public.performers_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 16499)
-- Name: tracks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks ALTER COLUMN id SET DEFAULT nextval('public.tracks_id_seq'::regclass);


--
-- TOC entry 3381 (class 0 OID 16471)
-- Dependencies: 220
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.albums (id, name, year_of_issue) FROM stdin;
\.


--
-- TOC entry 3386 (class 0 OID 16526)
-- Dependencies: 225
-- Data for Name: compilations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compilations (id, name, date) FROM stdin;
\.


--
-- TOC entry 3387 (class 0 OID 16532)
-- Dependencies: 226
-- Data for Name: compilations_tracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compilations_tracks (compilation_id, track_id) FROM stdin;
\.


--
-- TOC entry 3376 (class 0 OID 16441)
-- Dependencies: 215
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (id, name) FROM stdin;
\.


--
-- TOC entry 3379 (class 0 OID 16455)
-- Dependencies: 218
-- Data for Name: genres_performers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres_performers (genr_id, performer_id) FROM stdin;
\.


--
-- TOC entry 3378 (class 0 OID 16449)
-- Dependencies: 217
-- Data for Name: performers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.performers (id, name) FROM stdin;
\.


--
-- TOC entry 3384 (class 0 OID 16510)
-- Dependencies: 223
-- Data for Name: performers_albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.performers_albums (performer_id, album_id) FROM stdin;
\.


--
-- TOC entry 3383 (class 0 OID 16496)
-- Dependencies: 222
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tracks (id, name, duration, album) FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 219
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.albums_id_seq', 1, false);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 224
-- Name: compilations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compilations_id_seq', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 214
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 1, false);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 216
-- Name: performers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.performers_id_seq', 1, false);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 221
-- Name: tracks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tracks_id_seq', 1, false);


--
-- TOC entry 3217 (class 2606 OID 16476)
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 16531)
-- Name: compilations compilations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compilations
    ADD CONSTRAINT compilations_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 16446)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 16454)
-- Name: performers performers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performers
    ADD CONSTRAINT performers_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 16459)
-- Name: genres_performers pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres_performers
    ADD CONSTRAINT pk PRIMARY KEY (genr_id, performer_id);


--
-- TOC entry 3221 (class 2606 OID 16514)
-- Name: performers_albums pk1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performers_albums
    ADD CONSTRAINT pk1 PRIMARY KEY (performer_id, album_id);


--
-- TOC entry 3225 (class 2606 OID 16536)
-- Name: compilations_tracks pk2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compilations_tracks
    ADD CONSTRAINT pk2 PRIMARY KEY (compilation_id, track_id);


--
-- TOC entry 3219 (class 2606 OID 16501)
-- Name: tracks tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 16537)
-- Name: compilations_tracks compilations_tracks_compilation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compilations_tracks
    ADD CONSTRAINT compilations_tracks_compilation_id_fkey FOREIGN KEY (compilation_id) REFERENCES public.compilations(id);


--
-- TOC entry 3232 (class 2606 OID 16542)
-- Name: compilations_tracks compilations_tracks_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compilations_tracks
    ADD CONSTRAINT compilations_tracks_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.tracks(id);


--
-- TOC entry 3226 (class 2606 OID 16460)
-- Name: genres_performers genres_performers_genr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres_performers
    ADD CONSTRAINT genres_performers_genr_id_fkey FOREIGN KEY (genr_id) REFERENCES public.genres(id);


--
-- TOC entry 3227 (class 2606 OID 16465)
-- Name: genres_performers genres_performers_performer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres_performers
    ADD CONSTRAINT genres_performers_performer_id_fkey FOREIGN KEY (performer_id) REFERENCES public.performers(id);


--
-- TOC entry 3229 (class 2606 OID 16520)
-- Name: performers_albums performers_albums_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performers_albums
    ADD CONSTRAINT performers_albums_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- TOC entry 3230 (class 2606 OID 16515)
-- Name: performers_albums performers_albums_performer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performers_albums
    ADD CONSTRAINT performers_albums_performer_id_fkey FOREIGN KEY (performer_id) REFERENCES public.performers(id);


--
-- TOC entry 3228 (class 2606 OID 16502)
-- Name: tracks tracks_album_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_album_fkey FOREIGN KEY (album) REFERENCES public.albums(id);


-- Completed on 2022-12-01 02:18:42

--
-- PostgreSQL database dump complete
--

