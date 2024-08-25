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
    size_km integer,
    star_id integer,
    mass_tonnes numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    description text,
    diameter_km numeric
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
    description text,
    is_spherical boolean,
    planet_id integer,
    radius_km numeric
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
    has_life boolean,
    planet_types character varying(30),
    star_id integer,
    diameter_km integer
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
    galaxy_id integer,
    mass_solar numeric
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940, 1, NULL);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525, 1, NULL);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512, 2, NULL);
INSERT INTO public.asteroid VALUES (4, 'Juno', 233, 3, NULL);
INSERT INTO public.asteroid VALUES (5, 'Hygeia', 430, 4, NULL);
INSERT INTO public.asteroid VALUES (6, 'Eros', 17, 5, NULL);
INSERT INTO public.asteroid VALUES (7, 'Psyche', 226, 6, NULL);
INSERT INTO public.asteroid VALUES (8, 'Eunomia', 255, 7, NULL);
INSERT INTO public.asteroid VALUES (9, 'Davida', 360, 8, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'The galaxy containing the solar system.', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 'Nearest spiral galaxy to the Milky Way.', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 'Third-largest galaxy in the Local Group.', NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', 'Massive galaxy with a supermassive black hole at its center.', NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'Spiral', 'Classic spiral galaxy with a prominent spiral structure.', NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Spiral', 'Spiral galaxy known for its bright core and large central bulge.', NULL);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 'Irregular', 'Irregular galaxy and a satellite galaxy of the Milky Way.', NULL);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 'Irregular', 'Another irregular galaxy near the Milky Way.', NULL);
INSERT INTO public.galaxy VALUES (9, 'NGC 1300', 'Spiral', 'Spiral galaxy with a large bar structure.', NULL);
INSERT INTO public.galaxy VALUES (10, 'Messier 31', 'Spiral', 'Another name for the Andromeda Galaxy.', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths only natural satellite.', true, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Largest moon of Mars.', true, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Smaller moon of Mars.', true, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active moon of Jupiter.', true, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 'Moon of Jupiter with a potential subsurface ocean.', true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the Solar System.', true, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Moon of Jupiter with many craters.', true, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 'Largest moon of Saturn with a thick atmosphere.', true, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Moon of Saturn with a bright, icy surface.', true, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Saturnian moon with geysers erupting from its surface.', true, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Mimas', 'Small moon of Saturn known for its large crater.', true, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Moon of Saturn with a large ring-like feature.', true, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Iapetus', 'Moon of Saturn with a unique color difference.', true, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Hyperion', 'Irregularly shaped moon of Saturn.', false, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Moon of Uranus with a diverse surface.', true, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Dark moon of Uranus.', true, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 'Largest moon of Uranus.', true, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 'Moon of Uranus with a heavily cratered surface.', true, 7, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 'Largest moon of Neptune with geysers.', true, 8, NULL);
INSERT INTO public.moon VALUES (20, 'Proteus', 'Irregularly shaped moon of Neptune.', false, 8, NULL);
INSERT INTO public.moon VALUES (21, 'Nereid', 'Highly elliptical moon of Neptune.', true, 8, NULL);
INSERT INTO public.moon VALUES (22, 'Charon', 'Largest moon of Pluto.', true, 10, NULL);
INSERT INTO public.moon VALUES (23, 'Styx', 'Small moon of Pluto.', true, 10, NULL);
INSERT INTO public.moon VALUES (24, 'Nix', 'Moon of Pluto discovered in 2005.', true, 10, NULL);
INSERT INTO public.moon VALUES (25, 'Kerberos', 'Smallest known moon of Pluto.', true, 10, NULL);
INSERT INTO public.moon VALUES (28, 'Miranda', 'Moon of Uranus with extreme topographical features.', true, 7, NULL);
INSERT INTO public.moon VALUES (29, 'Desdemona', 'One of the smaller moons of Uranus.', true, 7, NULL);
INSERT INTO public.moon VALUES (31, 'Himalia', 'Largest irregular moon of Jupiter.', true, 5, NULL);
INSERT INTO public.moon VALUES (30, 'Trton', 'Moon of Neptune with a retrograde orbit.', true, 8, NULL);
INSERT INTO public.moon VALUES (26, 'Gaymede', 'Largest moon of Jupiter with a magnetic field.', true, 5, NULL);
INSERT INTO public.moon VALUES (27, 'Encelads', 'Saturnian moon with a subsurface ocean and plumes.', true, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to the Sun.', false, 'Terrestrial', 1, 4879);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun.', false, 'Terrestrial', 1, 12104);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet.', true, 'Terrestrial', 1, 12742);
INSERT INTO public.planet VALUES (4, 'Mars', 'Fourth planet from the Sun.', false, 'Terrestrial', 1, 6779);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the Solar System.', false, 'Gas Giant', 1, 139820);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Known for its prominent ring system.', false, 'Gas Giant', 1, 116460);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with a unique tilt.', false, 'Ice Giant', 1, 50724);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Farthest planet from the Sun.', false, 'Ice Giant', 1, 49244);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Potentially habitable exoplanet.', true, 'Exoplanet', 6, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'Exoplanet in the habitable zone.', false, 'Exoplanet', 7, 2);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 'Potentially habitable exoplanet.', true, 'Exoplanet', 8, 2);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 'First exoplanet discovered transiting its star.', false, 'Exoplanet', 9, 1);
INSERT INTO public.planet VALUES (13, 'WASP-12b', 'Hot Jupiter with a short orbital period.', false, 'Exoplanet', 10, 1);
INSERT INTO public.planet VALUES (14, 'TrES-2b', 'One of the darkest exoplanets.', false, 'Exoplanet', 4, 2);
INSERT INTO public.planet VALUES (15, 'HAT-P-7b', 'Exoplanet known for its extreme weather.', false, 'Exoplanet', 5, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'The brightest star in the night sky.', 1, NULL);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red supergiant star in the Orion constellation.', 1, NULL);
INSERT INTO public.star VALUES (3, 'Altair', 'Brightest star in the constellation Aquila.', 2, NULL);
INSERT INTO public.star VALUES (4, 'Polaris', 'North Star, located in the constellation Ursa Minor.', 1, NULL);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Closest known star to the Sun.', 1, NULL);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 'Star in the constellation Cetus, similar to the Sun.', 3, NULL);
INSERT INTO public.star VALUES (7, 'Vega', 'One of the most luminous stars in the night sky.', 4, NULL);
INSERT INTO public.star VALUES (8, 'Rigel', 'Blue supergiant star in the Orion constellation.', 1, NULL);
INSERT INTO public.star VALUES (9, 'Deneb', 'Brightest star in the constellation Cygnus.', 5, NULL);
INSERT INTO public.star VALUES (10, 'Spica', 'Brightest star in the constellation Virgo.', 6, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 31, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

