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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 873, 2);
INSERT INTO public.games VALUES (2, 367, 2);
INSERT INTO public.games VALUES (3, 535, 3);
INSERT INTO public.games VALUES (4, 12, 3);
INSERT INTO public.games VALUES (5, 514, 2);
INSERT INTO public.games VALUES (6, 335, 2);
INSERT INTO public.games VALUES (7, 72, 2);
INSERT INTO public.games VALUES (8, 12, 1);
INSERT INTO public.games VALUES (9, 605, 4);
INSERT INTO public.games VALUES (10, 978, 4);
INSERT INTO public.games VALUES (11, 93, 5);
INSERT INTO public.games VALUES (12, 141, 5);
INSERT INTO public.games VALUES (13, 743, 4);
INSERT INTO public.games VALUES (14, 879, 4);
INSERT INTO public.games VALUES (15, 116, 4);
INSERT INTO public.games VALUES (16, 39, 6);
INSERT INTO public.games VALUES (17, 38, 6);
INSERT INTO public.games VALUES (18, 213, 7);
INSERT INTO public.games VALUES (19, 750, 7);
INSERT INTO public.games VALUES (20, 286, 6);
INSERT INTO public.games VALUES (21, 990, 6);
INSERT INTO public.games VALUES (22, 163, 6);
INSERT INTO public.games VALUES (23, 49, 8);
INSERT INTO public.games VALUES (24, 186, 8);
INSERT INTO public.games VALUES (25, 368, 9);
INSERT INTO public.games VALUES (26, 269, 9);
INSERT INTO public.games VALUES (27, 454, 8);
INSERT INTO public.games VALUES (28, 365, 8);
INSERT INTO public.games VALUES (29, 606, 8);
INSERT INTO public.games VALUES (30, 167, 10);
INSERT INTO public.games VALUES (31, 99, 10);
INSERT INTO public.games VALUES (32, 712, 11);
INSERT INTO public.games VALUES (33, 946, 11);
INSERT INTO public.games VALUES (34, 348, 10);
INSERT INTO public.games VALUES (35, 792, 10);
INSERT INTO public.games VALUES (36, 928, 10);
INSERT INTO public.games VALUES (37, 9, 1);
INSERT INTO public.games VALUES (38, 321, 12);
INSERT INTO public.games VALUES (39, 514, 12);
INSERT INTO public.games VALUES (40, 661, 13);
INSERT INTO public.games VALUES (41, 510, 13);
INSERT INTO public.games VALUES (42, 24, 12);
INSERT INTO public.games VALUES (43, 691, 12);
INSERT INTO public.games VALUES (44, 596, 12);
INSERT INTO public.games VALUES (45, 757, 14);
INSERT INTO public.games VALUES (46, 1000, 14);
INSERT INTO public.games VALUES (47, 44, 15);
INSERT INTO public.games VALUES (48, 931, 15);
INSERT INTO public.games VALUES (49, 884, 14);
INSERT INTO public.games VALUES (50, 580, 14);
INSERT INTO public.games VALUES (51, 491, 14);
INSERT INTO public.games VALUES (52, 186, 16);
INSERT INTO public.games VALUES (53, 890, 16);
INSERT INTO public.games VALUES (54, 325, 17);
INSERT INTO public.games VALUES (55, 607, 17);
INSERT INTO public.games VALUES (56, 231, 16);
INSERT INTO public.games VALUES (57, 9, 16);
INSERT INTO public.games VALUES (58, 148, 16);
INSERT INTO public.games VALUES (59, 281, 18);
INSERT INTO public.games VALUES (60, 394, 18);
INSERT INTO public.games VALUES (61, 975, 19);
INSERT INTO public.games VALUES (62, 773, 19);
INSERT INTO public.games VALUES (63, 319, 18);
INSERT INTO public.games VALUES (64, 832, 18);
INSERT INTO public.games VALUES (65, 542, 18);
INSERT INTO public.games VALUES (66, 9, 1);
INSERT INTO public.games VALUES (67, 637, 20);
INSERT INTO public.games VALUES (68, 74, 20);
INSERT INTO public.games VALUES (69, 74, 21);
INSERT INTO public.games VALUES (70, 542, 21);
INSERT INTO public.games VALUES (71, 950, 20);
INSERT INTO public.games VALUES (72, 510, 20);
INSERT INTO public.games VALUES (73, 274, 20);
INSERT INTO public.games VALUES (74, 301, 22);
INSERT INTO public.games VALUES (75, 259, 22);
INSERT INTO public.games VALUES (76, 609, 23);
INSERT INTO public.games VALUES (77, 489, 23);
INSERT INTO public.games VALUES (78, 970, 22);
INSERT INTO public.games VALUES (79, 826, 22);
INSERT INTO public.games VALUES (80, 248, 22);
INSERT INTO public.games VALUES (81, 348, 28);
INSERT INTO public.games VALUES (82, 720, 28);
INSERT INTO public.games VALUES (83, 811, 29);
INSERT INTO public.games VALUES (84, 1001, 29);
INSERT INTO public.games VALUES (85, 347, 28);
INSERT INTO public.games VALUES (86, 115, 28);
INSERT INTO public.games VALUES (87, 785, 28);
INSERT INTO public.games VALUES (88, 306, 30);
INSERT INTO public.games VALUES (89, 146, 30);
INSERT INTO public.games VALUES (90, 77, 31);
INSERT INTO public.games VALUES (91, 307, 31);
INSERT INTO public.games VALUES (92, 460, 30);
INSERT INTO public.games VALUES (93, 529, 30);
INSERT INTO public.games VALUES (94, 588, 30);
INSERT INTO public.games VALUES (95, 533, 32);
INSERT INTO public.games VALUES (96, 128, 32);
INSERT INTO public.games VALUES (97, 275, 33);
INSERT INTO public.games VALUES (98, 198, 33);
INSERT INTO public.games VALUES (99, 566, 32);
INSERT INTO public.games VALUES (100, 303, 32);
INSERT INTO public.games VALUES (101, 165, 32);
INSERT INTO public.games VALUES (102, 832, 34);
INSERT INTO public.games VALUES (103, 409, 34);
INSERT INTO public.games VALUES (104, 207, 35);
INSERT INTO public.games VALUES (105, 356, 35);
INSERT INTO public.games VALUES (106, 234, 34);
INSERT INTO public.games VALUES (107, 254, 34);
INSERT INTO public.games VALUES (108, 199, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Camp');
INSERT INTO public.users VALUES (2, 'user_1740369536353');
INSERT INTO public.users VALUES (3, 'user_1740369536352');
INSERT INTO public.users VALUES (4, 'user_1740369948249');
INSERT INTO public.users VALUES (5, 'user_1740369948248');
INSERT INTO public.users VALUES (6, 'user_1740369994767');
INSERT INTO public.users VALUES (7, 'user_1740369994766');
INSERT INTO public.users VALUES (8, 'user_1740370086539');
INSERT INTO public.users VALUES (9, 'user_1740370086538');
INSERT INTO public.users VALUES (10, 'user_1740370234055');
INSERT INTO public.users VALUES (11, 'user_1740370234054');
INSERT INTO public.users VALUES (12, 'user_1740370280619');
INSERT INTO public.users VALUES (13, 'user_1740370280618');
INSERT INTO public.users VALUES (14, 'user_1740370383762');
INSERT INTO public.users VALUES (15, 'user_1740370383761');
INSERT INTO public.users VALUES (16, 'user_1740370401914');
INSERT INTO public.users VALUES (17, 'user_1740370401913');
INSERT INTO public.users VALUES (18, 'user_1740370407337');
INSERT INTO public.users VALUES (19, 'user_1740370407336');
INSERT INTO public.users VALUES (20, 'user_1740370448036');
INSERT INTO public.users VALUES (21, 'user_1740370448035');
INSERT INTO public.users VALUES (22, 'user_1740370510633');
INSERT INTO public.users VALUES (23, 'user_1740370510632');
INSERT INTO public.users VALUES (24, 'user_1740370577010');
INSERT INTO public.users VALUES (25, 'user_1740370577009');
INSERT INTO public.users VALUES (26, 'user_1740370585588');
INSERT INTO public.users VALUES (27, 'user_1740370585587');
INSERT INTO public.users VALUES (28, 'user_1740370596595');
INSERT INTO public.users VALUES (29, 'user_1740370596594');
INSERT INTO public.users VALUES (30, 'user_1740370609290');
INSERT INTO public.users VALUES (31, 'user_1740370609289');
INSERT INTO public.users VALUES (32, 'user_1740370625823');
INSERT INTO public.users VALUES (33, 'user_1740370625822');
INSERT INTO public.users VALUES (34, 'user_1740370668569');
INSERT INTO public.users VALUES (35, 'user_1740370668568');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 108, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

