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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying(30) NOT NULL,
    comet_id numeric(4,1) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    year_discovered integer NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id numeric(4,1) NOT NULL,
    description text,
    has_life boolean,
    age integer NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id numeric(4,1) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age integer NOT NULL,
    distance_from_earth integer,
    planet_id numeric(4,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id numeric(4,1) NOT NULL,
    description text,
    has_life boolean,
    orbit integer NOT NULL,
    distance_from_earth integer,
    star_id numeric(4,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id numeric(4,1) NOT NULL,
    description text,
    has_life boolean,
    age integer NOT NULL,
    distance_from_earth integer,
    galaxy_id numeric(4,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('Halley', 1.0, NULL, NULL, NULL, 1531, NULL);
INSERT INTO public.comet VALUES ('Hale Bopp', 2.0, NULL, NULL, NULL, 1997, NULL);
INSERT INTO public.comet VALUES ('Tempel-Tuttel', 3.0, NULL, NULL, NULL, 1767, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1.0, NULL, NULL, 13500, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2.0, NULL, NULL, 10000, NULL);
INSERT INTO public.galaxy VALUES ('Magellanic', 3.0, NULL, NULL, 1000, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 4.0, NULL, NULL, 400, NULL);
INSERT INTO public.galaxy VALUES ('Pinwheel', 5.0, NULL, NULL, 400, NULL);
INSERT INTO public.galaxy VALUES ('Butterfly', 6.0, NULL, NULL, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1.0, NULL, NULL, NULL, 88, NULL, 3.0);
INSERT INTO public.moon VALUES ('Phobos', 2.0, NULL, NULL, NULL, 225, NULL, 4.0);
INSERT INTO public.moon VALUES ('Deimos', 3.0, NULL, NULL, NULL, 365, NULL, 4.0);
INSERT INTO public.moon VALUES ('Ganymede', 4.0, NULL, NULL, NULL, 687, NULL, 5.0);
INSERT INTO public.moon VALUES ('Callisto', 5.0, NULL, NULL, NULL, 4343, NULL, 5.0);
INSERT INTO public.moon VALUES ('Io', 6.0, NULL, NULL, NULL, 10767, NULL, 5.0);
INSERT INTO public.moon VALUES ('Europa', 7.0, NULL, NULL, NULL, 30660, NULL, 5.0);
INSERT INTO public.moon VALUES ('Titan', 8.0, NULL, NULL, NULL, 60225, NULL, 1.0);
INSERT INTO public.moon VALUES ('Enceladus', 9.0, NULL, NULL, NULL, 90520, NULL, 1.0);
INSERT INTO public.moon VALUES ('Hyperion', 10.0, NULL, NULL, NULL, 202940, NULL, 1.0);
INSERT INTO public.moon VALUES ('Prometheus', 11.0, NULL, NULL, NULL, 111325, NULL, 1.0);
INSERT INTO public.moon VALUES ('Pandora', 12.0, NULL, NULL, NULL, 1682, NULL, 1.0);
INSERT INTO public.moon VALUES ('Janus', 13.0, NULL, NULL, NULL, 88, NULL, 1.0);
INSERT INTO public.moon VALUES ('Epimetheus', 14.0, NULL, NULL, NULL, 687, NULL, 1.0);
INSERT INTO public.moon VALUES ('Mimas', 15.0, NULL, NULL, NULL, 4343, NULL, 6.0);
INSERT INTO public.moon VALUES ('Iapetus', 16.0, NULL, NULL, NULL, 10767, NULL, 6.0);
INSERT INTO public.moon VALUES ('Phoebe', 17.0, NULL, NULL, NULL, 30660, NULL, 6.0);
INSERT INTO public.moon VALUES ('Oberon', 18.0, NULL, NULL, NULL, 60225, NULL, 7.0);
INSERT INTO public.moon VALUES ('Triton', 19.0, NULL, NULL, NULL, 90520, NULL, 8.0);
INSERT INTO public.moon VALUES ('Charon', 20.0, NULL, NULL, NULL, 202940, NULL, 9.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1.0, NULL, NULL, 88, NULL, 1.0);
INSERT INTO public.planet VALUES ('Venus', 2.0, NULL, NULL, 225, NULL, 1.0);
INSERT INTO public.planet VALUES ('Earth', 3.0, NULL, NULL, 365, NULL, 1.0);
INSERT INTO public.planet VALUES ('Mars', 4.0, NULL, NULL, 687, NULL, 1.0);
INSERT INTO public.planet VALUES ('Jupiter', 5.0, NULL, NULL, 4343, NULL, 1.0);
INSERT INTO public.planet VALUES ('Saturn', 6.0, NULL, NULL, 10767, NULL, 1.0);
INSERT INTO public.planet VALUES ('Uranus', 7.0, NULL, NULL, 30660, NULL, 1.0);
INSERT INTO public.planet VALUES ('Neptune', 8.0, NULL, NULL, 60225, NULL, 1.0);
INSERT INTO public.planet VALUES ('Pluto', 9.0, NULL, NULL, 90520, NULL, 1.0);
INSERT INTO public.planet VALUES ('Eris', 10.0, NULL, NULL, 202940, NULL, 1.0);
INSERT INTO public.planet VALUES ('Makemake', 11.0, NULL, NULL, 111325, NULL, 1.0);
INSERT INTO public.planet VALUES ('Ceres', 12.0, NULL, NULL, 1682, NULL, 1.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Polaris', 1.0, NULL, NULL, 70, NULL, 1.0);
INSERT INTO public.star VALUES ('Sirius', 2.0, NULL, NULL, 230, NULL, 1.0);
INSERT INTO public.star VALUES ('Alpha Centauri', 3.0, NULL, NULL, 4850, NULL, 1.0);
INSERT INTO public.star VALUES ('Rigel', 4.0, NULL, NULL, 8, NULL, 1.0);
INSERT INTO public.star VALUES ('Pleiades', 5.0, NULL, NULL, 100, NULL, 1.0);
INSERT INTO public.star VALUES ('Antares', 6.0, NULL, NULL, 11, NULL, 1.0);


--
-- Name: comet comet_comet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_comet_id_key UNIQUE (comet_id);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

