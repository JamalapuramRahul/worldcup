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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (475, 2018, 'Final', 639, 640, 4, 2);
INSERT INTO public.games VALUES (476, 2018, 'Third Place', 641, 642, 2, 0);
INSERT INTO public.games VALUES (477, 2018, 'Semi-Final', 640, 642, 2, 1);
INSERT INTO public.games VALUES (478, 2018, 'Semi-Final', 639, 641, 1, 0);
INSERT INTO public.games VALUES (479, 2018, 'Quarter-Final', 640, 643, 3, 2);
INSERT INTO public.games VALUES (480, 2018, 'Quarter-Final', 642, 644, 2, 0);
INSERT INTO public.games VALUES (481, 2018, 'Quarter-Final', 641, 645, 2, 1);
INSERT INTO public.games VALUES (482, 2018, 'Quarter-Final', 639, 646, 2, 0);
INSERT INTO public.games VALUES (483, 2018, 'Eighth-Final', 642, 647, 2, 1);
INSERT INTO public.games VALUES (484, 2018, 'Eighth-Final', 644, 648, 1, 0);
INSERT INTO public.games VALUES (485, 2018, 'Eighth-Final', 641, 649, 3, 2);
INSERT INTO public.games VALUES (486, 2018, 'Eighth-Final', 645, 650, 2, 0);
INSERT INTO public.games VALUES (487, 2018, 'Eighth-Final', 640, 651, 2, 1);
INSERT INTO public.games VALUES (488, 2018, 'Eighth-Final', 643, 652, 2, 1);
INSERT INTO public.games VALUES (489, 2018, 'Eighth-Final', 646, 653, 2, 1);
INSERT INTO public.games VALUES (490, 2018, 'Eighth-Final', 639, 654, 4, 3);
INSERT INTO public.games VALUES (491, 2014, 'Final', 655, 654, 1, 0);
INSERT INTO public.games VALUES (492, 2014, 'Third Place', 656, 645, 3, 0);
INSERT INTO public.games VALUES (493, 2014, 'Semi-Final', 654, 656, 1, 0);
INSERT INTO public.games VALUES (494, 2014, 'Semi-Final', 655, 645, 7, 1);
INSERT INTO public.games VALUES (495, 2014, 'Quarter-Final', 656, 657, 1, 0);
INSERT INTO public.games VALUES (496, 2014, 'Quarter-Final', 654, 641, 1, 0);
INSERT INTO public.games VALUES (497, 2014, 'Quarter-Final', 645, 647, 2, 1);
INSERT INTO public.games VALUES (498, 2014, 'Quarter-Final', 655, 639, 1, 0);
INSERT INTO public.games VALUES (499, 2014, 'Eighth-Final', 645, 658, 2, 1);
INSERT INTO public.games VALUES (500, 2014, 'Eighth-Final', 647, 646, 2, 0);
INSERT INTO public.games VALUES (501, 2014, 'Eighth-Final', 639, 659, 2, 0);
INSERT INTO public.games VALUES (502, 2014, 'Eighth-Final', 655, 660, 2, 1);
INSERT INTO public.games VALUES (503, 2014, 'Eighth-Final', 656, 650, 2, 1);
INSERT INTO public.games VALUES (504, 2014, 'Eighth-Final', 657, 661, 2, 1);
INSERT INTO public.games VALUES (505, 2014, 'Eighth-Final', 654, 648, 1, 0);
INSERT INTO public.games VALUES (506, 2014, 'Eighth-Final', 641, 662, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (639, 'France');
INSERT INTO public.teams VALUES (640, 'Croatia');
INSERT INTO public.teams VALUES (641, 'Belgium');
INSERT INTO public.teams VALUES (642, 'England');
INSERT INTO public.teams VALUES (643, 'Russia');
INSERT INTO public.teams VALUES (644, 'Sweden');
INSERT INTO public.teams VALUES (645, 'Brazil');
INSERT INTO public.teams VALUES (646, 'Uruguay');
INSERT INTO public.teams VALUES (647, 'Colombia');
INSERT INTO public.teams VALUES (648, 'Switzerland');
INSERT INTO public.teams VALUES (649, 'Japan');
INSERT INTO public.teams VALUES (650, 'Mexico');
INSERT INTO public.teams VALUES (651, 'Denmark');
INSERT INTO public.teams VALUES (652, 'Spain');
INSERT INTO public.teams VALUES (653, 'Portugal');
INSERT INTO public.teams VALUES (654, 'Argentina');
INSERT INTO public.teams VALUES (655, 'Germany');
INSERT INTO public.teams VALUES (656, 'Netherlands');
INSERT INTO public.teams VALUES (657, 'Costa Rica');
INSERT INTO public.teams VALUES (658, 'Chile');
INSERT INTO public.teams VALUES (659, 'Nigeria');
INSERT INTO public.teams VALUES (660, 'Algeria');
INSERT INTO public.teams VALUES (661, 'Greece');
INSERT INTO public.teams VALUES (662, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 506, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 662, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

