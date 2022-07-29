--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    galaxy_type character varying(30),
    number_of_planets integer,
    name character varying(70) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_visible_from_earth boolean,
    description text,
    diameter integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric(5,3),
    age_in_millions_of_years integer,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: probe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.probe (
    probe_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.probe OWNER TO freecodecamp;

--
-- Name: probe_probe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.probe_probe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.probe_probe_id_seq OWNER TO freecodecamp;

--
-- Name: probe_probe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.probe_probe_id_seq OWNED BY public.probe.probe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    is_visible_from_earth boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: probe probe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.probe ALTER COLUMN probe_id SET DEFAULT nextval('public.probe_probe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'najmasywniejsza galaktyka w grupie lokalnej', 'galaktyka spiralna', 460, 'Galaktyka Andromedy');
INSERT INTO public.galaxy VALUES (2, 'po prostu Galaktyka', 'galaktyka spiralna', 300, 'Droga Ml');
INSERT INTO public.galaxy VALUES (3, 'druga najjasniejsza', 'galaktyka spiralna', 330, 'Galaktyka Trojkata');
INSERT INTO public.galaxy VALUES (4, 'jest nieregularna', 'galaktyka satelitarna', 285, 'Wielki oblok Magellana');
INSERT INTO public.galaxy VALUES (5, 'supergromada', 'supergromada', 350, 'Laniakea');
INSERT INTO public.galaxy VALUES (6, 'gromada galaktyk', 'gromada galaktyk', 286, 'Gromada w Pannie');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'moon1', true, 'opis', 300, 1);
INSERT INTO public.moon VALUES (22, 'moon2', true, 'opis', 300, 12);
INSERT INTO public.moon VALUES (23, 'moon3', true, 'opis', 300, 13);
INSERT INTO public.moon VALUES (24, 'moon4', true, 'opis', 300, 14);
INSERT INTO public.moon VALUES (25, 'moon5', true, 'opis', 300, 5);
INSERT INTO public.moon VALUES (26, 'moon6', true, 'opis', 300, 6);
INSERT INTO public.moon VALUES (27, 'moon7', true, 'opis', 300, 7);
INSERT INTO public.moon VALUES (28, 'moon8', true, 'opis', 300, 8);
INSERT INTO public.moon VALUES (29, 'moon9', true, 'opis', 300, 9);
INSERT INTO public.moon VALUES (30, 'moon10', true, 'opis', 300, 10);
INSERT INTO public.moon VALUES (31, 'moon11', true, 'opis', 300, 11);
INSERT INTO public.moon VALUES (32, 'moon12', true, 'opis', 300, 12);
INSERT INTO public.moon VALUES (33, 'moon13', true, 'opis', 300, 1);
INSERT INTO public.moon VALUES (34, 'moon14', true, 'opis', 300, 9);
INSERT INTO public.moon VALUES (35, 'moon15', true, 'opis', 300, 8);
INSERT INTO public.moon VALUES (36, 'moon16', true, 'opis', 300, 7);
INSERT INTO public.moon VALUES (37, 'moon17', true, 'opis', 300, 5);
INSERT INTO public.moon VALUES (38, 'moon18', true, 'opis', 300, 6);
INSERT INTO public.moon VALUES (39, 'moon19', true, 'opis', 300, 7);
INSERT INTO public.moon VALUES (40, 'moon20', true, 'opis', 300, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'gwiazda1', 12.123, 300, 'opis', 1);
INSERT INTO public.planet VALUES (5, 'gwiazda2', 12.123, 300, 'opis', 2);
INSERT INTO public.planet VALUES (6, 'gwiazda3', 12.123, 300, 'opis', 3);
INSERT INTO public.planet VALUES (7, 'gwiazda4', 12.123, 300, 'opis', 4);
INSERT INTO public.planet VALUES (8, 'gwiazda5', 12.123, 300, 'opis', 5);
INSERT INTO public.planet VALUES (9, 'gwiazda6', 12.123, 300, 'opis', 6);
INSERT INTO public.planet VALUES (10, 'gwiazda7', 12.123, 300, 'opis', 1);
INSERT INTO public.planet VALUES (11, 'gwiazda8', 12.123, 300, 'opis', 2);
INSERT INTO public.planet VALUES (12, 'gwiazda9', 12.123, 300, 'opis', 3);
INSERT INTO public.planet VALUES (13, 'gwiazda10', 12.123, 300, 'opis', 4);
INSERT INTO public.planet VALUES (14, 'gwiazda11', 12.123, 300, 'opis', 5);
INSERT INTO public.planet VALUES (15, 'gwiazda12', 12.123, 300, 'opis', 6);


--
-- Data for Name: probe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.probe VALUES (1, 'probe1', 'opis');
INSERT INTO public.probe VALUES (2, 'probe2', 'opis');
INSERT INTO public.probe VALUES (3, 'probe3', 'opis');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'LGGS', 300, false, 'duza gwiazda', 1);
INSERT INTO public.star VALUES (2, 'Stephenson', 280, false, 'jakas gwiazda', 2);
INSERT INTO public.star VALUES (3, 'Carinae', 199, true, 'inna gwiazda', 3);
INSERT INTO public.star VALUES (4, 'WOH', 350, false, 'cos tam', 4);
INSERT INTO public.star VALUES (5, 'W60', 420, true, 'opis', 5);
INSERT INTO public.star VALUES (6, 'Iras', 150, true, 'opisuje', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: probe_probe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.probe_probe_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: probe probe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.probe
    ADD CONSTRAINT probe_name_key UNIQUE (name);


--
-- Name: probe probe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.probe
    ADD CONSTRAINT probe_pkey PRIMARY KEY (probe_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

