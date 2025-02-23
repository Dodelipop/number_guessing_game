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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL,
    played_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 618, 619, '2025-02-11 12:34:16.249488');
INSERT INTO public.games VALUES (2, 1, 713, 714, '2025-02-11 12:34:16.41474');
INSERT INTO public.games VALUES (3, 2, 655, 656, '2025-02-11 12:34:16.557476');
INSERT INTO public.games VALUES (4, 2, 458, 459, '2025-02-11 12:34:16.700434');
INSERT INTO public.games VALUES (5, 1, 532, 535, '2025-02-11 12:34:16.828537');
INSERT INTO public.games VALUES (6, 1, 244, 246, '2025-02-11 12:34:16.940697');
INSERT INTO public.games VALUES (7, 1, 653, 654, '2025-02-11 12:34:17.087412');
INSERT INTO public.games VALUES (8, 3, 655, 656, '2025-02-11 12:35:17.329394');
INSERT INTO public.games VALUES (9, 3, 718, 719, '2025-02-11 12:35:17.518799');
INSERT INTO public.games VALUES (10, 4, 744, 745, '2025-02-11 12:35:17.699865');
INSERT INTO public.games VALUES (11, 4, 13, 14, '2025-02-11 12:35:17.793945');
INSERT INTO public.games VALUES (12, 3, 989, 992, '2025-02-11 12:35:17.992528');
INSERT INTO public.games VALUES (13, 3, 164, 166, '2025-02-11 12:35:18.102942');
INSERT INTO public.games VALUES (14, 3, 208, 209, '2025-02-11 12:35:18.220646');
INSERT INTO public.games VALUES (15, 5, 284, 285, '2025-02-11 12:37:21.468881');
INSERT INTO public.games VALUES (16, 5, 588, 589, '2025-02-11 12:37:21.585192');
INSERT INTO public.games VALUES (17, 6, 906, 907, '2025-02-11 12:37:21.778681');
INSERT INTO public.games VALUES (18, 6, 995, 996, '2025-02-11 12:37:21.954458');
INSERT INTO public.games VALUES (19, 5, 765, 768, '2025-02-11 12:37:22.124084');
INSERT INTO public.games VALUES (20, 5, 20, 22, '2025-02-11 12:37:22.220461');
INSERT INTO public.games VALUES (21, 5, 535, 536, '2025-02-11 12:37:22.361911');
INSERT INTO public.games VALUES (22, 7, 590, 591, '2025-02-11 12:40:11.762367');
INSERT INTO public.games VALUES (23, 7, 138, 139, '2025-02-11 12:40:11.903968');
INSERT INTO public.games VALUES (24, 8, 522, 523, '2025-02-11 12:40:12.133386');
INSERT INTO public.games VALUES (25, 8, 304, 305, '2025-02-11 12:40:12.311772');
INSERT INTO public.games VALUES (26, 7, 809, 812, '2025-02-11 12:40:12.555744');
INSERT INTO public.games VALUES (27, 7, 565, 567, '2025-02-11 12:40:12.770311');
INSERT INTO public.games VALUES (28, 7, 766, 767, '2025-02-11 12:40:12.991853');


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1739277256092');
INSERT INTO public.players VALUES (2, 'user_1739277256091');
INSERT INTO public.players VALUES (3, 'user_1739277317135');
INSERT INTO public.players VALUES (4, 'user_1739277317134');
INSERT INTO public.players VALUES (5, 'user_1739277441340');
INSERT INTO public.players VALUES (6, 'user_1739277441339');
INSERT INTO public.players VALUES (7, 'user_1739277611505');
INSERT INTO public.players VALUES (8, 'user_1739277611504');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 8, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--