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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholes_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholes_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholes_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean DEFAULT false NOT NULL,
    age_in_bil integer,
    galaxy_type character varying(30)
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
    name character varying(30) NOT NULL,
    decription text,
    distance_from_star integer,
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
    description text,
    has_life boolean DEFAULT false NOT NULL,
    age_in_bil integer,
    planet_type character varying(30),
    distance_from_star numeric(5,3),
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean DEFAULT false NOT NULL,
    age_in_mil integer,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackholes_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Milky Way Black Hole', 1);
INSERT INTO public.blackhole VALUES (2, 'Andromeda Black Hole', 2);
INSERT INTO public.blackhole VALUES (3, 'Triangulum Black Hole', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral galaxy', true, 14, 'SBc');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral galaxy neighboring Milky Way', false, 11, 'Sb');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral galaxy in Local Group', false, 7, 'Sc');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'galaxy with a bulge & halo', false, 28, 'Sa');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'spiral galaxy with prominent arms', false, 31, 'Sc');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'elongated galaxy with starburst activity', false, 11, 'SBm');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 'Martian moon with grooves and craters.', 9378, 4);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Small, irregularly shaped Martian moon.', 23459, 4);
INSERT INTO public.moon VALUES (3, 'Io', 'Jupiter moon with active volcanoes.', 421000, 5);
INSERT INTO public.moon VALUES (4, 'Europa', 'Jupiter moon with a subsurface ocean.', 671100, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon in the solar system.', 1070000, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Jupiter moon with an ancient, cratered surface.', 1880000, 5);
INSERT INTO public.moon VALUES (7, 'Mimas', 'Saturn moon with a giant impact crater.', 186000, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Saturn moon with geysers of water.', 238000, 6);
INSERT INTO public.moon VALUES (9, 'Tethys', 'Saturn moon with a wide, prominent rift valley.', 295000, 6);
INSERT INTO public.moon VALUES (10, 'Dione', 'Saturn moon with bright, wispy terrain.', 377000, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Saturn moon with a heavily cratered surface.', 527000, 6);
INSERT INTO public.moon VALUES (12, 'Titan', 'Saturn moon with a thick atmosphere and lakes of methane.', 1221800, 6);
INSERT INTO public.moon VALUES (13, 'Hyperion', 'Irregularly shaped Saturn moon.', 1481000, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Saturn moon with contrasting, light and dark regions.', 3561000, 6);
INSERT INTO public.moon VALUES (15, 'Aegaeon', 'Uranus moon with a heavily cratered surface.', 492100, 7);
INSERT INTO public.moon VALUES (16, 'Aegir', 'Uranus moon with a heavily cratered surface.', 573000, 7);
INSERT INTO public.moon VALUES (17, 'Bebhionn', 'Uranus moon with a heavily cratered surface.', 745000, 7);
INSERT INTO public.moon VALUES (18, 'Bergelmir', 'Uranus moon with a heavily cratered surface.', 873000, 7);
INSERT INTO public.moon VALUES (19, 'Calypso', 'Uranus moon with a heavily cratered surface.', 1170000, 7);
INSERT INTO public.moon VALUES (20, 'Daphnis', 'Uranus moon with a heavily cratered surface.', 1475000, 7);
INSERT INTO public.moon VALUES (21, 'Deucalion', 'Uranus moon with a heavily cratered surface.', 1866000, 7);
INSERT INTO public.moon VALUES (22, 'Eurydome', 'Uranus moon with a heavily cratered surface.', 1967000, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Innermost planet of the solar system', false, 5, 'Terrestrial', 0.390, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet in the solar system', false, 5, 'Terrestrial', 0.720, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Only known planet with life', true, 5, 'Terrestrial', 1.000, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known for its red color and potential for life', false, 5, 'Terrestrial', 1.520, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the solar system', false, 5, 'Gas Giant', 5.200, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Planet known for its rings', false, 5, 'Gas Giant', 9.580, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Gas giant planet tipped over on its side', false, 5, 'Ice Giant', 19.180, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Most distant planet in the solar system', false, 5, 'Ice Giant', 30.070, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Dwarf planet in the asteroid belt', false, 5, 'Dwarf Planet', NULL, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Dwarf planet in the Kuiper Belt', false, 5, 'Dwarf Planet', 39.440, 1);
INSERT INTO public.planet VALUES (11, 'Eris', 'Dwarf planet in the Kuiper Belt', false, 5, 'Dwarf Planet', 67.700, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf planet in the Kuiper Belt', false, 5, 'Dwarf Planet', 52.000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star in the Milky Way', false, 5, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'nearest star to the Sun', false, 4, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A & B', 'binary star system, part of Alpha Centauri', false, 4, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'brightest star in the sky', false, 9, 1);
INSERT INTO public.star VALUES (5, 'Vega', 'brightest star in the constellation Lyra', false, 0, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'red supergiant star in Orion', false, 9, 1);


--
-- Name: blackholes_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholes_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_unq UNIQUE (blackhole_id);


--
-- Name: blackhole blackholes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackholes_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
