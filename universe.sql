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
    name character varying(32),
    age integer NOT NULL,
    description text,
    size numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: life_forms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_forms (
    life_forms_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text
);


ALTER TABLE public.life_forms OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(32),
    size integer NOT NULL,
    age integer NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(32),
    size integer NOT NULL,
    age integer NOT NULL,
    description text,
    life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(32),
    size integer NOT NULL,
    age integer NOT NULL,
    description text,
    dead boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 10000000, 'no se 1', 1111111);
INSERT INTO public.galaxy VALUES (2, 'andromeda2', 20000000, 'no se 2', 2222222);
INSERT INTO public.galaxy VALUES (3, 'andromeda3', 30000000, 'no se 3', 3333333);
INSERT INTO public.galaxy VALUES (4, 'Milky Way 1', 40000000, 'en esta vivo', 1234567);
INSERT INTO public.galaxy VALUES (5, 'Via Lactea', 50000000, 'en esta vivo en español', 7419511);
INSERT INTO public.galaxy VALUES (6, 'Lactose Free Way', 60000000, 'where lactose intolerant people live', 77757);


--
-- Data for Name: life_forms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_forms VALUES (1, 'Bacteria', 'bichos chiquitos microscopicos');
INSERT INTO public.life_forms VALUES (2, 'Plantas', 'no se como definir las plantas');
INSERT INTO public.life_forms VALUES (3, 'Animal', 'un bicho posta');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 882, 4365, 'description n1', 8);
INSERT INTO public.moon VALUES (2, 'moon2', 152, 5675, 'description n2', 1);
INSERT INTO public.moon VALUES (3, 'moon3', 586, 1043, 'description n3', 7);
INSERT INTO public.moon VALUES (4, 'moon4', 816, 3592, 'description n4', 11);
INSERT INTO public.moon VALUES (5, 'moon5', 259, 8521, 'description n5', 9);
INSERT INTO public.moon VALUES (6, 'moon6', 819, 7267, 'description n6', 4);
INSERT INTO public.moon VALUES (7, 'moon7', 942, 4845, 'description n7', 8);
INSERT INTO public.moon VALUES (8, 'moon8', 152, 5675, 'description n8', 2);
INSERT INTO public.moon VALUES (9, 'moon9', 181, 1741, 'description n9', 9);
INSERT INTO public.moon VALUES (10, 'moon10', 516, 3552, 'description n10', 8);
INSERT INTO public.moon VALUES (11, 'moon11', 219, 1521, 'description n11', 9);
INSERT INTO public.moon VALUES (12, 'moon12', 919, 7299, 'description n12', 1);
INSERT INTO public.moon VALUES (13, 'moon13', 132, 8135, 'description n13', 6);
INSERT INTO public.moon VALUES (14, 'moon14', 772, 5105, 'description n14', 4);
INSERT INTO public.moon VALUES (15, 'moon15', 101, 4771, 'description n15', 3);
INSERT INTO public.moon VALUES (16, 'moon16', 616, 4252, 'description n16', 12);
INSERT INTO public.moon VALUES (17, 'moon17', 297, 7501, 'description n17', 10);
INSERT INTO public.moon VALUES (18, 'moon18', 890, 1009, 'description n18', 2);
INSERT INTO public.moon VALUES (19, 'moon19', 760, 1135, 'description n19', 7);
INSERT INTO public.moon VALUES (20, 'moon20', 132, 6879, 'description n20', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1000, 12345, 'no se', false, 5);
INSERT INTO public.planet VALUES (2, 'Venus', 2000, 22334, 'no se', false, 5);
INSERT INTO public.planet VALUES (3, 'Earth', 3000, 55555, 'aca vivo', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4000, 64591, 'es rojo', true, 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5000, 64646, 'creo que era el de los anillos', false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 6000, 77777, 'este es el de los anillos', false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 6969, 69696, 'xD', false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 8000, 88888, 'como el del awa', false, 7);
INSERT INTO public.planet VALUES (9, 'Planet1', 9000, 99999, 'inventado1', true, 6);
INSERT INTO public.planet VALUES (10, 'Planet2', 9001, 90009, 'inventado2', false, 4);
INSERT INTO public.planet VALUES (11, 'Planet3', 9002, 90011, 'inventado3', true, 5);
INSERT INTO public.planet VALUES (12, 'Planet4', 9003, 90012, 'inventado4', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Virgo', 111, 717171, 'ta por ahi 1', false, 6);
INSERT INTO public.star VALUES (2, 'Cancer', 222, 321478, 'la edgy', true, 4);
INSERT INTO public.star VALUES (3, 'Aries', 333, 741852, 'tiene virus', false, 1);
INSERT INTO public.star VALUES (4, 'Tauro', 444, 951847, 'lavaca muuu', false, 5);
INSERT INTO public.star VALUES (5, 'Leo', 555, 149863, 'Whitefang', false, 4);
INSERT INTO public.star VALUES (6, 'Ursula Mayor', 666, 321654, 'que se yo', true, 6);
INSERT INTO public.star VALUES (7, 'Ursula Menor', 777, 951847, 'ni idea', false, 6);


--
-- Name: galaxy constname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constname UNIQUE (name);


--
-- Name: moon constnamemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constnamemoon UNIQUE (name);


--
-- Name: planet constnameplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constnameplanet UNIQUE (name);


--
-- Name: star constnamestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constnamestar UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life_forms life_forms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_name_key UNIQUE (name);


--
-- Name: life_forms life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_pkey PRIMARY KEY (life_forms_id);


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

