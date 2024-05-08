--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(30),
    country text,
    moon_id integer
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronaut_astronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronaut_astronaut_id_seq OWNER TO freecodecamp;

--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronaut_astronaut_id_seq OWNED BY public.astronaut.astronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    galaxy_group character varying(40),
    age numeric
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
    name character varying(30),
    year_found numeric(4,0),
    sole_moon boolean,
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
    name character varying(30) NOT NULL,
    sphere_shape boolean NOT NULL,
    has_life boolean NOT NULL,
    no_of_moons integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planets integer,
    star_type text,
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
-- Name: astronaut astronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut ALTER COLUMN astronaut_id SET DEFAULT nextval('public.astronaut_astronaut_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Rakesh Sharma', 'India', 1);
INSERT INTO public.astronaut VALUES (2, 'Sunita Williams', 'India', 2);
INSERT INTO public.astronaut VALUES (3, 'Yuri Gagarin', 'Russia', 3);
INSERT INTO public.astronaut VALUES (4, 'Neil Armstrong', 'USA', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral', 'Local group', 2.5);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'spiral', 'Local Type', 13.8);
INSERT INTO public.galaxy VALUES (3, 'Messier 81', 'spiral', 'M81 group', 11.0);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'elliptical', NULL, 16.0);
INSERT INTO public.galaxy VALUES (5, 'Bode galaxy', 'spiral', NULL, 12.0);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'lenticular', NULL, 10.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', -2000, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, false, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, false, 1);
INSERT INTO public.moon VALUES (4, 'Io', 1610, false, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, false, 2);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, false, 2);
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, false, 2);
INSERT INTO public.moon VALUES (8, 'Titan', 1655, false, 2);
INSERT INTO public.moon VALUES (9, 'Rhea', 1672, false, 2);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1671, false, 2);
INSERT INTO public.moon VALUES (11, 'Europa (Candidate)', 2011, false, NULL);
INSERT INTO public.moon VALUES (12, 'Ganymede (Candidate)', 2015, false, NULL);
INSERT INTO public.moon VALUES (13, 'Titan (Candidate)', 1979, false, NULL);
INSERT INTO public.moon VALUES (14, 'Enceladus (Candidate)', 2005, false, NULL);
INSERT INTO public.moon VALUES (15, 'Gas Giant Moon (Candidate)', 2042, false, NULL);
INSERT INTO public.moon VALUES (16, 'Miranda', 1946, false, 2);
INSERT INTO public.moon VALUES (17, 'Ariel', 1851, false, 2);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1851, false, 2);
INSERT INTO public.moon VALUES (19, 'Titania', 1787, false, 2);
INSERT INTO public.moon VALUES (20, 'Oberon', 1787, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, false, 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, false, 79, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', true, false, 82, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', true, false, 27, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', true, false, 14, 2);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', true, false, 1, 1);
INSERT INTO public.planet VALUES (18, 'Gliese 581 g', true, false, 0, 3);
INSERT INTO public.planet VALUES (19, 'Kepler-186f', true, false, 0, 2);
INSERT INTO public.planet VALUES (21, 'TRAPPIST-1e', true, false, 0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 0, 'red dwarf', 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 2, 'Main Sequence Star', NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 0, 'Red Supergiant', 2);
INSERT INTO public.star VALUES (4, 'Altair', 0, 'A-type', NULL);
INSERT INTO public.star VALUES (5, 'Polaris', 0, 'F-type', NULL);
INSERT INTO public.star VALUES (6, 'Wolf 359', 2, 'red dwarf', 1);


--
-- Name: astronaut_astronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronaut_astronaut_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronaut astronaut_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_name_key UNIQUE (name);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


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
-- Name: astronaut add; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT add FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

