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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    comments text,
    mass_in_tonnes numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_lightyears numeric,
    comments text,
    diameter_in_lightyears numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    comments text,
    inhabitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    inhabitable boolean,
    number_of_moons integer,
    star_id integer,
    comments text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer,
    galaxy_id integer,
    comments text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '4 Vesta', 1, 'N/A', 240000000000000000);
INSERT INTO public.asteroid VALUES (2, '433 Eros', 1, 'N/A', 6600000000000);
INSERT INTO public.asteroid VALUES (3, '2 Pallas', 1, 'N/A', 200000000000000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 'N/A', NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 25000, 'N/A', NULL);
INSERT INTO public.galaxy VALUES (3, 'Segue 1', 75000, 'N/A', NULL);
INSERT INTO public.galaxy VALUES (4, 'Sag DEG', 70000, 'N/A', NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Magnellanic Cloud', 160000, 'N/A', NULL);
INSERT INTO public.galaxy VALUES (6, 'Small Magnellanic Cloud', 190000, 'N/A', NULL);
INSERT INTO public.galaxy VALUES (7, 'Andromeda', 2500000, 'N/A', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3, 'N/A', false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'N/A', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'N/A', false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'N/A', false);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'N/A', false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'N/A', false);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'N/A', false);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, 'N/A', false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 'N/A', false);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, 'N/A', false);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 'N/A', false);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 'N/A', false);
INSERT INTO public.moon VALUES (13, 'Titan', 6, 'N/A', false);
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, 'N/A', false);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, 'N/A', false);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 'N/A', false);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 'N/A', false);
INSERT INTO public.moon VALUES (18, 'Titania', 7, 'N/A', false);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, 'N/A', false);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 'N/A', false);
INSERT INTO public.moon VALUES (21, 'Proteus', 8, 'N/A', false);
INSERT INTO public.moon VALUES (22, 'Nereid', 8, 'N/A', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, 1, 'N/A');
INSERT INTO public.planet VALUES (2, 'Venus', false, 0, 1, 'N/A');
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 1, 'N/A');
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 1, 'N/A');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4, 1, 'N/A');
INSERT INTO public.planet VALUES (6, 'Saturn', false, 7, 1, 'N/A');
INSERT INTO public.planet VALUES (7, 'Uranus', false, 5, 1, 'N/A');
INSERT INTO public.planet VALUES (8, 'Neptune', false, 3, 1, 'N/A');
INSERT INTO public.planet VALUES (9, 'Proxima b', false, 0, 2, 'N/A');
INSERT INTO public.planet VALUES (10, 'Proxima d', false, 0, 2, 'N/A');
INSERT INTO public.planet VALUES (11, 'Barnard b', false, 0, 3, 'N/A');
INSERT INTO public.planet VALUES (12, 'Gliese 411 b', false, 0, 7, 'N/A');
INSERT INTO public.planet VALUES (13, 'Gliese 411 c', false, 0, 7, 'N/A');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 8, 1, 'N/A');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 2, 1, 'N/A');
INSERT INTO public.star VALUES (3, 'Barnards Star', 1, 1, 'N/A');
INSERT INTO public.star VALUES (4, 'Luhman 16', 0, 1, 'N/A');
INSERT INTO public.star VALUES (5, 'WISE 0855-0714', 0, 1, 'N/A');
INSERT INTO public.star VALUES (6, 'Wolf 359', 0, 1, 'N/A');
INSERT INTO public.star VALUES (7, 'Lalande 21185', 2, 1, 'N/A');


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

