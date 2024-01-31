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
    user_id integer NOT NULL,
    guess_count integer NOT NULL
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 2, 2);
INSERT INTO public.games VALUES (2, 2, 7);
INSERT INTO public.games VALUES (3, 2, 5);
INSERT INTO public.games VALUES (4, 1, 6);
INSERT INTO public.games VALUES (5, 1, 5);
INSERT INTO public.games VALUES (6, 1, 10);
INSERT INTO public.games VALUES (7, 1, 5);
INSERT INTO public.games VALUES (8, 2, 3);
INSERT INTO public.games VALUES (9, 3, 691);
INSERT INTO public.games VALUES (10, 4, 811);
INSERT INTO public.games VALUES (11, 3, 621);
INSERT INTO public.games VALUES (12, 3, 221);
INSERT INTO public.games VALUES (13, 3, 538);
INSERT INTO public.games VALUES (14, 1, 10);
INSERT INTO public.games VALUES (15, 5, 450);
INSERT INTO public.games VALUES (16, 6, 580);
INSERT INTO public.games VALUES (17, 5, 78);
INSERT INTO public.games VALUES (18, 5, 979);
INSERT INTO public.games VALUES (19, 5, 331);
INSERT INTO public.games VALUES (20, 1, 8);
INSERT INTO public.games VALUES (21, 9, 345);
INSERT INTO public.games VALUES (22, 10, 933);
INSERT INTO public.games VALUES (23, 9, 119);
INSERT INTO public.games VALUES (24, 9, 83);
INSERT INTO public.games VALUES (25, 9, 749);
INSERT INTO public.games VALUES (26, 11, 404);
INSERT INTO public.games VALUES (27, 12, 856);
INSERT INTO public.games VALUES (28, 11, 835);
INSERT INTO public.games VALUES (29, 11, 557);
INSERT INTO public.games VALUES (30, 11, 131);
INSERT INTO public.games VALUES (31, 2, 9);
INSERT INTO public.games VALUES (32, 1, 10);
INSERT INTO public.games VALUES (33, 13, 127);
INSERT INTO public.games VALUES (34, 14, 847);
INSERT INTO public.games VALUES (35, 13, 777);
INSERT INTO public.games VALUES (36, 13, 226);
INSERT INTO public.games VALUES (37, 13, 726);
INSERT INTO public.games VALUES (38, 15, 248);
INSERT INTO public.games VALUES (39, 16, 225);
INSERT INTO public.games VALUES (40, 16, 829);
INSERT INTO public.games VALUES (41, 17, 734);
INSERT INTO public.games VALUES (42, 18, 640);
INSERT INTO public.games VALUES (43, 17, 565);
INSERT INTO public.games VALUES (44, 17, 776);
INSERT INTO public.games VALUES (45, 17, 313);
INSERT INTO public.games VALUES (46, 19, 520);
INSERT INTO public.games VALUES (47, 20, 900);
INSERT INTO public.games VALUES (48, 19, 42);
INSERT INTO public.games VALUES (49, 19, 410);
INSERT INTO public.games VALUES (50, 19, 407);
INSERT INTO public.games VALUES (51, 1, 11);
INSERT INTO public.games VALUES (52, 1, 7);
INSERT INTO public.games VALUES (53, 21, 613);
INSERT INTO public.games VALUES (54, 22, 257);
INSERT INTO public.games VALUES (55, 21, 542);
INSERT INTO public.games VALUES (56, 21, 373);
INSERT INTO public.games VALUES (57, 23, 910);
INSERT INTO public.games VALUES (58, 24, 282);
INSERT INTO public.games VALUES (59, 23, 151);
INSERT INTO public.games VALUES (60, 23, 410);
INSERT INTO public.games VALUES (61, 23, 965);
INSERT INTO public.games VALUES (62, 25, 38);
INSERT INTO public.games VALUES (63, 26, 949);
INSERT INTO public.games VALUES (64, 25, 462);
INSERT INTO public.games VALUES (65, 25, 155);
INSERT INTO public.games VALUES (66, 25, 363);
INSERT INTO public.games VALUES (67, 27, 637);
INSERT INTO public.games VALUES (68, 28, 950);
INSERT INTO public.games VALUES (69, 27, 757);
INSERT INTO public.games VALUES (70, 27, 420);
INSERT INTO public.games VALUES (71, 27, 650);
INSERT INTO public.games VALUES (72, 29, 566);
INSERT INTO public.games VALUES (73, 30, 728);
INSERT INTO public.games VALUES (74, 29, 364);
INSERT INTO public.games VALUES (75, 29, 809);
INSERT INTO public.games VALUES (76, 29, 173);
INSERT INTO public.games VALUES (77, 31, 419);
INSERT INTO public.games VALUES (78, 32, 646);
INSERT INTO public.games VALUES (79, 31, 294);
INSERT INTO public.games VALUES (80, 31, 143);
INSERT INTO public.games VALUES (81, 31, 514);
INSERT INTO public.games VALUES (82, 33, 253);
INSERT INTO public.games VALUES (83, 34, 473);
INSERT INTO public.games VALUES (84, 33, 933);
INSERT INTO public.games VALUES (85, 33, 454);
INSERT INTO public.games VALUES (86, 33, 414);
INSERT INTO public.games VALUES (87, 35, 867);
INSERT INTO public.games VALUES (88, 36, 688);
INSERT INTO public.games VALUES (89, 35, 912);
INSERT INTO public.games VALUES (90, 35, 74);
INSERT INTO public.games VALUES (91, 35, 772);
INSERT INTO public.games VALUES (92, 37, 374);
INSERT INTO public.games VALUES (93, 38, 64);
INSERT INTO public.games VALUES (94, 37, 687);
INSERT INTO public.games VALUES (95, 37, 85);
INSERT INTO public.games VALUES (96, 37, 200);
INSERT INTO public.games VALUES (97, 39, 536);
INSERT INTO public.games VALUES (98, 40, 837);
INSERT INTO public.games VALUES (99, 39, 258);
INSERT INTO public.games VALUES (100, 39, 123);
INSERT INTO public.games VALUES (101, 39, 404);
INSERT INTO public.games VALUES (102, 41, 983);
INSERT INTO public.games VALUES (103, 42, 494);
INSERT INTO public.games VALUES (104, 41, 824);
INSERT INTO public.games VALUES (105, 41, 24);
INSERT INTO public.games VALUES (106, 41, 455);
INSERT INTO public.games VALUES (107, 43, 669);
INSERT INTO public.games VALUES (108, 44, 477);
INSERT INTO public.games VALUES (109, 43, 367);
INSERT INTO public.games VALUES (110, 43, 533);
INSERT INTO public.games VALUES (111, 43, 216);
INSERT INTO public.games VALUES (112, 45, 696);
INSERT INTO public.games VALUES (113, 46, 898);
INSERT INTO public.games VALUES (114, 45, 910);
INSERT INTO public.games VALUES (115, 45, 372);
INSERT INTO public.games VALUES (116, 45, 495);
INSERT INTO public.games VALUES (117, 47, 80);
INSERT INTO public.games VALUES (118, 48, 590);
INSERT INTO public.games VALUES (119, 47, 722);
INSERT INTO public.games VALUES (120, 47, 332);
INSERT INTO public.games VALUES (121, 47, 664);
INSERT INTO public.games VALUES (122, 49, 472);
INSERT INTO public.games VALUES (123, 50, 782);
INSERT INTO public.games VALUES (124, 49, 418);
INSERT INTO public.games VALUES (125, 49, 618);
INSERT INTO public.games VALUES (126, 49, 889);
INSERT INTO public.games VALUES (127, 51, 775);
INSERT INTO public.games VALUES (128, 52, 407);
INSERT INTO public.games VALUES (129, 51, 291);
INSERT INTO public.games VALUES (130, 51, 758);
INSERT INTO public.games VALUES (131, 51, 966);
INSERT INTO public.games VALUES (132, 53, 384);
INSERT INTO public.games VALUES (133, 54, 898);
INSERT INTO public.games VALUES (134, 53, 471);
INSERT INTO public.games VALUES (135, 53, 882);
INSERT INTO public.games VALUES (136, 53, 456);
INSERT INTO public.games VALUES (137, 55, 867);
INSERT INTO public.games VALUES (138, 56, 359);
INSERT INTO public.games VALUES (139, 55, 54);
INSERT INTO public.games VALUES (140, 55, 872);
INSERT INTO public.games VALUES (141, 55, 478);
INSERT INTO public.games VALUES (142, 57, 78);
INSERT INTO public.games VALUES (143, 58, 327);
INSERT INTO public.games VALUES (144, 57, 541);
INSERT INTO public.games VALUES (145, 57, 870);
INSERT INTO public.games VALUES (146, 57, 17);
INSERT INTO public.games VALUES (147, 59, 392);
INSERT INTO public.games VALUES (148, 60, 389);
INSERT INTO public.games VALUES (149, 59, 735);
INSERT INTO public.games VALUES (150, 59, 266);
INSERT INTO public.games VALUES (151, 59, 870);
INSERT INTO public.games VALUES (160, 85, 884);
INSERT INTO public.games VALUES (161, 84, 204);
INSERT INTO public.games VALUES (162, 84, 774);
INSERT INTO public.games VALUES (163, 84, 102);
INSERT INTO public.games VALUES (164, 86, 2);
INSERT INTO public.games VALUES (165, 87, 497);
INSERT INTO public.games VALUES (166, 86, 452);
INSERT INTO public.games VALUES (167, 86, 756);
INSERT INTO public.games VALUES (168, 86, 332);
INSERT INTO public.games VALUES (169, 88, 781);
INSERT INTO public.games VALUES (170, 89, 335);
INSERT INTO public.games VALUES (171, 88, 715);
INSERT INTO public.games VALUES (172, 88, 998);
INSERT INTO public.games VALUES (173, 88, 899);
INSERT INTO public.games VALUES (174, 90, 642);
INSERT INTO public.games VALUES (175, 91, 331);
INSERT INTO public.games VALUES (176, 90, 248);
INSERT INTO public.games VALUES (177, 90, 731);
INSERT INTO public.games VALUES (178, 90, 85);
INSERT INTO public.games VALUES (179, 92, 43);
INSERT INTO public.games VALUES (180, 93, 725);
INSERT INTO public.games VALUES (181, 92, 152);
INSERT INTO public.games VALUES (182, 92, 272);
INSERT INTO public.games VALUES (183, 92, 989);
INSERT INTO public.games VALUES (184, 94, 938);
INSERT INTO public.games VALUES (185, 95, 714);
INSERT INTO public.games VALUES (186, 94, 443);
INSERT INTO public.games VALUES (187, 94, 999);
INSERT INTO public.games VALUES (188, 94, 329);
INSERT INTO public.games VALUES (189, 96, 597);
INSERT INTO public.games VALUES (190, 97, 908);
INSERT INTO public.games VALUES (191, 96, 697);
INSERT INTO public.games VALUES (192, 96, 318);
INSERT INTO public.games VALUES (193, 96, 28);
INSERT INTO public.games VALUES (194, 98, 739);
INSERT INTO public.games VALUES (195, 99, 277);
INSERT INTO public.games VALUES (196, 98, 615);
INSERT INTO public.games VALUES (197, 98, 397);
INSERT INTO public.games VALUES (198, 98, 545);
INSERT INTO public.games VALUES (199, 100, 166);
INSERT INTO public.games VALUES (200, 101, 50);
INSERT INTO public.games VALUES (201, 100, 581);
INSERT INTO public.games VALUES (202, 100, 15);
INSERT INTO public.games VALUES (203, 100, 524);
INSERT INTO public.games VALUES (204, 102, 250);
INSERT INTO public.games VALUES (205, 103, 22);
INSERT INTO public.games VALUES (206, 102, 808);
INSERT INTO public.games VALUES (207, 102, 692);
INSERT INTO public.games VALUES (208, 102, 447);
INSERT INTO public.games VALUES (209, 104, 422);
INSERT INTO public.games VALUES (210, 105, 512);
INSERT INTO public.games VALUES (211, 104, 160);
INSERT INTO public.games VALUES (212, 104, 589);
INSERT INTO public.games VALUES (213, 104, 563);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'yasin');
INSERT INTO public.users VALUES (2, 'omer');
INSERT INTO public.users VALUES (3, 'user_1706533771238');
INSERT INTO public.users VALUES (4, 'user_1706533771237');
INSERT INTO public.users VALUES (5, 'user_1706550624197');
INSERT INTO public.users VALUES (6, 'user_1706550624196');
INSERT INTO public.users VALUES (7, 'user_1706551320201');
INSERT INTO public.users VALUES (8, 'user_1706551320200');
INSERT INTO public.users VALUES (9, 'user_1706552122837');
INSERT INTO public.users VALUES (10, 'user_1706552122836');
INSERT INTO public.users VALUES (11, 'user_1706552479560');
INSERT INTO public.users VALUES (12, 'user_1706552479559');
INSERT INTO public.users VALUES (13, 'user_1706552927684');
INSERT INTO public.users VALUES (14, 'user_1706552927683');
INSERT INTO public.users VALUES (15, 'user_1706553002548');
INSERT INTO public.users VALUES (16, 'user_1706553002549');
INSERT INTO public.users VALUES (17, 'user_1706553962090');
INSERT INTO public.users VALUES (18, 'user_1706553962089');
INSERT INTO public.users VALUES (19, 'user_1706554600541');
INSERT INTO public.users VALUES (20, 'user_1706554600540');
INSERT INTO public.users VALUES (21, 'user_1706555205362');
INSERT INTO public.users VALUES (22, 'user_1706555205361');
INSERT INTO public.users VALUES (23, 'user_1706555397238');
INSERT INTO public.users VALUES (24, 'user_1706555397237');
INSERT INTO public.users VALUES (25, 'user_1706556424128');
INSERT INTO public.users VALUES (26, 'user_1706556424127');
INSERT INTO public.users VALUES (27, 'user_1706556753172');
INSERT INTO public.users VALUES (28, 'user_1706556753171');
INSERT INTO public.users VALUES (29, 'user_1706557581872');
INSERT INTO public.users VALUES (30, 'user_1706557581871');
INSERT INTO public.users VALUES (31, 'user_1706632129343');
INSERT INTO public.users VALUES (32, 'user_1706632129342');
INSERT INTO public.users VALUES (33, 'user_1706633825986');
INSERT INTO public.users VALUES (34, 'user_1706633825985');
INSERT INTO public.users VALUES (35, 'user_1706634044278');
INSERT INTO public.users VALUES (36, 'user_1706634044277');
INSERT INTO public.users VALUES (37, 'user_1706634449262');
INSERT INTO public.users VALUES (38, 'user_1706634449261');
INSERT INTO public.users VALUES (39, 'user_1706634511165');
INSERT INTO public.users VALUES (40, 'user_1706634511164');
INSERT INTO public.users VALUES (41, 'user_1706634972023');
INSERT INTO public.users VALUES (42, 'user_1706634972022');
INSERT INTO public.users VALUES (43, 'user_1706635220225');
INSERT INTO public.users VALUES (44, 'user_1706635220224');
INSERT INTO public.users VALUES (45, 'user_1706635435136');
INSERT INTO public.users VALUES (46, 'user_1706635435135');
INSERT INTO public.users VALUES (47, 'user_1706635470286');
INSERT INTO public.users VALUES (48, 'user_1706635470285');
INSERT INTO public.users VALUES (49, 'user_1706635966441');
INSERT INTO public.users VALUES (50, 'user_1706635966440');
INSERT INTO public.users VALUES (51, 'user_1706637010056');
INSERT INTO public.users VALUES (52, 'user_1706637010055');
INSERT INTO public.users VALUES (53, 'user_1706637017865');
INSERT INTO public.users VALUES (54, 'user_1706637017864');
INSERT INTO public.users VALUES (55, 'user_1706637024152');
INSERT INTO public.users VALUES (56, 'user_1706637024151');
INSERT INTO public.users VALUES (57, 'user_1706637027928');
INSERT INTO public.users VALUES (58, 'user_1706637027927');
INSERT INTO public.users VALUES (59, 'user_1706637033885');
INSERT INTO public.users VALUES (60, 'user_1706637033884');
INSERT INTO public.users VALUES (84, 'user_1706637098212');
INSERT INTO public.users VALUES (85, 'user_1706637098211');
INSERT INTO public.users VALUES (86, 'user_1706637114173');
INSERT INTO public.users VALUES (87, 'user_1706637114172');
INSERT INTO public.users VALUES (88, 'user_1706637121470');
INSERT INTO public.users VALUES (89, 'user_1706637121469');
INSERT INTO public.users VALUES (90, 'user_1706637126702');
INSERT INTO public.users VALUES (91, 'user_1706637126701');
INSERT INTO public.users VALUES (92, 'user_1706637131151');
INSERT INTO public.users VALUES (93, 'user_1706637131150');
INSERT INTO public.users VALUES (94, 'user_1706637135396');
INSERT INTO public.users VALUES (95, 'user_1706637135395');
INSERT INTO public.users VALUES (96, 'user_1706637139631');
INSERT INTO public.users VALUES (97, 'user_1706637139630');
INSERT INTO public.users VALUES (98, 'user_1706637144522');
INSERT INTO public.users VALUES (99, 'user_1706637144521');
INSERT INTO public.users VALUES (100, 'user_1706637150277');
INSERT INTO public.users VALUES (101, 'user_1706637150276');
INSERT INTO public.users VALUES (102, 'user_1706637159175');
INSERT INTO public.users VALUES (103, 'user_1706637159174');
INSERT INTO public.users VALUES (104, 'user_1706637163833');
INSERT INTO public.users VALUES (105, 'user_1706637163832');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 213, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 105, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

