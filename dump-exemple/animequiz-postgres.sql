--
-- PostgreSQL database dump complete
--

--
-- Database "animequiz" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

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

--
-- Name: animequiz; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE animequiz WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE animequiz OWNER TO postgres;

\connect animequiz

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
-- Name: affiliation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.affiliation (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.affiliation OWNER TO postgres;

--
-- Name: affiliation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.affiliation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.affiliation_id_seq OWNER TO postgres;

--
-- Name: affiliation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.affiliation_id_seq OWNED BY public.affiliation.id;


--
-- Name: character_affiliation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_affiliation (
    id_character integer NOT NULL,
    id_affiliation integer NOT NULL
);


ALTER TABLE public.character_affiliation OWNER TO postgres;

--
-- Name: character_clan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_clan (
    id_character integer NOT NULL,
    id_clan integer NOT NULL
);


ALTER TABLE public.character_clan OWNER TO postgres;

--
-- Name: character_classification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_classification (
    id_character integer NOT NULL,
    id_classification integer NOT NULL
);


ALTER TABLE public.character_classification OWNER TO postgres;

--
-- Name: character_family; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_family (
    id_character integer NOT NULL,
    id_family integer NOT NULL
);


ALTER TABLE public.character_family OWNER TO postgres;

--
-- Name: character_kekkei_genkai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_kekkei_genkai (
    id_character integer NOT NULL,
    id_kekkei_genkai integer NOT NULL
);


ALTER TABLE public.character_kekkei_genkai OWNER TO postgres;

--
-- Name: character_nature_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_nature_type (
    id_character integer NOT NULL,
    id_nature_type integer NOT NULL
);


ALTER TABLE public.character_nature_type OWNER TO postgres;

--
-- Name: character_partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_partner (
    id_character integer NOT NULL,
    id_partner integer NOT NULL
);


ALTER TABLE public.character_partner OWNER TO postgres;

--
-- Name: character_team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.character_team (
    id_character integer NOT NULL,
    id_team integer NOT NULL
);


ALTER TABLE public.character_team OWNER TO postgres;

--
-- Name: characters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.characters (
    id integer NOT NULL,
    name character varying NOT NULL,
    birthday character varying
);


ALTER TABLE public.characters OWNER TO postgres;

--
-- Name: characters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.characters_id_seq OWNER TO postgres;

--
-- Name: characters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.characters_id_seq OWNED BY public.characters.id;


--
-- Name: clan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clan (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.clan OWNER TO postgres;

--
-- Name: clan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clan_id_seq OWNER TO postgres;

--
-- Name: clan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clan_id_seq OWNED BY public.clan.id;


--
-- Name: classification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classification (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.classification OWNER TO postgres;

--
-- Name: classification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classification_id_seq OWNER TO postgres;

--
-- Name: classification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classification_id_seq OWNED BY public.classification.id;


--
-- Name: family; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.family OWNER TO postgres;

--
-- Name: family_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.family_id_seq OWNER TO postgres;

--
-- Name: family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.family_id_seq OWNED BY public.family.id;


--
-- Name: jutsu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jutsu (
    id integer NOT NULL,
    name character varying NOT NULL,
    id_character integer NOT NULL
);


ALTER TABLE public.jutsu OWNER TO postgres;

--
-- Name: jutsu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jutsu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jutsu_id_seq OWNER TO postgres;

--
-- Name: jutsu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jutsu_id_seq OWNED BY public.jutsu.id;


--
-- Name: kekkei_genkai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kekkei_genkai (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.kekkei_genkai OWNER TO postgres;

--
-- Name: kekkei_genkai_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kekkei_genkai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kekkei_genkai_id_seq OWNER TO postgres;

--
-- Name: kekkei_genkai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kekkei_genkai_id_seq OWNED BY public.kekkei_genkai.id;


--
-- Name: nature_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nature_type (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.nature_type OWNER TO postgres;

--
-- Name: nature_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nature_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nature_type_id_seq OWNER TO postgres;

--
-- Name: nature_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nature_type_id_seq OWNED BY public.nature_type.id;


--
-- Name: partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partner (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.partner OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_id_seq OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partner_id_seq OWNED BY public.partner.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.photos (
    id integer NOT NULL,
    name character varying NOT NULL,
    photo character varying NOT NULL,
    id_character integer NOT NULL
);


ALTER TABLE public.photos OWNER TO postgres;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO postgres;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.team OWNER TO postgres;

--
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO postgres;

--
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;


--
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    id integer NOT NULL,
    name character varying NOT NULL,
    id_character integer NOT NULL
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- Name: titles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titles_id_seq OWNER TO postgres;

--
-- Name: titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.titles_id_seq OWNED BY public.titles.id;


--
-- Name: affiliation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliation ALTER COLUMN id SET DEFAULT nextval('public.affiliation_id_seq'::regclass);


--
-- Name: characters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.characters ALTER COLUMN id SET DEFAULT nextval('public.characters_id_seq'::regclass);


--
-- Name: clan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clan ALTER COLUMN id SET DEFAULT nextval('public.clan_id_seq'::regclass);


--
-- Name: classification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classification ALTER COLUMN id SET DEFAULT nextval('public.classification_id_seq'::regclass);


--
-- Name: family id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family ALTER COLUMN id SET DEFAULT nextval('public.family_id_seq'::regclass);


--
-- Name: jutsu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jutsu ALTER COLUMN id SET DEFAULT nextval('public.jutsu_id_seq'::regclass);


--
-- Name: kekkei_genkai id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kekkei_genkai ALTER COLUMN id SET DEFAULT nextval('public.kekkei_genkai_id_seq'::regclass);


--
-- Name: nature_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nature_type ALTER COLUMN id SET DEFAULT nextval('public.nature_type_id_seq'::regclass);


--
-- Name: partner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner ALTER COLUMN id SET DEFAULT nextval('public.partner_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Name: team id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);


--
-- Name: titles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles ALTER COLUMN id SET DEFAULT nextval('public.titles_id_seq'::regclass);


--
-- Data for Name: affiliation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.affiliation (id, name) FROM stdin;
1	Kumogakure
2	Sunagakure
3	País das Ondas
4	Amegakure
5	Hoshigakure
6	Konohagakure
7	Forças Aliadas Shinobi
8	Iwagakure
9	País das Florestas
10	País do Mar
11	Otogakure
12	País do Fogo
13	Kirigakure
14	Moyagakure
15	Caverna Ryūchi
16	País do Relâmpago
17	Uzushiogakure
18	Ilha Benisu
19	País da Água
20	País do Chá
21	Kusagakure
22	Templo do Fogo
23	País dos Pássaros
24	Takigakure
25	Akatsuki
26	Raiz
27	Yukigakure
28	Monte Myōboku
29	País do Macarrão
30	País dos Ancestrais
31	País do Vento
32	Lua
33	Vila Jōmae
34	Orfanato de Konoha
35	País dos Vegetais
36	Yugakure
37	País da Lua
38	País dos Rios
39	Floresta Shikkotsu
40	Vila Takumi
41	País da Madeira
42	País do Ferro
43	País dos Demônios
44	País do Som
45	País dos Vales
46	Clã Nara
47	País da Neve
48	Clã Uzumaki
49	Vila Nadeshiko
\.


--
-- Data for Name: character_affiliation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_affiliation (id_character, id_affiliation) FROM stdin;
1	1
2	2
5	3
8	4
10	5
11	6
11	7
12	3
14	7
14	8
15	6
16	6
17	9
18	10
18	11
20	1
21	12
23	2
24	13
25	6
27	14
28	7
28	6
28	15
29	7
29	13
30	6
30	7
31	6
31	15
32	6
32	4
34	2
35	1
35	16
36	17
38	6
39	1
39	7
40	6
41	6
42	6
44	2
45	18
46	19
49	6
51	6
52	6
53	1
54	6
55	12
56	2
57	13
58	20
59	21
61	13
62	1
62	7
63	4
64	12
64	22
65	23
66	2
67	6
68	6
69	6
70	12
71	6
71	7
72	13
72	7
73	24
74	8
74	12
75	6
76	16
77	22
77	12
78	13
81	7
81	6
82	25
83	6
84	2
85	6
86	6
87	6
87	26
88	1
88	7
89	8
89	25
90	12
92	6
93	1
93	7
96	16
98	11
99	27
100	6
101	6
102	2
103	12
104	6
106	6
107	6
107	7
108	6
108	7
109	6
110	1
111	27
112	12
113	12
115	6
116	2
117	13
118	6
118	28
119	29
120	1
121	20
122	6
123	1
124	4
125	6
126	30
128	4
129	6
129	26
130	12
131	12
132	2
132	7
133	6
134	28
134	6
135	28
135	6
136	28
137	28
137	6
138	28
138	6
139	28
139	6
140	6
140	7
140	28
141	28
141	6
142	28
143	28
143	6
144	13
144	7
145	6
145	15
146	8
149	1
152	6
154	13
155	13
156	6
158	6
161	6
162	28
162	6
163	3
164	25
165	1
166	2
167	31
168	12
169	11
170	6
172	2
173	13
174	30
174	28
176	6
177	16
178	6
179	13
180	13
181	6
182	30
182	32
183	8
184	6
185	6
186	33
187	4
188	6
188	34
189	35
190	13
191	6
192	13
193	6
194	6
195	13
196	4
197	13
198	6
198	7
199	6
200	6
201	25
201	36
203	12
205	37
206	6
207	6
210	6
210	7
212	26
212	6
213	6
214	6
215	4
217	6
218	23
219	6
221	5
222	26
222	6
236	6
223	2
230	12
235	12
239	6
224	24
229	4
231	13
232	20
225	23
226	6
228	6
227	6
233	19
234	6
239	7
243	7
230	22
232	6
242	6
237	3
238	30
241	6
240	6
242	7
243	6
244	4
245	37
246	8
247	13
249	6
249	25
251	8
251	7
252	2
253	6
254	8
255	8
256	6
256	7
257	6
258	6
258	7
260	6
261	6
263	12
264	6
265	6
266	13
267	13
268	6
268	28
269	11
270	20
271	13
272	2
273	11
273	25
274	13
274	25
275	6
276	6
276	26
276	34
276	11
276	15
276	25
277	6
278	6
279	6
280	4
282	6
283	13
284	30
285	13
286	3
287	3
288	6
288	7
288	26
289	37
290	8
291	24
291	25
292	8
294	2
297	4
298	2
298	7
299	30
300	6
300	34
301	6
302	6
303	1
304	38
305	37
306	25
306	11
306	21
307	1
307	6
307	7
308	16
309	2
310	6
310	7
311	6
312	6
314	6
314	7
314	39
317	1
318	12
319	36
320	12
321	34
321	6
322	7
322	6
323	11
324	25
324	4
325	11
326	11
329	1
329	7
330	11
331	11
332	16
333	1
334	6
334	26
336	16
337	8
338	4
339	13
339	25
340	12
341	8
341	7
342	6
343	6
344	12
345	6
346	6
347	6
348	6
349	6
350	8
351	8
352	2
354	6
355	4
355	25
356	28
356	6
357	8
358	2
358	7
359	6
360	6
360	7
361	11
362	8
363	40
364	6
365	6
366	12
367	12
368	6
369	6
369	7
370	6
371	8
371	7
372	41
373	3
374	13
375	17
375	6
376	12
377	6
378	11
379	13
380	25
381	20
382	4
382	25
383	6
384	2
385	23
386	28
386	6
387	8
390	1
391	6
391	25
392	6
392	7
393	8
394	12
395	6
395	7
396	2
396	7
397	13
399	6
400	15
400	11
401	11
401	15
402	13
403	6
404	6
405	1
406	6
408	2
408	7
409	6
410	11
411	11
411	25
411	6
412	13
412	7
413	13
414	6
415	6
416	37
417	12
418	4
419	21
420	42
421	6
422	6
423	6
423	7
425	2
426	6
427	6
427	28
428	6
429	6
430	43
431	6
431	11
431	10
432	13
433	6
438	6
441	21
444	38
454	2
434	17
435	6
452	4
434	6
443	12
449	7
451	6
457	6
436	15
438	11
446	7
436	11
454	25
436	6
440	6
442	6
459	8
439	14
453	21
455	21
446	8
449	8
450	7
456	4
450	1
458	21
460	27
461	2
462	23
463	4
463	25
464	6
465	6
466	44
467	45
469	6
470	6
470	28
470	7
471	6
472	8
472	7
474	12
475	6
476	6
476	7
477	2
482	1
483	6
484	6
485	2
486	6
486	26
486	34
488	11
489	1
490	25
490	6
490	13
491	4
492	12
493	42
493	7
494	6
495	1
495	7
496	6
496	26
496	25
496	15
496	11
497	1
498	6
499	2
500	6
501	7
501	6
502	6
503	2
505	3
507	13
509	6
509	7
510	13
513	13
513	38
514	2
515	1
515	7
518	6
519	2
520	6
521	6
521	46
522	6
523	11
524	4
525	6
525	7
527	38
528	13
529	47
530	2
531	40
532	36
533	2
534	4
535	21
536	8
539	23
540	6
540	26
540	7
541	13
542	6
543	2
544	2
545	2
546	6
547	6
547	39
547	7
548	4
549	6
550	1
550	7
552	2
553	47
554	38
556	6
557	6
558	2
559	38
560	2
560	25
562	6
562	15
562	25
562	11
564	13
566	40
567	12
568	8
569	2
570	8
571	2
572	37
573	2
574	6
574	7
575	6
576	8
577	6
577	2
578	4
579	6
580	44
581	6
582	6
582	7
583	6
583	7
584	6
585	28
585	6
586	12
587	6
588	6
588	26
589	12
590	11
590	25
591	6
592	48
593	2
594	6
595	6
596	6
596	7
597	6
598	6
599	43
600	21
601	2
603	2
604	6
605	5
606	6
607	49
608	43
609	13
610	6
610	7
612	2
613	6
615	22
615	12
617	11
617	25
617	13
618	24
619	4
620	4
621	6
622	6
624	5
625	8
626	12
627	6
628	2
629	12
630	6
630	7
631	6
632	6
635	27
636	6
637	12
638	15
639	6
640	6
641	8
642	30
643	6
644	1
646	13
648	6
649	6
650	6
652	6
653	1
653	7
655	6
655	26
656	6
657	1
658	42
659	4
659	6
660	26
660	6
662	11
663	3
664	3
665	2
665	6
665	7
666	6
668	1
668	7
669	6
670	6
670	7
671	12
672	13
673	19
673	3
674	6
674	34
675	13
676	6
678	6
679	6
680	25
681	6
682	6
683	9
685	6
686	49
687	6
688	2
689	6
691	6
692	32
693	6
694	6
695	1
696	1
697	6
697	26
698	6
700	6
700	42
701	2
702	2
703	12
705	6
706	6
706	39
706	7
707	3
708	6
709	13
710	13
711	6
712	12
715	12
716	6
717	6
719	6
720	6
722	6
723	6
724	13
725	6
726	6
727	14
728	4
728	25
729	6
730	2
731	6
732	6
733	12
734	6
734	26
735	2
736	2
737	6
738	6
739	2
740	6
741	2
742	43
744	6
744	11
744	10
745	6
746	5
747	1
748	12
749	1
750	2
750	7
751	12
752	6
753	6
754	1
755	24
756	4
757	7
757	6
758	11
759	2
759	25
760	12
761	13
762	6
762	7
763	11
764	25
765	6
766	6
767	7
767	8
768	2
769	23
770	6
\.


--
-- Data for Name: character_clan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_clan (id_character, id_clan) FROM stdin;
4	1
11	2
13	3
15	2
36	4
38	5
48	6
52	5
54	4
54	7
60	8
68	9
69	9
71	9
75	9
81	10
87	11
92	12
107	10
108	12
115	6
124	4
129	13
131	14
133	2
154	15
174	16
179	17
182	16
184	2
185	7
191	8
198	7
204	6
206	7
206	4
210	7
210	4
214	5
217	7
232	18
236	6
238	16
239	13
240	13
241	13
242	7
246	19
249	6
250	8
257	6
259	6
270	18
279	6
282	6
284	16
288	20
299	16
306	4
307	9
310	10
315	8
322	2
330	21
335	16
339	22
344	14
356	5
362	19
370	5
371	19
375	4
383	7
391	6
392	10
394	14
395	9
398	23
402	15
404	9
414	4
426	6
429	5
434	4
434	8
445	16
457	24
463	4
464	6
469	6
470	4
473	7
475	8
475	4
476	7
490	6
508	6
540	13
546	20
547	6
556	13
557	6
561	5
562	6
574	24
581	10
582	10
583	10
584	24
596	24
604	6
606	9
609	22
617	15
627	25
630	10
640	6
645	6
660	24
665	26
676	7
679	6
682	8
687	7
690	27
692	16
694	9
697	24
703	14
705	2
706	4
706	8
714	8
720	28
721	16
722	28
723	6
731	6
732	28
737	6
745	10
767	19
\.


--
-- Data for Name: character_classification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_classification (id_character, id_classification) FROM stdin;
15	1
16	2
18	3
20	3
23	4
29	5
29	6
31	2
32	7
35	2
47	7
51	2
52	8
53	5
53	9
53	10
56	9
62	3
62	5
64	11
66	3
73	12
74	7
77	11
78	5
80	2
89	7
89	13
89	14
94	2
99	15
100	4
105	4
118	2
118	16
120	2
122	3
128	5
129	17
132	9
132	5
134	2
135	2
137	2
138	2
139	2
140	2
140	16
141	18
143	2
145	2
147	2
152	5
155	7
155	5
155	15
162	2
165	10
170	2
171	12
173	7
173	14
174	9
174	16
177	19
179	14
183	9
184	3
189	15
191	18
201	7
201	13
208	14
211	3
214	5
215	7
218	7
223	10
225	7
229	2
230	11
235	15
238	5
239	4
239	5
240	5
241	4
245	7
245	20
247	12
249	13
249	7
260	3
268	16
273	16
274	7
276	3
276	16
276	7
284	5
285	7
291	13
291	7
294	2
297	7
299	4
301	3
306	5
308	7
314	2
320	7
323	5
329	9
333	10
335	5
338	7
339	13
339	7
351	12
355	13
355	5
365	4
369	5
369	21
370	5
375	9
378	2
386	2
391	9
391	7
391	5
398	7
398	3
400	2
401	2
405	12
410	2
411	10
413	7
413	14
414	9
414	13
414	7
420	22
421	4
427	16
427	5
427	9
428	7
431	7
433	3
434	9
436	4
436	16
436	5
438	7
440	5
441	2
447	7
454	7
456	7
459	5
463	5
463	13
470	9
470	16
470	5
486	3
487	2
490	9
490	7
490	13
490	5
493	22
496	7
496	13
496	23
500	4
502	2
504	2
507	7
510	7
517	7
522	3
522	9
524	2
528	3
536	9
538	7
538	14
541	12
547	4
556	17
560	13
560	7
562	7
585	2
585	18
590	4
591	7
603	5
610	3
611	7
612	12
614	16
614	12
615	10
615	24
618	7
619	5
622	3
635	15
643	3
647	3
658	22
672	7
682	5
699	3
700	22
705	25
706	4
706	23
709	6
717	4
718	2
721	5
724	9
724	7
736	3
742	4
757	5
770	2
726	3
740	3
741	3
744	7
747	9
759	26
761	7
764	5
762	17
764	13
764	9
\.


--
-- Data for Name: character_family; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_family (id_character, id_family) FROM stdin;
6	1
6	2
6	3
13	4
17	5
22	6
22	7
26	8
37	9
37	10
38	11
38	12
38	13
38	14
38	15
38	16
39	17
40	18
42	19
52	12
52	14
52	15
52	20
53	21
54	23
54	25
54	26
54	27
54	28
54	29
54	30
54	24
54	31
57	33
57	32
60	34
60	35
60	36
60	37
60	38
60	39
66	41
66	40
68	42
68	44
68	43
69	44
69	42
69	46
69	45
71	42
71	43
71	46
71	45
73	47
75	44
75	43
75	45
75	46
85	39
85	48
95	49
99	50
99	51
102	40
102	52
105	53
108	54
109	55
115	56
115	57
115	58
115	59
115	60
118	61
123	62
124	63
124	64
131	65
131	67
131	66
132	68
132	72
132	73
132	70
132	71
132	69
132	74
135	75
135	76
140	75
140	77
143	77
143	76
160	2
160	3
160	78
163	79
165	80
167	81
171	47
173	82
174	83
174	84
174	85
174	86
174	88
174	90
174	87
174	89
180	91
180	92
182	83
182	84
182	47
182	86
182	90
182	93
182	94
184	95
184	96
185	27
185	25
185	31
185	30
185	28
185	26
185	97
191	34
191	35
191	36
191	39
191	38
191	98
191	99
194	100
198	30
198	27
198	29
198	28
198	97
198	25
198	26
205	7
205	101
205	102
206	24
206	25
206	97
206	27
206	31
206	23
206	28
206	29
206	30
210	31
210	29
210	30
210	28
210	97
210	25
210	23
210	24
210	26
214	11
214	13
214	15
214	14
214	20
217	28
217	31
217	29
217	97
217	26
217	27
221	103
221	104
228	105
232	106
234	107
234	108
235	109
237	110
237	111
237	112
238	83
238	86
238	85
238	84
238	47
238	87
239	113
239	114
239	115
240	114
240	116
240	117
241	113
241	116
241	117
243	108
243	118
244	63
244	119
246	120
246	121
246	122
246	125
246	126
246	123
246	124
247	47
249	56
249	60
249	58
249	127
249	128
250	98
250	37
250	35
250	36
250	39
250	38
254	129
254	130
255	130
255	131
257	132
259	134
276	137
284	147
292	123
298	152
307	43
327	160
333	162
341	125
259	133
262	3
276	136
284	85
299	86
315	37
322	158
262	1
284	87
286	110
298	70
299	47
313	155
337	151
341	164
350	123
262	78
284	145
298	73
307	44
315	34
335	163
341	124
345	165
347	118
268	25
276	135
279	138
281	139
283	140
284	47
284	86
284	90
284	144
284	143
284	142
284	146
285	148
286	111
286	149
289	6
292	151
298	68
298	74
298	71
298	153
299	90
304	154
307	42
315	98
315	36
315	39
316	10
316	156
320	157
322	95
322	159
329	21
329	161
341	123
345	128
345	58
345	60
350	151
351	47
284	84
284	141
285	92
288	150
289	7
298	69
315	38
337	123
347	107
353	156
353	9
356	13
356	16
356	20
356	11
356	14
356	12
356	166
362	123
362	164
366	167
367	168
369	47
370	14
370	20
370	169
371	123
371	164
371	125
371	170
375	25
375	23
375	97
375	26
375	27
387	123
387	151
389	171
391	133
391	172
394	67
394	66
394	173
397	174
397	175
398	176
400	177
401	178
401	179
402	180
405	47
409	128
409	58
409	60
409	181
410	182
411	182
413	183
414	24
414	23
415	184
416	101
416	6
416	102
422	185
423	186
424	187
426	58
426	60
426	57
426	127
427	24
427	97
427	25
427	26
427	27
429	20
429	11
429	13
429	12
429	169
429	16
429	15
430	188
434	37
434	36
434	38
434	39
436	182
436	189
438	190
444	191
445	192
450	193
453	194
455	195
463	64
463	119
466	196
470	23
470	24
470	97
470	27
470	26
470	197
475	39
475	37
475	99
475	36
475	35
475	98
475	34
476	29
476	31
476	27
476	30
476	97
476	26
478	159
486	135
486	179
487	37
487	198
496	189
496	199
497	200
507	91
507	148
510	201
514	152
514	72
514	70
514	74
514	69
514	71
514	73
514	153
517	203
517	202
525	204
526	2
526	78
526	1
529	205
529	206
529	207
534	208
539	209
539	210
540	116
540	114
540	113
540	211
541	47
546	212
547	181
547	165
547	60
547	56
547	57
547	58
547	127
550	213
555	214
557	127
557	56
557	57
557	60
557	128
557	165
557	181
559	215
560	41
560	52
561	20
561	14
561	15
561	12
562	56
562	57
562	58
562	128
562	127
564	174
564	216
568	123
568	151
574	217
574	218
577	219
581	153
581	69
581	71
581	68
581	220
581	152
581	72
581	221
581	222
582	153
582	74
582	221
582	70
583	74
583	220
583	222
583	221
584	223
585	224
588	117
593	68
593	69
593	152
593	70
593	72
593	74
593	153
595	16
595	14
596	218
596	225
599	226
602	227
604	228
607	229
609	201
610	230
612	47
617	232
614	47
615	231
623	233
623	234
624	104
624	235
627	198
634	236
635	50
635	237
645	134
645	172
646	216
646	175
649	238
650	96
650	95
650	158
650	239
652	240
654	234
654	241
655	242
661	243
663	111
663	149
665	68
665	69
665	152
665	72
665	74
665	153
665	71
665	73
671	244
678	245
679	246
682	98
682	37
682	34
682	35
682	39
682	38
683	247
684	248
692	85
697	225
697	217
697	249
703	67
703	173
703	65
704	250
705	158
705	96
706	37
706	34
706	35
706	98
706	38
706	230
706	99
706	36
707	110
707	149
707	112
712	65
712	66
712	173
720	251
722	251
722	252
723	253
732	252
732	254
732	255
736	69
736	72
736	70
736	152
736	68
736	74
743	241
743	233
745	153
745	220
745	74
745	70
751	256
757	257
758	258
764	83
767	164
767	124
767	122
769	210
769	259
\.


--
-- Data for Name: character_kekkei_genkai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_kekkei_genkai (id_character, id_kekkei_genkai) FROM stdin;
29	1
48	2
48	3
54	4
87	2
87	3
87	5
88	6
89	7
93	8
105	9
115	3
115	2
127	10
132	11
146	7
174	2
179	12
180	12
182	1
182	13
183	10
185	1
191	5
198	1
204	2
206	1
210	1
217	1
236	2
238	2
238	3
238	14
242	1
249	2
249	3
249	14
257	2
259	3
259	2
276	15
276	16
279	2
284	12
285	12
288	2
288	3
308	8
330	16
335	1
351	10
371	8
382	8
383	1
391	6
391	2
391	5
391	17
391	18
412	10
412	8
440	5
445	18
445	12
445	8
445	5
445	1
463	18
464	2
464	3
469	2
469	3
470	10
470	11
470	8
473	1
476	1
490	2
490	3
490	18
490	5
496	5
503	19
507	12
508	2
508	3
514	11
517	12
529	12
536	8
557	2
562	2
562	14
562	17
562	20
568	7
590	3
590	2
593	11
604	2
604	3
612	11
614	8
645	2
676	1
680	5
687	1
692	1
692	13
695	11
721	1
721	18
734	5
737	2
764	18
764	2
764	5
764	3
764	16
\.


--
-- Data for Name: character_nature_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_nature_type (id_character, id_nature_type) FROM stdin;
9	1
14	2
18	3
20	4
23	3
23	4
24	1
28	6
28	5
29	3
29	6
30	5
32	1
38	5
38	7
39	5
44	7
45	7
48	6
48	4
48	8
53	1
54	1
54	3
54	7
57	1
59	4
62	1
62	6
62	4
66	4
68	4
69	4
69	1
71	5
71	2
71	7
71	4
75	4
78	3
80	3
81	6
82	3
84	2
85	5
85	7
85	6
85	4
85	2
87	7
87	2
87	6
87	4
87	5
87	8
87	3
87	9
88	3
88	1
88	7
89	2
93	5
93	2
99	10
100	4
101	5
107	6
111	10
112	2
113	6
113	2
115	5
115	6
118	3
118	7
118	6
123	1
127	5
127	3
127	11
130	7
130	3
130	5
130	1
130	2
132	1
132	7
132	2
132	12
135	3
140	5
140	3
141	3
143	3
146	2
149	1
154	2
154	3
154	6
154	4
154	1
154	5
155	6
158	5
166	3
169	2
169	4
173	3
174	3
174	5
174	1
174	2
174	7
174	8
174	4
174	6
179	7
179	3
180	10
180	3
180	7
182	3
182	5
182	7
182	4
182	6
182	8
182	1
182	2
183	3
183	5
187	5
191	5
191	3
191	2
191	1
191	7
191	6
191	4
193	7
202	2
210	5
210	1
210	4
214	2
214	7
214	4
214	6
214	5
214	1
214	3
215	3
218	2
223	6
225	3
225	5
236	5
238	1
238	6
238	5
238	13
239	3
239	2
239	6
239	4
239	5
241	4
243	5
243	3
243	6
246	2
247	3
247	6
249	3
249	5
249	7
249	6
249	4
251	2
253	2
258	3
259	5
259	6
260	2
268	3
268	7
268	2
268	6
268	5
268	4
269	2
273	3
273	7
273	4
273	2
274	3
276	3
276	5
276	2
276	6
276	7
276	4
280	2
280	6
280	3
284	10
284	3
284	7
284	6
284	4
284	5
284	1
284	2
284	8
285	10
285	7
285	3
288	1
288	5
288	2
288	7
288	6
288	3
288	4
290	2
290	6
291	3
291	1
307	1
308	5
329	5
335	4
337	6
339	3
340	1
291	2
306	2
308	2
322	2
339	5
341	2
342	4
351	11
291	5
292	2
298	1
306	4
335	1
291	7
325	5
326	3
339	2
349	7
292	5
292	7
298	7
303	1
329	1
338	3
339	7
297	3
298	3
322	4
325	3
297	6
298	2
305	6
306	3
310	6
329	3
351	3
299	4
306	6
320	2
331	6
335	5
320	7
329	4
351	5
355	2
355	7
355	4
355	3
356	5
356	1
356	4
356	7
359	2
359	6
359	3
360	6
363	7
365	5
369	5
369	7
369	4
370	6
371	3
371	2
371	6
371	5
375	3
375	7
375	6
375	4
377	4
382	2
382	5
382	14
387	5
387	2
387	7
387	15
391	5
391	2
391	4
391	7
391	1
391	3
391	8
391	6
392	6
393	2
395	2
395	4
398	2
402	3
404	4
405	5
408	7
412	5
412	3
412	2
412	1
413	3
423	5
423	1
427	5
427	1
427	4
427	6
427	7
429	5
429	7
429	6
429	1
431	3
433	4
433	6
436	1
436	2
436	7
436	4
438	6
438	2
440	3
440	2
440	9
442	4
445	5
445	1
445	2
445	7
445	4
445	6
445	3
446	2
450	1
452	3
452	2
452	6
453	5
455	5
456	3
456	6
458	2
459	3
459	5
459	2
459	7
459	1
459	4
460	10
462	2
463	1
463	5
463	2
463	7
463	4
463	3
464	6
464	4
464	8
465	3
468	2
469	6
470	3
470	5
470	1
470	7
470	4
470	6
470	8
470	2
474	1
476	3
476	2
476	5
479	6
482	1
486	4
488	3
490	3
490	5
490	9
490	1
490	2
490	7
490	6
490	4
490	8
491	2
491	3
491	6
495	1
496	3
496	9
496	2
496	7
496	5
496	4
496	6
496	1
503	5
503	7
503	16
507	3
507	10
507	7
508	6
508	4
508	8
510	1
510	3
511	1
513	6
514	3
514	2
514	7
514	6
517	3
517	7
517	10
522	3
522	5
522	4
523	3
528	3
529	7
529	3
529	6
535	5
536	5
536	2
536	14
538	2
540	5
540	3
540	2
540	4
541	3
547	2
547	4
547	6
547	3
548	3
557	5
557	1
557	7
557	6
557	4
560	5
561	3
561	7
561	2
561	6
561	4
561	1
561	5
562	3
562	5
562	1
562	4
562	6
562	8
562	2
562	7
565	3
566	7
566	5
567	1
568	1
568	2
568	17
571	6
577	3
580	6
581	6
582	6
593	12
593	7
593	2
596	5
596	2
604	7
606	4
608	5
611	7
614	14
617	7
618	5
619	3
625	2
638	6
680	2
682	6
692	3
692	2
695	7
581	7
583	5
583	2
583	6
585	5
585	7
585	6
591	6
604	1
604	5
604	6
608	3
609	3
612	7
612	2
614	5
617	3
665	7
680	3
682	5
593	1
596	4
607	7
615	7
610	4
611	6
612	12
614	2
620	3
627	3
630	6
662	6
666	1
680	7
680	1
680	5
682	1
682	2
682	3
682	7
682	4
686	2
692	5
692	6
692	4
692	8
692	1
692	7
694	4
695	12
695	2
704	6
706	3
706	6
706	4
706	5
706	1
706	2
709	3
710	3
714	6
715	1
716	3
720	6
721	5
721	1
721	2
721	6
721	7
724	3
725	7
728	5
728	3
728	7
732	6
734	3
734	9
734	2
734	4
741	4
744	3
744	6
747	5
749	1
750	7
758	3
761	3
764	7
764	1
764	2
764	3
764	6
764	4
764	5
765	1
765	6
765	5
767	5
767	1
767	4
767	2
767	7
\.


--
-- Data for Name: character_partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_partner (id_character, id_partner) FROM stdin;
11	1
11	2
14	3
15	1
15	4
29	5
58	6
62	7
88	8
89	9
89	10
91	11
129	12
164	13
165	14
173	15
179	16
197	17
201	18
202	19
209	20
218	21
219	22
249	23
249	24
258	25
267	26
274	27
276	28
284	29
290	30
290	31
291	32
292	34
292	33
322	4
322	2
329	35
333	36
335	37
335	38
337	34
337	39
339	27
348	40
350	34
350	41
355	42
355	43
358	44
360	45
371	46
380	47
391	48
393	30
393	49
413	50
445	37
445	51
462	52
463	53
490	54
490	56
490	55
493	57
496	10
496	58
497	59
506	60
510	61
513	62
534	63
537	64
558	65
560	28
560	55
568	41
568	33
605	66
631	67
631	68
638	69
638	70
641	49
641	31
680	48
680	71
695	72
697	73
705	74
721	38
721	51
746	75
753	76
755	77
756	78
761	79
764	48
764	71
764	54
764	80
\.


--
-- Data for Name: character_team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.character_team (id_character, id_team) FROM stdin;
8	1
9	2
11	3
11	4
11	5
11	6
11	7
11	8
23	9
24	10
27	11
28	12
28	13
29	14
30	15
30	16
32	17
34	18
38	15
38	19
38	20
39	21
44	24
44	22
44	23
45	25
50	26
54	28
54	27
57	29
58	30
62	31
63	32
64	19
66	33
66	35
66	34
71	20
71	5
71	15
71	4
71	36
72	37
75	21
75	38
78	39
79	2
87	40
88	21
88	41
89	39
89	42
92	43
93	36
93	44
98	45
100	46
101	47
101	48
102	24
102	49
106	46
107	50
111	51
112	52
113	53
114	54
115	55
117	10
118	56
123	57
128	1
130	53
132	22
132	36
144	58
146	42
155	59
156	60
156	61
156	62
158	63
160	64
165	65
166	66
169	67
172	24
173	68
175	54
178	69
179	70
184	8
185	71
192	29
195	29
198	21
208	72
210	7
210	3
210	5
210	75
210	74
210	73
211	76
214	40
214	77
214	78
215	79
218	80
219	40
219	77
219	81
225	80
226	69
227	82
228	83
228	46
231	29
236	84
239	5
239	15
239	7
239	20
239	8
239	85
239	86
239	87
240	38
240	16
240	88
241	89
245	90
249	92
249	91
251	93
252	94
253	43
253	28
254	95
255	95
256	60
256	61
256	62
256	50
258	15
258	87
258	21
260	76
262	64
266	37
267	10
268	78
268	32
268	96
269	97
271	58
272	24
273	98
274	37
277	99
279	40
280	17
283	29
285	100
288	91
288	35
288	20
288	7
288	3
288	50
288	101
288	102
295	54
296	103
298	22
298	93
298	104
301	82
304	105
305	90
306	98
307	75
307	106
308	107
308	108
312	109
317	50
320	19
320	52
322	3
322	7
322	8
322	55
322	4
322	5
323	97
325	67
326	67
329	41
329	110
330	97
331	45
333	65
339	37
339	111
340	19
341	75
342	82
348	77
348	40
348	81
354	63
355	32
356	27
356	47
358	76
358	23
360	15
360	87
360	21
363	112
365	82
370	3
371	75
372	113
374	37
377	82
379	29
396	50
442	82
452	17
384	9
396	23
397	115
412	62
427	96
433	82
439	11
440	47
396	114
408	116
415	43
418	118
427	102
431	120
402	37
457	13
408	23
436	27
408	36
409	117
413	68
423	50
428	59
446	50
420	8
440	89
451	83
456	79
421	82
423	119
435	121
447	122
460	51
462	80
463	32
465	71
468	26
470	101
470	35
470	6
470	7
470	74
470	4
470	5
472	75
474	123
476	4
476	5
476	75
476	119
481	124
485	114
486	82
488	67
489	50
490	102
491	17
493	8
495	106
495	93
496	12
496	78
500	82
507	100
509	61
509	60
509	15
509	62
510	37
510	105
512	54
513	105
515	21
517	125
518	69
520	15
522	102
525	119
525	7
525	50
525	55
525	5
526	64
528	50
529	126
531	112
533	24
540	101
540	6
540	7
540	13
540	93
540	86
540	69
545	24
547	101
547	5
547	35
547	6
547	50
547	74
547	20
547	7
547	86
550	106
550	21
551	124
552	127
556	50
557	27
558	94
560	33
560	39
562	101
562	97
562	98
564	115
567	123
570	128
571	129
575	130
578	118
579	121
581	89
582	131
583	20
583	4
583	5
583	15
583	36
585	56
588	39
590	132
591	133
593	18
594	92
596	3
596	5
596	7
596	8
597	83
597	15
601	129
603	9
604	134
608	135
609	29
610	61
610	76
610	7
611	136
615	101
617	98
619	1
622	76
627	71
627	109
640	55
644	50
646	115
647	76
653	93
653	44
656	130
657	137
662	97
665	22
665	23
665	36
665	116
668	16
669	92
670	119
670	5
670	21
670	7
676	12
680	138
682	40
682	77
687	13
691	88
693	76
694	40
696	137
699	76
700	71
706	78
708	46
715	19
716	47
716	43
717	82
726	71
726	28
727	11
728	32
731	55
734	91
734	6
734	7
734	101
734	13
737	84
739	18
740	76
741	129
742	135
742	139
744	120
745	117
749	140
750	116
750	36
750	141
752	121
754	137
755	142
757	76
759	24
761	10
761	70
762	93
763	45
\.


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.characters (id, name, birthday) FROM stdin;
1	A (Segundo Raikage)	1 de Março
2	Abiru	\N
3	Agara	\N
4	Agari Kaisen	\N
5	Ageha	\N
6	Agira Ryūdōin	\N
7	Ahiko	\N
8	Ajisai	\N
9	Akaboshi	\N
10	Akahoshi	\N
11	Akamaru	7 de Julho
12	Akane	\N
13	Akari Tatsushiro	\N
14	Akatsuchi	11 de Janeiro
15	Akemaru	\N
16	Akino	\N
17	Akio	\N
18	Amachi	\N
19	Amado	\N
20	Amai	\N
21	Amaru	\N
22	Amayo	\N
23	Ameno	\N
24	Ameyuri Ringo	\N
25	Ami	\N
26	Amino	\N
27	Aniki	\N
28	Anko Mitarashi	24 de Outubro
29	Ao	01 de Agosto
30	Aoba Yamashiro	03 de Setembro
31	Aoda	1 de Outubro
32	Aoi Rokushō	\N
33	Arai	\N
34	Araya	13 de Março
35	Armadiko	\N
36	Ashina Uzumaki	\N
37	Ashitaba	\N
38	Asuma Sarutobi	18 de Outubro
39	Atsui	2 de Agosto
40	Ayame	14 de Fevereiro
41	Ayato	\N
42	Azami	\N
43	Baji	\N
44	Baki	4 de Julho
45	Bandō	\N
46	Banna	\N
47	Baraki	\N
48	Baru Uchiha	\N
49	Bekkō	\N
50	Benten	\N
51	Bisuke	\N
52	Biwako Sarutobi	\N
53	Blue B	\N
54	Boruto Uzumaki	27 de Março
55	Buna	\N
56	Bunpuku	9 de Fevereiro
57	Buntan Kurosuki	\N
58	Bunzō	\N
59	Burami	\N
60	Butsuma Senju	16 de Janeiro
61	Byakuren	20 de Janeiro
62	C	3 de Abril
63	Chibi	\N
64	Chiriku	1 de Julho
65	Chishima	\N
66	Chiyo	15 de Outubro
67	Choco	\N
68	Chōbee Akimichi	\N
69	Chōchō Akimichi	8 de Agosto
70	Chōhan	\N
71	Chōji Akimichi	1 de Maio
72	Chōjūrō	1 de Novembro
73	Chōmei	\N
74	Chōseki	\N
75	Chōza Akimichi	22 de Abril
76	Chūji	\N
77	Chūkaku	\N
78	Chūkichi	2 de Julho
79	Chūshin	\N
80	Crustáceo Gigante	\N
81	Daen Nara	\N
82	Daibutsu	\N
83	Daichi	\N
84	Daimaru	\N
85	Dan Katō	4 de Dezembro
86	Dango	\N
87	Danzō Shimura	6 de Janeiro
88	Darui	6 de Janeiro
89	Deidara	5 de Maio
90	Dengaku	\N
91	Denka	\N
92	Denki Kaminarimon	\N
93	Dodai	23 de Outubro
94	Doki	\N
95	Dokku	\N
96	Don	\N
97	Doragu	\N
98	Dosu Kinuta	12 de Junho
99	Dotō Kazahana	\N
100	Dōshu Goetsu	\N
101	Ebisu	8 de Março
102	Ebizō	6 de Janeiro
103	Emiru	\N
104	En	\N
105	En Oyashiro	\N
106	Enko Onikuma	\N
107	Ensui Nara	\N
108	Ereki Kaminarimon	\N
109	Esposa de Kisuke	\N
110	F	\N
111	Fubuki Kakuyoku	\N
112	Fudō	\N
113	Fuen	\N
114	Fugai	\N
115	Fugaku Uchiha	16 de Agosto
116	Fugi	\N
117	Fuguki Suikazan	22 de Fevereiro
118	Fukasaku	9 de Maio
119	Fuku	\N
120	Fukuemon	\N
121	Fukusuke Hikyakuya	\N
122	Furofuki	\N
123	Furui	\N
124	Fusō	\N
125	Futaba	\N
126	Futami	\N
127	Futsu	\N
128	Fuyō	\N
129	Fū Yamanaka	\N
130	Fūka	\N
131	Fūta Kagetsu	\N
132	Gaara	19 de Janeiro
133	Gaku Inuzuka	\N
134	Gama	\N
135	Gamabunta	3 de Janeiro
136	Gamaden	\N
137	Gamagorō	\N
138	Gamahiro	9 de Julho
139	Gamaken	11 de Outubro
140	Gamakichi	1 de Abril
141	Gamamaru	8 de Março
142	Gamatama	\N
143	Gamatatsu	\N
144	Ganryū	\N
145	Garaga	\N
146	Gari	8 de Agosto
147	Garuda	\N
148	Garō	\N
149	Gatai	\N
150	Gataro	\N
151	Gatō	30 de Abril
152	Gazeru	\N
153	Gen'yūmaru	27 de Julho
154	Gengetsu Hōzuki	26 de Outubro
155	Gengo	\N
156	Genma Shiranui	17 de Julho
157	Genmai	\N
158	Gennai	\N
159	Gennō	\N
160	Genshō Ryūdōin	\N
161	Genzō	\N
162	Gerotora	\N
163	Giichi	\N
164	Ginji	\N
165	Ginkaku	9 de Abril
166	Goji	\N
167	Gojō	\N
168	Goshiki	\N
183	Han	10 de Maio
184	Hana Inuzuka	13 de Abril
186	Hanare	\N
187	Hanzō	12 de Fevereiro
202	Hidari	\N
204	Hikaku Uchiha	\N
205	Hikaru Tsuki	\N
216	Hishaku	\N
217	Hizashi Hyūga	8 de Janeiro
237	Inari	25 de Dezembro
239	Ino Yamanaka	23 de Setembro
169	Gozu	\N
171	Gyūki	\N
178	Hako Kuroi	\N
182	Hamura Ōtsutsuki	6 de Agosto
219	Homura Mitokado	8 de Maio
244	Ise	\N
170	Guruko	\N
172	Gōza	\N
173	Gōzu	6 de Junho
175	Haido	\N
179	Haku	9 de Janeiro
181	Hamaki Mimura	\N
189	Haruna	\N
190	Harusame	\N
195	Hebiichigo	\N
197	Heki	\N
199	Hibachi	\N
209	Hina	\N
210	Hinata Hyūga	27 de Dezembro
221	Hotarubi	\N
223	Hōichi	\N
224	Hōki (Takigakure)	\N
229	Ibuse	\N
230	Ichigen	\N
231	Ichirōta Oniyuzu	\N
232	Idate Morino	\N
235	Ikkyū Madoka	\N
238	Indra Ōtsutsuki	4 de Janeiro
240	Inoichi Yamanaka	24 de Janeiro
242	Iroha Hyūga	\N
243	Iruka Umino	26 de Maio
174	Hagoromo Ōtsutsuki	6 de Agosto
176	Hajiki	\N
177	Hakkaku	\N
180	Hakuhyō	\N
185	Hanabi Hyūga	27 de Março
188	Harine	\N
191	Hashirama Senju	23 de Outubro
192	Hassaku Onomichi	\N
193	Hayama Shirakumo	\N
194	Hayate Gekkō	2 de Novembro
201	Hidan	2 de Abril
203	Hidero	\N
206	Himawari Uzumaki	\N
211	Hino	\N
212	Hinoe	\N
213	Hinoko	\N
214	Hiruzen Sarutobi	8 de Fevereiro
215	Hisame	\N
220	Honoka	\N
225	Hōki (Watari)	\N
226	Hōki Taketori	\N
228	Ibiki Morino	20 de Março
196	Heiji	\N
200	Hibari	\N
207	Himeno	\N
208	Himushi	\N
222	Hyō	\N
236	Inabi Uchiha	\N
198	Hiashi Hyūga	8 de Janeiro
218	Hokushin	\N
227	Hōshō	\N
233	Iggy	\N
234	Ikkaku Umino	\N
241	Inojin Yamanaka	5 de dezembro
245	Ishidate	\N
246	Ishikawa	6 de Maio
247	Isobu	\N
248	Isono	\N
249	Itachi Uchiha	09 de Junho
250	Itama Senju	\N
251	Ittan	\N
252	Ittetsu	\N
253	Iwabee Yuino	\N
254	Iwaji	\N
255	Iwakyō	\N
256	Iwashi Tatami	2 de Janeiro
257	Izumi Uchiha	\N
258	Izumo Kamizuki	25 de Novembro
259	Izuna Uchiha	10 de Fevereiro
260	Iō (Ninja Médico)	\N
261	JJ	\N
262	Jakō Ryūdōin	\N
263	Jantō	\N
264	Jimei	\N
265	Jin	\N
266	Jinin Akebino	25 de Setembro
267	Jinpachi Munashi	4 de Julho
268	Jiraiya	11 de novembro
269	Jirōbō	26 de Junho
270	Jirōchō Wasabi	\N
271	Junsai	\N
272	Jōseki	\N
273	Jūgo	1 de Outubro
274	Jūzō Biwa	\N
275	Kabure Tokisuki	\N
276	Kabuto Yakushi	29 de fevereiro
277	Kaede	\N
278	Kaede Yoshino	\N
279	Kagami Uchiha	\N
280	Kagari	16 de novembro
281	Kageki	\N
282	Kagen Uchiha	\N
283	Kagura Karatachi	\N
284	Kaguya Ōtsutsuki	\N
285	Kahyō	\N
286	Kaiza	21 de Agosto
287	Kaji	\N
288	Kakashi Hatake	15 de setembro
289	Kakeru Tsuki	\N
290	Kakkō	5 de Julho
291	Kakuzu	15 de Agosto
292	Kakō	\N
293	Kamata	\N
294	Kamatari	\N
295	Kamira	\N
296	Kanabun	\N
297	Kandachi	\N
298	Kankurō	15 de maio
299	Kanna	\N
300	Kanpu	\N
301	Kanpō	\N
302	Kaori	\N
303	Karai	\N
304	Karashi	\N
305	Karenbana	\N
306	Karin	20 de Junho
307	Karui	14 de fevereiro
308	Karyū	\N
309	Kashike	\N
310	Kasuga Nara	\N
311	Kasumi	\N
312	Katasuke Tōno	3 de março
313	Katazu	\N
314	Katsuyu	9 de Maio
315	Kawarama Senju	\N
316	Kaya	\N
317	Kayui	\N
318	Kazabune	\N
319	Kazan	\N
320	Kazuma	\N
321	Keiri	\N
322	Kiba Inuzuka	7 de Julho
323	Kidōmaru	16 de Dezembro
324	Kie	\N
325	Kigiri	\N
326	Kihō	\N
327	Kiki	\N
328	Kiku	\N
329	Killer B	15 de Maio
330	Kimimaro	15 de Junho
331	Kin Tsuchi	6 de Julho
332	King	\N
333	Kinkaku	7 de Março
334	Kinoto	\N
335	Kinshiki Ōtsutsuki	\N
336	Kintoki	\N
337	Kirara	\N
338	Kirisame	\N
339	Kisame Hoshigaki	18 de Março
340	Kitane	\N
341	Kitsuchi	22 de Março
342	Kitō	\N
343	Kiyomu Fukuda	\N
344	Kiyoyasu Kagetsu	\N
345	Kizashi Haruno	\N
346	Kohada	\N
347	Kohari Umino	\N
348	Koharu Utatane	1 de Setembro
349	Kokage Yanagikage	\N
350	Kokuyō	\N
351	Kokuō	\N
352	Komaza	\N
353	Komichi	\N
354	Komugi	\N
355	Konan	20 de Fevereiro
356	Konohamaru Sarutobi	30 de Dezembro
357	Kontsuchi	\N
358	Korobi	\N
359	Kosuke Maruboshi	\N
360	Kotetsu Hagane	21 de Julho
361	Kotohime	\N
362	Kozuchi	\N
363	Kujaku	\N
364	Kumade Toriichi	\N
365	Kumadori	\N
366	Kunihisa	\N
367	Kunijirō	\N
368	Kunugi Mokume	\N
369	Kurama	\N
370	Kurenai Yūhi	11 de junho
371	Kurotsuchi	6 de setembro
372	Kurozuka	\N
373	Kusabi	\N
374	Kushimaru Kuriarare	18 de Novembro
375	Kushina Uzumaki	10 de julho
376	Kusuma	\N
377	Kusushi	\N
378	Kyodaigumo	\N
379	Kyohō Fuefuki	\N
380	Kyōya	\N
381	Kyūroku Wagarashi	\N
382	Kyūsuke	\N
383	Kō Hyūga	\N
384	Kōji (Suna)	\N
385	Kōmei	\N
386	Kōsuke	\N
387	Kū	\N
388	Lando	\N
389	Leo	\N
390	Mabui	\N
391	Madara Uchiha	24 de Dezembro
392	Maen Nara	\N
393	Mahiru	18 de Junho
394	Mai Kagetsu	\N
395	Makaro Akimichi	\N
396	Maki	\N
397	Makinami Senka	\N
398	Malice	\N
399	Manabu Akado	\N
400	Manda	\N
401	Manda II	\N
402	Mangetsu Hōzuki	15 de Fevereiro
403	Mari	\N
404	Maruten Akimichi	\N
410	Mecha-Kurama	\N
413	Meizu	6 de Junho
417	Michy	\N
418	Midare	7 de Maio
421	Migaki	\N
433	Mitate	\N
436	Mitsuki	25 de Julho
438	Mizuki	\N
441	Moguranmaru	\N
444	Momo	\N
454	Mukade	\N
405	Matatabi	\N
409	Mebuki Haruno	\N
419	Midori	\N
420	Mifune	\N
432	Misuno	\N
406	Matsu	16 de Maio
408	Matsuri	\N
430	Miroku	\N
407	Matsuba	\N
434	Mito Uzumaki	3 de Maio
439	Mo	\N
447	Monju	\N
453	Mui	\N
455	Muku	\N
459	Mū	6 de Junho
411	Mecha-Naruto	\N
445	Momoshiki Ōtsutsuki	\N
446	Monga	\N
449	Morio	\N
456	Murasame	\N
412	Mei Terumī	21 de Maio
415	Metal Lee	\N
440	Moegi Kazamatsuri	8 de junho
443	Momiji (Tanzaku)	\N
451	Mozuku	\N
452	Mubi	15 de Novembro
457	Muta Aburame	\N
414	Menma Uzumaki	Outubro 10
416	Michiru Tsuki	\N
423	Might Guy	1 de Janeiro
426	Mikoto Uchiha	1 de Junho
429	Mirai Sarutobi	\N
431	Misumi Tsurugi	30 de Novembro
435	Mitoku	\N
450	Motoi	16 de Outubro
458	Muyami	\N
422	Might Duy	\N
424	Miina	\N
425	Mijin	\N
427	Minato Namikaze	25 de janeiro
437	Mitsuo	\N
448	Monzaemon Chikamatsu	\N
428	Minoichi	\N
442	Mogusa	\N
460	Nadare Rōga	\N
461	Nae	\N
462	Nagare	\N
463	Nagato	19 de setembro
464	Naka Uchiha	\N
465	Namida Suzumeno	\N
466	Nan	\N
467	Nanafushi	\N
468	Nangō	\N
469	Naori Uchiha	\N
470	Naruto Uzumaki	10 de outubro
471	Natori	\N
472	Natsu	\N
473	Natsu Hyūga	\N
474	Nauma	\N
475	Nawaki	09 de Agosto
476	Neji Hyūga	3 de julho
477	Nejiri	\N
478	Nekobaa	\N
479	Nekomata	\N
480	Nerugui	\N
481	Ni	\N
482	Nigai	\N
483	Nitora Take	\N
484	Nobori	\N
485	Nonota	\N
486	Nonō Yakushi	\N
487	Nue	\N
488	Nurari	\N
489	Nurui	\N
490	Obito Uchiha	10 de fevereiro
491	Oboro	20 de Dezembro
492	Okami	\N
493	Okisuke	\N
494	Okyō	\N
495	Omoi	26 de Dezembro
496	Orochimaru	27 de outubro
497	Osoi	\N
498	Otoha	\N
499	Otokaze	\N
500	Oyone	\N
501	Pac Lee	\N
502	Pakkun	\N
503	Pakura	9 de Abril
504	Panda Gigante	\N
505	Pochi	\N
506	Potcha	\N
507	Rahyō	\N
508	Rai Uchiha	\N
509	Raidō Namiashi	28 de Agosto
510	Raiga Kurosuki	\N
511	Raimei	\N
512	Ranke	\N
513	Ranmaru	\N
514	Rasa	29 de Março
515	Rashii	\N
516	Remon Yoimura	\N
517	Renga	\N
518	Renga Kokubō	\N
519	Reto	27 de Junho
520	Riichi (ninja)	\N
521	Rikumaru	\N
522	Rin Nohara	15 de Novembro
523	Rinji	\N
524	Rinoceronte Gigante	\N
525	Rock Lee	27 de novembro
526	Rokkaku Ryūdōin	\N
527	Rokusuke	\N
528	Ruka	\N
529	Ryōgi	\N
530	Ryōkan	\N
531	Ryūgan	\N
532	Ryūki	\N
533	Ryūsa	\N
534	Ryūsui	\N
535	Ryūzetsu	\N
536	Rōshi	4 de Junho
537	Sabu	4 de Outubro
538	Sadai	\N
539	Sagi	\N
540	Sai	25 de movembro
541	Saiken	\N
542	Saisu Kamano	\N
543	Sajin	\N
544	Sajin (Genin)	\N
545	Sajō	\N
546	Sakumo Hatake	3 de Setembro
547	Sakura Haruno	28 de março
548	Samidare	\N
549	Samo	\N
550	Samui	7 de Janeiro
551	San	\N
552	Sana	\N
553	Sandayū Asama	\N
554	Sangorō	\N
555	Sanshō	\N
556	Santa Yamanaka	\N
557	Sarada Uchiha	31 de Março
558	Sari	\N
559	Sasami	\N
560	Sasori	8 de novembro
561	Sasuke Sarutobi	\N
562	Sasuke Uchiha	23 de julho
563	Satori	\N
564	Sazanami Senka	\N
565	Saō	\N
566	Seimei	\N
567	Seito	\N
568	Sekiei	\N
569	Sekka	\N
570	Sekki	\N
571	Sen	\N
572	Shabadaba	\N
573	Shamon	12 de Março
574	Shibi Aburame	07 de Setembro
575	Shibire	\N
576	Shibito Azuma	\N
577	Shigezane	\N
578	Shigure	11 de Fevereiro
579	Shiho	18 de Junho
580	Shiin	\N
581	Shikadai Nara	23 de Setembro
582	Shikaku Nara	15 de julho
583	Shikamaru Nara	22 de Setembro
584	Shikuro Aburame	\N
585	Shima	26 de Agosto
586	Shimeji	\N
587	Shimon Hijiri	\N
588	Shin	6 de Setembro
589	Shin'emon	\N
590	Shin Uchiha	\N
591	Shinga	\N
592	Shinigami	\N
593	Shinki	\N
594	Shinko Inari	\N
595	Shinku Yūhi	\N
596	Shino Aburame	23 de janeiro
597	Shinobu Mibu	\N
598	Shinta	\N
599	Shion	\N
600	Shiore	\N
601	Shira	\N
602	Shiseru	\N
603	Shishio	\N
604	Shisui Uchiha	19 de outubro
605	Shisō	\N
606	Shitō Akimichi	\N
607	Shizuka	\N
608	Shizuku	\N
609	Shizuma Hoshigaki	\N
610	Shizune	18 de Novembro
611	Shojoji	\N
612	Shukaku	\N
613	Shōseki	\N
614	Son Gokū	\N
615	Sora	\N
616	Suguro	\N
617	Suigetsu Hōzuki	18 de Fevereiro
618	Suika	\N
619	Suiren	\N
620	Suiu	\N
621	Sukima	\N
622	Sukui	\N
623	Sukune	\N
624	Sumaru	\N
625	Sumashi	\N
626	Sumire	\N
631	Suzu	\N
627	Sumire Kakei	12 de junho
628	Suname	\N
629	Susuki	\N
630	Suzaku Nara	\N
632	Suzume	19 de outubro
634	Sāra	\N
640	Taiko Uchiha	\N
647	Takemaru	\N
651	Tamao	\N
652	Tami	\N
658	Tatewaki	\N
672	Tenzen	\N
633	Suzuran	\N
635	Sōsetsu Kazahana	\N
641	Taiseki	10 de Março
642	Taizō	\N
643	Taji	\N
649	Tamae	\N
654	Tanishi	\N
659	Tatsuji	\N
660	Tatsuma Aburame	\N
669	Tenma Izumo	\N
677	Tetsuru	\N
679	Teyaki Uchiha	\N
681	Tobio	\N
682	Tobirama Senju	19 de fevereiro
636	Sōta	\N
637	Sōzu	\N
638	Tagitsuhime	\N
644	Tajiki	\N
648	Taku	\N
650	Tamaki	\N
655	Tanuki Shigaraki	\N
657	Tarui	\N
673	Tenzen Daikoku	\N
675	Tetsu	\N
676	Tetsu Hyūga	\N
688	Tomari	\N
690	Tonbee	\N
691	Tonbo Tobitake	4 de Abril
639	Taiga	\N
645	Tajima Uchiha	28 de Março
646	Takanami Senka	\N
653	Tango	\N
656	Tanzō	\N
661	Tatsumi	\N
662	Tayuya	15 de Fevereiro
663	Tazuna	5 de Abril
664	Teguse	\N
665	Temari	23 de agosto
666	Temui	\N
667	Temujin	\N
668	Tenga	\N
670	Tenten	9 de março
671	Tentō Madoka	\N
674	Terubō	\N
678	Teuchi	10 de agosto
680	Tobi (Zetsu)	\N
683	Todoroki	\N
684	Tofu	\N
685	Tokara	\N
686	Tokiwa	\N
687	Tokuma Hyūga	\N
689	Tomaru Minakura	\N
692	Toneri Ōtsutsuki	\N
693	Tonton	\N
694	Torifu Akimichi	\N
695	Toroi	6 de Outubro
696	Toroi (Genin)	\N
697	Torune Aburame	\N
698	Tosaka	\N
699	Toyosa	\N
700	Tsubaki Kurogane	\N
701	Tsubusa	\N
702	Tsuchino	\N
703	Tsukiko Kagetsu	\N
704	Tsukino	\N
705	Tsume Inuzuka	12 de Agosto
706	Tsunade	2 de Agosto
707	Tsunami	4 de Maio
708	Tsuru Itoi	\N
709	Tsurugi	\N
710	Tsurushi Hachiya	\N
711	Tsuzumi Sarugaku	\N
712	Tōbei Kagetsu	\N
713	Tōfu	\N
714	Tōka Senju	\N
715	Tōu	\N
716	Udon Ise	3 de Abril
717	Ugai	\N
718	Umibōzu	\N
719	Unagi	\N
720	Unkai Kurama	\N
721	Urashiki Ōtsutsuki	\N
722	Uroko Kurama	\N
723	Uruchi Uchiha	\N
724	Utakata	\N
725	Uō	\N
726	Wasabi Izuno	\N
727	Ya	\N
728	Yahiko	20 de fevereiro
729	Yajirobee	\N
730	Yakku	\N
731	Yakumi Uchiha	\N
732	Yakumo Kurama	\N
733	Yamaoka	\N
734	Yamato	10 de agosto
735	Yaoki	\N
736	Yashamaru	23 de Maio
737	Yashiro Uchiha	\N
738	Yatogo Ryūgen	\N
739	Yodo	1 de dezembro
740	Yokaze	\N
741	Yome	\N
742	Yomi	\N
743	Yone	\N
744	Yoroi Akadō	21 de fevereiro
745	Yoshino Nara	24 de fevereiro
746	Yotaka	\N
747	Yugito Nii	24 de Julho
748	Yui	\N
749	Yukai	\N
750	Yukata	\N
751	Yukimi	\N
752	Yurika	\N
753	Yurito	\N
754	Yurui	\N
755	Yōrō	\N
756	Yūdachi	\N
757	Yūgao Uzuki	3 de Novembro
758	Yūkimaru	\N
759	Yūra	31 de Outubro
760	Yūsuke	\N
761	Zabuza Momochi	15 de Agosto
762	Zaji	\N
763	Zaku Abumi	14 de setembro
764	Zetsu Negro	\N
765	Zō	\N
766	Ōkei	\N
767	Ōnoki	8 de outubro
768	Ōtora	\N
769	Ōwashi	\N
770	Ūhei	\N
\.


--
-- Data for Name: clan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clan (id, name) FROM stdin;
1	Clã Kedōin
2	Clã Inuzuka
3	Clã Ryū
4	Clã Uzumaki
5	Clã Sarutobi
6	Clã Uchiha
7	Clã Hyūga
8	Clã Senju
9	Clã Akimichi
10	Clã Nara
11	Clã Shimura
12	Família Kaminarimon
13	Clã Yamanaka
14	Família Kagetsu
15	Clã Hōzuki
16	Clã Ōtsutsuki
17	Clã Yuki
18	Família Wasabi
19	Clã Kamizuru
20	Clã Hatake
21	Clã Kaguya
22	Clã Hoshigaki
23	Clã Rinha
24	Clã Aburame
25	Casa dos Kakei
26	
27	Clã Tsuchigumo
28	Clã Kurama
\.


--
-- Data for Name: classification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classification (id, name) FROM stdin;
1	Ninken
2	Invocação
3	Iryō-nin
4	Ninja Médico
5	Tipo Sensor
6	Oinin
7	Nukenin
8	Ninja Médica
9	Jinchūriki
10	Pseudo-Jinchūriki
11	Monge Ninja
12	Besta com Cauda
13	Rank S
14	Ninja Mercenário
15	Daimyō
16	Sábio
17	Sensor
18	Sennin
19	Ninja Cozinheiro
20	Ninjas Mercenários
21	Bijū
22	Samurai
23	Sannin
24	Ninja Monge
25	Tokubetsu Jōnin
26	Sasori
\.


--
-- Data for Name: family; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.family (id, name) FROM stdin;
1	Genshō Ryūdōin
2	Jakō Ryūdōin
3	Rokkaku Ryūdōin
4	Kuroma Tatsushiro
5	Todoroki
6	Hikaru Tsuki
7	Michiru Tsuki
8	Iō
9	Kaya
10	Komichi
11	Sasuke Sarutobi
12	Hiruzen Sarutobi
13	Biwako Sarutobi
14	Mirai Sarutobi
15	Konohamaru Sarutobi
16	Kurenai Yūhi
17	Samui
18	Teuchi
19	Chen
20	Asuma Sarutobi
21	A
23	Minato Namikaze
24	Kushina Uzumaki
25	Naruto Uzumaki
26	Himawari Uzumaki
27	Hinata Hyūga
28	Neji Hyūga
29	Hanabi Hyūga
30	Hizashi Hyūga
31	Hiashi Hyūga
32	Raiga Kurosuki
33	Shizuma Hoshigaki
34	Itama Senju
35	Kawarama Senju
36	Tobirama Senju
37	Hashirama Senju
38	Nawaki
39	Tsunade
40	Sasori
41	Ebizō
42	Chōza Akimichi
43	Chōchō Akimichi
44	Chōji Akimichi
45	Chōbee Akimichi
46	Karui
47	Hagoromo Ōtsutsuki
48	Shizune
49	Shiseru
50	Koyuki Kazahana
51	Sōsetsu Kazahana
52	Chiyo
53	Chino
54	Denki Kaminarimon
55	Kisuke Maboroshi
56	Mikoto Uchiha
57	Itachi Uchiha
58	Sarada Uchiha
59	Sakura Uchiha
60	Sasuke Uchiha
61	Shima
62	Motoi
63	Nagato
64	Ise
65	Mai Kagetsu
66	Tsukiko Kagetsu
67	Tobei Kagetsu
68	Rasa
69	Karura
70	Temari
71	Shinki
72	Kankurō
73	Yashamaru
74	Shikadai Nara
75	Gamatatsu
76	Gamakichi
77	Gamabunta
78	Agira Ryūdōin
79	Agari
80	Kinkaku
81	Isago
82	Meizu
83	Kaguya Ōtsutsuki
84	Tenji
85	Hamura Ōtsutsuki
86	Asura Ōtsutsuki
87	Clã Uchiha
88	Clã Uzumaki
89	Clã Senju
90	Indra Ōtsutsuki
91	Kahyō
92	Rahyō
93	Clã Hyūga
94	Toneri Ōtsutsuki
95	Tsume Inuzuka
96	Kiba Inuzuka
97	Boruto Uzumaki
98	Butsuma Senju
99	Mito Uzumaki
100	Yūgao Uzuki
101	Kakeru Tsuki
102	Amayo
103	Sumaru
104	Natsuhi
105	Idate Morino
106	Ibiki Morino
107	Iruka Umino
108	Kohari Umino
109	Tentō Madoka
110	Tazuna
111	Tsunami
112	Kaiza
113	Inoichi Yamanaka
114	Inojin Yamanaka
115	Sai Yamanaka
116	Ino Yamanaka
117	Sai
118	Ikkaku Umino
119	Fusō
120	Suzumebachi
121	Jibachi
122	Kozuchi
123	Ōnoki
124	Kurotsuchi
125	Kū
126	Kurobachi
127	Fugaku Uchiha
128	Sakura Haruno
129	Iwakyō
130	Iwazo
131	Iwaji
132	Hazuki Uchiha
133	Tajima Uchiha
134	Madara Uchiha
135	Urushi
136	Shin Uchiha
137	Nonō Yakushi
138	Shisui Uchiha
139	Katazu
140	Yagura Karatachi
141	Zetsu Negro
142	Estátua Demoníaca do Caminho Exterior
143	Hyūga
144	Kaguya
145	Senju
146	Uzumaki
147	Dez-Caudas
148	Hakuhyō
149	Inari
150	Sakumo Hatake
151	Zetsu Branco
152	Gaara
153	Shikamaru Nara
154	Sanshō
155	Kageki
156	Ashitaba
157	Sora
158	Hana Inuzuka
159	Tamaki
160	Chamū
161	Blue B
162	Ginkaku
163	Momoshiki Ōtsutsuki
164	Ishikawa
165	Mebuki Haruno
166	Pais de Konohamaru
167	Kunijirō
168	Kunihisa
169	Shinku Yūhi
170	Kitsuchi
171	Miina
172	Izuna Uchiha
173	Fūta Kagetsu
174	Takanami Senka
175	Sazanami Senka
176	Yūto
179	Kabuto Yakushi
182	Orochimaru
186	Might Duy
189	Log
191	Sasami
192	Kinshiki Ōtsutsuki
193	Furui
195	Mui
197	Jiraiya
177	Manda II
178	Manda
187	Leo
180	Suigetsu Hōzuki
181	Kizashi Haruno
184	Rock Lee
194	Muku
196	Ran
201	Buntan Kurosuki
210	Toki
216	Makinami Senka
221	Yoshino Nara
225	Shibi Aburame
183	Gōzu
185	Might Guy
188	Shion
207	Mãe de Ryōgi
212	Kakashi Hatake
213	Atsui
222	Temari Nara
190	Tsubaki
198	Tanuki Shigaraki
199	Mitsuki
200	Musai
202	Jiga
203	Ruiga
204	Metal Lee
205	Gekkō
206	Pai de Ryōgi
208	Tezuna
209	Ōwashi
211	Shin
214	Karashi
215	Momo
217	Shino Aburame
218	Torune Aburame
219	Hakuto
220	Shikaku Nara
223	Torune
224	Fukasaku
226	Miroku
227	Dokku
228	Kagami Uchiha
229	Sagiri
230	Dan Katō
231	Kazuma
232	Mangetsu Hōzuki
233	Tanishi
234	Yone
235	Hotarubi
236	Sēramu
237	Dotō Kazahana
238	Tami
239	Nekobaa
240	Tamae
241	Sukune
242	Sumire Kakei
243	Asami
244	Ikkyū Madoka‎‎
245	Ayame
246	Uruchi Uchiha
247	Akio
248	Kiri
249	Shikuro Aburame
250	Pai de Tsukino
251	Yakumo Kurama
252	Murakumo Kurama
253	Teyaki Uchiha
254	Uroko Kurama
255	Unkai Kurama
256	Tenzō
257	Hayate Gekkō
258	Mãe de Yūkimaru
259	Sagi
\.


--
-- Data for Name: jutsu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jutsu (id, name, id_character) FROM stdin;
1	Técnica de Invocação	1
2	Cauda Perseguidora de Presa da Presa Giratória de Presa	11
3	Clone da Besta Humana	11
4	Presa Giratória de Presa	11
5	Transformação Combinada	11
6	Transformação Combinada da Besta Humana: Lobo de Duas Cabeças	11
7	Transformação Misturada da Besta Humana — Lobo de Três Cabeças	11
8	Marcação Dinâmica	11
9	Presa Passando	11
10	Presa Lobo Presa	11
11	Presa Passando Presa	11
12	Liberação de Terra: Técnica do Golem	14
13	Tática de Ataque Surpresa	16
14	Matança Silenciosa	24
15	Presas Relâmpago	24
16	Mãos de Múltiplas Serpentes Ocultas na Sombra	28
17	Mãos de Serpente Oculta na Sombra	28
18	Técnica de Invocação: Cobras	28
19	Técnica da Morte Mútua das Cobras Gêmeas	28
20	Selo Amaldiçoado do Céu	28
21	Barreira Talismã: Olho Blindado	29
22	Liberação de Água: Colisão da Onda de Água	29
23	Técnica do Sistema de Sensoriamento	29
24	Projétil de Liberação de Fogo: "Chamas"	29
25	Byakugan	29
26	Técnica Sensorial	29
27	Técnica de Dispersão dos Mil Corvos	30
28	Técnica Secreta das Agulhas de Pedra	30
29	Transmissão da Mente Psicótica	30
30	Lâmina de Chakra: Linha Reta	38
31	Andorinha Voadora	38
32	Liberação de Fogo: Pilha Ardente de Cinzas	38
33	Liberação de Vento: Técnica da Nuvem de Poeira	38
34	Estilo Nuvem	39
35	Decapitação de Chamas do Estilo Nuvem	39
36	Lâmina de Vento	44
37	Tática de Ataque Surpresa	51
38	Formação Manji	54
39	Jōgan	54
40	Kāma	54
41	Liberação de Água: Bala de Respingo	54
42	Liberação de Água: "Onda Selvagem"	54
43	Liberação de Relâmpago: Flecha Trovejante	54
44	Liberação de Relâmpago: Relâmpago Roxo	54
45	Liberação de Vento: Palma Vendaval	54
46	Portal Espaço-Temporal	54
47	Projétil de Liberação de Água: Orca (através do Kote)	54
48	Projétil de Liberação de Fogo: "Chamas" (através do Kote)	54
49	Projétil de Liberação de Vento: Shuriken (através do Kote)	54
50	Rasengan	54
51	Rasengan Desaparecedor	54
52	Shurikenjutsu de Relâmpago do Estilo Uchiha: Triplicação	54
53	Rasengan: "Unissonância"	54
54	Técnica do Harém	54
55	Projétil de Liberação de Relâmpago: Respiração Violenta (através do Kote)	54
56	Transformação do Clone das Sombras	54
57	Teisho	54
58	Técnica dos Clones das Sombras	54
59	Técnica Sensual	54
60	Técnica de Invocação	61
61	Liberação de Relâmpago: Alicerce de Relâmpago Ilusório	62
62	Técnica da Palma Mística	62
63	Técnica Sensorial	62
64	Parede de Ferro Selada	64
65	Artimanha de Entrada Impulsiva	66
66	Ataque de Lâminas Manipuladas	66
67	Bloqueio do Escudo Mecânico de Luz	66
68	Dissipação de Genjutsu	66
69	Fios de Chakra	66
70	Marionete: Ataque de Punição da Primavera	66
71	Performance da Marionete: Conquista Habilidosa com um Corpo Humano	66
72	Reencarnação da Própria Vida	66
73	Sucção Esmagadora das Três Jóias	66
74	Técnica Branca Secreta: A Coleção de Dez Marionetes de Chikamatsu	66
75	Técnica Branca Secreta: A Coleção de Dez Marionetes de Chikamatsu: Ataque da Terra	66
76	Técnica da Palma Mística	66
77	Técnica de Composição	66
78	Invocação: Marionete	66
79	Técnica de Selamento: Rugido Final do Leão	66
80	Técnica de Marionetes	66
81	Controle de Calorias	69
82	Técnica do Super Tamanho Múltiplo	69
83	Tanque da Bala Humana	69
84	Liberação de Relâmpago: Punho Trovejante	69
85	Técnica do Tamanho Múltiplo	69
86	Técnica do Tamanho Múltiplo Parcial	69
87	Agulhas Jizō	71
88	Controle de Calorias	71
89	Bombardeio do Projétil de Borboleta	71
90	Formação Ino–Shika–Chō	71
91	Ioiô da Bala Humana	71
92	Liberação de Terra: Técnica da Prática do Tijolo	71
93	Mergulho Gordinho	71
94	Modo Borboleta	71
95	Super Tapa	71
96	Tanque da Bala Humana	71
97	Técnica do Super Tamanho Múltiplo	71
98	Técnica do Tamanho Múltiplo	71
99	Técnica do Tamanho Múltiplo Parcial	71
100	Arte da Espada da Névoa Sangrenta: Mutilação de Ossos	72
101	Desencadeamento da Hiramekarei	72
102	Matança Silenciosa	72
103	Espada Gêmea Hiramekarei: Martelo	72
104	Bola da Besta com Cauda	73
105	Bola da Besta com Cauda Instantânea	73
106	Carga Brutal das Bestas com Cauda	73
107	Lança do Ataque do Chifre Brilhante	73
108	Mordida de Bicho	73
109	Pó de Escama	73
110	Transferência de Chakra	73
111	Telepatia da Besta com Cauda	73
112	Controle de Calorias	75
113	Formação Ino–Shika–Chō	75
114	Tanque da Bala Humana	75
115	Técnica do Tamanho Múltiplo	75
116	Técnica do Tamanho Múltiplo Parcial	75
117	Técnica do Super Tamanho Múltiplo	75
118	Técnica Sensorial	78
119	Liberação de Água: Onda Selvagem de Bolha	80
120	Técnica de Transformação em Espírito	85
121	Transferência de Chakra	85
122	Habilidade de Regeneração	87
123	Dissipação de Genjutsu	87
124	Kotoamatsukami	87
125	Invocação de Árvore Espontânea	87
126	Izanagi	87
127	Liberação de Vento: Esfera de Vácuo	87
128	Mangekyō Sharingan	87
129	Sharingan	87
130	Técnica de Erradicação da Língua Amaldiçoada	87
131	Selo de Auto-Amaldiçoamento	87
132	Liberação de Vento: Onda de Vácuo	87
133	Ondas de Vento	87
134	Liberação de Vento: Série de Ondas de Vácuo	87
135	Técnica de Invocação: Baku	87
136	Técnica de Selamento Reversa dos Quatro Símbolos	87
137	Liberação de Vento: Técnica do Projétil de Vento	87
138	Liberação de Vento: Grande Esfera de Vácuo	87
139	Liberação de Vento: Lâmina de Vácuo	87
140	Espada de Assassinato Relâmpago	88
141	Flash Relâmpago	88
142	Liberação de Relâmpago: Onda de Inspiração	88
143	Liberação de Água: Formação da Parede de Água	88
144	Liberação de Relâmpago: Pantera Negra	88
145	Liberação de Tempestade: Circo de Laser	88
146	Relâmpago Negro	88
147	Argila Explosiva	89
148	C0	89
149	C1	89
150	C3	89
151	C2	89
152	C4	89
153	Clone Bombardeio Suicida	89
154	Clone de Argila	89
155	Kinjutsu de Iwagakure	89
156	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	89
157	Minas Terrestres Explosivas	89
158	Técnica dos Clones das Sombras	89
159	Técnica da Passagem da Barreira de Cinco Selos	89
160	Liberação de Lava: Bola de Borracha	93
161	Liberação de Lava: Corda de Borracha	93
162	Liberação de Lava: Defesa de Borracha	93
163	Liberação de Lava: Parede de Borracha	93
164	Eco da Broca Ressonante	98
165	Técnica da Costura pelas Sombras	107
166	Técnica de Contenção da Sombra pela Imitação da Sombra	107
167	Técnica de Imitação pela Sombra	107
168	Liberação de Fogo: Técnica da Grande Bola de Fogo	115
169	Sharingan	115
170	Senbon de Agulha de Cabelo	117
171	Matança Silenciosa	117
172	Arte Sábia: Chamada do Sapo	118
173	Corte da Língua Lutadora	118
174	Arte Sábia: Goemon	118
175	Liberação de Vento: Técnica do Projétil de Vento	118
176	Entrada Dinâmica	118
177	Ilusão Demoníaca: Confronto do Canto de Sapo	118
178	Invocação: Fūma Shuriken	118
179	Kata do Sapo	118
180	Modo Sábio	118
181	Técnica de Invocação Reversa	118
182	Arte Sábia: Técnica Anfíbia	118
183	Técnica de Assassinato	129
184	Técnica da Marionete do Selo Amaldiçoado de Transferência de Mente	129
185	Técnica Sensorial	129
186	Técnica de Troca da Mente do Corpo	129
187	Areia Expansiva	132
188	Armadura de Areia	132
189	Barragem da Garoa de Areia	132
190	Braço Monstruoso de Areia	132
191	Caixão de Areia	132
192	Carga Brutal das Bestas com Cauda	132
193	Cintilação Corporal na Areia	132
194	Defesa Absoluta Rígida Final: Escudo de Shukaku	132
195	Deserto: Mão	132
196	Escudo de Areia	132
197	Fluxo da Cachoeira de Areia Movediça	132
198	Funeral do Deserto	132
199	Garoa de Areia	132
200	Granizo de Areia	132
201	Imagem do Gato Escondido na Areia	132
202	Clone de Areia	132
203	Liberação de Vento: Dispersão de Balas de Areia	132
204	Liberação de Vento: Grande Destruição	132
205	Onda do Deserto	132
206	Parede Protetiva de Areia Aérea	132
207	Prisão do Funeral de Areia	132
208	Liberação de Vento: Nuvem de Areia Infinita — Grande Destruição	132
209	Grande Funeral do Deserto	132
210	Prisão Restritora de Areia	132
211	Selamento do Grande Funeral do Deserto em Camadas	132
212	Suspensão do Deserto	132
213	Técnica da Amarra de Areia	132
214	Técnica de Indução ao Sono	132
215	Terceiro Olho	132
216	Shuriken de Areia	132
217	Chicote do Amor	134
218	Chicote do Amor	135
219	Decapitação da Espada do Sapo	135
220	Invocação: Técnica do Cesto de Compra Destruidor	135
221	Liberação de Água: Tiro da Arma	135
222	Liberação de Fogo: Projétil de Chamas do Óleo de Sapo	135
223	Projétil do Óleo de Sapo	135
224	Transformação Combinada	135
225	Decapitação da Espada do Sapo	138
226	Bloqueio do Escudo	139
227	Arma de Xarope de Amido	140
228	Modo Sábio	140
229	Técnica de Invocação Reversa	140
230	Decapitação da Espada do Sapo	140
231	Técnica do Telescópio	141
232	Liberação de Explosão: Punho de Mina Terrestre	146
233	Ilusão Demoníaca: Estrutura Fumegante de Vários Andares	154
234	Técnica de Hidratação	154
235	Técnica do Clone de Água	154
236	Técnica de Invocação: Marisco Gigante	154
237	Técnica do Revólver de Água	154
238	Tirania Fumegante Perigosa	154
239	Agulhas Carregadas	156
240	Técnica da Formação do Trovão Voador	156
243	Bola da Besta com Cauda Contínua	171
246	Bola da Besta com Cauda	171
247	Transferência de Chakra	171
249	Oito Torções da Besta com Cauda	171
252	Técnica do Instinto de Assassinato Compartilhado	173
255	Espada de Nunoboko	174
258	Técnica da Criação de Todas as Coisas	174
259	Técnica de Invocação	174
261	Cintilação Corporal na Névoa	179
265	Matança Silenciosa	179
270	Seis Caminhos — Chibaku Tensei	182
272	Liberação de Vapor: Força Inigualável	183
273	Punho em Propulsão	183
285	Buddha Superiormente Transformado	191
288	Invocação: Rashōmon Quíntuplo	191
290	Liberação de Madeira: Técnica da Grande Floresta	191
292	Liberação de Madeira: Técnica Hotei	191
296	Técnica de Invocação	191
301	Técnica do Trazedor da Escuridão	191
302	Transferência de Chakra	191
303	Técnica dos Clones das Sombras	194
308	Oito Trigramas Palma da Parede de Vácuo	198
311	Oito Trigramas Sessenta e Quatro Palmas	198
314	Técnica de Maldição: Controle da Morte pela Possessão de Sangue	201
321	Passo Gentil dos Punhos de Leões Gêmeos	210
322	Punho Gentil	210
326	Liberação de Água: Técnica do Projétil de Água	214
329	Quatro Formações Vermelhas Yang	214
331	Liberação de Terra: Técnica do Projétil de Terra	214
335	Técnica do Clone da Sombra de Shuriken	214
338	Técnica Sensorial	214
346	Susanoo	238
348	Formação Ino–Shika–Chō	239
351	Técnica da Armadilha de Chakra no Cabelo	239
360	Técnica de Troca da Mente do Corpo	240
363	Técnica Sensorial	240
241	Tática de Ataque Surpresa	170
242	Bola da Besta com Cauda Instantânea	171
244	Dissipação de Genjutsu	171
245	Carga Brutal das Bestas com Cauda	171
248	Telepatia da Besta com Cauda	171
250	Tinta Preta	171
251	Liberação de Água: Técnica de Ocultação na Água	173
253	Caminho Exterior: Técnica da Vida Celestial de Saṃsāra	174
254	Esfera da Busca da Verdade	174
256	Rinnegan	174
257	Seis Caminhos — Chibaku Tensei	174
260	Transferência de Chakra	174
262	Espelho Demoníaco de Gelo Fino	179
263	Espelhos Demoníacos de Cristais de Gelo	179
264	Liberação de Gelo: Domo de Aicebergue	179
266	Mil Agulhas Voadoras de Água da Morte	179
267	Xeque	179
268	Byakugan	182
269	Esfera da Busca da Verdade	182
271	Forte Pontapé em Propulsão	183
274	Quebra de Chifre	183
275	Presa Giratória de Presa	184
276	Técnica das Quatro Pernas	184
277	Byakugan	185
278	Punho Gentil	185
279	Liberação de Fogo: Formação de Chama Explosiva	187
280	Dança da Lâmina de Foice: Queda Descendente da Lâmina	187
281	Técnica de Invocação: Ibuse	187
282	Arte Ninja: Verdadeira Captura de Espada com as Mãos Nuas	191
283	Arte Sábia da Liberação de Madeira: Várias Milhares de Mãos Verdadeiras	191
284	Arte Sábia: Portão do Grande Deus	191
286	Habilidade de Regeneração	191
287	Invocação: Rashōmon	191
289	Liberação de Madeira: Advento de um Mundo de Árvores Florescentes	191
291	Liberação de Madeira: Técnica do Dragão de Madeira	191
293	Liberação de Madeira: Técnica Hōbi	191
294	Modo Sábio	191
295	Quatro Formações Vermelhas Yang	191
297	Liberação de Madeira: Técnica do Humano de Madeira	191
298	Técnica do Clone de Madeira	191
299	Técnica Secreta da Liberação de Madeira: Natividade de um Mundo de Árvores	191
300	Técnica Sexagenária do Estilo Hokage: Kakuan Entrando na Sociedade com Mãos Trazendo Felicidade	191
304	Dança da Lua Crescente	194
305	Byakugan	198
306	Oito Trigramas Palmas Giratórias do Céu	198
307	Juinjutsu da Família Principal Hyūga	198
309	Emissão de Chakra	198
310	Oito Trigramas Palma de Vácuo	198
312	Punho Gentil	198
313	Perfurar como Punição	201
315	Sharingan	204
316	Byakugan	210
317	Oito Trigramas Palma da Parede de Vácuo	210
318	Oito Trigramas Palma de Vácuo	210
319	Oito Trigramas Sessenta e Quatro Palmas	210
320	Palma Inferior	210
323	Invocação: Bastão Adamantino	214
324	Invocação: Fūma Shuriken	214
325	Liberação de Fogo: Técnica do Projétil de Fogo	214
327	Liberação de Terra: Parede do Estilo Terra	214
328	Liberação de Vento: Técnica do Projétil de Vento	214
330	Selo Consumidor do Demônio Morto	214
332	Liberação de Fogo: Projétil de Chama do Dragão de Fogo	214
333	Liberação de Relâmpago: Técnica do Projétil de Relâmpago	214
334	Técnica de Invocação: Rei Macaco: Enma, Shinigami	214
336	Técnica do Grande Combo de Cinco Elementos	214
337	Técnica do Telescópio	214
339	Técnica dos Clones das Sombras	214
340	Punho Gentil	217
341	Byakugan	217
342	Técnica de Assassinato	222
343	Névoa Venenosa	229
344	Sharingan	236
345	Sharingan	238
347	Mangekyō Sharingan	238
349	Ioiô da Bala Humana	239
350	Liberação de Terra: Técnica da Prática do Tijolo	239
352	Técnica da Palma Mística	239
353	Técnica de Clone da Transferência de Mente	239
354	Técnica de Transmissão da Mente do Corpo	239
355	Técnica Sensorial	239
356	Técnica de Troca da Mente do Corpo	239
357	Transmissão de Sensoriamento	239
358	Formação Ino–Shika–Chō	240
359	Técnica de Perturbação da Mente do Corpo	240
361	Técnica de Transmissão da Mente do Corpo	240
362	Técnica do Sistema de Sensoriamento	240
364	Transmissão da Mente Psicótica	240
365	Desenho de Imitação da Super Besta	241
366	Técnica de Troca da Mente do Corpo	241
367	Técnica de Transmissão da Mente do Corpo	241
368	Formação das Cordas de Luz	243
369	Técnica de Invocação	246
370	Liberação de Terra: Técnica da Redução de Peso na Rocha	246
371	Batida da Sombra	247
372	Bola da Besta com Cauda	247
373	Carga Brutal das Bestas com Cauda	247
374	Palma Coral	247
375	Projétil Saltitante da Concha Torre	247
376	Bola da Besta com Cauda Instantânea	247
377	Transferência de Chakra	247
378	Telepatia da Besta com Cauda	247
379	Amaterasu	249
380	Ame no Ohabari	249
381	Contra Genjutsu	249
382	Coerção Sharingan	249
383	Efêmero	249
384	Espada de Totsuka	249
385	Espelho de Yata	249
386	Genjutsu: Sharingan	249
387	Grande Explosão do Clone	249
388	Ilusão Demoníaca: Miragem do Corvo	249
389	Ilusão Demoníaca: Mudança do Espelho do Céu e da Terra	249
391	Izanami	249
390	Ilusão Demoníaca: Técnica de Estacas de Agrilhoar	249
398	Selo de Transcrição: Amaterasu	249
413	Liberação de Água: Captura do Campo de Xarope de Amido	258
392	Liberação de Água: Projétil da Presa de Água	249
400	Sharingan	249
393	Liberação de Água: Técnica do Projétil de Água	249
404	Susanoo	249
412	Atacando em Ambos os Lados	258
416	Matança Silenciosa	266
418	Agulhas Jizō	268
428	Liberação de Fogo: Técnica do Dragão de Fogo	268
438	Selo da Escultura de Dedo	268
450	Formação dos Quatro Nevoeiros Pretos	269
461	Machado	273
474	Dança das Mudas de Samambaia	276
483	Modo Sábio	276
493	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	276
496	Liberação de Terra: Técnica da Projeção do Peixe Subterrâneo	280
506	Rinne Sharingan	284
516	Cintilação Corporal na Névoa	288
526	Invocação: Liberação de Terra: Técnica da Presa Rastreadora	288
534	Liberação de Terra: Corte da Presa de Broca	288
544	Oito Portões	288
552	Punho Forte	288
560	Jiongu: Ruptura Fixa	291
569	Arremesso de Fio	298
577	Substituição por Marionete	298
394	Liberação de Água: Técnica do Projétil do Dragão de Água	249
402	Técnica de Invocação: Corvos	249
415	Sharingan	259
423	Invocação: Técnica da Loja de Sapo	268
432	Rasengan	268
442	Técnica da Transformação em um Sapo	268
447	Técnica de Fuga Transparente	268
456	Transformação Combinada	269
457	Selo Amaldiçoado do Quarteto do Som	269
465	Transferência de Chakra	273
479	Liberação de Água: Técnica do Projétil do Dragão de Água	276
489	Técnica da Palma Mística	276
498	Técnica do Clone de Neblina	280
504	Esfera da Busca da Verdade Expansiva	284
513	Yomotsu Hirasaka	284
515	Artimanha de Entrada Impulsiva	288
525	Ilusão Demoníaca: Técnica da Visão do Inferno	288
538	Tática de Ataque Surpresa	288
547	Técnica de Manipulação de Fios	288
564	Liberação de Fogo: Zukokku	291
568	Abraço da Marionete	298
583	Técnica Vermelha Secreta: Maquinário Triangular	298
395	Liberação de Fogo: Flor da Fênix Sábia do Prego Carmesim	249
403	Técnica de Passagem do Sistema de Sensoriamento	249
410	Liberação de Terra: Movimentação do Núcleo da Terra	251
426	Liberação de Fogo: Projétil de Chamas	268
430	Modo Sábio	268
440	Técnica dos Clones das Sombras	268
451	Liberação de Terra: Bolinho Mausoléu de Terra	269
462	Múltiplos Canhões do Lótus Altruísta Conectados	273
466	Regeneração de Absorção Celular	273
475	Desenrolar da Teia de Aranha	276
491	Técnica de Invocação: Cobras	276
510	Técnica de Paralisia Temporária	284
524	Genjutsu: Sharingan	288
533	Liberação de Relâmpago: Técnica Clone das Sombras	288
543	Mil Anos de Morte	288
551	Técnica dos Clones das Sombras	288
557	Genjutsu Interrogatório	290
572	Captura	298
580	Técnica Preta Secreta: Maquinário de Tiro Triplo	298
396	Liberação de Fogo: Técnica da Grande Bola de Fogo	249
406	Técnica dos Clones das Sombras	249
409	Liberação de Terra: Cúpula de Rocha	251
417	Matança Silenciosa	267
419	Abertura dos Cinco Elementos	268
431	Projétil do Óleo de Sapo	268
441	Técnica da Juba do Leão Selvagem	268
455	Método de Formação da Barreira	269
458	Ataque Desvairado do Selo Amaldiçoado	273
470	Bisturi de Chakra	276
477	Invocação: Reencarnação do Mundo Impuro	276
486	Mãos de Serpente Oculta na Sombra	276
508	Amenominaka	284
514	Técnica da Juba do Leão Selvagem	284
520	Corte Relâmpago do Kamui	288
529	Liberação de Água: Formação da Parede de Água	288
537	Lâmina da Luz Branca	288
546	Técnica de Invocação: Ninken	288
554	Transmissão Relâmpago	288
563	Liberação de Relâmpago: Gian	291
574	Invocação: Marionete	298
582	Técnica Preta Secreta: Salamandra	298
397	Mangekyō Sharingan	249
407	Yasaka Magatama	249
411	Técnica da Formação do Trovão Voador	256
414	Mangekyō Sharingan	259
425	Liberação de Fogo: Grande Bala de Chama	268
429	Método de Selamento de Fogo	268
439	Sujeição do Sapo — Técnica de Manipulação das Sombras	268
452	Liberação de Terra: Retorno da Costa da Terra	269
473	Cicatrização Yin de Feridas de Destruição	276
482	Liberação de Terra: Retorno da Costa da Terra	276
492	Técnica do Derramamento de Corpo Líquido	276
505	Ossos das Cinzas Mortais	284
521	Corte Relâmpago: Perfuração das Luzes Gêmeas	288
530	Liberação de Água: Técnica da Grande Cachoeira	288
541	Mangekyō Sharingan	288
555	Técnica dos Múltiplos Clones da Sombra	288
559	Enrolamento em Tentáculos	291
575	Marionete Armada	298
584	Tiro do Mecanismo Destrutivo	298
399	Selo de Transcrição: Kotoamatsukami	249
401	Liberação de Fogo: Técnica da Fênix Sábia de Fogo	249
408	Tsukuyomi	249
405	Técnica do Clone de Corvo	249
420	Grande Bola Rasengan	268
421	Ultra-Grande Bola Rasengan	268
422	Invocação: Prisão da Boca do Sapo	268
424	Invocação: Técnica do Cesto de Compra Destruidor	268
427	Liberação de Fogo: Projétil de Chamas do Óleo de Sapo	268
433	Kata do Sapo	268
434	Arte Sábia: Goemon	268
435	Liberação de Terra: Pântano do Submundo	268
436	Barreira: Método de Formação da Cobertura	268
437	Rasengan Serial	268
443	Técnica de Esconder-se em um Sapo	268
444	Técnica de Invocação: Sapos	268
445	Barreira: Prisão do Sapo Cabaça	268
446	Arte Sábia: Senbon de Agulha de Cabelo	268
448	Barreira de Liberação de Terra: Domo da Prisão de Terra	269
449	Formação das Quatro Chamas Violeta	269
453	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	269
454	Punho Arhat	269
459	Ataque do Jato Impulsionador	273
460	Corrente	273
463	Punho de Pistão	273
464	Regeneração de Ejeção Celular	273
467	ADN	276
468	Arte Sábia: Reencarnação Inorgânica	276
469	Arte Sábia: Técnica Branca Violenta	276
471	Bisturi de Chakra: Crueldade	276
472	Cadáver Falso	276
476	Flauta Demoníaca: Correntes do Som Fantasma	276
478	Liberação de Água: Técnica da Grande Cachoeira	276
480	Liberação de Água: Técnica do Projétil de Água	276
481	Ecdise	276
484	Liberação de Fogo: Técnica de Ocultação no Fogo	276
485	Mãos de Múltiplas Serpentes Ocultas na Sombra	276
487	Selo de Drenagem de Chakra	276
488	Técnica da Alma Morta	276
490	Técnica de Criação de Teias	276
494	Técnica do Templo de Nirvana	276
495	Sharingan	279
497	Técnica de Enganação Mental	280
499	Absorção de Todas as Coisas	284
500	Agulha de Cabelo do Coelho	284
501	Ataque de Vácuo de Oitenta Deuses	284
502	Byakugan	284
503	Deus: Natividade de um Mundo de Árvores	284
507	Shinra Tensei	284
509	Técnica de Invocação	284
511	Técnica Sensorial	284
512	Tsukuyomi Infinito	284
517	Chidori	288
518	Corte Relâmpago	288
519	Corte da Kunai da Lâmina Relâmpago	288
522	Crueldade	288
523	Dissipação de Genjutsu	288
527	Kamui	288
528	Kamui Shuriken	288
531	Liberação de Água: Técnica do Projétil do Dragão de Água	288
532	Liberação de Relâmpago: Rastreamento de Presa da Besta Relâmpago	288
535	Liberação de Água: Técnica do Projétil do Tubarão de Água	288
536	Liberação de Terra: Parede do Estilo Terra	288
539	Liberação de Terra: Técnica do Duplo Suicídio por Decapitação	288
540	Matança Silenciosa	288
542	Método de Selamento do Mal	288
545	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	288
548	Técnica do Clone de Água	288
549	Rasengan	288
550	Técnica de Mudança de Voz	288
553	Susanoo	288
556	Sharingan	288
558	Liberação de Terra: Destruição de Caverna	290
561	Jiongu	291
562	Liberação de Fogo: Liberação de Vento: Onda Selvagem de Chamas Ventiladas	291
565	Liberação de Terra: Domu	291
566	Liberação de Vento: Atsugai	291
567	Punho de Tentáculos	291
570	Ataque da Super Arma	298
571	Bloqueio do Escudo Mecânico de Luz	298
573	Fios de Chakra	298
576	Performance da Marionete: Conquista Habilidosa com um Corpo Humano	298
578	Técnica de Marionetes	298
579	Técnica Preta Secreta: Maquinário de Tiro Único	298
581	Técnica Preta Secreta: Espetáculo de Controle de Chamas do Escorpião	298
585	Correntes de Selamento Adamantinas	306
586	Olho da Mente de Kagura	306
587	Personificação de Chakra	306
588	Regeneração de Vigor	306
589	Transferência de Chakra	306
590	Talhada de Corte Aprisionador	307
591	Decapitação Frontal do Estilo Nuvem	307
592	Estilo Nuvem	307
593	Chama Carmesim (através do Kote)	312
594	Raio Divisor do Céu e da Terra (através do Kote)	312
595	Rasengan (através do Kote)	312
596	Técnica de Imitação pela Sombra (através do Kote)	312
597	Grande Divisão da Lesma	314
598	Katsuyu: Imensa Rede de Cura	314
599	Paladar Pegajoso da Língua Ácida	314
600	Transferência de Chakra	314
601	Cauda Perseguidora de Presa da Presa Giratória de Presa	322
602	Presa Giratória de Presa	322
603	Clone da Besta Humana	322
604	Cilada	322
605	Presa Lobo Presa	322
606	Presa Passando	322
607	Presa Passando Presa	322
608	Técnica dos Clones das Sombras	322
609	Técnica das Quatro Pernas	322
610	Transformação Combinada	322
611	Transformação Combinada da Besta Humana: Lobo de Duas Cabeças	322
612	Transformação Misturada da Besta Humana — Lobo de Três Cabeças	322
613	Transformação do Clone das Sombras	322
614	Arco de Guerra da Aranha: Terrível Divisão	323
615	Área da Teia de Aranha	323
616	Armadura de Ouro Pegajoso	323
617	Chuva de Aranhas	323
626	Queda da Aranha Gigante	323
635	Bola da Besta com Cauda Contínua	329
644	Oito Torções da Besta com Cauda	329
649	Técnica de Selamento: Prisão do Polvo	329
656	Projéteis de Perfuração dos Dez Dedos	330
660	Agulhas da Sombra	331
665	Deus das Marés	335
677	Liberação de Terra: Deslocamento Subterrâneo	339
696	Bola da Besta com Cauda	351
618	Cuspe Pegajoso da Aranha	323
627	Restrição da Aranha	323
634	Bola da Besta com Cauda	329
648	Tinta Preta	329
650	Dança da Camélia	330
659	Torção da Flor	330
678	Técnica da Dança do Tubarão na Prisão de Água	339
697	Telepatia da Besta com Cauda	351
619	Desenrolar da Teia de Aranha	323
628	Selo Amaldiçoado do Quarteto do Som	323
641	Fúria da Samehada	329
646	Técnica do Clone de Tinta	329
652	Dança da Clematite: Vinha	330
674	Liberação de Água: Técnica da Esfera de Água do Tubarão Agitado	339
684	Liberação de Terra: Grande Movimentação do Núcleo da Terra	341
690	Técnica de Regeneração da Cura Ressuscitadora	342
693	Quebra de Chifre	351
620	Casulo da Aranha	323
629	Flor de Teia de Aranha	323
632	Técnica de Criação de Teias	323
633	Acrobata	329
643	Lariat	329
657	Impulso da Flor	330
664	Byakugan	335
675	Liberação de Água: Técnica do Grande Projétil de Tubarão	339
688	Liberação de Terra: Técnica Sanduíche	341
621	Formação das Quatro Chamas Violeta	323
630	Técnica de Invocação: Kyodaigumo	323
639	Corte em Vários Pedaços	329
651	Dança da Clematite: Flor	330
666	Ōdachinagi	335
673	Liberação de Água: Onda de Choque Explosiva de Água	339
687	Liberação de Terra: Cúpula de Rocha	341
691	Liberação de Vento: Técnica do Vento Cortador	349
622	Formação dos Quatro Nevoeiros Pretos	323
636	Bola da Besta com Cauda Instantânea	329
645	Taijutsu de Agitação	329
654	Dança do Lariço	330
661	Técnica de Manipulação de Fios	331
663	Absorção de Todas as Coisas	335
672	Liberação de Água: Grande Onda de Choque Explosiva de Água	339
682	Técnica do Clone de Água	339
686	Liberação de Terra: Técnica do Punho de Rocha	341
695	Bola da Besta com Cauda Instantânea	351
623	Método de Formação da Barreira	323
640	Espada de Assassinato Relâmpago	329
647	Técnica do Clone do Tentáculo de Polvo	329
671	Liberação de Água: Cinco Tubarões Famintos	339
680	Liberação de Água: Mil Tubarões de Alimentação	339
685	Liberação de Terra: Técnica da Prática do Tijolo	341
624	Ouro Pegajoso da Aranha	323
638	Cintilação Corporal na Água	329
658	Selo Amaldiçoado da Terra	330
670	Fúria da Samehada	339
679	Técnica da Prisão de Água	339
689	Liberação de Terra: Movimentação do Núcleo da Terra	341
694	Liberação de Fervura: Força Inigualável	351
625	Prisão em Forma de Rede	323
637	Cabeçada	329
655	Dança do Salgueiro	330
662	Bashōsen: Hélice de Fogo	333
667	Técnica de Expansão Muscular	335
669	Cintilação Corporal na Água	339
681	Técnica de Invocação: Tubarão	339
683	Liberação de Terra: Abertura de Terra da Nascente de Escavação	341
631	Transformação Combinada	323
642	Lápis de Liberação de Relâmpago	329
653	Dança das Mudas de Samambaia	330
668	Técnica Sensorial	335
676	Liberação de Água: Técnica do Projétil do Tubarão de Água	339
692	Carga Brutal das Bestas com Cauda	351
698	Transferência de Chakra	351
699	Chakram de Papel	355
700	Clone de Papel	355
701	Dança do Shikigami	355
702	Dança do Shikigami: Punição	355
703	Shuriken de Papel	355
704	Técnica do Papel da Pessoa de Deus	355
705	Rasengan	356
706	Sensual: Técnica da Menina com Menina	356
707	Sensual: Técnica do Menino com Menino	356
708	Transformação do Clone das Sombras	356
709	Liberação de Fogo: Meteoros Flamejantes	356
710	Liberação de Fogo: Técnica da Grande Chama	356
711	Liberação de Fogo: Projétil de Chama do Dragão de Fogo	356
712	Técnica de Anexamento	356
713	Técnica de Imitação pela Sombra (através do Kote)	356
714	Técnica de Selamento: Liberar	356
715	Técnica dos Clones das Sombras	356
716	Técnica Sensual	356
717	Atacando em Ambos os Lados	360
718	Ilusão Demoníaca: Técnica do Arredor Falso	360
719	Balanço Destrutivo	369
720	Bola da Besta com Cauda	369
721	Bola da Besta com Cauda Contínua	369
722	Braços de Chakra da Besta com Cauda	369
723	Bola da Besta com Cauda Instantânea	369
724	Carga Brutal das Bestas com Cauda	369
725	Grande Rugido	369
726	Modo de Chakra do Nove-Caudas	369
727	Sensoriamento de Emoções Negativas	369
728	Técnica Sensorial	369
729	Telepatia da Besta com Cauda	369
730	Transferência de Chakra	369
731	Ilusão Demoníaca: Aprisionamento da Árvore Assassina	370
732	Arte Ninja: Formação do Majestoso Ciclo Sexagenário de Genbu: Estilo de Número 108: Liberar	371
733	Liberação de Água: Trompete de Água	371
734	Liberação de Lava: Técnica do Selo da Pedra de Cinzas	371
735	Liberação de Terra: Abertura de Terra da Nascente de Escavação	371
736	Liberação de Terra: Cúpula de Rocha	371
737	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	371
738	Liberação de Lava: Técnica de Congelamento de Cal	371
739	Matança Silenciosa	374
740	Técnica de Manipulação de Fios	374
741	Estilo de Selamento de Oito Trigramas	375
742	Correntes de Selamento Adamantinas	375
743	Selo de Quatro Símbolos	375
744	Byakugan	383
745	Técnica de Transferência Celestial	390
746	Arte Sábia: Despacho Relâmpago da Liberação de Yin	391
747	Bastão do Seis Caminhos	391
748	Caminho Exterior: Técnica da Vida Celestial de Saṃsāra	391
749	Chibaku Tensei	391
750	Tengai Ryūsei	391
751	Chute Caído	391
752	Assimilação	391
753	Arte Sábia: Feixe de Luz da Liberação de Tempestade	391
754	Decapitação da Respiração Instantânea	391
755	Esfera da Busca da Verdade	391
756	Furacão da Folha	391
757	Genjutsu: Sharingan	391
758	Habilidade de Regeneração	391
759	Invocação: Estátua Demoníaca do Caminho Exterior	391
760	Izanagi	391
761	Correntes da Estátua Demoníaca	391
762	Kamui	391
763	Selo de Transcrição: Izanagi	391
764	Deus: Natividade de um Mundo de Árvores	391
765	Liberação de Fogo: Grande Destruição de Fogo	391
766	Liberação de Fogo: Grande Aniquilação do Fogo	391
767	Liberação de Fogo: Técnica da Grande Bola de Fogo	391
768	Liberação de Fogo: Técnica de Ocultação em Pó e Cinza	391
769	Liberação de Fogo: Técnica do Rugido do Dragão de Chamas	391
770	Liberação de Madeira: Advento de um Mundo de Árvores Florescentes	391
771	Liberação de Madeira: Técnica do Dragão de Madeira	391
772	Mangekyō Sharingan	391
773	Perturbação da Valsa Maligna	391
774	Retorno Uchiha	391
775	Rinne Sharingan	391
776	Rinnegan	391
777	Limbo: Lado da Prisão	391
778	Modo Sábio	391
779	Susanoo	391
780	Técnica dos Clones das Sombras	391
781	Receptor Negro	391
782	Técnica de Invocação: Kurama	391
783	Técnica de Absorção do Selo de Bloqueio	391
784	Técnica do Clone de Madeira	391
785	Técnica dos Múltiplos Clones de Liberação de Madeira	391
786	Sharingan	391
787	Selo de Ataúde do Dez-Caudas do Seis Caminhos	391
788	Selo Proibido da Maldição Individual	391
789	Técnica Sensorial	391
790	Tengai Shinsei	391
791	Traje Majestoso: Susanoo	391
792	Tsukuyomi Infinito	391
793	Yasaka Magatama	391
794	Técnica Secreta da Liberação de Madeira: Natividade de um Mundo de Árvores	391
795	Liberação de Terra: Técnica da Projeção do Peixe Subterrâneo	393
796	Técnica dos Clones das Sombras	393
797	Controle de Calorias	395
798	Técnica da Ligação de Pano	396
799	Matança Silenciosa	402
800	Técnica de Hidratação	402
801	Controle de Calorias	404
802	Técnica do Tamanho Múltiplo	404
803	Ataque Forte da Garra do Gato	405
804	Bola da Besta com Cauda	405
825	Iaidō	420
831	Ataque do Dedo Mínimo	423
848	Tigre Diurno	423
858	Modo de Chakra do Nove-Caudas	427
866	Selo de Contrato	427
886	Mãos de Serpente Selvagem Oculta na Sombra	436
902	Byakugan	445
913	Técnica de Expansão das Sombras (absorvida de Shikamaru Nara)	445
805	Carga Brutal das Bestas com Cauda	405
812	Chute Caído	412
834	Dissipação de Genjutsu	423
842	Oito Portões	423
855	Deus Voador do Trovão: Trovão Guiado	427
863	Rasengan	427
872	Técnica do Deus Voador do Trovão	427
880	Selo da Força de Uma Centena	434
889	Liberação de Vento: Ruptura	436
893	Liberação de Madeira: Técnica do Verdor	440
899	Liberação de Vento: Tornado Violento	445
908	Rinnegan	445
934	Técnica de Invocação	459
806	Bola da Besta com Cauda Instantânea	405
828	Risco da Dança da Lâmina	420
833	Ascensão Destruidora de Rocha da Folha	423
843	Movimento de Taijutsu em Alta Velocidade	423
856	Estilo de Selamento de Oito Trigramas	427
868	Técnica da Formação do Trovão Voador	427
888	Modo Sábio	436
895	Liberação de Terra: Cascalho	440
910	Oito Deuses do Trovão	445
932	Liberação de Terra: Técnica da Redução de Peso na Rocha	459
807	Telepatia da Besta com Cauda	405
815	Liberação de Água: Técnica do Projétil do Dragão de Água	412
823	Punho Forte	415
826	Flash	420
830	Oito Portões	422
837	Furacão da Folha	423
847	Sombra da Folha Dançante	423
853	Bola da Besta com Cauda Instantânea	427
864	Rasengan do Pai com Filho	427
873	Técnica dos Clones das Sombras	427
879	Sensoriamento de Emoções Negativas	434
891	Técnica do Clone de Cobra	436
903	Criação de Chakra Comestível	445
911	Inukai Takeru no Mikoto	445
915	Shinra Tensei	445
921	Técnica de Selamento: Rugido Final do Leão	448
924	Técnica de Enganação Mental	452
933	Técnica de Divisão	459
808	Fogaréu do Gato de Chamas	405
809	Chamas Escaldantes do Inferno	405
810	Garra de Gato	405
817	Liberação de Fervura: Técnica da Névoa Qualificada	412
818	Projétil do Dragão de Água e Relâmpago	412
820	Liberação de Água: Técnica de Ocultação na Água	413
824	Decapitação de Iai	420
829	Formação dos Oito Portões Liberados	422
832	Choque do Furacão da Folha	423
835	Elefante do Anoitecer	423
836	Entrada Dinâmica	423
841	Lótus Reversa	423
844	Formação dos Oito Portões Liberados	423
845	Pavão da Manhã	423
850	Violento — Furacão de Força Adamantina da Folha	423
851	Punho Forte	423
857	Invocação: Técnica do Cesto de Compra Destruidor	427
859	Selo de Quatro Símbolos	427
860	Flash Amarelo	427
865	Selo Consumidor do Demônio Morto	427
871	Técnica de Transferência da Besta com Cauda	427
874	Transferência de Chakra	427
875	Técnica Sensorial	427
877	Modificação Física Suave	431
883	Liberação de Relâmpago: Relâmpago Roxo	436
884	Mãos de Serpente Oculta na Sombra	436
885	Técnica de Invocação: Cobra	436
894	Liberação de Madeira: Técnica Cortante	440
896	Técnica de Regeneração da Cura Ressuscitadora	442
897	Bola da Besta com Cauda	445
898	Liberação de Terra: Técnica do Projétil de Rocha	445
904	Liberação de Madeira: Manipulação da Árvore Divina	445
905	Raio Divisor do Céu e da Terra (absorvida de Kote)	445
907	Receptor Negro	445
912	Técnica da Juba do Leão Selvagem	445
917	Sucção Esmagadora das Três Jóias	448
918	Técnica Branca Secreta: A Coleção de Dez Marionetes de Chikamatsu	448
919	Técnica Branca Secreta: A Coleção de Dez Marionetes de Chikamatsu: Ataque da Terra	448
925	Técnica do Servo da Névoa	452
928	Técnica de Insetos Parasitas Destrutivos: Kikaichū, Shōkaichū	457
930	Capa da Desconcertante Superfície sem Pó	459
931	Liberação de Poeira: Técnica do Desprendimento do Mundo Primitivo	459
811	Transferência de Chakra	405
814	Liberação de Água: Técnica do Projétil de Água	412
819	Técnica de Ocultação na Névoa	412
839	Guy Noturno	423
849	Vendaval da Folha	423
854	Deus Voador do Trovão — Segundo Passo	427
867	Sensoriamento de Emoções Negativas	427
881	Formação Manji	436
890	Transformação Sábia	436
900	Projétil de Liberação de Água: Orca (absorvida de Kote)	445
909	Rocha do Macaco	445
914	Takamimusubi-no-kami	445
922	Técnica de Invocação: Coruja	450
923	Liberação de Terra: Técnica da Projeção do Peixe Subterrâneo	452
927	Técnica de Encravamento de Inseto	457
935	Técnica Sensorial	459
813	Liberação de Água: Formação do Pilar de Água	412
822	Furacão da Folha	415
838	Furacão Forte da Folha	423
846	Técnica de Invocação: Tartaruga	423
861	Modo Sábio	427
869	Super Flash Espiral da Roda da Dança Uivante da Fórmula Participante Estilo Três	427
876	Técnica da Rotação Mútua Instantânea do Deus Voador do Trovão	427
878	Selo Yin: Liberar	434
882	Liberação de Relâmpago: Manipulação da Cobra Elétrica	436
901	Bola da Besta com Cauda Instantânea (absorvida de Killer B)	445
916	Fios de Chakra	448
926	Técnica do Clone de Neblina	452
929	Técnica Secreta: Coleta de Insetos	457
816	Liberação de Lava: Técnica da Aparição Fusionada	412
821	Técnica do Instinto de Assassinato Compartilhado	413
827	Técnica do Sabre Samurai	420
840	Lótus Frontal	423
852	Bola da Besta com Cauda	427
862	Quatro Formações Vermelhas Yang	427
870	Técnica de Invocação: Sapos, Shinigami	427
887	Modificação Física Suave	436
892	Liberação de Madeira: Barreira Vegetal	440
906	Projétil de Liberação de Fogo: "Chamas" (absorvida de Kote)	445
920	Técnica de Marionetes	448
936	Banshō Ten'in	463
937	Ataque Asura	463
938	Caminho Animal	463
939	Caminho Asura	463
940	Caminho Deva	463
941	Caminho Exterior	463
942	Caminho Exterior — Técnica da Vida Celestial de Saṃsāra	463
943	Caminho Humano	463
944	Barreira de Cinco Selos	463
945	Caminho Naraka	463
946	Caminho Preta	463
947	Drenagem de Chakra	463
948	Flecha Flamejante da Incrível Habilidade	463
949	Invocação: Estátua Demoníaca do Caminho Exterior	463
950	Invocação do Rinnegan	463
951	Liberação de Água: Onda de Água Selvagem	463
952	Liberação de Vento: Palma Vendaval	463
953	Proteção Contra Genjutsu	463
954	Chibaku Tensei	463
955	Seis Caminhos de Pain	463
956	Shinra Tensei	463
957	Técnica da Entrada Oculta	463
958	Técnica da Invocação Amplificada	463
959	Técnica da Vontade do Tigre da Chuva	463
960	Técnica de Absorção do Selo de Bloqueio	463
961	Receptor Negro	463
962	Rinnegan	463
963	Técnica de Translocação	463
964	Técnica do Corpo da Lanterna Mágica	463
965	Técnica do Súbito Atacante Espelhado	463
966	Técnica Sensorial	463
967	Técnica do Seis Caminhos	463
968	Técnica de Invocação: Seis Caminhos de Pain, Konan, Estátua Demoníaca do Caminho Exterior	463
969	Técnica de Selamento: Nove Dragões de Espectro dos Selos Consumidores	463
970	Apodrecimento do Lobo Sábio	470
971	Arte Ninja: Verdadeira Captura de Espada com as Mãos Nuas	470
972	Arte Sábia: Grande Bola Rasengan	470
973	Arte Sábia: Rasengan de Liberação de Magnetismo	470
974	Arte Sábia: Rasenshuriken de Liberação de Lava	470
975	Arte Sábia: Super Rasenshuriken das Bestas com Cauda	470
976	Artimanha de Entrada Impulsiva	470
977	Bastão do Seis Caminhos	470
978	Bola da Besta com Cauda Contínua	470
979	Bola da Besta com Cauda	470
980	Bola da Besta com Cauda Instantânea	470
981	Cabeçada	470
982	Carga Brutal das Bestas com Cauda	470
983	Arte Sábia: Série Contínuas de Ultra-Grandes Esferas Espirais	470
984	Chute da Busca da Verdade	470
985	Combo da Zona de Naruto	470
986	Dissipação de Genjutsu	470
987	Entrada Dinâmica	470
988	Esfera da Busca da Verdade	470
989	Criação de Tinta	470
990	Esfera de Absorção Espiral	470
991	Chamas Escaldantes do Inferno	470
992	Grande Bola: Rasenshuriken da Besta com Cauda	470
993	Seis Caminhos: Ultra-Grande Bola Rasenshuriken	470
994	Grande Bola Rasengan	470
995	Grande Bola Rasenshuriken	470
996	Grande Mordida de Kurama	470
997	Grande Rugido	470
998	Esferas Espirais Desordenadas	470
999	Flash Amarelo	470
1000	Kata do Sapo	470
1001	Liberação de Calor: Auréola do Furacão de Flecha Negra de Estilo Zero	470
1002	Liberação de Terra: Parede do Estilo Terra	470
1003	Liberação de Fervura: Força Inigualável	470
1004	Liberação de Vento: Rasengan	470
1005	Habilidade de Regeneração	470
1006	Invocação: Técnica do Cesto de Compra Destruidor	470
1007	Liberação de Vento: Bola Ultra-Grande Rasenshuriken	470
1008	Mil Anos de Morte	470
1009	Mini-Rasenshuriken	470
1010	Modo de Chakra do Nove-Caudas	470
1011	Modo Sábio	470
1012	Modo Sábio dos Seis Caminhos	470
1013	Nova Técnica Ninja Pervertida	470
1014	Liberação de Vento: Rasenshuriken	470
1015	Pó de Escama	470
1016	Liberação de Vento: Rasenshuriken Repetido	470
1017	Projétil do Ataque Suicida de Vento Demoníaco	470
1018	Punho Adamantino	470
1019	Punho em Propulsão	470
1020	Rasengan da Besta com Cauda	470
1021	Rasengan	470
1022	Rasengan da Raposa Demoníaca	470
1023	Padrão de Selo Amaldiçoado	470
1024	Peido	470
1025	Rasengan Planetário	470
1026	Rasengan Serial	470
1027	Rasenshuriken da Bola de Besta com Cauda	470
1028	Seis Caminhos — Chibaku Tensei	470
1029	Selo Torii	470
1030	Shuriken de Todas Direções	470
1031	Rasengan do Pai com Filho	470
1032	Talhada de Corte Aprisionador	470
1033	Sensoriamento de Emoções Negativas	470
1034	Tática de Ataque Surpresa	470
1035	Técnica de Deslacramento: Shuriken	470
1036	Técnica de Invocação: Sapos	470
1037	Técnica do Harém	470
1038	Técnica da Shuriken das Sombras	470
1039	Transformação do Clone das Sombras	470
1040	Super Mini-Bola da Besta com Cauda	470
1041	Taijutsu dos Múltiplos Clones das Sombras	470
1052	Byakugan	476
1062	Punho Gentil	476
1042	Técnica dos Clones das Sombras	470
1048	Ultra-Grande Bola Rasengan	470
1051	Zona de Esferas Seriais da Grande Bola Espiral	470
1060	Arte do Punho Gentil Golpe de Um Corpo	476
1043	Técnica dos Múltiplos Clones da Sombra	470
1049	Técnica do Vórtex do Tufão de Água	470
1059	Palma Inferior	476
1071	Caminho Exterior	490
1080	Esfera da Busca da Verdade	490
1090	Liberação de Fogo: Técnica da Grande Bola de Fogo	490
1099	Receptor Negro	490
1109	Técnica de Transferência da Besta com Cauda	490
1128	Espada de Kusanagi: Espada Longa do Céu	496
1136	Mãos de Múltiplas Serpentes Ocultas na Sombra	496
1146	Técnica da Morte Mútua das Cobras Gêmeas	496
1155	Liberação de Calor: Assassinato de Vapor Extremo	503
1044	Técnica Sensual	470
1058	Oito Trigramas Sessenta e Quatro Palmas	476
1045	Técnica Sensual do Harém Invertido	470
1056	Oito Trigramas Palma de Vácuo	476
1073	Caminho Asura	490
1082	Formação da Chama Uchiha	490
1095	Liberação de Madeira: Técnica do Dragão de Madeira	490
1105	Técnica de Invocação: Kurama	490
1117	Liberação de Terra: Técnica da Projeção do Peixe Subterrâneo	491
1124	Decapitação da Lua Crescente do Estilo Nuvem	495
1127	Encontro de Cobras	496
1137	Liberação de Vento: Grande Destruição	496
1147	Modificação Física Suave	496
1046	Transferência de Chakra	470
1055	Oito Trigramas Palma da Parede de Vácuo	476
1047	Transformação Combinada	470
1050	Ultra-Grande Série de Esferas Espirais	470
1061	Passo Gentil das Palmas Gêmeas	476
1068	Caminho Humano	490
1078	Erosão do Mar de Árvores	490
1088	Kamui	490
1101	Seis Caminhos de Pain	490
1116	Técnica Sensorial	490
1119	Técnica do Clone de Neblina	491
1123	Estilo Nuvem	495
1125	Assimilação	496
1134	Juinjutsu de Orochimaru	496
1144	Técnica dos Clones das Sombras	496
1150	Técnica de Transformação da Cobra	496
1053	Deflexão	476
1063	Punho Gentil: Agulha do Tenketsu	476
1054	Emissão de Chakra	476
1070	Caminho Naraka	490
1079	Liberação de Madeira: Lança da Grande Árvore	490
1089	Liberação de Fogo: Dança Selvagem da Onda Explosiva	490
1098	Minas Terrestres Explosivas	490
1108	Retorno Uchiha	490
1118	Técnica de Enganação Mental	491
1129	Formação de Dez Mil Cobras	496
1139	Invocação: Rashōmon	496
1151	Técnica de Oito Ramificações	496
1156	Técnica da Formação do Trovão Voador	509
1057	Oito Trigramas Palmas Giratórias do Céu	476
1064	Técnica da Palma Mística	486
1065	Bola da Besta com Cauda	490
1066	Caminho Animal	490
1067	Caminho Exterior — Técnica da Vida Celestial de Saṃsāra	490
1069	Bola da Besta com Cauda Instantânea	490
1072	Caminho Deva	490
1074	Braços de Chakra da Besta com Cauda	490
1075	Caminho Preta	490
1076	Crueldade	490
1077	Drenagem de Chakra	490
1081	Espada de Nunoboko	490
1083	Habilidade de Regeneração	490
1084	Invocação: Estátua Demoníaca do Caminho Exterior	490
1085	Correntes da Estátua Demoníaca	490
1086	Invocação do Rinnegan	490
1087	Izanagi	490
1091	Genjutsu: Sharingan	490
1092	Grandes Círculos Gêmeos	490
1093	Liberação de Madeira: Técnica Cortante	490
1094	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	490
1096	Mangekyō Sharingan	490
1097	Método de Liberação da Cauda	490
1100	Liberação de Madeira: Manipulação da Árvore Divina	490
1102	Seis Formações Vermelhas Yang	490
1103	Selo de Ataúde do Dez-Caudas do Seis Caminhos	490
1104	Sharingan	490
1106	Técnica de Mudança de Voz	490
1107	Técnica de Selamento: Nove Dragões de Espectro dos Selos Consumidores	490
1110	Rinnegan	490
1111	Técnica do Telescópio	490
1112	Técnica do Seis Caminhos	490
1113	Técnica do Toque Etéreo	490
1114	Transferência de Chakra	490
1115	Tsukuyomi Infinito	490
1120	Armadilha Rasteira com Fio	495
1121	Decapitação Reversa do Estilo Nuvem	495
1122	Espada de Assassinato Relâmpago	495
1126	Ecdise	496
1130	Habilidade de Regeneração	496
1131	Invocação: Rashōmon Triplo	496
1132	Deslizamento do Modo da Cobra	496
1133	Invocação: Reencarnação do Mundo Impuro	496
1135	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	496
1138	Mãos de Serpente Oculta na Sombra	496
1140	Queima de Arquivo	496
1141	Restrição Maldita da Cobra Conjuradora	496
1142	Selo Consumidor do Demônio Morto: Liberar	496
1143	Selo dos Cinco Elementos	496
1145	Técnica da Cópia Facial Extinguível	496
1148	Reencarnação do Cadáver Vivente	496
1149	Técnica de Paralisia Temporária	496
1152	Técnica de Mudança de Voz	496
1153	Técnica de Invocação: Cobras, Shinigami	496
1154	Tática de Ataque Surpresa	502
1157	Escudo de Pó de Ouro	514
1158	Liberação de Magnetismo: Funeral Imperial de Pó de Ouro	514
1159	Técnica de Invocação	514
1160	Terceiro Olho	514
1161	Técnica de Invocação	519
1162	Técnica da Palma Mística	522
1163	Choque do Furacão da Folha	525
1164	Furacão da Folha	525
1165	Grande Furacão da Folha	525
1166	Lótus Frontal	525
1167	Lótus Reversa	525
1168	Movimento de Taijutsu em Alta Velocidade	525
1169	Punho Forte	525
1170	Punho Embriagado	525
1171	Sombra da Folha Dançante	525
1172	Vendaval da Folha	525
1173	Vento Nascente da Folha	525
1174	Oito Portões	525
1175	Incêndio da Chama do Macaco	536
1176	Liberação de Lava: Punho Blindado Escaldante	536
1177	Liberação de Lava: Técnica Riacho de Rocha Escaldante	536
1178	Modo de Chakra de Liberação de Lava	536
1179	Montanha Flor–Frutífera	536
1180	Corte Yosaku	537
1181	Desenho de Imitação da Super Besta	540
1182	Liberação de Terra: Técnica de Esconder-se Como uma Toupeira	540
1183	Técnica da Névoa de Tinta	540
1184	Técnica de Assassinato	540
1185	Técnica de Selamento: Perseguição da Visão do Tigre Berrante	540
1186	Técnica do Clone de Tinta	540
1187	Desenho de Imitação do Super Deus	540
1188	Apodrecimento do Lobo Sábio	541
1189	Bola da Besta com Cauda Instantânea	541
1190	Bola da Besta com Cauda	541
1191	Carga Brutal das Bestas com Cauda	541
1192	Transferência de Chakra	541
1193	Lacuna de Sanguessuga	541
1194	Telepatia da Besta com Cauda	541
1195	Liberação de Água: Captura do Campo de Xarope de Amido	541
1196	Dança da Lâmina de Foice: Queda Descendente da Lâmina	542
1197	Lâmina da Luz Branca	546
1198	Arte Ninja da Criação do Renascimento — Técnica da Força de Uma Centena	547
1199	Artimanha de Entrada Impulsiva	547
1200	Bisturi de Chakra	547
1201	Cabeçada	547
1202	Cilada	547
1203	Criação do Renascimento	547
1204	Dissipação de Genjutsu	547
1205	Impacto da Flor de Cerejeira	547
1206	Impulso do Punho Certeiro	547
1207	Katsuyu: Imensa Rede de Cura	547
1208	Marionete: Ataque de Punição da Primavera	547
1209	Selo da Força de Uma Centena	547
1210	Punho Adamantino	547
1211	Selo Yin: Liberar	547
1212	Soco 100% Único	547
1213	Flor de Cerejeira Única	547
1214	Técnica das Cem Forças	547
1215	Técnica de Composição	547
1216	Técnica de Extração Delicada de Doença	547
1217	Técnica de Invocação: Lesmas	547
1218	Técnica Hemostática	547
1219	Técnica de Desintoxicação	547
1227	Formação Manji	557
1237	Vento Nascente da Folha	557
1242	Assalto da Aglomeração de Areia de Ferro: Martelo	560
1252	Método do Mundo de Areia de Ferro	560
1260	Técnica Vermelha Secreta: Performance das Cem Marionetes	560
1263	Ame-no-tejikara	562
1275	Chidori Senbon	562
1290	Liberação de Chama: Kagutsuchi — Chama Voadora	562
1301	Movimento de Taijutsu em Alta Velocidade	562
1315	Susanoo: Chidori	562
1334	Técnica de Imitação pela Sombra	581
1336	Técnica de Estrangulamento pela Sombra	582
1341	Ioiô da Bala Humana	583
1360	Técnica de Invocação Reversa	585
1363	Transmissão da Mente Psicótica	587
1366	Portal Espaço-Temporal	590
1376	Técnica de Insetos Parasitas Destrutivos: Kidaichū, Kikaichū	596
1387	Agulhas Carregadas	610
1399	Padrão de Selo Amaldiçoado	612
1408	Transferência de Chakra	614
1220	Transferência de Chakra	547
1230	Impacto do Rochedo Celestial	557
1240	Arremesso de Fio	560
1256	Técnica de Marionetes	560
1268	Chibaku Tensei	562
1273	Dissipação de Genjutsu	562
1283	Instante	562
1293	Invocação: Transformação da Lâmina Relâmpago	562
1300	Manipulação do Moinho de Vento de Lâminas Triplas	562
1310	Selo Amaldiçoado do Céu	562
1319	Técnica de Invocação: Cobras, Falcão	562
1329	Fios de Chakra	573
1330	Técnica de Insetos Parasitas Destrutivos: Kikaichū	574
1339	Corte da Foice Desordenada	583
1349	Técnica de Imitação de Shuriken pela Sombra	583
1358	Ligamento da Língua Lutadora	585
1372	Suspensão do Deserto	593
1383	Técnica de Cintilação Corporal	604
1386	Técnica do Tamanho Múltiplo	606
1398	Liberação de Vento: Dispersão de Balas de Areia	612
1402	Telepatia da Besta com Cauda	612
1405	Incêndio da Chama do Macaco	614
1221	Técnica de Mutação do Poder de Cura	547
1225	Dissipação de Genjutsu	557
1234	Sharingan	557
1245	Chuva de Areia de Ferro	560
1254	Prática de Marionete Humana	560
1261	Técnica Preta Secreta: Espetáculo de Controle de Chamas do Escorpião	560
1266	Coerção Sharingan	562
1278	Flash Relâmpago	562
1285	Espada de Kusanagi: Lâmina de Chidori	562
1295	Liberação de Chama: Yasaka Magatama	562
1304	Punho Forte	562
1312	Shurikenjutsu de Relâmpago do Estilo Uchiha: Triplicação	562
1322	Técnica dos Clones das Sombras	562
1344	Técnica da Captura pela Sombra	583
1355	Arte Sábia: Nuvem de Poeira da Liberação de Vento	585
1365	Mangekyō Sharingan	590
1369	Braço de Areia de Ferro	593
1382	Técnica de Invocação: Corvos	604
1391	Tiro Preparado de Agulhas	610
1395	Bola da Besta com Cauda	612
1406	Montanha Flor–Frutífera	614
1222	Técnica da Palma Mística	547
1226	Flash Relâmpago	557
1235	Talhada de Corte Aprisionador	557
1238	Chidori	557
1243	Assalto da Aglomeração de Areia de Ferro: Queda	560
1251	Arte Secreta da Técnica Branca Secreta: Coleção de Ilusões	560
1264	Chidori	562
1274	Drenagem de Chakra	562
1288	Liberação de Chama: Kagutsuchi	562
1307	Mãos de Serpente Oculta na Sombra	562
1320	Técnica de Passagem do Clã Uchiha	562
1346	Técnica de Estrangulamento pela Sombra	583
1359	Modo Sábio	585
1374	Inseto Parasita Gigante — Mordida de Inseto	596
1379	Kotoamatsukami	604
1397	Liberação de Vento: Bala de Ar Perfuradora	612
1411	Liberação de Água: Técnica do Grande Braço de Água	617
1223	Técnica de Troca da Mente do Corpo	556
1232	Liberação de Fogo: Técnica da Grande Bola de Fogo	557
1244	Ataque da Super Arma	560
1253	Performance da Marionete: Conquista Habilidosa com um Corpo Humano	560
1269	Amaterasu	562
1280	Genjutsu: Sharingan	562
1287	Liberação de Calor: Auréola do Furacão de Flecha Negra de Estilo Zero	562
1297	Liberação de Fogo: Técnica do Dragão de Fogo	562
1306	Restrição Maldita da Cobra Conjuradora	562
1314	Susanoo	562
1324	Traje Majestoso: Susanoo	562
1327	Técnica de Invocação	573
1331	Chuveiro de Agulhas	578
1333	Técnica da Foice da Doninha	581
1347	Dissipação de Genjutsu	583
1356	Kata do Sapo	585
1367	Sharingan	590
1373	Capa de Areia de Ferro	593
1377	Técnica do Clone de Inseto	596
1389	Técnica da Palma Mística	610
1412	Técnica de Afogamento da Bolha de Água	617
1224	Técnica Sensorial	556
1236	Técnica da Shuriken das Sombras	557
1248	Lança de Areia de Ferro	560
1271	Combo do Leão	562
1277	Espada de Kagutsuchi	562
1284	Iaidō	562
1294	Liberação de Fogo: Técnica da Fênix Sábia de Fogo	562
1303	Portal Espaço-Temporal	562
1311	Pássaro Médio Rotativo	562
1321	Técnica de Shuriken Manipulada	562
1337	Técnica de Imitação pela Sombra	582
1343	Liberação de Terra: Técnica da Prática do Tijolo	583
1354	Liberação de Fogo: Técnica do Projétil de Fogo	585
1362	Arte Sábia: Técnica Anfíbia	585
1390	Técnica de Regeneração da Cura Ressuscitadora	610
1392	Liberação de Vento: Escudo do Conde do Vento	611
1407	Telepatia da Besta com Cauda	614
1409	Golpe Decapitador	617
1228	Grande Flash da Folha	557
1247	Invocação: Marionete	560
1258	Técnica de Marionetes: Agulhas do Braço Protético	560
1265	Chidori Escuro	562
1272	Decapitação da Respiração Instantânea	562
1282	Ilusão Demoníaca: Técnica de Estacas de Agrilhoar	562
1292	Kirin	562
1299	Mangekyō Sharingan	562
1309	Método de Liberação do Mal	562
1318	Seis Caminhos — Chibaku Tensei	562
1326	Técnica de Manipulação de Fios	562
1340	Formação Ino–Shika–Chō	583
1350	Técnica de Imitação pela Sombra	583
1353	Arte Sábia: Goemon	585
1370	Fios de Chakra	593
1384	Controle de Calorias	606
1388	Névoa Venenosa	610
1400	Selamento do Grande Funeral do Deserto em Camadas	612
1403	Bola da Besta com Cauda	614
1413	Técnica do Revólver de Água	617
1229	Impacto da Flor de Cerejeira	557
1246	Fios de Chakra	560
1255	Técnica da Areia Manipuladora de Memória-Oculta	560
1262	Amaterasu: Fogo do Envoltório de Chamas	562
1276	Corrente de Chidori	562
1289	Liberação de Chama: Susanoo Kagutsuchi	562
1302	Luar	562
1317	Takemikazuchi	562
1231	Liberação de Fogo: Técnica da Fênix Sábia de Fogo	557
1233	Punho Adamantino	557
1239	Asas Mecânicas	560
1241	Assalto da Aglomeração de Areia de Ferro	560
1249	Assalto da Aglomeração de Areia de Ferro: Cinco Unhas Solares	560
1250	Manipulação da Força de Mil Mãos	560
1257	Técnica de Mudança de Voz	560
1259	Marionete Preparada: Oito Ondas de Agulhas	560
1267	Chidori Batendo Asas	562
1270	Contra Genjutsu	562
1279	Flecha de Indra	562
1281	Ecdise	562
1286	Lança Afiada de Chidori	562
1291	Kumade	562
1296	Liberação de Fogo: Técnica da Grande Bola de Fogo	562
1298	Liberação de Fogo: Técnica do Grande Dragão de Fogo	562
1305	Resplendor Crepuscular	562
1308	Rinnegan	562
1313	Sombra da Folha Dançante	562
1316	Sharingan	562
1323	Técnica Sensorial	562
1325	Técnica da Shuriken das Sombras	562
1328	Técnica de Marionetes	573
1332	Técnica de Expansão das Sombras	581
1335	Formação Ino–Shika–Chō	582
1338	Armadilha Rasteira com Fio	583
1342	Julgamento de Shikamaru	583
1345	Técnica da Costura pelas Sombras	583
1348	Técnica do Puxão pela Sombra	583
1351	Técnica de Insetos Parasitas Destrutivos: Rinkaichū	584
1352	Arte Sábia: Chamada do Sapo	585
1357	Ilusão Demoníaca: Confronto do Canto de Sapo	585
1361	Técnica de Invocação: Sapos	585
1364	Técnica de Assassinato	588
1368	Técnica de Manipulação de Armas	590
1371	Técnica de Marionetes	593
1375	Técnica de Encravamento de Inseto	596
1378	Técnica Secreta: Esfera de Insetos	596
1380	Mangekyō Sharingan	604
1381	Sharingan	604
1385	Técnica do Tamanho Múltiplo Parcial	606
1393	Liberação de Vento: Espada do Conde do Vento	611
1394	Técnica do Clone Cadáver	611
1396	Carga Brutal das Bestas com Cauda	612
1401	Transferência de Chakra	612
1404	Carga Brutal das Bestas com Cauda	614
1410	Liberação de Água: Tate Eboshi	617
1414	Técnica de Hidratação	617
1415	Liberação de Terra: Torneamento da Palma Rasgadora de Terra	625
1416	Técnica de Imitação pela Sombra	630
1417	Técnica de Ocultação com Camuflagem	641
1418	Sharingan	645
1419	Flauta Demoníaca: Correntes do Som Fantasma	662
1420	Flauta Demoníaca: Guerreiros Ilusionados Manipulados por Melodia	662
1421	Formação das Quatro Chamas Violeta	662
1422	Formação dos Quatro Nevoeiros Pretos	662
1423	Revolta do Mundo do Demônio	662
1424	Método de Formação da Barreira	662
1425	Técnica de Invocação: Doki	662
1426	Transformação Combinada	662
1427	Selo Amaldiçoado do Quarteto do Som	662
1428	Invocação: Dança da Decapitação Rápida	665
1429	Leque Voador	665
1430	Liberação de Vento: Grande Lançamento da Rede	665
1431	Liberação de Vento: Técnica da Grande Foice da Doninha	665
1432	Liberação de Vento: Técnica do Vento Cortador	665
1433	Liberação de Vento: Lançamento da Rede	665
1434	Técnica da Foice da Doninha	665
1435	Técnica da Grande Foice da Doninha	665
1436	Técnica de Invocação: Kamatari	665
1437	Bashōsen: Hélice de Vento	670
1438	Técnica de Deslacramento	670
1439	Técnica de Deslacramento: Shuriken	670
1440	Técnica de Manipulação de Fios	670
1441	Técnica de Anexamento	670
1442	Buddha Superiormente Transformado	680
1443	Efêmera	680
1444	Habilidade de Regeneração	680
1445	Liberação de Fogo: Técnica do Projétil de Fogo	680
1446	Liberação de Água: Técnica do Projétil de Água	680
1447	Liberação de Vento: Técnica do Projétil de Vento	680
1448	Rei Lótus Kanzeon	680
1449	Técnica do Grande Combo de Cinco Elementos	680
1450	Liberação de Madeira: Técnica do Humano de Madeira	680
1451	Liberação de Relâmpago: Técnica do Projétil de Relâmpago	680
1452	Liberação de Madeira: Técnica Cortante	680
1453	Liberação de Terra: Técnica do Projétil de Terra	680
1454	Corte do Deus Voador do Trovão	682
1455	Invocação: Reencarnação do Mundo Impuro	682
1456	Liberação de Água: Formação da Parede de Água	682
1457	Liberação de Água: Ondas de Águas Cortantes	682
1458	Liberação de Água: Técnica do Projétil do Dragão de Água	682
1459	Multiplicação Mútua dos Papéis Explosivos	682
1460	Quatro Formações Vermelhas Yang	682
1461	Choro Celestial	682
1462	Técnica dos Clones das Sombras	682
1463	Técnica da Rotação Mútua Instantânea do Deus Voador do Trovão	682
1464	Técnica de Invocação	682
1465	Técnica do Deus Voador do Trovão	682
1466	Técnica Sensorial	682
1467	Byakugan	687
1468	Transmissão da Mente Psicótica	691
1469	Controle de Calorias	694
1470	Técnica do Tamanho Múltiplo	694
1471	Técnica de Deslacramento	695
1472	Liberação de Magnetismo: Foco da Abelha das Lâminas Gêmeas	695
1473	Técnica de Deslacramento: Shuriken	695
1474	Técnica de Insetos Parasitas Destrutivos: Rinkaichū	697
1475	Presa Passando	705
1476	Presa Passando Presa	705
1479	Bisturi de Chakra	706
1477	Técnica das Quatro Pernas	705
1480	Choque Desorientador do Corpo	706
1478	Arte Ninja da Criação do Renascimento — Técnica da Força de Uma Centena	706
1481	Chute da Lança do Céu	706
1488	Punho Adamantino	706
1493	Técnica de Invocação: Lesmas	706
1502	Assimilação	734
1505	Liberação de Água: Torrente Dilacerante	734
1512	Liberação de Madeira: Técnica da Ligação Sufocante	734
1514	Liberação de Madeira: Técnica das Casas de Pilar em Série	734
1521	Técnica de Arrombamento de Fechadura	734
1523	Técnica do Clone de Madeira	734
1528	Técnica do Vórtex do Tufão de Água	734
1529	Ataque de Lâminas Manipuladas	736
1535	Chamas Escaldantes do Inferno	747
1540	Balão de Chiclete	754
1543	Matança Silenciosa	761
1547	Liberação de Água: Técnica da Grande Cachoeira	761
1551	Técnica da Prisão de Água	761
1555	Assimilação	764
1563	Rinnegan	764
1577	Liberação de Terra: Técnica do Super Aumento de Peso na Rocha	767
1579	Liberação de Terra: Técnica do Punho de Rocha	767
1482	Criação do Renascimento	706
1490	Selo da Força de Uma Centena	706
1500	Ninjutsu de Bolha de Sabão	724
1510	Liberação de Madeira: Técnica da Casa de Quatro Pilares	734
1518	Liberação de Terra: Técnica de Túneis	734
1530	Punição Celestial	736
1548	Técnica de Ocultação na Névoa	761
1553	Extremas Ondas Sonoras Decapitadoras	763
1560	Ossos das Cinzas Mortais	764
1580	Liberação de Terra: Técnica do Super Punho de Rocha	767
1483	Emissão de Chakra	706
1491	Técnica da Palma Mística	706
1497	Apodrecimento do Lobo Sábio	724
1504	Liberação de Água: Técnica da Bacia da Cachoeira	734
1513	Liberação de Madeira: Técnica da Prisão de Quatro Pilares	734
1522	Técnica de Mudança de Voz	734
1538	Técnica de Criação de Garras	747
1544	Espada Rotativa Voadora	761
1550	Talhada de Corte Aprisionador	761
1552	Técnica Sensorial	762
1558	Kamui	764
1567	Técnica de Paralisia Temporária	764
1571	Liberação de Relâmpago: Quatro Pilares Vinculados	765
1573	Liberação de Poeira: Técnica do Desprendimento do Mundo Primitivo	767
1582	Liberação de Terra: Técnica da Redução de Peso na Rocha	767
1484	Golpe Nocauteador	706
1492	Técnica de Composição	706
1485	Pé da Dor Celestial	706
1486	Peteleco	706
1487	Katsuyu: Imensa Rede de Cura	706
1494	Técnica de Transformação	706
1495	Transferência de Chakra	706
1499	Liberação de Água: Técnica de Bolhas	724
1508	Liberação de Madeira: Cabeças de Cães	734
1509	Liberação de Madeira: Prisão Medieval	734
1516	Liberação de Terra: Muralha do Estilo Terra	734
1517	Liberação de Terra: Parede do Estilo Terra	734
1526	Técnica Sexagenária do Estilo Hokage: Kakuan Entrando na Sociedade com Mãos Trazendo Felicidade	734
1527	Transmissão de Madeira	734
1531	Sharingan	737
1549	Técnica do Clone de Água	761
1556	Efêmera	764
1565	Técnica de Esporos	764
1578	Liberação de Terra: Técnica do Golem	767
1489	Rachadura no Chão	706
1496	Selo Yin: Liberar	706
1498	Lacuna de Sanguessuga	724
1501	Liberação de Água: Onda de Água Selvagem	728
1503	Habilidade de Regeneração	734
1506	Liberação de Madeira: Bloqueio da Parede de Madeira	734
1507	Liberação de Madeira: Anel de Espinhos de Madeira	734
1511	Liberação de Madeira: Técnica da Grande Floresta	734
1515	Liberação de Madeira: Técnica da Ponte de Dois Pilares	734
1519	Liberação de Madeira: Natividade de um Mar de Árvores	734
1520	Selamento da Besta com Cauda	734
1524	Liberação de Terra: Divisão do Fluxo de Terra	734
1525	Liberação de Madeira: Transformação	734
1532	Ingestão de Chakra	744
1533	Ataque Forte da Garra do Gato	747
1534	Bola de Pelos de Rato	747
1536	Fogaréu do Gato de Chamas	747
1537	Garra de Gato	747
1539	Balão de Chiclete: Prisão	754
1541	Destruição de Bombas Desreguladas	754
1542	Cintilação Corporal na Névoa	761
1545	Corte em Vários Pedaços	761
1546	Liberação de Água: Técnica do Projétil do Dragão de Água	761
1554	Ondas Sonoras Decapitadoras	763
1557	Erosão do Mar de Árvores	764
1559	Monitoramento	764
1561	Receptor Negro	764
1562	Revestimento do Corpo	764
1564	Sharingan	764
1566	Mangekyō Sharingan	764
1568	Transferência de Chakra	764
1569	Yomotsu Hirasaka	764
1570	Técnica Sensorial	764
1572	Dissipação de Genjutsu	767
1574	Liberação de Terra: Movimentação do Núcleo da Terra	767
1575	Liberação de Terra: Técnica da Super Redução de Peso na Rocha	767
1576	Liberação de Terra: Técnica do Aumento de Peso na Rocha	767
1581	Técnica do Clone de Rocha	767
1583	Tática de Ataque Surpresa	770
\.


--
-- Data for Name: kekkei_genkai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kekkei_genkai (id, name) FROM stdin;
1	Byakugan
2	Sharingan
3	Mangekyō Sharingan
4	Jōgan
5	Liberação de Madeira
6	Liberação de Tempestade
7	Liberação de Explosão
8	Liberação de Lava
9	Ketsuryūgan
10	Liberação de Fervura
11	Liberação de Magnetismo
12	Liberação de Gelo
13	Tenseigan
14	Liberação de Chama
15	Ataque dos Demônios Gêmeos
16	Shikotsumyaku
17	Mangekyō Sharingan Eterno
18	Rinnegan
19	Liberação de Calor
20	Rinnegan Supremo
\.


--
-- Data for Name: nature_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nature_type (id, name) FROM stdin;
1	Liberação de Relâmpago
2	Liberação de Terra
3	Liberação de Água
4	Liberação de Yang
5	Liberação de Fogo
6	Liberação de Yin
7	Liberação de Vento
8	Liberação de Yin–Yang
9	Liberação de Madeira
10	Liberação de Gelo
11	Liberação de Fervura
12	Liberação de Magnetismo
13	Liberação de Chama
14	Liberação de Lava
15	Liberação de Poeira
16	Liberação de Calor
17	Liberação de Explosão
\.


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partner (id, name) FROM stdin;
1	Kiba Inuzuka
2	Akemaru
3	Kurotsuchi
4	Akamaru
5	Heki
6	Senta
7	Darui
8	C
9	Tobi
10	Sasori
11	Hina
12	Torune
13	Kyōya
14	Kinkaku
15	Meizu
16	Zabuza Momochi
17	Ao
18	Kakuzu
19	Ashimaru
20	Denka
21	Nagare
22	Koharu Utatane
23	Jūzō Biwa
24	Kisame Hoshigaki
25	Kotetsu Hagane
26	Kushimaru Kuriarare
27	Itachi Uchiha
28	Orochimaru
29	Zetsu Negro
30	Taiseki
31	Mahiru
32	Hidan
33	Kokuyō
34	Sekiei
35	A
36	Ginkaku
37	Urashiki Ōtsutsuki
38	Momoshiki Ōtsutsuki
39	Kakō
40	Homura Mitokado
41	Kirara
42	Nagato
43	Yahiko
44	Yaoki
45	Izumo Kamizuki
46	Akatsuchi
47	Ginji
48	Obito Uchiha
49	Kakkō
50	Gōzu
51	Kinshiki Ōtsutsuki
52	Hokushin
53	Konan
54	Madara Uchiha
55	Deidara
56	Zetsu
57	Urakaku
58	Kabuto Yakushi
59	Toroi
60	Mondai
61	Ranmaru
62	Raiga Kurosuki
63	Yūdachi
64	Ponta
65	Matsuri
66	Yotaka
67	Kogane
68	Hotaru
69	Tagorihime
70	Ichikishimahime
71	Zetsu Branco
72	Osoi
73	Fū Yamanaka
74	Kuromaru
75	Shisō
76	Shikamaru
77	Kegon
78	Ryūsui
79	Haku
80	Kaguya Ōtsutsuki
\.


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.photos (id, name, photo, id_character) FROM stdin;
1	A (Segundo Raikage).png	https://vignette.wikia.nocookie.net/naruto/images/c/c9/A_%28Segundo_Raikage%29.png/revision/latest/scale-to-width-down/310?cb=20170201175651&path-prefix=pt-br	1
2	Abiru Novo.png	https://vignette.wikia.nocookie.net/naruto/images/9/98/Abiru_Novo.png/revision/latest/scale-to-width-down/310?cb=20150219141128&path-prefix=pt-br	2
3	Agara.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/f9/Agara.PNG/revision/latest/scale-to-width-down/310?cb=20150629162800&path-prefix=pt-br	3
4	Agari Kaisen.PNG	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Agari_Kaisen.PNG/revision/latest/scale-to-width-down/310?cb=20151229215724&path-prefix=pt-br	4
5	Ageha.png	https://vignette.wikia.nocookie.net/naruto/images/4/4b/Ageha.png/revision/latest/scale-to-width-down/310?cb=20111220234317&path-prefix=pt-br	5
6	Parte I	https://vignette.wikia.nocookie.net/naruto/images/6/65/Agira.png/revision/latest/scale-to-width-down/310?cb=20111220190636&path-prefix=pt-br	6
7	Geral	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Agira_Ry%C5%ABd%C5%8Din_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429151840&path-prefix=pt-br	6
8	Ahiko.png	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Ahiko.png/revision/latest/scale-to-width-down/310?cb=20130102203331&path-prefix=pt-br	7
9	Quando Viva	https://vignette.wikia.nocookie.net/naruto/images/4/40/Ajisai.png/revision/latest/scale-to-width-down/310?cb=20150123011521&path-prefix=pt-br	8
10	O Caminho	https://vignette.wikia.nocookie.net/naruto/images/7/77/Segundo_Chikush%C5%8Dd%C5%8D.PNG/revision/latest/scale-to-width-down/310?cb=20131126215533&path-prefix=pt-br	8
11	Akaboshi.png	https://vignette.wikia.nocookie.net/naruto/images/3/3c/Akaboshi.png/revision/latest/scale-to-width-down/310?cb=20111206124002&path-prefix=pt-br	9
12	Parte I	https://vignette.wikia.nocookie.net/naruto/images/6/64/Akahoshi.png/revision/latest/scale-to-width-down/310?cb=20140816014517&path-prefix=pt-br	10
13	Geral	https://vignette.wikia.nocookie.net/naruto/images/e/eb/Akahoshi_%28Infobox-Rendeliza%C3%A7%C3%A3o%29.PNG/revision/latest/scale-to-width-down/154?cb=20140816013759&path-prefix=pt-br	10
14	Fase I	https://vignette.wikia.nocookie.net/naruto/images/7/76/Akamaru_%28Cl%C3%A1ssico%29.png/revision/latest/scale-to-width-down/310?cb=20160928190147&path-prefix=pt-br	11
15	Fase II	https://vignette.wikia.nocookie.net/naruto/images/3/36/Akamaru.PNG/revision/latest/scale-to-width-down/310?cb=20160928190340&path-prefix=pt-br	11
16	Boruto	https://vignette.wikia.nocookie.net/naruto/images/5/56/Akamaru_%28Ep%C3%ADlogo%29.png/revision/latest/scale-to-width-down/310?cb=20150505225026&path-prefix=pt-br	11
17	Parte II	https://vignette.wikia.nocookie.net/naruto/images/3/3e/Akane_Shippuden.PNG/revision/latest/scale-to-width-down/310?cb=20130727145724&path-prefix=pt-br	12
18	Passado	https://vignette.wikia.nocookie.net/naruto/images/a/aa/Akane.png/revision/latest/scale-to-width-down/310?cb=20170522211700&path-prefix=pt-br	12
19	Akari Tatsuhiro.PNG	https://vignette.wikia.nocookie.net/naruto/images/6/60/Akari_Tatsuhiro.PNG/revision/latest/scale-to-width-down/245?cb=20140831161052&path-prefix=pt-br	13
20	Fase II	https://vignette.wikia.nocookie.net/naruto/images/d/de/Akatsuchi.png/revision/latest/scale-to-width-down/310?cb=20130102211608&path-prefix=pt-br	14
21	Boruto	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Akatsuchi_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181119115542&path-prefix=pt-br	14
22	Akemaru.png	https://vignette.wikia.nocookie.net/naruto/images/0/0d/Akemaru.png/revision/latest/scale-to-width-down/310?cb=20190216142646&path-prefix=pt-br	15
23	Parte I	https://vignette.wikia.nocookie.net/naruto/images/f/f3/Akino.PNG/revision/latest?cb=20120528140059&path-prefix=pt-br	16
24	Geral	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Akino_Corpo_Inteiro.PNG/revision/latest?cb=20130201003736&path-prefix=pt-br	16
25	Akio.png	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Akio.png/revision/latest/scale-to-width-down/310?cb=20160205200756&path-prefix=pt-br	17
26	Parte I	https://vignette.wikia.nocookie.net/naruto/images/4/44/Amachi.png/revision/latest/scale-to-width-down/310?cb=20140805010358&path-prefix=pt-br	18
27	Geral	https://vignette.wikia.nocookie.net/naruto/images/4/40/Amachi_corpo_inteiro.PNG/revision/latest?cb=20130201004547&path-prefix=pt-br	18
28	Amado.png	https://vignette.wikia.nocookie.net/naruto/images/7/74/Amado.png/revision/latest?cb=20180822235037&path-prefix=pt-br	19
29	Passado	https://vignette.wikia.nocookie.net/naruto/images/e/e9/Amai.png/revision/latest/scale-to-width-down/310?cb=20131022170203&path-prefix=pt-br	20
30	Geral	https://vignette.wikia.nocookie.net/naruto/images/7/73/Amai_Corpo_Inteiro.png/revision/latest?cb=20140723180618&path-prefix=pt-br	20
31	Amaru (Infobox).PNG	https://vignette.wikia.nocookie.net/naruto/images/4/47/Amaru_%28Infobox%29.PNG/revision/latest/scale-to-width-down/310?cb=20150501231215&path-prefix=pt-br	21
32	Amayo.png	https://vignette.wikia.nocookie.net/naruto/images/7/73/Amayo.png/revision/latest/scale-to-width-down/310?cb=20120325175528&path-prefix=pt-br	22
33	Ameno Infobox.png	https://vignette.wikia.nocookie.net/naruto/images/1/18/Ameno_Infobox.png/revision/latest?cb=20180517190736&path-prefix=pt-br	23
34	Ameyuri.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/0b/Ameyuri.PNG/revision/latest/scale-to-width-down/310?cb=20121115162352&path-prefix=pt-br	24
35	Ami.png	https://vignette.wikia.nocookie.net/naruto/images/d/dd/Ami.png/revision/latest?cb=20150101205630&path-prefix=pt-br	25
36	Amino.png	https://vignette.wikia.nocookie.net/naruto/images/0/04/Amino.png/revision/latest/scale-to-width-down/310?cb=20161204105626&path-prefix=pt-br	26
37	Aniki.PNG	https://vignette.wikia.nocookie.net/naruto/images/2/25/Aniki.PNG/revision/latest/scale-to-width-down/310?cb=20121126132935&path-prefix=pt-br	27
38	Fase I-II	https://vignette.wikia.nocookie.net/naruto/images/3/38/Anko_Mitarashi.png/revision/latest?cb=20180517221622&path-prefix=pt-br	28
39	Boruto	https://vignette.wikia.nocookie.net/naruto/images/4/45/Anko_Mitarashi_%28Fase_Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20180210170213&path-prefix=pt-br	28
40	Fase II	https://vignette.wikia.nocookie.net/naruto/images/f/f5/Ao_%28Kirigakure%29.PNG/revision/latest/scale-to-width-down/310?cb=20150519225110&path-prefix=pt-br	29
41	Boruto	https://vignette.wikia.nocookie.net/naruto/images/8/8e/Ao_em_Boruto_%28Mang%C3%A1%29.png/revision/latest/scale-to-width-down/310?cb=20180227125824&path-prefix=pt-br	29
42	Aoba-Yamashiro.png	https://vignette.wikia.nocookie.net/naruto/images/a/af/Aoba-Yamashiro.png/revision/latest/scale-to-width-down/310?cb=20181031213411&path-prefix=pt-br	30
43	Aoda (Boruto).png	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Aoda_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181026174531&path-prefix=pt-br	31
44	Aoi Rokushō.png	https://vignette.wikia.nocookie.net/naruto/images/5/5a/Aoi_Rokush%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20150417132214&path-prefix=pt-br	32
49	Ashitaba.png	https://vignette.wikia.nocookie.net/naruto/images/7/76/Ashitaba.png/revision/latest/scale-to-width-down/310?cb=20160306130811&path-prefix=pt-br	37
50	Fase I	https://vignette.wikia.nocookie.net/naruto/images/4/48/Asuma_Sarutobi.png/revision/latest/scale-to-width-down/310?cb=20130806211344&path-prefix=pt-br	38
53	Ayame.png	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Ayame.png/revision/latest/scale-to-width-down/310?cb=20180302204546&path-prefix=pt-br	40
56	Parte I	https://vignette.wikia.nocookie.net/naruto/images/a/a7/Baki.png/revision/latest/scale-to-width-down/310?cb=20121113205751&path-prefix=pt-br	44
61	Baru Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/9/9b/Baru_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20131115125106&path-prefix=pt-br	48
77	Parte II	https://vignette.wikia.nocookie.net/naruto/images/e/e4/C_-_Kumogakure.PNG/revision/latest/scale-to-width-down/310?cb=20141012180202&path-prefix=pt-br	62
82	Guerra	https://vignette.wikia.nocookie.net/naruto/images/5/58/Chiyo_Edo.PNG/revision/latest/scale-to-width-down/310?cb=20130628163904&path-prefix=pt-br	66
96	Chouza Akimichi.png	https://vignette.wikia.nocookie.net/naruto/images/a/a0/Chouza_Akimichi.png/revision/latest/scale-to-width-down/310?cb=20140408004254&path-prefix=pt-br	75
101	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/cb/Ch%C5%ABshin.PNG/revision/latest/scale-to-width-down/310?cb=20141014164536&path-prefix=pt-br	79
103	Crustáceo Gigante.png	https://vignette.wikia.nocookie.net/naruto/images/2/2f/Crust%C3%A1ceo_Gigante.png/revision/latest/scale-to-width-down/310?cb=20140608141531&path-prefix=pt-br	80
104	Daen Nara.png	https://vignette.wikia.nocookie.net/naruto/images/7/76/Daen_Nara.png/revision/latest/scale-to-width-down/310?cb=20141110214011&path-prefix=pt-br	81
45	Arai.png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/Arai.png/revision/latest/scale-to-width-down/310?cb=20200201211755&path-prefix=pt-br	33
46	Araya.png	https://vignette.wikia.nocookie.net/naruto/images/1/1e/Araya.png/revision/latest?cb=20180519162107&path-prefix=pt-br	34
47	Armadiko.PNG	https://vignette.wikia.nocookie.net/naruto/images/2/28/Armadiko.PNG/revision/latest/scale-to-width-down/310?cb=20120316015210&path-prefix=pt-br	35
60	Banna.png	https://vignette.wikia.nocookie.net/naruto/images/8/83/Banna.png/revision/latest/scale-to-width-down/310?cb=20111025010258&path-prefix=pt-br	46
66	Parte II	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Fukai.png/revision/latest/scale-to-width-down/310?cb=20170303172335&path-prefix=pt-br	53
79	Chibi.png	https://vignette.wikia.nocookie.net/naruto/images/d/d2/Chibi.png/revision/latest/scale-to-width-down/310?cb=20120527032934&path-prefix=pt-br	63
107	Daimaru.png	https://vignette.wikia.nocookie.net/naruto/images/8/80/Daimaru.png/revision/latest/scale-to-width-down/310?cb=20130814143645&path-prefix=pt-br	84
48	Líder do Clã Uzumaki.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/76/L%C3%ADder_do_Cl%C3%A3_Uzumaki.PNG/revision/latest/scale-to-width-down/310?cb=20141028025158&path-prefix=pt-br	36
58	Geral	https://vignette.wikia.nocookie.net/naruto/images/b/bd/Baki_%28Infobox_-_Rendeliza%C3%A7%C3%A3o%29.PNG/revision/latest/scale-to-width-down/258?cb=20140821003438&path-prefix=pt-br	44
62	Bekkō (HD).png	https://vignette.wikia.nocookie.net/naruto/images/9/94/Bekk%C5%8D_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160215080525&path-prefix=pt-br	49
63	-Benten-.PNG	https://vignette.wikia.nocookie.net/naruto/images/1/1b/-Benten-.PNG/revision/latest/scale-to-width-down/310?cb=20140614223039&path-prefix=pt-br	50
74	Burami.png	https://vignette.wikia.nocookie.net/naruto/images/c/c8/Burami.png/revision/latest/scale-to-width-down/310?cb=20150116180504&path-prefix=pt-br	59
81	Chishima.PNG	https://vignette.wikia.nocookie.net/naruto/images/8/87/Chishima.PNG/revision/latest/scale-to-width-down/310?cb=20141017062432&path-prefix=pt-br	65
83	Parte II	https://vignette.wikia.nocookie.net/naruto/images/0/02/Chiyo_%28Shippuden%29.png/revision/latest/scale-to-width-down/310?cb=20140811183413&path-prefix=pt-br	66
100	Geral	https://vignette.wikia.nocookie.net/naruto/images/4/44/Ch%C5%ABkichi_%28Render%29.png/revision/latest/scale-to-width-down/251?cb=20160429223835&path-prefix=pt-br	78
106	Daichi.png	https://vignette.wikia.nocookie.net/naruto/images/0/07/Daichi.png/revision/latest?cb=20140729171332&path-prefix=pt-br	83
51	Fase II	https://vignette.wikia.nocookie.net/naruto/images/f/fc/Asuma.PNG/revision/latest/scale-to-width-down/310?cb=20120628145044&path-prefix=pt-br	38
52	Atsui.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Atsui.PNG/revision/latest/scale-to-width-down/310?cb=20130521161950&path-prefix=pt-br	39
67	Passado	https://vignette.wikia.nocookie.net/naruto/images/b/bd/Blue_B.png/revision/latest/scale-to-width-down/310?cb=20170303172902&path-prefix=pt-br	53
68	Epílogo	https://vignette.wikia.nocookie.net/naruto/images/8/8d/Boruto_Ep%C3%ADlogo.png/revision/latest/scale-to-width-down/310?cb=20170405142723&path-prefix=pt-br	54
72	Buntan Kurosuki.png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/Buntan_Kurosuki.png/revision/latest/scale-to-width-down/310?cb=20171229010625&path-prefix=pt-br	57
73	Bunzō.png	https://vignette.wikia.nocookie.net/naruto/images/8/8f/Bunz%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20150424124308&path-prefix=pt-br	58
85	Choco.png	https://vignette.wikia.nocookie.net/naruto/images/0/00/Choco.png/revision/latest?cb=20140426211328&path-prefix=pt-br	67
87	Chōchō Akimichi Genin.png	https://vignette.wikia.nocookie.net/naruto/images/4/40/Ch%C5%8Dch%C5%8D_Akimichi_Genin.png/revision/latest/scale-to-width-down/310?cb=20180127174100&path-prefix=pt-br	69
89	Fase I	https://vignette.wikia.nocookie.net/naruto/images/a/a0/Ch%C5%8Dji_Akimichi_%28Fase_I%29.png/revision/latest/scale-to-width-down/310?cb=20180301103542&path-prefix=pt-br	71
94	Chōmei (Infobox - Parte II).PNG	https://vignette.wikia.nocookie.net/naruto/images/2/28/Ch%C5%8Dmei_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20140619025937&path-prefix=pt-br	73
102	Geral	https://vignette.wikia.nocookie.net/naruto/images/5/52/Ch%C5%ABshin_%28Render%29.png/revision/latest/scale-to-width-down/263?cb=20160429190543&path-prefix=pt-br	79
54	Azami.png	https://vignette.wikia.nocookie.net/naruto/images/3/35/Azami.png/revision/latest/scale-to-width-down/310?cb=20130509190637&path-prefix=pt-br	42
69	Boruto	https://vignette.wikia.nocookie.net/naruto/images/e/ec/Boruto_Uzumaki_%28Infobox_-_Parte_IV%29.PNG/revision/latest/scale-to-width-down/310?cb=20150519215542&path-prefix=pt-br	54
71	Bunpuku.png	https://vignette.wikia.nocookie.net/naruto/images/d/d5/Bunpuku.png/revision/latest/scale-to-width-down/310?cb=20170302212817&path-prefix=pt-br	56
76	Primeiro Mizukage.png	https://vignette.wikia.nocookie.net/naruto/images/4/46/Primeiro_Mizukage.png/revision/latest/scale-to-width-down/310?cb=20141016175826&path-prefix=pt-br	61
88	Chōhan.png	https://vignette.wikia.nocookie.net/naruto/images/c/cc/Ch%C5%8Dhan.png/revision/latest?cb=20160206103648&path-prefix=pt-br	70
90	Fase II	https://vignette.wikia.nocookie.net/naruto/images/4/44/Choji_Parte_II.png/revision/latest/scale-to-width-down/310?cb=20130806210848&path-prefix=pt-br	71
97	Chuji.PNG	https://vignette.wikia.nocookie.net/naruto/images/6/67/Chuji.PNG/revision/latest/scale-to-width-down/310?cb=20120316015211&path-prefix=pt-br	76
99	Fase II	https://vignette.wikia.nocookie.net/naruto/images/a/af/Chukichi.png/revision/latest/scale-to-width-down/310?cb=20120917212618&path-prefix=pt-br	78
105	Daibutsu.png	https://vignette.wikia.nocookie.net/naruto/images/a/a2/Daibutsu.png/revision/latest/scale-to-width-down/310?cb=20140222181454&path-prefix=pt-br	82
55	Baji.png	https://vignette.wikia.nocookie.net/naruto/images/5/50/Baji.png/revision/latest/scale-to-width-down/310?cb=20141010170016&path-prefix=pt-br	43
75	Butsuma Senju.png	https://vignette.wikia.nocookie.net/naruto/images/1/1a/Butsuma_Senju.png/revision/latest/scale-to-width-down/310?cb=20140706203226&path-prefix=pt-br	60
91	Boruto	https://vignette.wikia.nocookie.net/naruto/images/e/e8/Ch%C5%8Dji_Akimichi_%28Boruto_-_Anime%29.png/revision/latest/scale-to-width-down/310?cb=20180301103810&path-prefix=pt-br	71
95	Chōseki.png	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Ch%C5%8Dseki.png/revision/latest?cb=20160205193126&path-prefix=pt-br	74
98	Chukaku.png	https://vignette.wikia.nocookie.net/naruto/images/7/77/Chukaku.png/revision/latest/scale-to-width-down/310?cb=20130606162812&path-prefix=pt-br	77
57	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Baki_%28Parte_2%29.PNG/revision/latest/scale-to-width-down/310?cb=20140821004402&path-prefix=pt-br	44
64	Bisuke.png	https://vignette.wikia.nocookie.net/naruto/images/c/ca/Bisuke.png/revision/latest/scale-to-width-down/310?cb=20130830120546&path-prefix=pt-br	51
70	Buna.png	https://vignette.wikia.nocookie.net/naruto/images/b/b0/Buna.png/revision/latest/scale-to-width-down/310?cb=20140714231139&path-prefix=pt-br	55
92	Fase II	https://vignette.wikia.nocookie.net/naruto/images/1/13/Ch%C5%8Dj%C5%ABr%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20170917114722&path-prefix=pt-br	72
59	Bando5.png	https://vignette.wikia.nocookie.net/naruto/images/5/5c/Bando5.png/revision/latest/scale-to-width-down/310?cb=20110813120550&path-prefix=pt-br	45
65	Biwako Sarutobi.png	https://vignette.wikia.nocookie.net/naruto/images/d/d0/Biwako_Sarutobi.png/revision/latest/scale-to-width-down/310?cb=20120204011112&path-prefix=pt-br	52
78	Geral	https://vignette.wikia.nocookie.net/naruto/images/5/52/C_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429132916&path-prefix=pt-br	62
80	Chiriku.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/fc/Chiriku.PNG/revision/latest/scale-to-width-down/310?cb=20140803204701&path-prefix=pt-br	64
84	Geral	https://vignette.wikia.nocookie.net/naruto/images/c/cf/Chiyo_Full.png/revision/latest/scale-to-width-down/310?cb=20130418185005&path-prefix=pt-br	66
86	Chōbee Akimichi.png	https://vignette.wikia.nocookie.net/naruto/images/6/69/Ch%C5%8Dbee_Akimichi.png/revision/latest/scale-to-width-down/310?cb=20180929235411&path-prefix=pt-br	68
93	Boruto	https://vignette.wikia.nocookie.net/naruto/images/e/ed/Ch%C5%8Dj%C5%ABr%C5%8D%28Ep%C3%ADlogo%29.png/revision/latest/scale-to-width-down/310?cb=20171020024020&path-prefix=pt-br	72
108	Passado	https://vignette.wikia.nocookie.net/naruto/images/c/ce/Dan.png/revision/latest/scale-to-width-down/310?cb=20130727155246&path-prefix=pt-br	85
109	Fase II	https://vignette.wikia.nocookie.net/naruto/images/2/22/Dan.PNG/revision/latest/scale-to-width-down/310?cb=20130719034459&path-prefix=pt-br	85
110	Dango.PNG	https://vignette.wikia.nocookie.net/naruto/images/c/c0/Dango.PNG/revision/latest/scale-to-width-down/310?cb=20140927021650&path-prefix=pt-br	86
111	Parte II	https://vignette.wikia.nocookie.net/naruto/images/0/08/Danzo_Shimura.png/revision/latest/scale-to-width-down/310?cb=20130505010755&path-prefix=pt-br	87
112	Geral	https://vignette.wikia.nocookie.net/naruto/images/c/ca/Danzo_Full.png/revision/latest/scale-to-width-down/224?cb=20130120142452&path-prefix=pt-br	87
113	Fase II	https://vignette.wikia.nocookie.net/naruto/images/6/68/Darui_%28Visual%29.png/revision/latest/scale-to-width-down/310?cb=20151214123257&path-prefix=pt-br	88
114	Boruto	https://vignette.wikia.nocookie.net/naruto/images/d/dd/Darui_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20200330040215&path-prefix=pt-br	88
115	Passado	https://vignette.wikia.nocookie.net/naruto/images/c/c8/Deidara_surpreso_com_o_Sharingan_de_Itachi.png/revision/latest/scale-to-width-down/310?cb=20160329031729&path-prefix=pt-br	89
116	Fase II	https://vignette.wikia.nocookie.net/naruto/images/3/30/Deidara_%28Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20150112171710&path-prefix=pt-br	89
117	Dengaku2.png	https://vignette.wikia.nocookie.net/naruto/images/c/ca/Dengaku2.png/revision/latest/scale-to-width-down/310?cb=20110808015001&path-prefix=pt-br	90
118	Ninneko.png	https://vignette.wikia.nocookie.net/naruto/images/a/a1/Ninneko.png/revision/latest/scale-to-width-down/310?cb=20150610214543&path-prefix=pt-br	91
119	Denki Kaminarimon-2-.png	https://vignette.wikia.nocookie.net/naruto/images/a/ab/Denki_Kaminarimon-2-.png/revision/latest?cb=20180212143146&path-prefix=pt-br	92
120	Dodai.png	https://vignette.wikia.nocookie.net/naruto/images/0/06/Dodai.png/revision/latest/scale-to-width-down/310?cb=20130221152141&path-prefix=pt-br	93
121	Parte II	https://vignette.wikia.nocookie.net/naruto/images/d/db/Tayuya_e_Doki_%28Guerra%29.PNG/revision/latest/scale-to-width-down/310?cb=20130307151844&path-prefix=pt-br	94
122	Parte I	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Doki.png/revision/latest/scale-to-width-down/310?cb=20130911193544&path-prefix=pt-br	94
123	Dokku.JPG	https://vignette.wikia.nocookie.net/naruto/images/c/cd/Dokku.JPG/revision/latest/scale-to-width-down/310?cb=20121206153859&path-prefix=pt-br	95
124	Don.PNG	https://vignette.wikia.nocookie.net/naruto/images/2/2d/Don.PNG/revision/latest/scale-to-width-down/310?cb=20120316015211&path-prefix=pt-br	96
125	Doragu.png	https://vignette.wikia.nocookie.net/naruto/images/5/53/Doragu.png/revision/latest/scale-to-width-down/310?cb=20200203161952&path-prefix=pt-br	97
126	Parte I	https://vignette.wikia.nocookie.net/naruto/images/f/f8/Dosu1.png/revision/latest/scale-to-width-down/310?cb=20130104110845&path-prefix=pt-br	98
127	Geral	https://vignette.wikia.nocookie.net/naruto/images/1/11/Dosu_Corpo_Inteiro.png/revision/latest/scale-to-width-down/310?cb=20160509175959&path-prefix=pt-br	98
128	Parte I	https://vignette.wikia.nocookie.net/naruto/images/1/1c/Doto_Kazahana.png/revision/latest/scale-to-width-down/310?cb=20141130230558&path-prefix=pt-br	99
129	Geral	https://vignette.wikia.nocookie.net/naruto/images/7/7f/Dot%C5%8D_Kazahana_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429155340&path-prefix=pt-br	99
130	Doshu.png	https://vignette.wikia.nocookie.net/naruto/images/1/14/Doshu.png/revision/latest/scale-to-width-down/310?cb=20200130204752&path-prefix=pt-br	100
131	Fase I	https://vignette.wikia.nocookie.net/naruto/images/8/82/Ebisu_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20130727204906&path-prefix=pt-br	101
132	Fase II	https://vignette.wikia.nocookie.net/naruto/images/7/77/Ebisu.png/revision/latest/scale-to-width-down/310?cb=20130610154439&path-prefix=pt-br	101
133	Ebizo.PNG	https://vignette.wikia.nocookie.net/naruto/images/4/42/Ebizo.PNG/revision/latest/scale-to-width-down/310?cb=20121126132309&path-prefix=pt-br	102
134	Emiru anime.png	https://vignette.wikia.nocookie.net/naruto/images/3/3c/Emiru_anime.png/revision/latest?cb=20160129214829&path-prefix=pt-br	103
135	En.png	https://vignette.wikia.nocookie.net/naruto/images/3/3b/En.png/revision/latest?cb=20130809132100&path-prefix=pt-br	104
136	Oyashiro En.png	https://vignette.wikia.nocookie.net/naruto/images/6/68/Oyashiro_En.png/revision/latest/scale-to-width-down/310?cb=20161219154236&path-prefix=pt-br	105
137	Enko Onikuma.png	https://vignette.wikia.nocookie.net/naruto/images/2/27/Enko_Onikuma.png/revision/latest/scale-to-width-down/310?cb=20200117205414&path-prefix=pt-br	106
138	Nara Ensui.PNG	https://vignette.wikia.nocookie.net/naruto/images/2/2e/Nara_Ensui.PNG/revision/latest/scale-to-width-down/310?cb=20131022174729&path-prefix=pt-br	107
139	Fase I	https://vignette.wikia.nocookie.net/naruto/images/2/25/Ereki_Kaminarimon_jovem.png/revision/latest/scale-to-width-down/310?cb=20191129174310&path-prefix=pt-br	108
140	Boruto	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Ereki_Kaminarimon.png/revision/latest/scale-to-width-down/310?cb=20191129174130&path-prefix=pt-br	108
141	Esposa de Kisuke.png	https://vignette.wikia.nocookie.net/naruto/images/9/9f/Esposa_de_Kisuke.png/revision/latest/scale-to-width-down/310?cb=20160523210029&path-prefix=pt-br	109
142	Parte II	https://vignette.wikia.nocookie.net/naruto/images/f/f2/F.PNG/revision/latest/scale-to-width-down/310?cb=20130529194952&path-prefix=pt-br	110
144	Parte I	https://vignette.wikia.nocookie.net/naruto/images/b/ba/Fubuki_Kakuyoku.png/revision/latest/scale-to-width-down/310?cb=20150814135326&path-prefix=pt-br	111
158	Furofoki.png	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Furofoki.png/revision/latest/scale-to-width-down/310?cb=20160605013409&path-prefix=pt-br	122
176	Gamaden.png	https://vignette.wikia.nocookie.net/naruto/images/b/b0/Gamaden.png/revision/latest/scale-to-width-down/310?cb=20150614231306&path-prefix=pt-br	136
180	Geral	https://vignette.wikia.nocookie.net/naruto/images/0/06/Gamaken_Full.png/revision/latest/scale-to-width-down/310?cb=20130920214453&path-prefix=pt-br	139
143	Geral	https://vignette.wikia.nocookie.net/naruto/images/2/23/F_%28Render%29.png/revision/latest/scale-to-width-down/277?cb=20160429232906&path-prefix=pt-br	110
161	Futaba.png	https://vignette.wikia.nocookie.net/naruto/images/4/44/Futaba.png/revision/latest/scale-to-width-down/310?cb=20150601164626&path-prefix=pt-br	125
169	Fase I	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Gaara_%28Parte_I%29.PNG/revision/latest/scale-to-width-down/310?cb=20170917114859&path-prefix=pt-br	132
178	Gamahiro.png	https://vignette.wikia.nocookie.net/naruto/images/e/e6/Gamahiro.png/revision/latest?cb=20130118234357&path-prefix=pt-br	138
145	Geral	https://vignette.wikia.nocookie.net/naruto/images/f/f0/Fubuki_Kakuyoku_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429155917&path-prefix=pt-br	111
146	Fudō.PNG	https://vignette.wikia.nocookie.net/naruto/images/4/45/Fud%C5%8D.PNG/revision/latest/scale-to-width-down/310?cb=20141014170705&path-prefix=pt-br	112
147	Fuen.png	https://vignette.wikia.nocookie.net/naruto/images/1/10/Fuen.png/revision/latest/scale-to-width-down/310?cb=20130709162213&path-prefix=pt-br	113
148	Fugai.png	https://vignette.wikia.nocookie.net/naruto/images/4/43/Fugai.png/revision/latest/scale-to-width-down/310?cb=20120325182011&path-prefix=pt-br	114
151	Passado	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Fuguki_Suikazan.png/revision/latest/scale-to-width-down/310?cb=20121025213555&path-prefix=pt-br	117
153	Parte II	https://vignette.wikia.nocookie.net/naruto/images/5/5a/Fukasaku.png/revision/latest/scale-to-width-down/310?cb=20130623174609&path-prefix=pt-br	118
157	Fukusuke Hikyakuya.png	https://vignette.wikia.nocookie.net/naruto/images/e/ea/Fukusuke_Hikyakuya.png/revision/latest/scale-to-width-down/310?cb=20160131231607&path-prefix=pt-br	121
159	Pai de Motoi.png	https://vignette.wikia.nocookie.net/naruto/images/7/76/Pai_de_Motoi.png/revision/latest/scale-to-width-down/310?cb=20120113021553&path-prefix=pt-br	123
160	Fusō (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/b/b7/Fus%C5%8D_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20141231155436&path-prefix=pt-br	124
163	Futsu.png	https://vignette.wikia.nocookie.net/naruto/images/d/d6/Futsu.png/revision/latest/scale-to-width-down/310?cb=20161209160226&path-prefix=pt-br	127
164	Fuyō.png	https://vignette.wikia.nocookie.net/naruto/images/7/73/Fuy%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20150319174401&path-prefix=pt-br	128
170	Fase II	https://vignette.wikia.nocookie.net/naruto/images/7/7f/Gaara.png/revision/latest/scale-to-width-down/310?cb=20170917114827&path-prefix=pt-br	132
181	Parte I	https://vignette.wikia.nocookie.net/naruto/images/e/e1/Gamakichi.PNG/revision/latest/scale-to-width-down/310?cb=20130605203535&path-prefix=pt-br	140
149	Fugaku Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/7/79/Fugaku_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20160407200950&path-prefix=pt-br	115
165	Geral	https://vignette.wikia.nocookie.net/naruto/images/d/df/F%C5%AB_Yamanaka_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429125451&path-prefix=pt-br	129
167	Fūka (HD).png	https://vignette.wikia.nocookie.net/naruto/images/e/e7/F%C5%ABka_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213203411&path-prefix=pt-br	130
168	Futa Kagetsu.png	https://vignette.wikia.nocookie.net/naruto/images/d/da/Futa_Kagetsu.png/revision/latest/scale-to-width-down/310?cb=20160616023839&path-prefix=pt-br	131
173	Gama.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/72/Gama.PNG/revision/latest/scale-to-width-down/310?cb=20130718063213&path-prefix=pt-br	134
179	Parte II	https://vignette.wikia.nocookie.net/naruto/images/9/98/Gamaken.png/revision/latest/scale-to-width-down/310?cb=20130701133052&path-prefix=pt-br	139
184	Gamatama.png	https://vignette.wikia.nocookie.net/naruto/images/0/08/Gamatama.png/revision/latest/scale-to-width-down/310?cb=20150614225934&path-prefix=pt-br	142
150	Fugi.png	https://vignette.wikia.nocookie.net/naruto/images/7/78/Fugi.png/revision/latest/scale-to-width-down/310?cb=20150509015409&path-prefix=pt-br	116
152	Fase II	https://vignette.wikia.nocookie.net/naruto/images/0/0e/Fuguki_Face.png/revision/latest/scale-to-width-down/310?cb=20130718205238&path-prefix=pt-br	117
155	Fuku.png	https://vignette.wikia.nocookie.net/naruto/images/1/1a/Fuku.png/revision/latest/scale-to-width-down/310?cb=20160213120838&path-prefix=pt-br	119
156	Fukuemon.png	https://vignette.wikia.nocookie.net/naruto/images/b/b5/Fukuemon.png/revision/latest/scale-to-width-down/310?cb=20160929151128&path-prefix=pt-br	120
162	Futami (2).PNG	https://vignette.wikia.nocookie.net/naruto/images/4/4d/Futami_%282%29.PNG/revision/latest/scale-to-width-down/310?cb=20160611204951&path-prefix=pt-br	126
172	Gaku Inuzuka.png	https://vignette.wikia.nocookie.net/naruto/images/6/6a/Gaku_Inuzuka.png/revision/latest/scale-to-width-down/310?cb=20150106000138&path-prefix=pt-br	133
154	Geral	https://vignette.wikia.nocookie.net/naruto/images/0/06/Fukasaku_Full.png/revision/latest/scale-to-width-down/310?cb=20130921180452&path-prefix=pt-br	118
166	Parte II	https://vignette.wikia.nocookie.net/naruto/images/1/1c/FuYamanaka.png/revision/latest/scale-to-width-down/310?cb=20130520172649&path-prefix=pt-br	129
171	Boruto	https://vignette.wikia.nocookie.net/naruto/images/c/c3/Gaara_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20170914030450&path-prefix=pt-br	132
174	Fase I	https://vignette.wikia.nocookie.net/naruto/images/b/bf/Gamabunta_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20130727211306&path-prefix=pt-br	135
175	Fase II	https://vignette.wikia.nocookie.net/naruto/images/8/84/Gamabunta.png/revision/latest/scale-to-width-down/310?cb=20130701190020&path-prefix=pt-br	135
177	Gamagorō.png	https://vignette.wikia.nocookie.net/naruto/images/3/3a/Gamagor%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20170427021224&path-prefix=pt-br	137
182	Fase II	https://vignette.wikia.nocookie.net/naruto/images/f/fe/Gamakichi_%28Guerra%29.png/revision/latest/scale-to-width-down/310?cb=20140907162907&path-prefix=pt-br	140
183	Ōgama Sennin.png	https://vignette.wikia.nocookie.net/naruto/images/9/9d/%C5%8Cgama_Sennin.png/revision/latest/scale-to-width-down/310?cb=20130630131454&path-prefix=pt-br	141
185	Fase I	https://vignette.wikia.nocookie.net/naruto/images/f/f5/Gamatatsu.PNG/revision/latest/scale-to-width-down/310?cb=20160702223810&path-prefix=pt-br	143
186	Fase II	https://vignette.wikia.nocookie.net/naruto/images/9/97/Gamatatsu_%28Shippuden%29.png/revision/latest/scale-to-width-down/310?cb=20130718044623&path-prefix=pt-br	143
187	Parte II	https://vignette.wikia.nocookie.net/naruto/images/f/f9/Ganryu_Passado.png/revision/latest/scale-to-width-down/310?cb=20130727212436&path-prefix=pt-br	144
188	Guerra	https://vignette.wikia.nocookie.net/naruto/images/8/81/Ganryu.png/revision/latest/scale-to-width-down/310?cb=20130718053924&path-prefix=pt-br	144
189	Garaga.png	https://vignette.wikia.nocookie.net/naruto/images/c/c3/Garaga.png/revision/latest/scale-to-width-down/310?cb=20181026174024&path-prefix=pt-br	145
190	Parte II	https://vignette.wikia.nocookie.net/naruto/images/d/d9/Gari_%28Reencarnado%29.png/revision/latest/scale-to-width-down/310?cb=20161215100818&path-prefix=pt-br	146
191	Passado	https://vignette.wikia.nocookie.net/naruto/images/c/c1/Gari_%28Vivo%29.png/revision/latest/scale-to-width-down/310?cb=20161215100905&path-prefix=pt-br	146
192	Garuda (anime).png	https://vignette.wikia.nocookie.net/naruto/images/3/35/Garuda_%28anime%29.png/revision/latest/scale-to-width-down/310?cb=20160507150718&path-prefix=pt-br	147
193	Garō.png	https://vignette.wikia.nocookie.net/naruto/images/0/07/Gar%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20181015164510&path-prefix=pt-br	148
194	Gatai.png	https://vignette.wikia.nocookie.net/naruto/images/4/43/Gatai.png/revision/latest/scale-to-width-down/310?cb=20200124221833&path-prefix=pt-br	149
195	ChefeGarato.png	https://vignette.wikia.nocookie.net/naruto/images/c/c6/ChefeGarato.png/revision/latest/scale-to-width-down/310?cb=20110828113400&path-prefix=pt-br	150
196	Gatō.png	https://vignette.wikia.nocookie.net/naruto/images/0/0c/Gat%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20140827215640&path-prefix=pt-br	151
197	Gazeru.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/01/Gazeru.PNG/revision/latest?cb=20150808042211&path-prefix=pt-br	152
198	Gen'yūmaru.png	https://vignette.wikia.nocookie.net/naruto/images/2/22/Gen%27y%C5%ABmaru.png/revision/latest/scale-to-width-down/310?cb=20170525021234&path-prefix=pt-br	153
199	Gengetsu Hōzuki.png	https://vignette.wikia.nocookie.net/naruto/images/9/9f/Gengetsu_H%C5%8Dzuki.png/revision/latest/scale-to-width-down/310?cb=20170918175326&path-prefix=pt-br	154
200	Gengo (HD).png	https://vignette.wikia.nocookie.net/naruto/images/9/9b/Gengo_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20170426171222&path-prefix=pt-br	155
201	Parte I	https://vignette.wikia.nocookie.net/naruto/images/f/fe/Genma.png/revision/latest/scale-to-width-down/310?cb=20130213205429&path-prefix=pt-br	156
202	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/65/Genma_Shippuden.png/revision/latest/scale-to-width-down/310?cb=20130801195128&path-prefix=pt-br	156
203	Genmai.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/3a/Genmai.PNG/revision/latest/scale-to-width-down/310?cb=20160212131148&path-prefix=pt-br	157
204	Parte I	https://vignette.wikia.nocookie.net/naruto/images/1/19/Gennai1.jpg/revision/latest?cb=20150215133814&path-prefix=pt-br	158
205	Parte II	https://vignette.wikia.nocookie.net/naruto/images/3/36/Gennai.png/revision/latest/scale-to-width-down/310?cb=20150215131739&path-prefix=pt-br	158
206	Gennō.png	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Genn%C5%8D.png/revision/latest?cb=20130924194706&path-prefix=pt-br	159
207	Genshō Ryūdōin.png	https://vignette.wikia.nocookie.net/naruto/images/7/72/Gensh%C5%8D_Ry%C5%ABd%C5%8Din.png/revision/latest/scale-to-width-down/310?cb=20160406140639&path-prefix=pt-br	160
208	Genzō (HD).png	https://vignette.wikia.nocookie.net/naruto/images/c/c3/Genz%C5%8D_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213155551&path-prefix=pt-br	161
209	Gerotora.png	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Gerotora.png/revision/latest/scale-to-width-down/310?cb=20130707183030&path-prefix=pt-br	162
210	Giichi.png	https://vignette.wikia.nocookie.net/naruto/images/7/75/Giichi.png/revision/latest/scale-to-width-down/310?cb=20140901231933&path-prefix=pt-br	163
211	Ginji.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/fe/Ginji.PNG/revision/latest/scale-to-width-down/310?cb=20141220094859&path-prefix=pt-br	164
212	Ginkaku.png	https://vignette.wikia.nocookie.net/naruto/images/a/a9/Ginkaku.png/revision/latest/scale-to-width-down/310?cb=20140803234450&path-prefix=pt-br	165
213	Goji.png	https://vignette.wikia.nocookie.net/naruto/images/f/f6/Goji.png/revision/latest/scale-to-width-down/310?cb=20150213163627&path-prefix=pt-br	166
214	Gojō.png	https://vignette.wikia.nocookie.net/naruto/images/2/2b/Goj%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20200424055327&path-prefix=pt-br	167
215	Goshiki.png	https://vignette.wikia.nocookie.net/naruto/images/7/71/Goshiki.png/revision/latest?cb=20160206085639&path-prefix=pt-br	168
216	Gozu (HD).png	https://vignette.wikia.nocookie.net/naruto/images/f/fc/Gozu_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213135048&path-prefix=pt-br	169
901	Unagi.png	https://vignette.wikia.nocookie.net/naruto/images/3/36/Unagi.png/revision/latest?cb=20150615194719&path-prefix=pt-br	719
217	Guruko.png	https://vignette.wikia.nocookie.net/naruto/images/9/9e/Guruko.png/revision/latest/scale-to-width-down/310?cb=20140907153143&path-prefix=pt-br	170
227	Fase II	https://vignette.wikia.nocookie.net/naruto/images/a/a3/Haku_%28Parte_2%29.PNG/revision/latest/scale-to-width-down/310?cb=20150222215103&path-prefix=pt-br	179
232	Parte I	https://vignette.wikia.nocookie.net/naruto/images/6/67/Hana_Inuzuka.PNG/revision/latest/scale-to-width-down/310?cb=20140805031535&path-prefix=pt-br	184
239	Parte II	https://vignette.wikia.nocookie.net/naruto/images/f/fd/Hanzo-268.PNG/revision/latest/scale-to-width-down/310?cb=20130103224132&path-prefix=pt-br	187
249	Parte I	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Hayate_Gekko.PNG/revision/latest/scale-to-width-down/310?cb=20130718053205&path-prefix=pt-br	194
252	Heiji.png	https://vignette.wikia.nocookie.net/naruto/images/2/29/Heiji.png/revision/latest/scale-to-width-down/310?cb=20130606235029&path-prefix=pt-br	196
253	Heki.png	https://vignette.wikia.nocookie.net/naruto/images/a/ab/Heki.png/revision/latest?cb=20141108190214&path-prefix=pt-br	197
260	Hidari.png	https://vignette.wikia.nocookie.net/naruto/images/9/96/Hidari.png/revision/latest?cb=20180207174737&path-prefix=pt-br	202
264	Himawari Uzumaki.png	https://vignette.wikia.nocookie.net/naruto/images/5/51/Himawari_Uzumaki.png/revision/latest/scale-to-width-down/310?cb=20180303182929&path-prefix=pt-br	206
276	Hisame.png	https://vignette.wikia.nocookie.net/naruto/images/b/b3/Hisame.png/revision/latest?cb=20160306124812&path-prefix=pt-br	215
281	Fase I-II	https://vignette.wikia.nocookie.net/naruto/images/1/1b/Homura_Mitokado.png/revision/latest/scale-to-width-down/310?cb=20141210015023&path-prefix=pt-br	219
289	Mōsō	https://vignette.wikia.nocookie.net/naruto/images/6/63/M%C5%8Ds%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20130814044440&path-prefix=pt-br	225
295	Parte II	https://vignette.wikia.nocookie.net/naruto/images/1/16/Ibuse_Guerra.png/revision/latest/scale-to-width-down/310?cb=20130727223354&path-prefix=pt-br	229
297	Ichigen.png	https://vignette.wikia.nocookie.net/naruto/images/b/b5/Ichigen.png/revision/latest?cb=20160211095251&path-prefix=pt-br	230
308	Fase II	https://vignette.wikia.nocookie.net/naruto/images/7/71/Ino_%28Parte_II%29.png/revision/latest/scale-to-width-down/310?cb=20151228124622&path-prefix=pt-br	239
218	Gyuki.png	https://vignette.wikia.nocookie.net/naruto/images/d/d7/Gyuki.png/revision/latest/scale-to-width-down/310?cb=20130513214423&path-prefix=pt-br	171
219	Gōza.png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/G%C5%8Dza.png/revision/latest/scale-to-width-down/310?cb=20160220150339&path-prefix=pt-br	172
220	Gozu (Kiri).PNG	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Gozu_%28Kiri%29.PNG/revision/latest/scale-to-width-down/310?cb=20121204124314&path-prefix=pt-br	173
221	Fase II	https://vignette.wikia.nocookie.net/naruto/images/d/da/Hagoromo_%C5%8Ctsutsuki_%28Infobox%29.PNG/revision/latest/scale-to-width-down/310?cb=20200212172134&path-prefix=pt-br	174
222	Passado	https://vignette.wikia.nocookie.net/naruto/images/b/b5/Hagoromo_Jovem.png/revision/latest/scale-to-width-down/310?cb=20160523051635&path-prefix=pt-br	174
223	Haido Rosto.png	https://vignette.wikia.nocookie.net/naruto/images/6/62/Haido_Rosto.png/revision/latest/scale-to-width-down/310?cb=20150916001504&path-prefix=pt-br	175
224	Hakkaku.png	https://vignette.wikia.nocookie.net/naruto/images/6/62/Hakkaku.png/revision/latest?cb=20161220001459&path-prefix=pt-br	177
226	Fase I	https://vignette.wikia.nocookie.net/naruto/images/0/00/Haku.PNG/revision/latest/scale-to-width-down/310?cb=20150222214916&path-prefix=pt-br	179
229	Passado	https://vignette.wikia.nocookie.net/naruto/images/b/b0/Hamura_%28The_Last%29.png/revision/latest/scale-to-width-down/310?cb=20160115133823&path-prefix=pt-br	182
231	Han.png	https://vignette.wikia.nocookie.net/naruto/images/3/3c/Han.png/revision/latest/scale-to-width-down/310?cb=20130905194424&path-prefix=pt-br	183
234	Fase I	https://vignette.wikia.nocookie.net/naruto/images/2/21/Hanabi_Hyuga_%28Parte_I%29.png/revision/latest/scale-to-width-down/310?cb=20170531214629&path-prefix=pt-br	185
236	Boruto	https://vignette.wikia.nocookie.net/naruto/images/1/11/Hanabi_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20170531222112&path-prefix=pt-br	185
237	Hanare.png	https://vignette.wikia.nocookie.net/naruto/images/e/e9/Hanare.png/revision/latest/scale-to-width-down/310?cb=20130806193201&path-prefix=pt-br	186
245	Fase II	https://vignette.wikia.nocookie.net/naruto/images/1/1f/Hashirama_Senju_%28Guerra%29.png/revision/latest/scale-to-width-down/310?cb=20140612194047&path-prefix=pt-br	191
247	Hassaku Onomichi-0.png	https://vignette.wikia.nocookie.net/naruto/images/8/84/Hassaku_Onomichi-0.png/revision/latest/scale-to-width-down/310?cb=20171107000029&path-prefix=pt-br	192
248	Hayama Shirakumo (HD).png	https://vignette.wikia.nocookie.net/naruto/images/2/21/Hayama_Shirakumo_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160928220257&path-prefix=pt-br	193
255	Boruto	https://vignette.wikia.nocookie.net/naruto/images/3/3e/Hiashi_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20170531231506&path-prefix=pt-br	198
258	Hibari.png	https://vignette.wikia.nocookie.net/naruto/images/1/1f/Hibari.png/revision/latest/scale-to-width-down/310?cb=20160217172035&path-prefix=pt-br	200
261	Hidero.PNG	https://vignette.wikia.nocookie.net/naruto/images/a/a6/Hidero.PNG/revision/latest/scale-to-width-down/310?cb=20160213124009&path-prefix=pt-br	203
263	HikaruTsuki.png	https://vignette.wikia.nocookie.net/naruto/images/3/37/HikaruTsuki.png/revision/latest/scale-to-width-down/310?cb=20150718214027&path-prefix=pt-br	205
265	Himeno.png	https://vignette.wikia.nocookie.net/naruto/images/9/91/Himeno.png/revision/latest?cb=20161106174037&path-prefix=pt-br	207
266	Passado	https://vignette.wikia.nocookie.net/naruto/images/6/68/Himushi.PNG/revision/latest/scale-to-width-down/310?cb=20121102203014&path-prefix=pt-br	208
267	Geral	https://vignette.wikia.nocookie.net/naruto/images/f/f7/Himushi_Corpo_Inteiro.png/revision/latest?cb=20140723180620&path-prefix=pt-br	208
271	Boruto	https://vignette.wikia.nocookie.net/naruto/images/a/ad/Apar%C3%AAncia_de_Hinata_%28Filme_de_Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20150624043046&path-prefix=pt-br	210
272	Os mortos.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Os_mortos.PNG/revision/latest/scale-to-width-down/310?cb=20120908211306&path-prefix=pt-br	211
275	Hiruzen Sarutobi perfil.png	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Hiruzen_Sarutobi_perfil.png/revision/latest/scale-to-width-down/310?cb=20180129170701&path-prefix=pt-br	214
277	Hishaku...png	https://vignette.wikia.nocookie.net/naruto/images/a/a0/Hishaku...png/revision/latest/scale-to-width-down/310?cb=20110819031348&path-prefix=pt-br	216
280	Hokushin.png	https://vignette.wikia.nocookie.net/naruto/images/f/fa/Hokushin.png/revision/latest/scale-to-width-down/310?cb=20121109123525&path-prefix=pt-br	218
282	Passado	https://vignette.wikia.nocookie.net/naruto/images/f/f0/Homura_mitokado.png/revision/latest/scale-to-width-down/310?cb=20141210012837&path-prefix=pt-br	219
284	Hotarubi (HD).png	https://vignette.wikia.nocookie.net/naruto/images/5/5e/Hotarubi_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160214173353&path-prefix=pt-br	221
285	Hyō.png	https://vignette.wikia.nocookie.net/naruto/images/9/99/Hy%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20160130200148&path-prefix=pt-br	222
286	Hōichi.png	https://vignette.wikia.nocookie.net/naruto/images/c/c4/H%C5%8Dichi.png/revision/latest/scale-to-width-down/310?cb=20150502213728&path-prefix=pt-br	223
291	Hōshō.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/0f/H%C5%8Dsh%C5%8D.PNG/revision/latest/scale-to-width-down/310?cb=20130320213257&path-prefix=pt-br	227
292	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/61/Ibiki_Morino.png/revision/latest/scale-to-width-down/310?cb=20130416184212&path-prefix=pt-br	228
303	Inabi.png	https://vignette.wikia.nocookie.net/naruto/images/5/52/Inabi.png/revision/latest/scale-to-width-down/310?cb=20140927204727&path-prefix=pt-br	236
306	Indra Infobox.png	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Indra_Infobox.png/revision/latest/scale-to-width-down/310?cb=20200212173444&path-prefix=pt-br	238
309	Boruto	https://vignette.wikia.nocookie.net/naruto/images/1/1a/Ino_Epilogo_Adulta.png/revision/latest/scale-to-width-down/310?cb=20151226163341&path-prefix=pt-br	239
310	Inoichi Yamanaka.png	https://vignette.wikia.nocookie.net/naruto/images/d/d2/Inoichi_Yamanaka.png/revision/latest/scale-to-width-down/310?cb=20181103221145&path-prefix=pt-br	240
313	Parte I-II	https://vignette.wikia.nocookie.net/naruto/images/b/b8/Iruka_Umino.png/revision/latest/scale-to-width-down/310?cb=20130527233100&path-prefix=pt-br	243
225	Hako.png	https://vignette.wikia.nocookie.net/naruto/images/9/9e/Hako.png/revision/latest/scale-to-width-down/310?cb=20200405025634&path-prefix=pt-br	178
228	Hamaki Mimura.png	https://vignette.wikia.nocookie.net/naruto/images/b/b2/Hamaki_Mimura.png/revision/latest/scale-to-width-down/310?cb=20130624222003&path-prefix=pt-br	181
235	Fase II	https://vignette.wikia.nocookie.net/naruto/images/9/92/Hanabi_Hyuga_%28Shippuden%29.png/revision/latest/scale-to-width-down/310?cb=20170531214736&path-prefix=pt-br	185
250	Parte II	https://vignette.wikia.nocookie.net/naruto/images/1/1b/Edo_Hayate.PNG/revision/latest/scale-to-width-down/310?cb=20130718053233&path-prefix=pt-br	194
288	Hōki	https://vignette.wikia.nocookie.net/naruto/images/9/9c/Houki.png/revision/latest/scale-to-width-down/310?cb=20130814044304&path-prefix=pt-br	225
294	Geral	https://vignette.wikia.nocookie.net/naruto/images/c/c5/Ibiki_Morino_%28full%29.png/revision/latest/scale-to-width-down/260?cb=20130418170428&path-prefix=pt-br	228
296	Passado	https://vignette.wikia.nocookie.net/naruto/images/2/27/Ibuse.PNG/revision/latest/scale-to-width-down/310?cb=20130225233847&path-prefix=pt-br	229
299	Idate Morino.PNG	https://vignette.wikia.nocookie.net/naruto/images/c/cb/Idate_Morino.PNG/revision/latest/scale-to-width-down/310?cb=20141119004054&path-prefix=pt-br	232
300	Iggy.png	https://vignette.wikia.nocookie.net/naruto/images/0/0e/Iggy.png/revision/latest/scale-to-width-down/310?cb=20111024030122&path-prefix=pt-br	233
305	Parte II	https://vignette.wikia.nocookie.net/naruto/images/b/b8/Inari_Parte_II.PNG/revision/latest/scale-to-width-down/310?cb=20140828022310&path-prefix=pt-br	237
315	Ise (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Ise_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20141231160931&path-prefix=pt-br	244
230	Período em Branco	https://vignette.wikia.nocookie.net/naruto/images/9/93/Hamura_%28Pt._III%29.png/revision/latest/scale-to-width-down/310?cb=20160115133854&path-prefix=pt-br	182
259	Hidan Parte II.png	https://vignette.wikia.nocookie.net/naruto/images/0/0f/Hidan_Parte_II.png/revision/latest/scale-to-width-down/310?cb=20160521003057&path-prefix=pt-br	201
269	Fase I	https://vignette.wikia.nocookie.net/naruto/images/b/b1/Hinata-Genin.png/revision/latest/scale-to-width-down/310?cb=20140328224439&path-prefix=pt-br	210
290	Houki Taketori.png	https://vignette.wikia.nocookie.net/naruto/images/b/bf/Houki_Taketori.png/revision/latest/scale-to-width-down/310?cb=20171227001338&path-prefix=pt-br	226
293	Boruto	https://vignette.wikia.nocookie.net/naruto/images/e/eb/Ibiki_Morino_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20200114124409&path-prefix=pt-br	228
301	Ikkaku Umino.png	https://vignette.wikia.nocookie.net/naruto/images/a/a5/Ikkaku_Umino.png/revision/latest/scale-to-width-down/310?cb=20141222050411&path-prefix=pt-br	234
302	Ikkyū MadokaAnime.png	https://vignette.wikia.nocookie.net/naruto/images/f/f8/Ikky%C5%AB_MadokaAnime.png/revision/latest/scale-to-width-down/310?cb=20170920145732&path-prefix=pt-br	235
304	Parte I	https://vignette.wikia.nocookie.net/naruto/images/e/e2/Inari_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20190811050629&path-prefix=pt-br	237
307	Fase I	https://vignette.wikia.nocookie.net/naruto/images/d/dd/Ino.png/revision/latest/scale-to-width-down/310?cb=20180510114823&path-prefix=pt-br	239
312	Iroha Hyūga.png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/Iroha_Hy%C5%ABga.png/revision/latest/scale-to-width-down/310?cb=20141222212556&path-prefix=pt-br	242
233	Parte II	https://vignette.wikia.nocookie.net/naruto/images/a/ae/Hana_Inuzuka_Guerra.png/revision/latest/scale-to-width-down/310?cb=20121105015022&path-prefix=pt-br	184
238	Passado	https://vignette.wikia.nocookie.net/naruto/images/5/5d/Hanzo.PNG/revision/latest/scale-to-width-down/310?cb=20120309002215&path-prefix=pt-br	187
246	Fase I	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Hashirama_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20130731180103&path-prefix=pt-br	191
254	Fase II	https://vignette.wikia.nocookie.net/naruto/images/a/ae/Hiashi_Guerra.PNG/revision/latest/scale-to-width-down/310?cb=20170531212950&path-prefix=pt-br	198
274	Hinoko (HD).png	https://vignette.wikia.nocookie.net/naruto/images/1/1d/Hinoko_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20170112212813&path-prefix=pt-br	213
283	Honoka.png	https://vignette.wikia.nocookie.net/naruto/images/8/8a/Honoka.png/revision/latest/scale-to-width-down/310?cb=20150924232150&path-prefix=pt-br	220
287	Hōki (HD).png	https://vignette.wikia.nocookie.net/naruto/images/c/ca/H%C5%8Dki_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213142100&path-prefix=pt-br	224
240	Geral	https://vignette.wikia.nocookie.net/naruto/images/d/d6/Hanz%C5%8D_%28Infobox_-_Geral%29.png/revision/latest/scale-to-width-down/267?cb=20140412234945&path-prefix=pt-br	187
242	Haruna.png	https://vignette.wikia.nocookie.net/naruto/images/a/a6/Haruna.png/revision/latest?cb=20160127162133&path-prefix=pt-br	189
243	Harusame.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/37/Harusame.PNG/revision/latest/scale-to-width-down/310?cb=20190905005245&path-prefix=pt-br	190
251	Hebiichigo.png	https://vignette.wikia.nocookie.net/naruto/images/e/ed/Hebiichigo.png/revision/latest/scale-to-width-down/310?cb=20171017053048&path-prefix=pt-br	195
262	Hikaku Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/c/c1/Hikaku_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20200309203721&path-prefix=pt-br	204
273	Hinoe.png	https://vignette.wikia.nocookie.net/naruto/images/1/13/Hinoe.png/revision/latest/scale-to-width-down/304?cb=20150610160720&path-prefix=pt-br	212
278	Passado	https://vignette.wikia.nocookie.net/naruto/images/9/96/Hizashi.png/revision/latest/scale-to-width-down/310?cb=20130727222155&path-prefix=pt-br	217
241	Harine.png	https://vignette.wikia.nocookie.net/naruto/images/e/e2/Harine.png/revision/latest/scale-to-width-down/310?cb=20150102160451&path-prefix=pt-br	188
244	Passado	https://vignette.wikia.nocookie.net/naruto/images/b/b0/Shodai_Tsuchi_-_Sugest%C3%A3o_do_Rafael_-_II.jpg/revision/latest/scale-to-width-down/310?cb=20141106201823&path-prefix=pt-br	191
256	Fase I	https://vignette.wikia.nocookie.net/naruto/images/1/18/Hiashi_Hy%C5%ABga.png/revision/latest/scale-to-width-down/310?cb=20170531234753&path-prefix=pt-br	198
257	Hibachi.png	https://vignette.wikia.nocookie.net/naruto/images/3/33/Hibachi.png/revision/latest/scale-to-width-down/310?cb=20150614222847&path-prefix=pt-br	199
268	Hina.png	https://vignette.wikia.nocookie.net/naruto/images/8/83/Hina.png/revision/latest?cb=20150610222001&path-prefix=pt-br	209
270	Fase II	https://vignette.wikia.nocookie.net/naruto/images/a/a4/Hinata_Hy%C5%ABga_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20140408001739&path-prefix=pt-br	210
279	Fase II	https://vignette.wikia.nocookie.net/naruto/images/9/9b/Hizashi.PNG/revision/latest/scale-to-width-down/310?cb=20120621235858&path-prefix=pt-br	217
298	Ichirōta Oniyuzu.png	https://vignette.wikia.nocookie.net/naruto/images/a/a3/Ichir%C5%8Dta_Oniyuzu.png/revision/latest/scale-to-width-down/310?cb=20171017052934&path-prefix=pt-br	231
311	Inojin.png	https://vignette.wikia.nocookie.net/naruto/images/8/8c/Inojin.png/revision/latest/scale-to-width-down/310?cb=20170412191717&path-prefix=pt-br	241
314	Parte IV	https://vignette.wikia.nocookie.net/naruto/images/6/63/Iruka_Umino_%28Parte_IV%29.png/revision/latest/scale-to-width-down/310?cb=20160718214434&path-prefix=pt-br	243
316	Ishidate (HD).png	https://vignette.wikia.nocookie.net/naruto/images/4/43/Ishidate_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160405103659&path-prefix=pt-br	245
317	Primeiro Tsuchikage mais novo (Anime).png	https://vignette.wikia.nocookie.net/naruto/images/4/49/Primeiro_Tsuchikage_mais_novo_%28Anime%29.png/revision/latest/scale-to-width-down/310?cb=20141016181039&path-prefix=pt-br	246
318	Isobu (Infobox - Parte II).PNG	https://vignette.wikia.nocookie.net/naruto/images/7/72/Isobu_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20140619011626&path-prefix=pt-br	247
319	Isono.png	https://vignette.wikia.nocookie.net/naruto/images/d/dd/Isono.png/revision/latest/scale-to-width-down/310?cb=20130609202325&path-prefix=pt-br	248
320	Fase I	https://vignette.wikia.nocookie.net/naruto/images/8/8d/UchihaItachi.png/revision/latest/scale-to-width-down/310?cb=20180420021356&path-prefix=pt-br	249
321	Fase II	https://vignette.wikia.nocookie.net/naruto/images/2/24/Itachi-Uchiha.png/revision/latest/scale-to-width-down/310?cb=20181104200812&path-prefix=pt-br	249
322	Passado	https://vignette.wikia.nocookie.net/naruto/images/5/53/Itachi1.png/revision/latest/scale-to-width-down/310?cb=20110612220807&path-prefix=pt-br	249
323	Itama Senju.png	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Itama_Senju.png/revision/latest/scale-to-width-down/310?cb=20140706211907&path-prefix=pt-br	250
324	Ittan.png	https://vignette.wikia.nocookie.net/naruto/images/6/68/Ittan.png/revision/latest/scale-to-width-down/310?cb=20130520054058&path-prefix=pt-br	251
325	Ittetsu.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/03/Ittetsu.PNG/revision/latest/scale-to-width-down/310?cb=20121125131022&path-prefix=pt-br	252
326	Iwabee.png	https://vignette.wikia.nocookie.net/naruto/images/a/a9/Iwabee.png/revision/latest/scale-to-width-down/310?cb=20181110215650&path-prefix=pt-br	253
327	Iwaji.png	https://vignette.wikia.nocookie.net/naruto/images/a/ac/Iwaji.png/revision/latest/scale-to-width-down/282?cb=20111209112612&path-prefix=pt-br	254
328	Iwakyo.png	https://vignette.wikia.nocookie.net/naruto/images/7/77/Iwakyo.png/revision/latest/scale-to-width-down/310?cb=20111209112612&path-prefix=pt-br	255
329	Parte I	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Iwashi_Tatami.png/revision/latest?cb=20151009192936&path-prefix=pt-br	256
330	Parte II	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Iwashi_%28Guerra%29.png/revision/latest/scale-to-width-down/310?cb=20160929124759&path-prefix=pt-br	256
331	Sharingan de Izumi.png	https://vignette.wikia.nocookie.net/naruto/images/4/49/Sharingan_de_Izumi.png/revision/latest/scale-to-width-down/310?cb=20200513035908&path-prefix=pt-br	257
332	Izumo Kamizuki.png	https://vignette.wikia.nocookie.net/naruto/images/5/5d/Izumo_Kamizuki.png/revision/latest/scale-to-width-down/310?cb=20130525010448&path-prefix=pt-br	258
333	Geral	https://vignette.wikia.nocookie.net/naruto/images/3/3d/Izuna_Uchiha_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429213803&path-prefix=pt-br	259
334	Passado	https://vignette.wikia.nocookie.net/naruto/images/8/8b/Sharingan_de_Izuna_%28Anime%29.png/revision/latest/scale-to-width-down/310?cb=20200513033456&path-prefix=pt-br	259
335	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/40/I%C5%8D_-_rosto.PNG/revision/latest/scale-to-width-down/310?cb=20130411204710&path-prefix=pt-br	260
336	Geral	https://vignette.wikia.nocookie.net/naruto/images/9/94/Io.png/revision/latest/scale-to-width-down/217?cb=20130405025537&path-prefix=pt-br	260
337	JJ.png	https://vignette.wikia.nocookie.net/naruto/images/b/b6/JJ.png/revision/latest?cb=20180611021709&path-prefix=pt-br	261
338	Jakou Ryuudouin.PNG	https://vignette.wikia.nocookie.net/naruto/images/1/10/Jakou_Ryuudouin.PNG/revision/latest/scale-to-width-down/310?cb=20121112135114&path-prefix=pt-br	262
339	Jantō.png	https://vignette.wikia.nocookie.net/naruto/images/0/0b/Jant%C5%8D.png/revision/latest?cb=20160206122814&path-prefix=pt-br	263
340	Jimei.png	https://vignette.wikia.nocookie.net/naruto/images/6/6f/Jimei.png/revision/latest?cb=20160928212623&path-prefix=pt-br	264
341	Jin.png	https://vignette.wikia.nocookie.net/naruto/images/0/08/Jin.png/revision/latest/scale-to-width-down/310?cb=20140928043456&path-prefix=pt-br	265
342	Jinin.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/36/Jinin.PNG/revision/latest/scale-to-width-down/310?cb=20121114211355&path-prefix=pt-br	266
343	Jinpachi.PNG	https://vignette.wikia.nocookie.net/naruto/images/1/14/Jinpachi.PNG/revision/latest/scale-to-width-down/310?cb=20160603230822&path-prefix=pt-br	267
344	Jiraiya perfil.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/73/Jiraiya_perfil.PNG/revision/latest/scale-to-width-down/310?cb=20191203234503&path-prefix=pt-br	268
345	Jiroubou.png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/Jiroubou.png/revision/latest/scale-to-width-down/310?cb=20130728153736&path-prefix=pt-br	269
346	Jirōchō Wasabi.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/e1/Jir%C5%8Dch%C5%8D_Wasabi.PNG/revision/latest/scale-to-width-down/310?cb=20150110115732&path-prefix=pt-br	270
347	Junsai.png	https://vignette.wikia.nocookie.net/naruto/images/6/6a/Junsai.png/revision/latest/scale-to-width-down/310?cb=20111228163144&path-prefix=pt-br	271
348	Joseki.png	https://vignette.wikia.nocookie.net/naruto/images/a/a6/Joseki.png/revision/latest/scale-to-width-down/310?cb=20160131222505&path-prefix=pt-br	272
349	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/ce/Juugo.png/revision/latest/scale-to-width-down/310?cb=20130804224438&path-prefix=pt-br	273
350	Boruto	https://vignette.wikia.nocookie.net/naruto/images/a/a5/J%C5%ABgo_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20190330202505&path-prefix=pt-br	273
352	Kabure Tokisuki.png	https://vignette.wikia.nocookie.net/naruto/images/7/79/Kabure_Tokisuki.png/revision/latest/scale-to-width-down/310?cb=20141111195750&path-prefix=pt-br	275
355	Boruto	https://vignette.wikia.nocookie.net/naruto/images/b/b0/Kabuto_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20170910163653&path-prefix=pt-br	276
356	Kaede Yoshino.png	https://vignette.wikia.nocookie.net/naruto/images/d/d7/Kaede_Yoshino.png/revision/latest/scale-to-width-down/310?cb=20170522171950&path-prefix=pt-br	278
358	Geral	https://vignette.wikia.nocookie.net/naruto/images/7/70/Kagami_Uchiha_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429144313&path-prefix=pt-br	279
359	Kagari.png	https://vignette.wikia.nocookie.net/naruto/images/e/e4/Kagari.png/revision/latest?cb=20150511165409&path-prefix=pt-br	280
366	Boruto	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Kakashi_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181122180026&path-prefix=pt-br	288
368	Geral	https://vignette.wikia.nocookie.net/naruto/images/6/62/Kakk%C5%8D_%28Infobox_-_Rendeliza%C3%A7%C3%A3o%29.PNG/revision/latest/scale-to-width-down/310?cb=20140816191234&path-prefix=pt-br	290
369	Passado	https://vignette.wikia.nocookie.net/naruto/images/d/d8/Kakko.png/revision/latest/scale-to-width-down/310?cb=20121216195232&path-prefix=pt-br	290
372	Kamata.png	https://vignette.wikia.nocookie.net/naruto/images/d/d0/Kamata.png/revision/latest/scale-to-width-down/310?cb=20200201211718&path-prefix=pt-br	293
377	Kandachi.png	https://vignette.wikia.nocookie.net/naruto/images/3/3e/Kandachi.png/revision/latest/scale-to-width-down/310?cb=20130323120827&path-prefix=pt-br	297
379	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/c6/Kankuro_Reuni%C3%A3o.png/revision/latest/scale-to-width-down/310?cb=20130728155543&path-prefix=pt-br	298
389	Fase II	https://vignette.wikia.nocookie.net/naruto/images/5/5f/Karin_%28Shippuden%29.png/revision/latest/scale-to-width-down/310?cb=20151118215405&path-prefix=pt-br	306
394	Kashike Novo.png	https://vignette.wikia.nocookie.net/naruto/images/8/8b/Kashike_Novo.png/revision/latest/scale-to-width-down/310?cb=20150219141151&path-prefix=pt-br	309
399	Katsuyu.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/79/Katsuyu.PNG/revision/latest/scale-to-width-down/310?cb=20170521032945&path-prefix=pt-br	314
407	Keiri.png	https://vignette.wikia.nocookie.net/naruto/images/4/41/Keiri.png/revision/latest/scale-to-width-down/310?cb=20160210233757&path-prefix=pt-br	321
416	Kiku (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/2/2f/Kiku_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20200227030829&path-prefix=pt-br	328
422	Kin1.png	https://vignette.wikia.nocookie.net/naruto/images/7/76/Kin1.png/revision/latest/scale-to-width-down/310?cb=20130104112346&path-prefix=pt-br	331
425	Kinoto.png	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Kinoto.png/revision/latest/scale-to-width-down/310?cb=20150610193910&path-prefix=pt-br	334
426	Kinshiki Ōtsutsuki.png	https://vignette.wikia.nocookie.net/naruto/images/e/e3/Kinshiki_%C5%8Ctsutsuki.png/revision/latest?cb=20180501225628&path-prefix=pt-br	335
428	Kirara.png	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Kirara.png/revision/latest/scale-to-width-down/310?cb=20181015131524&path-prefix=pt-br	337
430	Fase II	https://vignette.wikia.nocookie.net/naruto/images/1/15/Kisame_Hoshigaki_%28Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20160807140434&path-prefix=pt-br	339
435	Kiyomu Fukuda.PNG	https://vignette.wikia.nocookie.net/naruto/images/b/b3/Kiyomu_Fukuda.PNG/revision/latest/scale-to-width-down/310?cb=20160509135819&path-prefix=pt-br	343
351	Jūzō Biwa (Anime).PNG	https://vignette.wikia.nocookie.net/naruto/images/f/f7/J%C5%ABz%C5%8D_Biwa_%28Anime%29.PNG/revision/latest/scale-to-width-down/310?cb=20150710052949&path-prefix=pt-br	274
373	Kamatari (HD).png	https://vignette.wikia.nocookie.net/naruto/images/b/b3/Kamatari_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160313175137&path-prefix=pt-br	294
375	Geral	https://vignette.wikia.nocookie.net/naruto/images/9/9b/Kamira_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429154712&path-prefix=pt-br	295
384	Kaori.PNG	https://vignette.wikia.nocookie.net/naruto/images/1/16/Kaori.PNG/revision/latest?cb=20160218012039&path-prefix=pt-br	302
385	Karai.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/02/Karai.PNG/revision/latest/scale-to-width-down/310?cb=20121102001920&path-prefix=pt-br	303
387	Karenbana.PNG	https://vignette.wikia.nocookie.net/naruto/images/d/df/Karenbana.PNG/revision/latest/scale-to-width-down/310?cb=20160504112446&path-prefix=pt-br	305
395	Kasuga Nara.png	https://vignette.wikia.nocookie.net/naruto/images/9/97/Kasuga_Nara.png/revision/latest/scale-to-width-down/310?cb=20141110223013&path-prefix=pt-br	310
396	Kasumi.png	https://vignette.wikia.nocookie.net/naruto/images/6/6b/Kasumi.png/revision/latest/scale-to-width-down/290?cb=20160218092622&path-prefix=pt-br	311
402	Kayui.png	https://vignette.wikia.nocookie.net/naruto/images/2/26/Kayui.png/revision/latest/scale-to-width-down/310?cb=20150102110740&path-prefix=pt-br	317
409	Fase II	https://vignette.wikia.nocookie.net/naruto/images/b/b1/Kiba_%28Parte_II%29.png/revision/latest/scale-to-width-down/310?cb=20170530230546&path-prefix=pt-br	322
411	Kidomaru Clássico.png	https://vignette.wikia.nocookie.net/naruto/images/b/b9/Kidomaru_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20130728160740&path-prefix=pt-br	323
412	Kie Naruto.png	https://vignette.wikia.nocookie.net/naruto/images/9/9d/Kie_Naruto.png/revision/latest/scale-to-width-down/310?cb=20160211154503&path-prefix=pt-br	324
421	Passado	https://vignette.wikia.nocookie.net/naruto/images/1/15/Kimimaro_na_Inf%C3%A2ncia.PNG/revision/latest/scale-to-width-down/310?cb=20150817182632&path-prefix=pt-br	330
434	Kitō.png	https://vignette.wikia.nocookie.net/naruto/images/4/42/Kit%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20140805034147&path-prefix=pt-br	342
436	Kiyoyasu Kagetsu.png	https://vignette.wikia.nocookie.net/naruto/images/9/9c/Kiyoyasu_Kagetsu.png/revision/latest?cb=20180227190346&path-prefix=pt-br	344
353	Fase I	https://vignette.wikia.nocookie.net/naruto/images/3/33/Kabuto_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20130829191223&path-prefix=pt-br	276
406	Passado	https://vignette.wikia.nocookie.net/naruto/images/8/88/Kazuma.png/revision/latest/scale-to-width-down/310?cb=20140422185619&path-prefix=pt-br	320
410	Boruto	https://vignette.wikia.nocookie.net/naruto/images/a/aa/Kiba_Inuzuka_%28Parte_IV%29_Anime.png/revision/latest/scale-to-width-down/310?cb=20180125004022&path-prefix=pt-br	322
413	Kigiri.png	https://vignette.wikia.nocookie.net/naruto/images/a/a4/Kigiri.png/revision/latest/scale-to-width-down/310?cb=20170815202656&path-prefix=pt-br	325
414	Kihō (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Kih%C5%8D_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20141226234314&path-prefix=pt-br	326
415	Kiki.png	https://vignette.wikia.nocookie.net/naruto/images/4/4a/Kiki.png/revision/latest?cb=20160306203206&path-prefix=pt-br	327
418	Parte II	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Kumo_no_Killer_B.png/revision/latest/scale-to-width-down/310?cb=20160108024131&path-prefix=pt-br	329
420	Parte II	https://vignette.wikia.nocookie.net/naruto/images/a/a7/Kimimaro.png/revision/latest/scale-to-width-down/310?cb=20130719175359&path-prefix=pt-br	330
441	Kohari Umino.png	https://vignette.wikia.nocookie.net/naruto/images/1/14/Kohari_Umino.png/revision/latest/scale-to-width-down/310?cb=20141222053926&path-prefix=pt-br	347
442	Passado	https://vignette.wikia.nocookie.net/naruto/images/0/07/Koharu_quando_jovem.png/revision/latest/scale-to-width-down/310?cb=20141205021439&path-prefix=pt-br	348
446	Kokuō (Infobox - Parte II).PNG	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Koku%C5%8D_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20140619012730&path-prefix=pt-br	351
354	Fase II	https://vignette.wikia.nocookie.net/naruto/images/1/17/Kabuto_Yakushi.png/revision/latest/scale-to-width-down/310?cb=20121103225038&path-prefix=pt-br	276
374	Parte I	https://vignette.wikia.nocookie.net/naruto/images/8/80/Kamina.png/revision/latest/scale-to-width-down/310?cb=20120325182717&path-prefix=pt-br	295
381	Kanna (Girl).png	https://vignette.wikia.nocookie.net/naruto/images/9/92/Kanna_%28Girl%29.png/revision/latest/scale-to-width-down/310?cb=20160707175348&path-prefix=pt-br	299
382	Kanpu.png	https://vignette.wikia.nocookie.net/naruto/images/1/19/Kanpu.png/revision/latest/scale-to-width-down/310?cb=20160210225432&path-prefix=pt-br	300
383	Kanpō.PNG	https://vignette.wikia.nocookie.net/naruto/images/2/26/Kanp%C5%8D.PNG/revision/latest/scale-to-width-down/259?cb=20140830160006&path-prefix=pt-br	301
392	Boruto	https://vignette.wikia.nocookie.net/naruto/images/5/5b/Karui_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20190331013530&path-prefix=pt-br	307
400	Kawarama Senju.png	https://vignette.wikia.nocookie.net/naruto/images/d/d8/Kawarama_Senju.png/revision/latest/scale-to-width-down/310?cb=20140711074021&path-prefix=pt-br	315
408	Fase I	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Kiba_Inuzuka_%28Cl%C3%A1ssico%29.png/revision/latest/scale-to-width-down/310?cb=20140823001353&path-prefix=pt-br	322
429	Kirisame.png	https://vignette.wikia.nocookie.net/naruto/images/6/61/Kirisame.png/revision/latest/scale-to-width-down/310?cb=20160618164152&path-prefix=pt-br	338
438	Geral	https://vignette.wikia.nocookie.net/naruto/images/6/6d/Kizashi_Full.png/revision/latest/scale-to-width-down/172?cb=20140816190321&path-prefix=pt-br	345
357	Passado	https://vignette.wikia.nocookie.net/naruto/images/6/69/Uchiha_Kagami.png/revision/latest/scale-to-width-down/310?cb=20160415095014&path-prefix=pt-br	279
360	Kageki.png	https://vignette.wikia.nocookie.net/naruto/images/7/71/Kageki.png/revision/latest?cb=20160212151817&path-prefix=pt-br	281
363	Kaiza.png	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Kaiza.png/revision/latest/scale-to-width-down/310?cb=20140907000027&path-prefix=pt-br	286
365	Fases I-II	https://vignette.wikia.nocookie.net/naruto/images/b/b1/Kakashi_Hatake%2C_o_Hokage.PNG/revision/latest/scale-to-width-down/310?cb=20140902154722&path-prefix=pt-br	288
367	Kakeru.png	https://vignette.wikia.nocookie.net/naruto/images/9/98/Kakeru.png/revision/latest/scale-to-width-down/310?cb=20150718130610&path-prefix=pt-br	289
370	Kakuzu (Shippuden).png	https://vignette.wikia.nocookie.net/naruto/images/a/a3/Kakuzu_%28Shippuden%29.png/revision/latest/scale-to-width-down/310?cb=20140825181534&path-prefix=pt-br	291
371	Kakō.png	https://vignette.wikia.nocookie.net/naruto/images/4/4b/Kak%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20181027171512&path-prefix=pt-br	292
376	Kanabun.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Kanabun.PNG/revision/latest/scale-to-width-down/310?cb=20160213001845&path-prefix=pt-br	296
380	Boruto	https://vignette.wikia.nocookie.net/naruto/images/1/10/Kankur%C5%8D_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181122180152&path-prefix=pt-br	298
388	Fase I	https://vignette.wikia.nocookie.net/naruto/images/4/49/Karin_%28Crian%C3%A7a%29.PNG/revision/latest/scale-to-width-down/310?cb=20151006182538&path-prefix=pt-br	306
393	Karyū.png	https://vignette.wikia.nocookie.net/naruto/images/f/fe/Kary%C5%AB.png/revision/latest/scale-to-width-down/310?cb=20161215155956&path-prefix=pt-br	308
401	Kaya.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/f2/Kaya.PNG/revision/latest/scale-to-width-down/310?cb=20160229160543&path-prefix=pt-br	316
403	Kazabune.png	https://vignette.wikia.nocookie.net/naruto/images/c/cb/Kazabune.png/revision/latest?cb=20160205185419&path-prefix=pt-br	318
405	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/47/Furido.png/revision/latest/scale-to-width-down/310?cb=20140422185620&path-prefix=pt-br	320
417	Parte IV	https://vignette.wikia.nocookie.net/naruto/images/9/94/Killer_B_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181104202352&path-prefix=pt-br	329
419	Parte I	https://vignette.wikia.nocookie.net/naruto/images/c/c4/Kimimaro_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20161126125447&path-prefix=pt-br	330
423	King.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/e3/King.PNG/revision/latest/scale-to-width-down/310?cb=20120316022228&path-prefix=pt-br	332
427	Kintoki.png	https://vignette.wikia.nocookie.net/naruto/images/0/0e/Kintoki.png/revision/latest/scale-to-width-down/310?cb=20120105182914&path-prefix=pt-br	336
437	Parte II	https://vignette.wikia.nocookie.net/naruto/images/3/3c/Kizashi.png/revision/latest/scale-to-width-down/310?cb=20120727213726&path-prefix=pt-br	345
439	Anime	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Kohada.png/revision/latest?cb=20160210100610&path-prefix=pt-br	346
440	Mangá	https://vignette.wikia.nocookie.net/naruto/images/1/18/Kohada_%28Mang%C3%A1%29.png/revision/latest?cb=20160826172621&path-prefix=pt-br	346
443	Fase I-II	https://vignette.wikia.nocookie.net/naruto/images/6/67/Koharu_Utane.png/revision/latest/scale-to-width-down/310?cb=20141204004024&path-prefix=pt-br	348
445	Kokuyō (anime).png	https://vignette.wikia.nocookie.net/naruto/images/f/f7/Kokuy%C5%8D_%28anime%29.png/revision/latest/scale-to-width-down/310?cb=20181015132150&path-prefix=pt-br	350
361	Kagura Karatachi.png	https://vignette.wikia.nocookie.net/naruto/images/4/4a/Kagura_Karatachi.png/revision/latest/scale-to-width-down/310?cb=20180318195146&path-prefix=pt-br	283
362	Rinne Sharingan de Kaguya (Anime).png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/Rinne_Sharingan_de_Kaguya_%28Anime%29.png/revision/latest/scale-to-width-down/310?cb=20200512181028&path-prefix=pt-br	284
364	Kaji.png	https://vignette.wikia.nocookie.net/naruto/images/4/4e/Kaji.png/revision/latest/scale-to-width-down/310?cb=20140719065921&path-prefix=pt-br	287
378	Fase I	https://vignette.wikia.nocookie.net/naruto/images/4/48/Kankur%C5%8D_%28Parte_I%29.PNG/revision/latest/scale-to-width-down/310?cb=20160726165753&path-prefix=pt-br	298
386	Karashi.png	https://vignette.wikia.nocookie.net/naruto/images/a/a4/Karashi.png/revision/latest/scale-to-width-down/310?cb=20141214025517&path-prefix=pt-br	304
390	Boruto	https://vignette.wikia.nocookie.net/naruto/images/7/7a/Karin_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20170910163345&path-prefix=pt-br	306
391	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/c8/Karui_perfil.png/revision/latest/scale-to-width-down/310?cb=20130424034856&path-prefix=pt-br	307
397	Katasuke (filme).png	https://vignette.wikia.nocookie.net/naruto/images/0/0b/Katasuke_%28filme%29.png/revision/latest/scale-to-width-down/310?cb=20151227193723&path-prefix=pt-br	312
398	Katazu.PNG	https://vignette.wikia.nocookie.net/naruto/images/4/44/Katazu.PNG/revision/latest/scale-to-width-down/310?cb=20160213105104&path-prefix=pt-br	313
404	Kazan.png	https://vignette.wikia.nocookie.net/naruto/images/3/33/Kazan.png/revision/latest/scale-to-width-down/310?cb=20150724004510&path-prefix=pt-br	319
424	Kinkaku.png	https://vignette.wikia.nocookie.net/naruto/images/5/52/Kinkaku.png/revision/latest/scale-to-width-down/310?cb=20140803233758&path-prefix=pt-br	333
431	Fase I	https://vignette.wikia.nocookie.net/naruto/images/c/c9/Kisame_Hoshigaki.png/revision/latest/scale-to-width-down/310?cb=20130305034004&path-prefix=pt-br	339
432	Kitane.png	https://vignette.wikia.nocookie.net/naruto/images/b/b1/Kitane.png/revision/latest/scale-to-width-down/310?cb=20150112154134&path-prefix=pt-br	340
433	Kitsuchi.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/00/Kitsuchi.PNG/revision/latest/scale-to-width-down/310?cb=20130815184211&path-prefix=pt-br	341
444	Kokage Yanagikage.png	https://vignette.wikia.nocookie.net/naruto/images/1/1c/Kokage_Yanagikage.png/revision/latest/scale-to-width-down/310?cb=20160216201235&path-prefix=pt-br	349
447	Komaza.png	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Komaza.png/revision/latest/scale-to-width-down/310?cb=20160217105107&path-prefix=pt-br	352
448	Komichi.png	https://vignette.wikia.nocookie.net/naruto/images/0/0f/Komichi.png/revision/latest/scale-to-width-down/310?cb=20160308194025&path-prefix=pt-br	353
449	Parte II	https://vignette.wikia.nocookie.net/naruto/images/3/36/Komugi_Genin.png/revision/latest/scale-to-width-down/310?cb=20150215113344&path-prefix=pt-br	354
450	Parte I	https://vignette.wikia.nocookie.net/naruto/images/3/39/Komugi.png/revision/latest/scale-to-width-down/310?cb=20111229025822&path-prefix=pt-br	354
451	Konan (Parte II).png	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Konan_%28Parte_II%29.png/revision/latest/scale-to-width-down/310?cb=20151220140904&path-prefix=pt-br	355
452	Fase I	https://vignette.wikia.nocookie.net/naruto/images/2/2f/Konohamaru_%28Parte_I%29.png/revision/latest/scale-to-width-down/310?cb=20191203233852&path-prefix=pt-br	356
453	Fase II	https://vignette.wikia.nocookie.net/naruto/images/5/50/Konohamaru.png/revision/latest/scale-to-width-down/310?cb=20130604205043&path-prefix=pt-br	356
454	Boruto	https://vignette.wikia.nocookie.net/naruto/images/5/57/Konohamaru_%28Parte_IV%29.png/revision/latest/scale-to-width-down/310?cb=20151227195626&path-prefix=pt-br	356
455	Kontsuchi.png	https://vignette.wikia.nocookie.net/naruto/images/7/71/Kontsuchi.png/revision/latest/scale-to-width-down/310?cb=20181027171601&path-prefix=pt-br	357
456	Korobi (HD).png	https://vignette.wikia.nocookie.net/naruto/images/b/bd/Korobi_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20161026132917&path-prefix=pt-br	358
457	Kosuke Maruboshi (Parte 1).png	https://vignette.wikia.nocookie.net/naruto/images/3/39/Kosuke_Maruboshi_%28Parte_1%29.png/revision/latest/scale-to-width-down/310?cb=20160521004422&path-prefix=pt-br	359
458	Kotetsu Hagane.PNG	https://vignette.wikia.nocookie.net/naruto/images/b/ba/Kotetsu_Hagane.PNG/revision/latest/scale-to-width-down/310?cb=20140803231221&path-prefix=pt-br	360
459	Kotohime.png	https://vignette.wikia.nocookie.net/naruto/images/b/bf/Kotohime.png/revision/latest?cb=20150114140909&path-prefix=pt-br	361
460	Kozuchi-Rosto.png	https://vignette.wikia.nocookie.net/naruto/images/6/69/Kozuchi-Rosto.png/revision/latest/scale-to-width-down/310?cb=20181107171638&path-prefix=pt-br	362
461	Kujaku.png	https://vignette.wikia.nocookie.net/naruto/images/5/59/Kujaku.png/revision/latest/scale-to-width-down/310?cb=20140714223708&path-prefix=pt-br	363
462	Kumade Toriichi.png	https://vignette.wikia.nocookie.net/naruto/images/7/76/Kumade_Toriichi.png/revision/latest/scale-to-width-down/310?cb=20130516010818&path-prefix=pt-br	364
463	Kumadori - (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/a/a8/Kumadori_-_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20160606171726&path-prefix=pt-br	365
464	Kunihisa.png	https://vignette.wikia.nocookie.net/naruto/images/0/09/Kunihisa.png/revision/latest/scale-to-width-down/310?cb=20150725183615&path-prefix=pt-br	366
465	Kunijirō.png	https://vignette.wikia.nocookie.net/naruto/images/e/e7/Kunijir%C5%8D.png/revision/latest?cb=20151028173827&path-prefix=pt-br	367
466	Kunugi Mokume.png	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Kunugi_Mokume.png/revision/latest?cb=20160210115846&path-prefix=pt-br	368
467	Kurama.png	https://vignette.wikia.nocookie.net/naruto/images/0/09/Kurama.png/revision/latest/scale-to-width-down/310?cb=20140810071148&path-prefix=pt-br	369
468	Fase I	https://vignette.wikia.nocookie.net/naruto/images/9/9a/Kurenai_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20170113120917&path-prefix=pt-br	370
469	Boruto	https://vignette.wikia.nocookie.net/naruto/images/1/15/Kurenai_%28Boruto-Anime%29.png/revision/latest/scale-to-width-down/310?cb=20181127011150&path-prefix=pt-br	370
470	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/c5/Kurenai.png/revision/latest/scale-to-width-down/310?cb=20130515223615&path-prefix=pt-br	370
480	Kyohō.png	https://vignette.wikia.nocookie.net/naruto/images/1/12/Kyoh%C5%8D.png/revision/latest?cb=20180508013054&path-prefix=pt-br	379
471	Fase II	https://vignette.wikia.nocookie.net/naruto/images/2/29/Kurotsuchi_Part_II.png/revision/latest/scale-to-width-down/310?cb=20170914032715&path-prefix=pt-br	371
473	Kurozuka.png	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Kurozuka.png/revision/latest?cb=20150612001203&path-prefix=pt-br	372
484	Geral	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Ky%C5%ABsuke_%28Apar%C3%AAncia%29.PNG/revision/latest/scale-to-width-down/207?cb=20150419135237&path-prefix=pt-br	382
496	Maen Nara.png	https://vignette.wikia.nocookie.net/naruto/images/0/08/Maen_Nara.png/revision/latest/scale-to-width-down/310?cb=20141110214954&path-prefix=pt-br	392
501	Makinami Senka.png	https://vignette.wikia.nocookie.net/naruto/images/2/21/Makinami_Senka.png/revision/latest?cb=20180506192444&path-prefix=pt-br	397
504	Manda.png	https://vignette.wikia.nocookie.net/naruto/images/6/6f/Manda.png/revision/latest/scale-to-width-down/310?cb=20160329213239&path-prefix=pt-br	400
505	Manda II.png	https://vignette.wikia.nocookie.net/naruto/images/3/3b/Manda_II.png/revision/latest/scale-to-width-down/310?cb=20160830151532&path-prefix=pt-br	401
510	Matsu.png	https://vignette.wikia.nocookie.net/naruto/images/e/e7/Matsu.png/revision/latest?cb=20160211150104&path-prefix=pt-br	406
511	Matsuba.png	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Matsuba.png/revision/latest?cb=20180320204336&path-prefix=pt-br	407
515	Geral	https://vignette.wikia.nocookie.net/naruto/images/6/64/Mecha-Kurama_%28Renderiza%C3%A7%C3%A3o_-_Game%29.png/revision/latest/scale-to-width-down/310?cb=20140519152612&path-prefix=pt-br	410
532	Migaki.png	https://vignette.wikia.nocookie.net/naruto/images/7/76/Migaki.png/revision/latest?cb=20160210195250&path-prefix=pt-br	421
551	Geral	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Mito_Uzumaki_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429144941&path-prefix=pt-br	434
552	Líder do Esquadrão.png	https://vignette.wikia.nocookie.net/naruto/images/c/cf/L%C3%ADder_do_Esquadr%C3%A3o.png/revision/latest/scale-to-width-down/310?cb=20140102233836&path-prefix=pt-br	435
553	Mitsuki.png	https://vignette.wikia.nocookie.net/naruto/images/5/5c/Mitsuki.png/revision/latest/scale-to-width-down/310?cb=20181104152740&path-prefix=pt-br	436
572	Geral	https://vignette.wikia.nocookie.net/naruto/images/4/4e/Mubi_%28Render%29.png/revision/latest/scale-to-width-down/305?cb=20160501012752&path-prefix=pt-br	452
582	Mū enquanto vivo.PNG	https://vignette.wikia.nocookie.net/naruto/images/9/9f/M%C5%AB_enquanto_vivo.PNG/revision/latest/scale-to-width-down/310?cb=20160713115231&path-prefix=pt-br	459
472	Boruto	https://vignette.wikia.nocookie.net/naruto/images/3/3e/Kurotsuchi_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20200330040322&path-prefix=pt-br	371
477	Kusuma.png	https://vignette.wikia.nocookie.net/naruto/images/4/47/Kusuma.png/revision/latest/scale-to-width-down/236?cb=20160210124736&path-prefix=pt-br	376
478	Kusushi.png	https://vignette.wikia.nocookie.net/naruto/images/f/f4/Kusushi.png/revision/latest/scale-to-width-down/310?cb=20140805034858&path-prefix=pt-br	377
492	Geral	https://vignette.wikia.nocookie.net/naruto/images/6/66/Leo_Full.png/revision/latest?cb=20140821030044&path-prefix=pt-br	389
525	Michy.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/f6/Michy.PNG/revision/latest/scale-to-width-down/310?cb=20160210224249&path-prefix=pt-br	417
527	Geral	https://vignette.wikia.nocookie.net/naruto/images/b/ba/Midare_Corpo_Inteiro.PNG/revision/latest/scale-to-width-down/228?cb=20130131203639&path-prefix=pt-br	418
528	Midori.png	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Midori.png/revision/latest/scale-to-width-down/310?cb=20130522235235&path-prefix=pt-br	419
554	Mitsuo.PNG	https://vignette.wikia.nocookie.net/naruto/images/d/d7/Mitsuo.PNG/revision/latest/scale-to-width-down/310?cb=20160616125936&path-prefix=pt-br	437
570	Mozuku.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/3a/Mozuku.PNG/revision/latest/scale-to-width-down/310?cb=20191231174538&path-prefix=pt-br	451
474	Kusabi.png	https://vignette.wikia.nocookie.net/naruto/images/6/60/Kusabi.png/revision/latest/scale-to-width-down/310?cb=20150707195444&path-prefix=pt-br	373
485	Kō.png	https://vignette.wikia.nocookie.net/naruto/images/5/5a/K%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20130813144614&path-prefix=pt-br	383
486	Koji.png	https://vignette.wikia.nocookie.net/naruto/images/f/f2/Koji.png/revision/latest?cb=20180517190244&path-prefix=pt-br	384
488	Kosuke.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/3e/Kosuke.PNG/revision/latest/scale-to-width-down/310?cb=20130710181222&path-prefix=pt-br	386
494	Passado	https://vignette.wikia.nocookie.net/naruto/images/c/c3/Madara_Uchiha_%28Passado%29.png/revision/latest/scale-to-width-down/310?cb=20150707135022&path-prefix=pt-br	391
475	Kushimaru Kuriarare.PNG	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Kushimaru_Kuriarare.PNG/revision/latest/scale-to-width-down/310?cb=20140909222948&path-prefix=pt-br	374
483	Passado	https://vignette.wikia.nocookie.net/naruto/images/e/e7/Kyusuke.png/revision/latest/scale-to-width-down/310?cb=20140123234014&path-prefix=pt-br	382
487	Kōmei (HD).png	https://vignette.wikia.nocookie.net/naruto/images/a/aa/K%C5%8Dmei_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213152553&path-prefix=pt-br	385
495	Fase II	https://vignette.wikia.nocookie.net/naruto/images/6/69/Madara_Uchiha_Edo.png/revision/latest/scale-to-width-down/310?cb=20130725191155&path-prefix=pt-br	391
498	Mai Kagetsu.png	https://vignette.wikia.nocookie.net/naruto/images/e/e3/Mai_Kagetsu.png/revision/latest/scale-to-width-down/310?cb=20160621223916&path-prefix=pt-br	394
507	Mari.PNG	https://vignette.wikia.nocookie.net/naruto/images/d/d3/Mari.PNG/revision/latest/scale-to-width-down/310?cb=20140720215641&path-prefix=pt-br	403
513	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/4d/Matsuri_Suna.PNG/revision/latest/scale-to-width-down/310?cb=20130728184605&path-prefix=pt-br	408
514	Mebuki (HD).png	https://vignette.wikia.nocookie.net/naruto/images/0/02/Mebuki_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213202501&path-prefix=pt-br	409
530	Parte II	https://vignette.wikia.nocookie.net/naruto/images/8/89/Mifune.PNG/revision/latest/scale-to-width-down/310?cb=20140804013302&path-prefix=pt-br	420
545	Miroku (HD).png	https://vignette.wikia.nocookie.net/naruto/images/2/27/Miroku_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213144841&path-prefix=pt-br	430
555	Mizuki.png	https://vignette.wikia.nocookie.net/naruto/images/9/9c/Mizuki.png/revision/latest/scale-to-width-down/310?cb=20131231145315&path-prefix=pt-br	438
564	Momoshiki.jpg	https://vignette.wikia.nocookie.net/naruto/images/6/68/Momoshiki.jpg/revision/latest/scale-to-width-down/310?cb=20180515230205&path-prefix=pt-br	445
575	Passado	https://vignette.wikia.nocookie.net/naruto/images/a/ac/Muku_%28Crian%C3%A7a_-_Filme%29.PNG/revision/latest/scale-to-width-down/310?cb=20150705175212&path-prefix=pt-br	455
578	Guerra	https://vignette.wikia.nocookie.net/naruto/images/6/6d/Muta_Aburame.PNG/revision/latest/scale-to-width-down/310?cb=20130226201238&path-prefix=pt-br	457
476	Kushina Uzumaki.png	https://vignette.wikia.nocookie.net/naruto/images/e/e8/Kushina_Uzumaki.png/revision/latest/scale-to-width-down/310?cb=20160112142559&path-prefix=pt-br	375
479	Kuchiyose (Kyodaigumo-Guerra).PNG	https://vignette.wikia.nocookie.net/naruto/images/0/03/Kuchiyose_%28Kyodaigumo-Guerra%29.PNG/revision/latest/scale-to-width-down/310?cb=20140402032045&path-prefix=pt-br	378
524	Michiru Tsuki.png	https://vignette.wikia.nocookie.net/naruto/images/0/08/Michiru_Tsuki.png/revision/latest/scale-to-width-down/310?cb=20141102111017&path-prefix=pt-br	416
559	Boruto	https://vignette.wikia.nocookie.net/naruto/images/1/15/Moegi_Kazamatsuri_-_Parte_IV.png/revision/latest/scale-to-width-down/310?cb=20200330040432&path-prefix=pt-br	440
562	Momiji (Tanzaku).png	https://vignette.wikia.nocookie.net/naruto/images/4/42/Momiji_%28Tanzaku%29.png/revision/latest?cb=20160206213741&path-prefix=pt-br	443
574	Mukade.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/fc/Mukade.PNG/revision/latest/scale-to-width-down/310?cb=20120904015428&path-prefix=pt-br	454
579	Parte II	https://vignette.wikia.nocookie.net/naruto/images/f/fe/Muta_Aburame.png/revision/latest?cb=20130728192708&path-prefix=pt-br	457
481	Kyoya.png	https://vignette.wikia.nocookie.net/naruto/images/7/7e/Kyoya.png/revision/latest/scale-to-width-down/310?cb=20141220100049&path-prefix=pt-br	380
502	Malice.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/35/Malice.PNG/revision/latest/scale-to-width-down/310?cb=20140922231407&path-prefix=pt-br	398
506	Mangetsu Hozuki.PNG	https://vignette.wikia.nocookie.net/naruto/images/6/69/Mangetsu_Hozuki.PNG/revision/latest/scale-to-width-down/310?cb=20130815195700&path-prefix=pt-br	402
516	Parte II	https://vignette.wikia.nocookie.net/naruto/images/5/51/Mecha-Kurama.png/revision/latest/scale-to-width-down/310?cb=20140915000014&path-prefix=pt-br	410
529	Guerra	https://vignette.wikia.nocookie.net/naruto/images/e/e1/Mifune_%28Guerra%29.png/revision/latest/scale-to-width-down/310?cb=20130731211952&path-prefix=pt-br	420
539	Mikoto Uchiha.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/76/Mikoto_Uchiha.PNG/revision/latest/scale-to-width-down/310?cb=20121118181500&path-prefix=pt-br	426
540	Passado	https://vignette.wikia.nocookie.net/naruto/images/6/63/Minato_Namikaze_%28Infobox_-_Parte_I%29.PNG/revision/latest/scale-to-width-down/310?cb=20141127124321&path-prefix=pt-br	427
549	Quando Jovem	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Mito_Jovem.png/revision/latest/scale-to-width-down/310?cb=20150815224412&path-prefix=pt-br	434
558	Fase II	https://vignette.wikia.nocookie.net/naruto/images/b/bf/Moegi.png/revision/latest/scale-to-width-down/310?cb=20130611155747&path-prefix=pt-br	440
567	Símbolo Monzaemon.svg	https://vignette.wikia.nocookie.net/naruto/images/a/a3/S%C3%ADmbolo_Monzaemon.svg/revision/latest/scale-to-width-down/300?cb=20121119135313&path-prefix=pt-br	448
568	Morio.png	https://vignette.wikia.nocookie.net/naruto/images/c/cb/Morio.png/revision/latest/scale-to-width-down/310?cb=20150105051245&path-prefix=pt-br	449
573	Mui (Infobox - Definitiva).PNG	https://vignette.wikia.nocookie.net/naruto/images/1/19/Mui_%28Infobox_-_Definitiva%29.PNG/revision/latest/scale-to-width-down/310?cb=20150807213649&path-prefix=pt-br	453
577	Murasame.png	https://vignette.wikia.nocookie.net/naruto/images/4/4a/Murasame.png/revision/latest/scale-to-width-down/310?cb=20160229143634&path-prefix=pt-br	456
482	Kyūroku Wagarashi.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/ea/Ky%C5%ABroku_Wagarashi.PNG/revision/latest/scale-to-width-down/310?cb=20150111184637&path-prefix=pt-br	381
489	Kū.png	https://vignette.wikia.nocookie.net/naruto/images/2/2c/K%C5%AB.png/revision/latest/scale-to-width-down/310?cb=20190123093846&path-prefix=pt-br	387
497	Mahiru (HD).png	https://vignette.wikia.nocookie.net/naruto/images/7/71/Mahiru_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160304150252&path-prefix=pt-br	393
508	Maruten Akimichi.png	https://vignette.wikia.nocookie.net/naruto/images/5/5a/Maruten_Akimichi.png/revision/latest/scale-to-width-down/310?cb=20141109160145&path-prefix=pt-br	404
509	Nibi.png	https://vignette.wikia.nocookie.net/naruto/images/3/34/Nibi.png/revision/latest/scale-to-width-down/310?cb=20131014134858&path-prefix=pt-br	405
522	Menma Uzumaki (Infobox - Definitiva).PNG	https://vignette.wikia.nocookie.net/naruto/images/6/6f/Menma_Uzumaki_%28Infobox_-_Definitiva%29.PNG/revision/latest/scale-to-width-down/310?cb=20150830174503&path-prefix=pt-br	414
547	Misuno -2-.png	https://vignette.wikia.nocookie.net/naruto/images/a/a3/Misuno_-2-.png/revision/latest?cb=20180226190505&path-prefix=pt-br	432
563	Momo.png	https://vignette.wikia.nocookie.net/naruto/images/d/d2/Momo.png/revision/latest/scale-to-width-down/310?cb=20190401152940&path-prefix=pt-br	444
571	Parte I	https://vignette.wikia.nocookie.net/naruto/images/e/e2/Mubi.png/revision/latest/scale-to-width-down/310?cb=20150608180509&path-prefix=pt-br	452
490	Lando.png	https://vignette.wikia.nocookie.net/naruto/images/5/58/Lando.png/revision/latest/scale-to-width-down/310?cb=20121129204416&path-prefix=pt-br	388
491	Parte II	https://vignette.wikia.nocookie.net/naruto/images/1/1d/Leo.png/revision/latest/scale-to-width-down/310?cb=20121130132230&path-prefix=pt-br	389
493	Mabui.png	https://vignette.wikia.nocookie.net/naruto/images/d/d3/Mabui.png/revision/latest/scale-to-width-down/310?cb=20120906173118&path-prefix=pt-br	390
500	Maki.png	https://vignette.wikia.nocookie.net/naruto/images/2/21/Maki.png/revision/latest/scale-to-width-down/310?cb=20121103132357&path-prefix=pt-br	396
503	Manabu Akado (2).png	https://vignette.wikia.nocookie.net/naruto/images/7/73/Manabu_Akado_%282%29.png/revision/latest/scale-to-width-down/310?cb=20160215071551&path-prefix=pt-br	399
517	Geral	https://vignette.wikia.nocookie.net/naruto/images/4/4d/Mecha-Naruto.png/revision/latest/scale-to-width-down/310?cb=20140624003501&path-prefix=pt-br	411
536	Geral	https://vignette.wikia.nocookie.net/naruto/images/f/fc/Miina_Full.png/revision/latest?cb=20140821030231&path-prefix=pt-br	424
543	Boruto	https://vignette.wikia.nocookie.net/naruto/images/1/10/Mirai_Sarutobi_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20190617001000&path-prefix=pt-br	429
548	Mitate.png	https://vignette.wikia.nocookie.net/naruto/images/3/39/Mitate.png/revision/latest/scale-to-width-down/310?cb=20130807090127&path-prefix=pt-br	433
580	Geral	https://vignette.wikia.nocookie.net/naruto/images/e/e7/Muta_Aburame_%28full%29.png/revision/latest/scale-to-width-down/193?cb=20140821030514&path-prefix=pt-br	457
499	Makaro Akimichi.png	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Makaro_Akimichi.png/revision/latest/scale-to-width-down/310?cb=20141109150026&path-prefix=pt-br	395
512	Parte I	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Matsuri_Estudante.png/revision/latest/scale-to-width-down/310?cb=20130728184714&path-prefix=pt-br	408
518	Parte II	https://vignette.wikia.nocookie.net/naruto/images/7/73/Mecha-Naruto_%28Infobox_-_Anime%29.PNG/revision/latest/scale-to-width-down/310?cb=20140911120515&path-prefix=pt-br	411
519	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/c1/Mei_Terumi.png/revision/latest/scale-to-width-down/310?cb=20181031220154&path-prefix=pt-br	412
520	Boruto	https://vignette.wikia.nocookie.net/naruto/images/9/9d/Mei_Terumi_Parte_IV.png/revision/latest/scale-to-width-down/310?cb=20170929223445&path-prefix=pt-br	412
521	Meizu.PNG	https://vignette.wikia.nocookie.net/naruto/images/9/9a/Meizu.PNG/revision/latest/scale-to-width-down/281?cb=20121204114207&path-prefix=pt-br	413
523	Metal Lee (HD).png	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Metal_Lee_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20180923195533&path-prefix=pt-br	415
526	Naruto	https://vignette.wikia.nocookie.net/naruto/images/3/3c/Midare.PNG/revision/latest/scale-to-width-down/310?cb=20170520133958&path-prefix=pt-br	418
531	Geral	https://vignette.wikia.nocookie.net/naruto/images/f/fd/Mifune_%28Renderiza%C3%A7%C3%A3o%29.png/revision/latest/scale-to-width-down/301?cb=20140624032027&path-prefix=pt-br	420
533	Might Duy.png	https://vignette.wikia.nocookie.net/naruto/images/b/b7/Might_Duy.png/revision/latest/scale-to-width-down/310?cb=20150702201634&path-prefix=pt-br	422
534	Fase I-II	https://vignette.wikia.nocookie.net/naruto/images/3/31/Might_Guy.png/revision/latest/scale-to-width-down/310?cb=20200228191727&path-prefix=pt-br	423
535	Boruto	https://vignette.wikia.nocookie.net/naruto/images/a/a5/Might_Guy_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181104222718&path-prefix=pt-br	423
537	Naruto Shippūden	https://vignette.wikia.nocookie.net/naruto/images/d/db/Miina.png/revision/latest/scale-to-width-down/310?cb=20130423144934&path-prefix=pt-br	424
538	Mijin.png	https://vignette.wikia.nocookie.net/naruto/images/1/10/Mijin.png/revision/latest/scale-to-width-down/310?cb=20150123004605&path-prefix=pt-br	425
541	Fase II	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Minato_Namikaze_%28Edo%29.png/revision/latest/scale-to-width-down/310?cb=20140903043546&path-prefix=pt-br	427
542	Minoichi.png	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Minoichi.png/revision/latest/scale-to-width-down/310?cb=20170126174336&path-prefix=pt-br	428
544	Fase III	https://vignette.wikia.nocookie.net/naruto/images/5/58/Mirai_Sarutobi_%28Per%C3%ADodo_em_Branco%29.png/revision/latest/scale-to-width-down/310?cb=20170113123610&path-prefix=pt-br	429
546	Misumi Tsurugi.png	https://vignette.wikia.nocookie.net/naruto/images/c/c6/Misumi_Tsurugi.png/revision/latest/scale-to-width-down/310?cb=20150107094457&path-prefix=pt-br	431
550	Quando Idosa	https://vignette.wikia.nocookie.net/naruto/images/4/45/Uzumaki_Mito.png/revision/latest/scale-to-width-down/310?cb=20120204012644&path-prefix=pt-br	434
556	Mo.png	https://vignette.wikia.nocookie.net/naruto/images/d/d0/Mo.png/revision/latest/scale-to-width-down/310?cb=20160211190113&path-prefix=pt-br	439
557	Fase I	https://vignette.wikia.nocookie.net/naruto/images/c/ce/Moegi_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20150803125638&path-prefix=pt-br	440
560	Moguranmaru.png	https://vignette.wikia.nocookie.net/naruto/images/2/26/Moguranmaru.png/revision/latest/scale-to-width-down/310?cb=20150305172140&path-prefix=pt-br	441
561	Mogusa.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/f1/Mogusa.PNG/revision/latest?cb=20130320212141&path-prefix=pt-br	442
565	Monga.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/ea/Monga.PNG/revision/latest/scale-to-width-down/310?cb=20121025204601&path-prefix=pt-br	446
566	Monju (HD).png	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Monju_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160224140441&path-prefix=pt-br	447
569	Motoi.PNG	https://vignette.wikia.nocookie.net/naruto/images/a/a0/Motoi.PNG/revision/latest/scale-to-width-down/310?cb=20130620161059&path-prefix=pt-br	450
576	Fase II	https://vignette.wikia.nocookie.net/naruto/images/1/1e/Muku_%28Infobox_-_Filme%29.PNG/revision/latest/scale-to-width-down/310?cb=20150705160408&path-prefix=pt-br	455
581	Muyami.png	https://vignette.wikia.nocookie.net/naruto/images/c/c3/Muyami.png/revision/latest?cb=20160212172135&path-prefix=pt-br	458
583	Parte I	https://vignette.wikia.nocookie.net/naruto/images/1/19/Nadare_R%C5%8Dga.png/revision/latest/scale-to-width-down/310?cb=20140629024125&path-prefix=pt-br	460
584	Geral	https://vignette.wikia.nocookie.net/naruto/images/f/f9/Nadare_R%C5%8Dga_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429160507&path-prefix=pt-br	460
585	Nae anime.png	https://vignette.wikia.nocookie.net/naruto/images/3/33/Nae_anime.png/revision/latest/scale-to-width-down/310?cb=20160129223512&path-prefix=pt-br	461
586	Parte I	https://vignette.wikia.nocookie.net/naruto/images/b/be/Nagare.png/revision/latest/scale-to-width-down/310?cb=20121109205626&path-prefix=pt-br	462
587	Geral	https://vignette.wikia.nocookie.net/naruto/images/7/77/Nagare_%28Render%29.png/revision/latest/scale-to-width-down/287?cb=20160429191202&path-prefix=pt-br	462
588	Passado	https://vignette.wikia.nocookie.net/naruto/images/7/7a/Nagato_Jovem.png/revision/latest/scale-to-width-down/310?cb=20200313165236&path-prefix=pt-br	463
589	Fase II	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Nagato-Edo.PNG/revision/latest/scale-to-width-down/310?cb=20141014222811&path-prefix=pt-br	463
590	Naka Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/a/ae/Naka_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20131115144110&path-prefix=pt-br	464
591	Namida.png	https://vignette.wikia.nocookie.net/naruto/images/1/1d/Namida.png/revision/latest/scale-to-width-down/310?cb=20200130204806&path-prefix=pt-br	465
592	Nan.png	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Nan.png/revision/latest/scale-to-width-down/310?cb=20160224112708&path-prefix=pt-br	466
593	Nanafushi (HD).png	https://vignette.wikia.nocookie.net/naruto/images/2/2d/Nanafushi_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160214182309&path-prefix=pt-br	467
594	Parte II	https://vignette.wikia.nocookie.net/naruto/images/1/17/Nang%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20140619194006&path-prefix=pt-br	468
595	Geral	https://vignette.wikia.nocookie.net/naruto/images/d/d4/Nang%C5%8D_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429181701&path-prefix=pt-br	468
596	Naori.png	https://vignette.wikia.nocookie.net/naruto/images/5/5a/Naori.png/revision/latest/scale-to-width-down/310?cb=20150404200700&path-prefix=pt-br	469
597	Fase I	https://vignette.wikia.nocookie.net/naruto/images/3/33/Naruto_Uzumaki_%28Parte_I_-_HD%29.png/revision/latest/scale-to-width-down/310?cb=20160316113315&path-prefix=pt-br	470
600	Natori.png	https://vignette.wikia.nocookie.net/naruto/images/c/c6/Natori.png/revision/latest/scale-to-width-down/310?cb=20140101194839&path-prefix=pt-br	471
601	Natsu.png	https://vignette.wikia.nocookie.net/naruto/images/9/90/Natsu.png/revision/latest/scale-to-width-down/310?cb=20130913005442&path-prefix=pt-br	472
604	Nawaki.png	https://vignette.wikia.nocookie.net/naruto/images/9/91/Nawaki.png/revision/latest/scale-to-width-down/310?cb=20120221141503&path-prefix=pt-br	475
598	Boruto	https://vignette.wikia.nocookie.net/naruto/images/c/ce/Naruto_Uzumaki_-_Fase_Boruto.png/revision/latest/scale-to-width-down/310?cb=20180303220658&path-prefix=pt-br	470
599	Fase II	https://vignette.wikia.nocookie.net/naruto/images/b/b1/Naruto_Uzumaki_%28Infobox_Parte_II_B%29.png/revision/latest/scale-to-width-down/310?cb=20160903113328&path-prefix=pt-br	470
602	Natsu Hyuga.png	https://vignette.wikia.nocookie.net/naruto/images/2/24/Natsu_Hyuga.png/revision/latest/scale-to-width-down/310?cb=20150606124904&path-prefix=pt-br	473
603	Nauma.png	https://vignette.wikia.nocookie.net/naruto/images/1/17/Nauma.png/revision/latest/scale-to-width-down/310?cb=20150112182850&path-prefix=pt-br	474
608	Mangá	https://vignette.wikia.nocookie.net/naruto/images/5/59/Nejiri_%28manga%29.png/revision/latest?cb=20160217120031&path-prefix=pt-br	477
610	Nekomata.png	https://vignette.wikia.nocookie.net/naruto/images/7/77/Nekomata.png/revision/latest/scale-to-width-down/310?cb=20150610211301&path-prefix=pt-br	479
612	Parte II	https://vignette.wikia.nocookie.net/naruto/images/5/5d/Ni.png/revision/latest?cb=20131104191723&path-prefix=pt-br	481
615	Nitora Take.png	https://vignette.wikia.nocookie.net/naruto/images/6/60/Nitora_Take.png/revision/latest/scale-to-width-down/310?cb=20180421141744&path-prefix=pt-br	483
629	Geral	https://vignette.wikia.nocookie.net/naruto/images/9/9e/Okisuke_%28Infobox_-_Rendeliza%C3%A7%C3%A3o%29.PNG/revision/latest/scale-to-width-down/250?cb=20140817220007&path-prefix=pt-br	493
664	Reto.png	https://vignette.wikia.nocookie.net/naruto/images/0/05/Reto.png/revision/latest/scale-to-width-down/310?cb=20170915200215&path-prefix=pt-br	519
689	Boruto	https://vignette.wikia.nocookie.net/naruto/images/5/56/Sai_em_Boruto.png/revision/latest/scale-to-width-down/310?cb=20180510113641&path-prefix=pt-br	540
691	Saisu Kamano (HD).png	https://vignette.wikia.nocookie.net/naruto/images/2/27/Saisu_Kamano_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160414202830&path-prefix=pt-br	542
692	Sajin.png	https://vignette.wikia.nocookie.net/naruto/images/a/a0/Sajin.png/revision/latest/scale-to-width-down/310?cb=20130602024925&path-prefix=pt-br	543
605	Fase I	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Neji_%28Parte_I%29.png/revision/latest/scale-to-width-down/310?cb=20200309134740&path-prefix=pt-br	476
606	Fase II	https://vignette.wikia.nocookie.net/naruto/images/0/0d/Neji_%28Shippuden%29.png/revision/latest/scale-to-width-down/310?cb=20140811195548&path-prefix=pt-br	476
621	Nurui.png	https://vignette.wikia.nocookie.net/naruto/images/c/c4/Nurui.png/revision/latest/scale-to-width-down/310?cb=20121115154505&path-prefix=pt-br	489
641	Parte II	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Pakkun.png/revision/latest/scale-to-width-down/310?cb=20140913223906&path-prefix=pt-br	502
653	Parte I	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Ranke.png/revision/latest/scale-to-width-down/310?cb=20160826151426&path-prefix=pt-br	512
660	Rashii (HD).png	https://vignette.wikia.nocookie.net/naruto/images/4/4c/Rashii_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160214194031&path-prefix=pt-br	515
661	Remon Yoimura.png	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Remon_Yoimura.png/revision/latest/scale-to-width-down/310?cb=20190723162032&path-prefix=pt-br	516
716	Passado	https://vignette.wikia.nocookie.net/naruto/images/2/26/Sasori_%28Passado%29.PNG/revision/latest/scale-to-width-down/310?cb=20141202201336&path-prefix=pt-br	560
607	Anime	https://vignette.wikia.nocookie.net/naruto/images/8/8d/Nejiri_%28anime%29.png/revision/latest/scale-to-width-down/310?cb=20160217120114&path-prefix=pt-br	477
609	Nekobaa.png	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Nekobaa.png/revision/latest/scale-to-width-down/310?cb=20150610223749&path-prefix=pt-br	478
611	Nerugui.png	https://vignette.wikia.nocookie.net/naruto/images/9/9c/Nerugui.png/revision/latest/scale-to-width-down/310?cb=20160929152734&path-prefix=pt-br	480
613	Geral	https://vignette.wikia.nocookie.net/naruto/images/9/9f/Ni_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429161618&path-prefix=pt-br	481
614	Nigai.PNG	https://vignette.wikia.nocookie.net/naruto/images/d/d8/Nigai.PNG/revision/latest/scale-to-width-down/310?cb=20121101235218&path-prefix=pt-br	482
616	Nobori.png	https://vignette.wikia.nocookie.net/naruto/images/4/47/Nobori.png/revision/latest/scale-to-width-down/310?cb=20160218130150&path-prefix=pt-br	484
617	Nonota.PNG	https://vignette.wikia.nocookie.net/naruto/images/c/c4/Nonota.PNG/revision/latest/scale-to-width-down/310?cb=20130117171351&path-prefix=pt-br	485
618	Nonou.png	https://vignette.wikia.nocookie.net/naruto/images/5/57/Nonou.png/revision/latest/scale-to-width-down/310?cb=20131031201027&path-prefix=pt-br	486
619	Nue.png	https://vignette.wikia.nocookie.net/naruto/images/1/1c/Nue.png/revision/latest/scale-to-width-down/310?cb=20170705163201&path-prefix=pt-br	487
620	Nurari.png	https://vignette.wikia.nocookie.net/naruto/images/b/b9/Nurari.png/revision/latest/scale-to-width-down/310?cb=20170815202855&path-prefix=pt-br	488
622	Obito	https://vignette.wikia.nocookie.net/naruto/images/2/28/Obito_%28Guerra%29.png/revision/latest/scale-to-width-down/310?cb=20141219124512&path-prefix=pt-br	490
623	Tobi	https://vignette.wikia.nocookie.net/naruto/images/7/72/Tobi.png/revision/latest/scale-to-width-down/310?cb=20151106021620&path-prefix=pt-br	490
624	Passado	https://vignette.wikia.nocookie.net/naruto/images/8/82/Uchila_Obito.jpeg/revision/latest/scale-to-width-down/310?cb=20180622115708&path-prefix=pt-br	490
625	Oboro.png	https://vignette.wikia.nocookie.net/naruto/images/7/74/Oboro.png/revision/latest/scale-to-width-down/310?cb=20150416204003&path-prefix=pt-br	491
626	Okami.png	https://vignette.wikia.nocookie.net/naruto/images/0/03/Okami.png/revision/latest/scale-to-width-down/310?cb=20160212170534&path-prefix=pt-br	492
627	Parte II	https://vignette.wikia.nocookie.net/naruto/images/e/e3/Okisuke.png/revision/latest?cb=20130107222023&path-prefix=pt-br	493
628	Guerra	https://vignette.wikia.nocookie.net/naruto/images/6/69/Okisuke_%28Samurai%29.png/revision/latest/scale-to-width-down/310?cb=20150103100604&path-prefix=pt-br	493
630	Okyō.png	https://vignette.wikia.nocookie.net/naruto/images/5/5f/Oky%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20160215001221&path-prefix=pt-br	494
631	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Omoi_-_Parte_II.png/revision/latest/scale-to-width-down/310?cb=20160526154333&path-prefix=pt-br	495
632	Parte IV	https://vignette.wikia.nocookie.net/naruto/images/6/6a/Omoi_%28Ep%C3%ADlogo%29.png/revision/latest?cb=20141202223901&path-prefix=pt-br	495
633	Fase I-II	https://vignette.wikia.nocookie.net/naruto/images/0/07/Orochimaru.PNG/revision/latest/scale-to-width-down/310?cb=20151006181637&path-prefix=pt-br	496
634	Boruto	https://vignette.wikia.nocookie.net/naruto/images/d/da/Orochimaru_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20180402233439&path-prefix=pt-br	496
635	Pai de Musai.png	https://vignette.wikia.nocookie.net/naruto/images/e/e2/Pai_de_Musai.png/revision/latest/scale-to-width-down/310?cb=20130606163447&path-prefix=pt-br	497
636	Mangá	https://vignette.wikia.nocookie.net/naruto/images/0/09/Otoha_%28manga%29.png/revision/latest/scale-to-width-down/310?cb=20160218110535&path-prefix=pt-br	498
637	Anime	https://vignette.wikia.nocookie.net/naruto/images/4/47/Otoha_%28anime%29.png/revision/latest/scale-to-width-down/310?cb=20160218110459&path-prefix=pt-br	498
638	Otokaze.png	https://vignette.wikia.nocookie.net/naruto/images/2/29/Otokaze.png/revision/latest/scale-to-width-down/310?cb=20150615214631&path-prefix=pt-br	499
639	Oyone.png	https://vignette.wikia.nocookie.net/naruto/images/1/19/Oyone.png/revision/latest/scale-to-width-down/310?cb=20150615210620&path-prefix=pt-br	500
640	Pac Lee.png	https://vignette.wikia.nocookie.net/naruto/images/8/89/Pac_Lee.png/revision/latest?cb=20161103131358&path-prefix=pt-br	501
642	Parte I	https://vignette.wikia.nocookie.net/naruto/images/0/04/Pakkun_%28Parte_I%29.png/revision/latest/scale-to-width-down/310?cb=20140913223949&path-prefix=pt-br	502
643	Passado	https://vignette.wikia.nocookie.net/naruto/images/c/c0/Pakura_viva.png/revision/latest/scale-to-width-down/310?cb=20131022040417&path-prefix=pt-br	503
644	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/40/Paruka.png/revision/latest/scale-to-width-down/310?cb=20120605220236&path-prefix=pt-br	503
645	Panda Gigante.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/34/Panda_Gigante.PNG/revision/latest/scale-to-width-down/310?cb=20140902234304&path-prefix=pt-br	504
646	Pochi.PNG	https://vignette.wikia.nocookie.net/naruto/images/1/1f/Pochi.PNG/revision/latest/scale-to-width-down/310?cb=20140902222538&path-prefix=pt-br	505
647	Potcha.png	https://vignette.wikia.nocookie.net/naruto/images/8/80/Potcha.png/revision/latest/scale-to-width-down/310?cb=20160305135858&path-prefix=pt-br	506
648	Rai Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/5/5a/Rai_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20131115134113&path-prefix=pt-br	508
649	Parte I	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Raido_Namiashi.png/revision/latest/scale-to-width-down/310?cb=20111108130821&path-prefix=pt-br	509
650	Parte II	https://vignette.wikia.nocookie.net/naruto/images/2/2a/Raido_Namiashi_-_Guerra.png/revision/latest/scale-to-width-down/310?cb=20140428225352&path-prefix=pt-br	509
651	Raiga.png	https://vignette.wikia.nocookie.net/naruto/images/c/c8/Raiga.png/revision/latest/scale-to-width-down/310?cb=20110619222943&path-prefix=pt-br	510
652	Raimei.png	https://vignette.wikia.nocookie.net/naruto/images/f/f8/Raimei.png/revision/latest/scale-to-width-down/310?cb=20161211123917&path-prefix=pt-br	511
654	Geral	https://vignette.wikia.nocookie.net/naruto/images/5/5e/Ranke_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429154125&path-prefix=pt-br	512
655	Ranmaru (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/e/eb/Ranmaru_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20141216125730&path-prefix=pt-br	513
656	Parte I	https://vignette.wikia.nocookie.net/naruto/images/2/24/Yondaime_Kazekage.png/revision/latest/scale-to-width-down/310?cb=20140901151423&path-prefix=pt-br	514
672	Boruto	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Lee_%28Parte_IV%29.png/revision/latest/scale-to-width-down/310?cb=20160704020337&path-prefix=pt-br	525
679	Ryuugan.png	https://vignette.wikia.nocookie.net/naruto/images/e/ef/Ryuugan.png/revision/latest/scale-to-width-down/310?cb=20130726140855&path-prefix=pt-br	531
681	Ryūsa.png	https://vignette.wikia.nocookie.net/naruto/images/6/60/Ry%C5%ABsa.png/revision/latest/scale-to-width-down/310?cb=20160221155909&path-prefix=pt-br	533
687	Sagi.png	https://vignette.wikia.nocookie.net/naruto/images/0/0f/Sagi.png/revision/latest/scale-to-width-down/310?cb=20121109000608&path-prefix=pt-br	539
708	Sandayū Asama (Infobox - Filme).PNG	https://vignette.wikia.nocookie.net/naruto/images/d/d2/Sanday%C5%AB_Asama_%28Infobox_-_Filme%29.PNG/revision/latest/scale-to-width-down/310?cb=20150520201636&path-prefix=pt-br	553
710	Sanshou.png	https://vignette.wikia.nocookie.net/naruto/images/6/6b/Sanshou.png/revision/latest/scale-to-width-down/310?cb=20130305043709&path-prefix=pt-br	555
713	SaradaUchiha.png	https://vignette.wikia.nocookie.net/naruto/images/b/b6/SaradaUchiha.png/revision/latest/scale-to-width-down/310?cb=20181104154136&path-prefix=pt-br	557
657	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/4e/Quarto_Kazekage-anime.PNG/revision/latest/scale-to-width-down/310?cb=20130124154904&path-prefix=pt-br	514
684	Roshi.png	https://vignette.wikia.nocookie.net/naruto/images/c/c9/Roshi.png/revision/latest/scale-to-width-down/310?cb=20170302215734&path-prefix=pt-br	536
695	Passado	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Sakumo_Hatake.png/revision/latest/scale-to-width-down/310?cb=20130711202357&path-prefix=pt-br	546
658	Passado	https://vignette.wikia.nocookie.net/naruto/images/4/4a/Quarto_Kazekage_vivo.PNG/revision/latest/scale-to-width-down/310?cb=20130611184610&path-prefix=pt-br	514
677	Ryōgi.png	https://vignette.wikia.nocookie.net/naruto/images/b/b3/Ry%C5%8Dgi.png/revision/latest/scale-to-width-down/310?cb=20180207182053&path-prefix=pt-br	529
690	Saiken (Infobox - Parte II).PNG	https://vignette.wikia.nocookie.net/naruto/images/0/0a/Saiken_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20140619013037&path-prefix=pt-br	541
706	Geral	https://vignette.wikia.nocookie.net/naruto/images/d/d0/San_%28Rederiza%C3%A7%C3%A3o%29.png/revision/latest/scale-to-width-down/310?cb=20150729013948&path-prefix=pt-br	551
714	Sari.PNG	https://vignette.wikia.nocookie.net/naruto/images/4/47/Sari.PNG/revision/latest/scale-to-width-down/310?cb=20121125134743&path-prefix=pt-br	558
659	Geral	https://vignette.wikia.nocookie.net/naruto/images/0/07/Quarto_Kazekage_%28Renderiza%C3%A7%C3%A3o%29.png/revision/latest/scale-to-width-down/223?cb=20140624001133&path-prefix=pt-br	514
667	Rin.png	https://vignette.wikia.nocookie.net/naruto/images/8/87/Rin.png/revision/latest/scale-to-width-down/310?cb=20150815120533&path-prefix=pt-br	522
668	Aparência de Rinji.png	https://vignette.wikia.nocookie.net/naruto/images/6/63/Apar%C3%AAncia_de_Rinji.png/revision/latest/scale-to-width-down/310?cb=20170815203058&path-prefix=pt-br	523
671	Fase II	https://vignette.wikia.nocookie.net/naruto/images/8/81/Rock_Lee.png/revision/latest/scale-to-width-down/310?cb=20130729004436&path-prefix=pt-br	525
673	Rokkaku Ryuudōin.PNG	https://vignette.wikia.nocookie.net/naruto/images/a/a9/Rokkaku_Ryuud%C5%8Din.PNG/revision/latest/scale-to-width-down/310?cb=20121112142125&path-prefix=pt-br	526
675	Parte II	https://vignette.wikia.nocookie.net/naruto/images/9/9e/Ruka.png/revision/latest/scale-to-width-down/310?cb=20121026205935&path-prefix=pt-br	528
683	Ryuzetsu.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/e3/Ryuzetsu.PNG/revision/latest/scale-to-width-down/310?cb=20130112052232&path-prefix=pt-br	535
688	Fase II	https://vignette.wikia.nocookie.net/naruto/images/d/d3/Sai.png/revision/latest/scale-to-width-down/310?cb=20130729140621&path-prefix=pt-br	540
693	Sajin Genin2.png	https://vignette.wikia.nocookie.net/naruto/images/8/8f/Sajin_Genin2.png/revision/latest/scale-to-width-down/310?cb=20150129193748&path-prefix=pt-br	544
694	Sajo.png	https://vignette.wikia.nocookie.net/naruto/images/e/e5/Sajo.png/revision/latest/scale-to-width-down/310?cb=20130819183023&path-prefix=pt-br	545
700	Parte I	https://vignette.wikia.nocookie.net/naruto/images/9/90/Samidare.PNG/revision/latest/scale-to-width-down/310?cb=20160203005045&path-prefix=pt-br	548
702	Samo.png	https://vignette.wikia.nocookie.net/naruto/images/5/5d/Samo.png/revision/latest?cb=20130809131430&path-prefix=pt-br	549
705	Parte II	https://vignette.wikia.nocookie.net/naruto/images/7/7d/San.png/revision/latest?cb=20150412135914&path-prefix=pt-br	551
709	Sangoro.png	https://vignette.wikia.nocookie.net/naruto/images/3/30/Sangoro.png/revision/latest/scale-to-width-down/310?cb=20160211164103&path-prefix=pt-br	554
715	Sasami.png	https://vignette.wikia.nocookie.net/naruto/images/b/b1/Sasami.png/revision/latest/scale-to-width-down/310?cb=20190401153003&path-prefix=pt-br	559
662	Renga.png	https://vignette.wikia.nocookie.net/naruto/images/b/be/Renga.png/revision/latest/scale-to-width-down/310?cb=20160131231403&path-prefix=pt-br	517
666	Rikumaru.png	https://vignette.wikia.nocookie.net/naruto/images/2/24/Rikumaru.png/revision/latest/scale-to-width-down/310?cb=20160831002217&path-prefix=pt-br	521
674	Rokusuke.png	https://vignette.wikia.nocookie.net/naruto/images/3/3e/Rokusuke.png/revision/latest/scale-to-width-down/310?cb=20160211164148&path-prefix=pt-br	527
701	Geral	https://vignette.wikia.nocookie.net/naruto/images/3/3f/Samidare_%28Render%29.png/revision/latest/scale-to-width-down/264?cb=20160429231443&path-prefix=pt-br	548
712	Geral	https://vignette.wikia.nocookie.net/naruto/images/9/93/Santa_Yamanaka_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429180603&path-prefix=pt-br	556
663	Renga Kokubō.png	https://vignette.wikia.nocookie.net/naruto/images/8/85/Renga_Kokub%C5%8D.png/revision/latest?cb=20171227005907&path-prefix=pt-br	518
676	Geral	https://vignette.wikia.nocookie.net/naruto/images/a/aa/Ruka_Corpo_Inteiro.png/revision/latest?cb=20140803170226&path-prefix=pt-br	528
680	Ryūki.png	https://vignette.wikia.nocookie.net/naruto/images/2/24/Ry%C5%ABki.png/revision/latest/scale-to-width-down/310?cb=20190617000949&path-prefix=pt-br	532
696	Geral	https://vignette.wikia.nocookie.net/naruto/images/a/aa/Sakumo_Hatake_%28Render%29.png/revision/latest/scale-to-width-down/310?cb=20160429143837&path-prefix=pt-br	546
699	Boruto	https://vignette.wikia.nocookie.net/naruto/images/4/4e/Sakura_Uchiha.png/revision/latest?cb=20180508173625&path-prefix=pt-br	547
704	Geral	https://vignette.wikia.nocookie.net/naruto/images/0/06/Samui_%28Render%29.png/revision/latest/scale-to-width-down/206?cb=20160509182254&path-prefix=pt-br	550
711	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Santa_Yamanaka.PNG/revision/latest?cb=20120608023529&path-prefix=pt-br	556
718	Fase I	https://vignette.wikia.nocookie.net/naruto/images/e/e7/Sasuke_epi_319.png/revision/latest/scale-to-width-down/310?cb=20130629210647&path-prefix=pt-br	562
665	Riichi (ninja).png	https://vignette.wikia.nocookie.net/naruto/images/c/c2/Riichi_%28ninja%29.png/revision/latest/scale-to-width-down/310?cb=20130611152636&path-prefix=pt-br	520
678	Ryokan.png	https://vignette.wikia.nocookie.net/naruto/images/0/03/Ryokan.png/revision/latest/scale-to-width-down/310?cb=20160213163858&path-prefix=pt-br	530
685	Sabu.png	https://vignette.wikia.nocookie.net/naruto/images/8/8a/Sabu.png/revision/latest/scale-to-width-down/310?cb=20141212005404&path-prefix=pt-br	537
686	Sadai.png	https://vignette.wikia.nocookie.net/naruto/images/0/03/Sadai.png/revision/latest/scale-to-width-down/310?cb=20150811115629&path-prefix=pt-br	538
697	Fase I	https://vignette.wikia.nocookie.net/naruto/images/c/cf/Sakura_%28Naruto_Cl%C3%A1ssico%29.png/revision/latest/scale-to-width-down/310?cb=20180211141243&path-prefix=pt-br	547
717	Fase II	https://vignette.wikia.nocookie.net/naruto/images/7/7b/Sasori_%28Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20141202202433&path-prefix=pt-br	560
669	Rinoceronte Gigante.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/00/Rinoceronte_Gigante.PNG/revision/latest/scale-to-width-down/310?cb=20160630102400&path-prefix=pt-br	524
670	Fase I	https://vignette.wikia.nocookie.net/naruto/images/9/97/Rock_Lee_Part_I.png/revision/latest/scale-to-width-down/310?cb=20160926212512&path-prefix=pt-br	525
682	Ryūsui.png	https://vignette.wikia.nocookie.net/naruto/images/9/9f/Ry%C5%ABsui.png/revision/latest/scale-to-width-down/310?cb=20140812144748&path-prefix=pt-br	534
698	Fase II	https://vignette.wikia.nocookie.net/naruto/images/5/5c/Sakura_na_Parte_II.png/revision/latest/scale-to-width-down/310?cb=20140609170219&path-prefix=pt-br	547
703	Parte II	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Samui.PNG/revision/latest/scale-to-width-down/310?cb=20130521054426&path-prefix=pt-br	550
707	Sana.png	https://vignette.wikia.nocookie.net/naruto/images/1/11/Sana.png/revision/latest?cb=20150417001854&path-prefix=pt-br	552
719	Fase II	https://vignette.wikia.nocookie.net/naruto/images/f/ff/Sasuke.png/revision/latest/scale-to-width-down/310?cb=20160521001059&path-prefix=pt-br	562
720	Boruto	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Uchiha_Sasuke_%28Parte_IV%29.png/revision/latest/scale-to-width-down/310?cb=20160731233945&path-prefix=pt-br	562
721	Satori.png	https://vignette.wikia.nocookie.net/naruto/images/c/c1/Satori.png/revision/latest/scale-to-width-down/310?cb=20150703225258&path-prefix=pt-br	563
722	Sazanami Senka.png	https://vignette.wikia.nocookie.net/naruto/images/0/03/Sazanami_Senka.png/revision/latest?cb=20180506191455&path-prefix=pt-br	564
723	Saō.png	https://vignette.wikia.nocookie.net/naruto/images/4/4d/Sa%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20180916135022&path-prefix=pt-br	565
724	Aparência de Seimei.png	https://vignette.wikia.nocookie.net/naruto/images/4/49/Apar%C3%AAncia_de_Seimei.png/revision/latest/scale-to-width-down/310?cb=20141021150424&path-prefix=pt-br	566
725	Seito.png	https://vignette.wikia.nocookie.net/naruto/images/a/ab/Seito.png/revision/latest/scale-to-width-down/310?cb=20150116140158&path-prefix=pt-br	567
726	Sekiei-infobox.png	https://vignette.wikia.nocookie.net/naruto/images/f/f8/Sekiei-infobox.png/revision/latest/scale-to-width-down/310?cb=20190117212003&path-prefix=pt-br	568
727	Sekka.png	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Sekka.png/revision/latest/scale-to-width-down/310?cb=20160213161948&path-prefix=pt-br	569
728	Sekki.png	https://vignette.wikia.nocookie.net/naruto/images/7/78/Sekki.png/revision/latest/scale-to-width-down/310?cb=20190329141856&path-prefix=pt-br	570
729	Sen kunoichi.png	https://vignette.wikia.nocookie.net/naruto/images/e/ea/Sen_kunoichi.png/revision/latest/scale-to-width-down/310?cb=20150213010414&path-prefix=pt-br	571
730	Shabadaba.png	https://vignette.wikia.nocookie.net/naruto/images/4/4e/Shabadaba.png/revision/latest/scale-to-width-down/310?cb=20140722150059&path-prefix=pt-br	572
731	Segundo Kazekage (Anime).png	https://vignette.wikia.nocookie.net/naruto/images/7/73/Segundo_Kazekage_%28Anime%29.png/revision/latest/scale-to-width-down/310?cb=20141016180226&path-prefix=pt-br	573
732	Shibi.png	https://vignette.wikia.nocookie.net/naruto/images/b/b3/Shibi.png/revision/latest/scale-to-width-down/310?cb=20120102114728&path-prefix=pt-br	574
733	Parte II	https://vignette.wikia.nocookie.net/naruto/images/0/03/Shibire2.png/revision/latest/scale-to-width-down/310?cb=20150215202113&path-prefix=pt-br	575
734	Parte I	https://vignette.wikia.nocookie.net/naruto/images/8/8e/Shibire1.jpg/revision/latest/scale-to-width-down/310?cb=20150215202218&path-prefix=pt-br	575
735	Shibito Azuma.png	https://vignette.wikia.nocookie.net/naruto/images/0/02/Shibito_Azuma.png/revision/latest/scale-to-width-down/310?cb=20130626230840&path-prefix=pt-br	576
736	Shigure.png	https://vignette.wikia.nocookie.net/naruto/images/d/da/Shigure.png/revision/latest/scale-to-width-down/310?cb=20160821201023&path-prefix=pt-br	578
737	Shiho.png	https://vignette.wikia.nocookie.net/naruto/images/8/87/Shiho.png/revision/latest/scale-to-width-down/310?cb=20131221185730&path-prefix=pt-br	579
738	Shiin (HD).png	https://vignette.wikia.nocookie.net/naruto/images/8/82/Shiin_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213214032&path-prefix=pt-br	580
739	Aparência de Shikadai (Filme de Boruto).png	https://vignette.wikia.nocookie.net/naruto/images/2/2d/Apar%C3%AAncia_de_Shikadai_%28Filme_de_Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181202145304&path-prefix=pt-br	581
740	Fase I	https://vignette.wikia.nocookie.net/naruto/images/5/58/Shikaku_Nara_%28Infobox_Parte_I%29.png/revision/latest/scale-to-width-down/310?cb=20141208210519&path-prefix=pt-br	582
741	Fase II	https://vignette.wikia.nocookie.net/naruto/images/8/8f/Shikaku.png/revision/latest/scale-to-width-down/310?cb=20130801204615&path-prefix=pt-br	582
742	Geral	https://vignette.wikia.nocookie.net/naruto/images/c/c2/Shikaku_Corpo_Inteiro.PNG/revision/latest/scale-to-width-down/310?cb=20140823000331&path-prefix=pt-br	582
743	Fase I	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Shikamaru_Cl%C3%A1ssico.PNG/revision/latest/scale-to-width-down/310?cb=20191130212438&path-prefix=pt-br	583
744	Boruto	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Shikamaru_%28Ep%C3%ADlogo%29.png/revision/latest/scale-to-width-down/310?cb=20151227200439&path-prefix=pt-br	583
745	Fase II	https://vignette.wikia.nocookie.net/naruto/images/5/5e/Shikamaru_Nara_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20141109154344&path-prefix=pt-br	583
746	Shima.png	https://vignette.wikia.nocookie.net/naruto/images/6/69/Shima.png/revision/latest/scale-to-width-down/310?cb=20130630172834&path-prefix=pt-br	585
747	Shimeji.png	https://vignette.wikia.nocookie.net/naruto/images/1/19/Shimeji.png/revision/latest?cb=20160209135111&path-prefix=pt-br	586
748	Shimon Hijiri.png	https://vignette.wikia.nocookie.net/naruto/images/8/8a/Shimon_Hijiri.png/revision/latest/scale-to-width-down/310?cb=20130524012814&path-prefix=pt-br	587
749	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/64/Shin.png/revision/latest/scale-to-width-down/310?cb=20121009001618&path-prefix=pt-br	588
750	Passado	https://vignette.wikia.nocookie.net/naruto/images/e/e4/Shin_Vivo.png/revision/latest/scale-to-width-down/310?cb=20130730154849&path-prefix=pt-br	588
751	Shin'emon.png	https://vignette.wikia.nocookie.net/naruto/images/5/5f/Shin%27emon.png/revision/latest/scale-to-width-down/310?cb=20160308125054&path-prefix=pt-br	589
752	Shin uchiha perfil.png	https://vignette.wikia.nocookie.net/naruto/images/d/d5/Shin_uchiha_perfil.png/revision/latest/scale-to-width-down/310?cb=20170902155926&path-prefix=pt-br	590
775	Fase I-II	https://vignette.wikia.nocookie.net/naruto/images/7/76/Shizune_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160214195003&path-prefix=pt-br	610
780	Sora.png	https://vignette.wikia.nocookie.net/naruto/images/9/99/Sora.png/revision/latest/scale-to-width-down/310?cb=20141001161944&path-prefix=pt-br	615
782	Fase II	https://vignette.wikia.nocookie.net/naruto/images/3/37/Suigetsu_perfil.png/revision/latest/scale-to-width-down/310?cb=20140628170502&path-prefix=pt-br	617
753	Shinga.jpg	https://vignette.wikia.nocookie.net/naruto/images/d/dd/Shinga.jpg/revision/latest/scale-to-width-down/310?cb=20160220142140&path-prefix=pt-br	591
760	Boruto	https://vignette.wikia.nocookie.net/naruto/images/6/68/Shino_Professor.png/revision/latest/scale-to-width-down/310?cb=20170419181814&path-prefix=pt-br	596
770	Shitō Akimichi.png	https://vignette.wikia.nocookie.net/naruto/images/0/04/Shit%C5%8D_Akimichi.png/revision/latest/scale-to-width-down/310?cb=20180929140902&path-prefix=pt-br	606
772	Shizuku.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/07/Shizuku.PNG/revision/latest/scale-to-width-down/310?cb=20160127195539&path-prefix=pt-br	608
754	Minato faz o Shiki Fujin.png	https://vignette.wikia.nocookie.net/naruto/images/1/1a/Minato_faz_o_Shiki_Fujin.png/revision/latest/scale-to-width-down/310?cb=20131106213737&path-prefix=pt-br	592
758	Fase I	https://vignette.wikia.nocookie.net/naruto/images/f/f1/Shino_Aburame.PNG/revision/latest/scale-to-width-down/310?cb=20141018074459&path-prefix=pt-br	596
779	Son Gokū (Infobox - Parte II).PNG	https://vignette.wikia.nocookie.net/naruto/images/5/5e/Son_Gok%C5%AB_%28Infobox_-_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20140619012334&path-prefix=pt-br	614
781	Suguro.png	https://vignette.wikia.nocookie.net/naruto/images/5/53/Suguro.png/revision/latest/scale-to-width-down/310?cb=20160211134434&path-prefix=pt-br	616
755	Shinki.png	https://vignette.wikia.nocookie.net/naruto/images/7/78/Shinki.png/revision/latest/scale-to-width-down/310?cb=20191008125140&path-prefix=pt-br	593
764	Shiore.png	https://vignette.wikia.nocookie.net/naruto/images/c/c9/Shiore.png/revision/latest/scale-to-width-down/310?cb=20160915134645&path-prefix=pt-br	600
766	Shiseru.png	https://vignette.wikia.nocookie.net/naruto/images/6/66/Shiseru.png/revision/latest/scale-to-width-down/310?cb=20121122202435&path-prefix=pt-br	602
774	Boruto	https://vignette.wikia.nocookie.net/naruto/images/a/ae/Shizune_%28Epilogue%29.png/revision/latest?cb=20141119101054&path-prefix=pt-br	610
786	Suiu.png	https://vignette.wikia.nocookie.net/naruto/images/a/a4/Suiu.png/revision/latest?cb=20180227182138&path-prefix=pt-br	620
793	Sumire Kakei.png	https://vignette.wikia.nocookie.net/naruto/images/1/12/Sumire_Kakei.png/revision/latest/scale-to-width-down/310?cb=20170703221558&path-prefix=pt-br	627
812	Taku.png	https://vignette.wikia.nocookie.net/naruto/images/7/73/Taku.png/revision/latest/scale-to-width-down/310?cb=20120928132402&path-prefix=pt-br	648
813	Tamae.png	https://vignette.wikia.nocookie.net/naruto/images/6/66/Tamae.png/revision/latest/scale-to-width-down/310?cb=20160212133401&path-prefix=pt-br	649
827	Tatsuma Aburame.png	https://vignette.wikia.nocookie.net/naruto/images/b/bb/Tatsuma_Aburame.png/revision/latest/scale-to-width-down/310?cb=20141109192555&path-prefix=pt-br	660
829	Tayuya Viva.png	https://vignette.wikia.nocookie.net/naruto/images/8/86/Tayuya_Viva.png/revision/latest/scale-to-width-down/310?cb=20140603140005&path-prefix=pt-br	662
830	Parte I	https://vignette.wikia.nocookie.net/naruto/images/5/57/Tazuna_Parte_I.png/revision/latest/scale-to-width-down/310?cb=20141227150954&path-prefix=pt-br	663
832	Teguse.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Teguse.PNG/revision/latest/scale-to-width-down/310?cb=20140902002001&path-prefix=pt-br	664
844	Tentō.png	https://vignette.wikia.nocookie.net/naruto/images/7/74/Tent%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20170401214550&path-prefix=pt-br	671
855	Fase II	https://vignette.wikia.nocookie.net/naruto/images/1/11/Tobirama-Edo.png/revision/latest/scale-to-width-down/310?cb=20140625013945&path-prefix=pt-br	682
863	Tomaru Minakura.png	https://vignette.wikia.nocookie.net/naruto/images/7/74/Tomaru_Minakura.png/revision/latest?cb=20160221180216&path-prefix=pt-br	689
868	Tonton1.png	https://vignette.wikia.nocookie.net/naruto/images/7/7b/Tonton1.png/revision/latest/scale-to-width-down/310?cb=20130811202615&path-prefix=pt-br	693
756	Shinko Inari.PNG	https://vignette.wikia.nocookie.net/naruto/images/c/c2/Shinko_Inari.PNG/revision/latest/scale-to-width-down/310?cb=20160319210603&path-prefix=pt-br	594
777	Ichibi.png	https://vignette.wikia.nocookie.net/naruto/images/e/ea/Ichibi.png/revision/latest/scale-to-width-down/310?cb=20131015175254&path-prefix=pt-br	612
790	Sumaru .png	https://vignette.wikia.nocookie.net/naruto/images/b/ba/Sumaru_.png/revision/latest/scale-to-width-down/310?cb=20160110143328&path-prefix=pt-br	624
757	Pai de Kurenai.png	https://vignette.wikia.nocookie.net/naruto/images/4/40/Pai_de_Kurenai.png/revision/latest/scale-to-width-down/310?cb=20120210012706&path-prefix=pt-br	595
761	Shinobu Mibu.png	https://vignette.wikia.nocookie.net/naruto/images/e/e0/Shinobu_Mibu.png/revision/latest/scale-to-width-down/310?cb=20140603212551&path-prefix=pt-br	597
762	Shinta.png	https://vignette.wikia.nocookie.net/naruto/images/d/df/Shinta.png/revision/latest?cb=20160210183018&path-prefix=pt-br	598
759	Fase II	https://vignette.wikia.nocookie.net/naruto/images/9/92/Shino_Aburame-Shippuden.png/revision/latest/scale-to-width-down/310?cb=20140823001818&path-prefix=pt-br	596
763	Shion (HD).PNG	https://vignette.wikia.nocookie.net/naruto/images/f/f1/Shion_%28HD%29.PNG/revision/latest/scale-to-width-down/310?cb=20160610071200&path-prefix=pt-br	599
773	Shizuma.png	https://vignette.wikia.nocookie.net/naruto/images/f/f2/Shizuma.png/revision/latest/scale-to-width-down/310?cb=20171017053150&path-prefix=pt-br	609
783	Boruto	https://vignette.wikia.nocookie.net/naruto/images/2/21/Suigetsu_Part_IV.png/revision/latest/scale-to-width-down/310?cb=20181202140814&path-prefix=pt-br	617
784	Suika.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/e0/Suika.PNG/revision/latest/scale-to-width-down/310?cb=20160111180117&path-prefix=pt-br	618
787	Sukima.png	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Sukima.png/revision/latest/scale-to-width-down/310?cb=20160217141809&path-prefix=pt-br	621
788	Sukui - rosto.PNG	https://vignette.wikia.nocookie.net/naruto/images/e/ee/Sukui_-_rosto.PNG/revision/latest/scale-to-width-down/310?cb=20130405185106&path-prefix=pt-br	622
789	Sukune.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/01/Sukune.PNG/revision/latest/scale-to-width-down/310?cb=20150414233234&path-prefix=pt-br	623
800	Sōsetsu Kazahana (Infobox - Filme).PNG	https://vignette.wikia.nocookie.net/naruto/images/5/5c/S%C5%8Dsetsu_Kazahana_%28Infobox_-_Filme%29.PNG/revision/latest/scale-to-width-down/310?cb=20150523034153&path-prefix=pt-br	635
802	Sozu.PNG	https://vignette.wikia.nocookie.net/naruto/images/3/39/Sozu.PNG/revision/latest/scale-to-width-down/310?cb=20121104171540&path-prefix=pt-br	637
814	Boruto	https://vignette.wikia.nocookie.net/naruto/images/e/e0/Tamaki_Adulta.png/revision/latest?cb=20150610225732&path-prefix=pt-br	650
765	Shira.png	https://vignette.wikia.nocookie.net/naruto/images/a/a2/Shira.png/revision/latest/scale-to-width-down/310?cb=20150219151940&path-prefix=pt-br	601
767	Shishio.png	https://vignette.wikia.nocookie.net/naruto/images/e/e6/Shishio.png/revision/latest/scale-to-width-down/310?cb=20150403030428&path-prefix=pt-br	603
776	Shojoji.png	https://vignette.wikia.nocookie.net/naruto/images/d/d7/Shojoji.png/revision/latest/scale-to-width-down/310?cb=20200410193746&path-prefix=pt-br	611
768	Shisui Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/4/4c/Shisui_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20200301141741&path-prefix=pt-br	604
769	Shisō.png	https://vignette.wikia.nocookie.net/naruto/images/9/93/Shis%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20160222104437&path-prefix=pt-br	605
771	Shizuka (Infobox).png	https://vignette.wikia.nocookie.net/naruto/images/4/40/Shizuka_%28Infobox%29.png/revision/latest/scale-to-width-down/310?cb=20200301150049&path-prefix=pt-br	607
778	Shōseki.png	https://vignette.wikia.nocookie.net/naruto/images/f/f2/Sh%C5%8Dseki.png/revision/latest/scale-to-width-down/310?cb=20160131171954&path-prefix=pt-br	613
785	Suiren Genin.png	https://vignette.wikia.nocookie.net/naruto/images/5/5b/Suiren_Genin.png/revision/latest/scale-to-width-down/310?cb=20150319134229&path-prefix=pt-br	619
791	Sumashi.PNG	https://vignette.wikia.nocookie.net/naruto/images/a/a6/Sumashi.PNG/revision/latest/scale-to-width-down/310?cb=20130529195712&path-prefix=pt-br	625
792	Sumire Anime.png	https://vignette.wikia.nocookie.net/naruto/images/3/3d/Sumire_Anime.png/revision/latest/scale-to-width-down/310?cb=20160128191753&path-prefix=pt-br	626
794	Suname (HD).PNG	https://vignette.wikia.nocookie.net/naruto/images/c/ca/Suname_%28HD%29.PNG/revision/latest/scale-to-width-down/310?cb=20160213130422&path-prefix=pt-br	628
795	Susuki.png	https://vignette.wikia.nocookie.net/naruto/images/5/52/Susuki.png/revision/latest/scale-to-width-down/310?cb=20160204161903&path-prefix=pt-br	629
796	Suzaku Nara.png	https://vignette.wikia.nocookie.net/naruto/images/6/67/Suzaku_Nara.png/revision/latest/scale-to-width-down/310?cb=20150302162928&path-prefix=pt-br	630
797	Suzume (HD).png	https://vignette.wikia.nocookie.net/naruto/images/1/13/Suzume_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160215065748&path-prefix=pt-br	632
798	Suzuran.png	https://vignette.wikia.nocookie.net/naruto/images/c/cc/Suzuran.png/revision/latest/scale-to-width-down/310?cb=20161211121857&path-prefix=pt-br	633
799	Sāra.PNG	https://vignette.wikia.nocookie.net/naruto/images/2/28/S%C4%81ra.PNG/revision/latest/scale-to-width-down/310?cb=20160602195559&path-prefix=pt-br	634
801	Sota.png	https://vignette.wikia.nocookie.net/naruto/images/e/e5/Sota.png/revision/latest/scale-to-width-down/310?cb=20111031131451&path-prefix=pt-br	636
803	Tagitsuhime.png	https://vignette.wikia.nocookie.net/naruto/images/7/79/Tagitsuhime.png/revision/latest/scale-to-width-down/310?cb=20181006193551&path-prefix=pt-br	638
804	Taiko Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/7/7c/Taiko_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20160128233315&path-prefix=pt-br	640
805	Taiseki.png	https://vignette.wikia.nocookie.net/naruto/images/c/c9/Taiseki.png/revision/latest/scale-to-width-down/310?cb=20111221105305&path-prefix=pt-br	641
806	Taizo.png	https://vignette.wikia.nocookie.net/naruto/images/1/10/Taizo.png/revision/latest?cb=20160702164449&path-prefix=pt-br	642
807	Taji.PNG	https://vignette.wikia.nocookie.net/naruto/images/d/d0/Taji.PNG/revision/latest/scale-to-width-down/310?cb=20140805042452&path-prefix=pt-br	643
808	Tajiki.png	https://vignette.wikia.nocookie.net/naruto/images/1/13/Tajiki.png/revision/latest/scale-to-width-down/310?cb=20120601140008&path-prefix=pt-br	644
809	Tajima Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/2/26/Tajima_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20140711052630&path-prefix=pt-br	645
810	Takanami.png	https://vignette.wikia.nocookie.net/naruto/images/0/0e/Takanami.png/revision/latest?cb=20180505233543&path-prefix=pt-br	646
811	Os mortos.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Os_mortos.PNG/revision/latest/scale-to-width-down/310?cb=20120908211306&path-prefix=pt-br	647
815	Fase II	https://vignette.wikia.nocookie.net/naruto/images/6/68/Tamaki.png/revision/latest/scale-to-width-down/310?cb=20150803130447&path-prefix=pt-br	650
816	Tamao.PNG	https://vignette.wikia.nocookie.net/naruto/images/8/83/Tamao.PNG/revision/latest/scale-to-width-down/310?cb=20130419030002&path-prefix=pt-br	651
817	Tami.png	https://vignette.wikia.nocookie.net/naruto/images/6/6f/Tami.png/revision/latest?cb=20150615211709&path-prefix=pt-br	652
818	Tango.png	https://vignette.wikia.nocookie.net/naruto/images/9/91/Tango.png/revision/latest/scale-to-width-down/310?cb=20120503221835&path-prefix=pt-br	653
819	Tanishi.png	https://vignette.wikia.nocookie.net/naruto/images/c/ca/Tanishi.png/revision/latest/scale-to-width-down/310?cb=20150622203311&path-prefix=pt-br	654
820	Tanuki Shigaraki.png	https://vignette.wikia.nocookie.net/naruto/images/0/03/Tanuki_Shigaraki.png/revision/latest/scale-to-width-down/310?cb=20170702153909&path-prefix=pt-br	655
821	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Tanz%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20150215224036&path-prefix=pt-br	656
822	Parte I	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Tanzo1.png/revision/latest/scale-to-width-down/310?cb=20150215224117&path-prefix=pt-br	656
823	Tarui.png	https://vignette.wikia.nocookie.net/naruto/images/1/1b/Tarui.png/revision/latest?cb=20180517191510&path-prefix=pt-br	657
824	Parte II	https://vignette.wikia.nocookie.net/naruto/images/2/21/Tatewaki.PNG/revision/latest/scale-to-width-down/310?cb=20130718053649&path-prefix=pt-br	658
825	Passado	https://vignette.wikia.nocookie.net/naruto/images/1/1d/Tatewaki_Vivo.PNG/revision/latest/scale-to-width-down/310?cb=20130731003917&path-prefix=pt-br	658
826	Tatsuji (HD).png	https://vignette.wikia.nocookie.net/naruto/images/d/df/Tatsuji_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160215074632&path-prefix=pt-br	659
828	Tatsumi.png	https://vignette.wikia.nocookie.net/naruto/images/7/7b/Tatsumi.png/revision/latest/scale-to-width-down/310?cb=20190526185527&path-prefix=pt-br	661
831	Parte II	https://vignette.wikia.nocookie.net/naruto/images/3/34/Tazuna_Parte_II.png/revision/latest/scale-to-width-down/310?cb=20140827224024&path-prefix=pt-br	663
833	Fase I	https://vignette.wikia.nocookie.net/naruto/images/0/0f/Temari_na_Parte_I.png/revision/latest/scale-to-width-down/310?cb=20180401132108&path-prefix=pt-br	665
834	Fase II	https://vignette.wikia.nocookie.net/naruto/images/c/c1/Temari_Shippuden.png/revision/latest/scale-to-width-down/310?cb=20170112193700&path-prefix=pt-br	665
835	Boruto	https://vignette.wikia.nocookie.net/naruto/images/c/c7/Temari_%28Next_Generations%29.png/revision/latest/scale-to-width-down/310?cb=20180131230442&path-prefix=pt-br	665
836	Temui.png	https://vignette.wikia.nocookie.net/naruto/images/2/26/Temui.png/revision/latest?cb=20120817022822&path-prefix=pt-br	666
837	Temujin.png	https://vignette.wikia.nocookie.net/naruto/images/c/cf/Temujin.png/revision/latest/scale-to-width-down/310?cb=20150920015322&path-prefix=pt-br	667
838	Guerra	https://vignette.wikia.nocookie.net/naruto/images/8/8d/Tenga.png/revision/latest/scale-to-width-down/310?cb=20130718054235&path-prefix=pt-br	668
851	Teyaki Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/1/14/Teyaki_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20121124171028&path-prefix=pt-br	679
858	Tofu-0.png	https://vignette.wikia.nocookie.net/naruto/images/3/34/Tofu-0.png/revision/latest?cb=20180203134005&path-prefix=pt-br	684
859	Tokara.png	https://vignette.wikia.nocookie.net/naruto/images/4/4c/Tokara.png/revision/latest/scale-to-width-down/310?cb=20131221114237&path-prefix=pt-br	685
860	Tokiwa.png	https://vignette.wikia.nocookie.net/naruto/images/1/18/Tokiwa.png/revision/latest/scale-to-width-down/310?cb=20111109224905&path-prefix=pt-br	686
867	Toneri.png	https://vignette.wikia.nocookie.net/naruto/images/3/3c/Toneri.png/revision/latest/scale-to-width-down/310?cb=20180420235109&path-prefix=pt-br	692
870	Geral	https://vignette.wikia.nocookie.net/naruto/images/d/d5/Toroi_Corpo_Inteiro.PNG/revision/latest/scale-to-width-down/310?cb=20140823000857&path-prefix=pt-br	695
839	Parte II	https://vignette.wikia.nocookie.net/naruto/images/4/43/Tenga_Estr%C3%A9ia.png/revision/latest/scale-to-width-down/310?cb=20130731005344&path-prefix=pt-br	668
841	Fase I	https://vignette.wikia.nocookie.net/naruto/images/a/aa/Tenten_-_Fase_I.png/revision/latest/scale-to-width-down/310?cb=20180226160720&path-prefix=pt-br	670
843	Boruto	https://vignette.wikia.nocookie.net/naruto/images/7/74/Tenten_-_Fase_III.png/revision/latest/scale-to-width-down/310?cb=20180511151828&path-prefix=pt-br	670
845	Tenzen.png	https://vignette.wikia.nocookie.net/naruto/images/8/8e/Tenzen.png/revision/latest/scale-to-width-down/310?cb=20190812165112&path-prefix=pt-br	673
846	Terubo.png	https://vignette.wikia.nocookie.net/naruto/images/f/f7/Terubo.png/revision/latest/scale-to-width-down/310?cb=20160211123208&path-prefix=pt-br	674
847	Tetsu.PNG	https://vignette.wikia.nocookie.net/naruto/images/4/47/Tetsu.PNG/revision/latest/scale-to-width-down/310?cb=20120906172412&path-prefix=pt-br	675
850	Teuchi.png	https://vignette.wikia.nocookie.net/naruto/images/a/a4/Teuchi.png/revision/latest/scale-to-width-down/310?cb=20130714160804&path-prefix=pt-br	678
853	Tobio (HD).png	https://vignette.wikia.nocookie.net/naruto/images/1/1d/Tobio_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160215075508&path-prefix=pt-br	681
840	Tenma Izumo.png	https://vignette.wikia.nocookie.net/naruto/images/f/f8/Tenma_Izumo.png/revision/latest/scale-to-width-down/310?cb=20160318235335&path-prefix=pt-br	669
842	Fase II	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Tenten_-_Fase_II.png/revision/latest/scale-to-width-down/310?cb=20180226160758&path-prefix=pt-br	670
848	Tetsu Hyūga.png	https://vignette.wikia.nocookie.net/naruto/images/b/b5/Tetsu_Hy%C5%ABga.png/revision/latest/scale-to-width-down/310?cb=20160104152856&path-prefix=pt-br	676
849	Tetsuru.png	https://vignette.wikia.nocookie.net/naruto/images/d/d6/Tetsuru.png/revision/latest?cb=20150429173150&path-prefix=pt-br	677
852	Tobi (Guruguru - Infobox Parte II).PNG	https://vignette.wikia.nocookie.net/naruto/images/6/60/Tobi_%28Guruguru_-_Infobox_Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20141226152624&path-prefix=pt-br	680
854	Fase I	https://vignette.wikia.nocookie.net/naruto/images/9/97/Tobirama_Senju.jpg/revision/latest/scale-to-width-down/310?cb=20140928164515&path-prefix=pt-br	682
856	Passado	https://vignette.wikia.nocookie.net/naruto/images/c/c0/Tobirama_Senju_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160220124906&path-prefix=pt-br	682
857	Todoroki.png	https://vignette.wikia.nocookie.net/naruto/images/a/a6/Todoroki.png/revision/latest?cb=20160205100014&path-prefix=pt-br	683
861	Tokuma Hyūga.png	https://vignette.wikia.nocookie.net/naruto/images/d/d4/Tokuma_Hy%C5%ABga.png/revision/latest/scale-to-width-down/310?cb=20150508172325&path-prefix=pt-br	687
862	Tomari Novo.png	https://vignette.wikia.nocookie.net/naruto/images/7/7f/Tomari_Novo.png/revision/latest/scale-to-width-down/310?cb=20150219141226&path-prefix=pt-br	688
864	Tonbee.png	https://vignette.wikia.nocookie.net/naruto/images/0/0a/Tonbee.png/revision/latest/scale-to-width-down/310?cb=20141015205820&path-prefix=pt-br	690
865	Parte I-II	https://vignette.wikia.nocookie.net/naruto/images/e/e5/Tonbo_Tobitake.PNG/revision/latest/scale-to-width-down/310?cb=20130523190903&path-prefix=pt-br	691
866	Geral	https://vignette.wikia.nocookie.net/naruto/images/9/97/Tonbo_%28Full%29.png/revision/latest/scale-to-width-down/175?cb=20130524162815&path-prefix=pt-br	691
869	Torifu.PNG	https://vignette.wikia.nocookie.net/naruto/images/9/9b/Torifu.PNG/revision/latest/scale-to-width-down/310?cb=20121225034359&path-prefix=pt-br	694
871	Parte II	https://vignette.wikia.nocookie.net/naruto/images/b/b8/Toroi_anime.png/revision/latest/scale-to-width-down/310?cb=20130117161605&path-prefix=pt-br	695
872	Toroi(Genin).png	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Toroi%28Genin%29.png/revision/latest?cb=20180517191914&path-prefix=pt-br	696
873	Parte II	https://vignette.wikia.nocookie.net/naruto/images/3/3a/Torune.png/revision/latest/scale-to-width-down/310?cb=20130613185434&path-prefix=pt-br	697
874	Geral	https://vignette.wikia.nocookie.net/naruto/images/2/24/Torune_Corpo_Inteiro.PNG/revision/latest/scale-to-width-down/310?cb=20130204030329&path-prefix=pt-br	697
875	Tosaka.png	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Tosaka.png/revision/latest?cb=20190329134336&path-prefix=pt-br	698
876	Os mortos.PNG	https://vignette.wikia.nocookie.net/naruto/images/f/fb/Os_mortos.PNG/revision/latest/scale-to-width-down/310?cb=20120908211306&path-prefix=pt-br	699
877	Tsubaki Kurogane.png	https://vignette.wikia.nocookie.net/naruto/images/b/bc/Tsubaki_Kurogane.png/revision/latest/scale-to-width-down/310?cb=20191227151518&path-prefix=pt-br	700
878	Tsubusa.png	https://vignette.wikia.nocookie.net/naruto/images/6/65/Tsubusa.png/revision/latest/scale-to-width-down/310?cb=20130512005611&path-prefix=pt-br	701
879	Tsuchino Novo.png	https://vignette.wikia.nocookie.net/naruto/images/a/a6/Tsuchino_Novo.png/revision/latest/scale-to-width-down/310?cb=20150219141434&path-prefix=pt-br	702
880	Tsukiko Kagetsu.png	https://vignette.wikia.nocookie.net/naruto/images/0/05/Tsukiko_Kagetsu.png/revision/latest/scale-to-width-down/310?cb=20160805131311&path-prefix=pt-br	703
881	Tsukino.png	https://vignette.wikia.nocookie.net/naruto/images/8/8c/Tsukino.png/revision/latest/scale-to-width-down/310?cb=20150813220945&path-prefix=pt-br	704
882	Geral	https://vignette.wikia.nocookie.net/naruto/images/d/d8/Tsum_Corpo_Inteiro.PNG/revision/latest/scale-to-width-down/273?cb=20130418183207&path-prefix=pt-br	705
883	Parte II	https://vignette.wikia.nocookie.net/naruto/images/f/f6/Tsume_Inuzuka.png/revision/latest/scale-to-width-down/310?cb=20160216202244&path-prefix=pt-br	705
884	Aparência de Tsunade.png	https://vignette.wikia.nocookie.net/naruto/images/e/e1/Apar%C3%AAncia_de_Tsunade.png/revision/latest/scale-to-width-down/310?cb=20150909132616&path-prefix=pt-br	706
885	Tsunami.png	https://vignette.wikia.nocookie.net/naruto/images/c/c4/Tsunami.png/revision/latest/scale-to-width-down/310?cb=20140829231549&path-prefix=pt-br	707
886	Tsuru.png	https://vignette.wikia.nocookie.net/naruto/images/c/cb/Tsuru.png/revision/latest?cb=20171227133044&path-prefix=pt-br	708
887	Tsurugi.png	https://vignette.wikia.nocookie.net/naruto/images/c/c1/Tsurugi.png/revision/latest/scale-to-width-down/310?cb=20130513011717&path-prefix=pt-br	709
888	Hachiya.png	https://vignette.wikia.nocookie.net/naruto/images/9/9d/Hachiya.png/revision/latest/scale-to-width-down/310?cb=20171004181539&path-prefix=pt-br	710
889	Tsuzumi.png	https://vignette.wikia.nocookie.net/naruto/images/0/0a/Tsuzumi.png/revision/latest/scale-to-width-down/310?cb=20120909205137&path-prefix=pt-br	711
890	Tobei Kagetsu.png	https://vignette.wikia.nocookie.net/naruto/images/f/f7/Tobei_Kagetsu.png/revision/latest/scale-to-width-down/310?cb=20160805123303&path-prefix=pt-br	712
891	Tofu.png	https://vignette.wikia.nocookie.net/naruto/images/c/c3/Tofu.png/revision/latest/scale-to-width-down/310?cb=20160211204635&path-prefix=pt-br	713
892	Passado	https://vignette.wikia.nocookie.net/naruto/images/2/2b/T%C5%8Dka_Senju.png/revision/latest?cb=20130208114024&path-prefix=pt-br	714
893	Geral	https://vignette.wikia.nocookie.net/naruto/images/6/60/T%C5%8Dka_Senju_%28full%29.png/revision/latest/scale-to-width-down/258?cb=20130418184018&path-prefix=pt-br	714
894	Tou.png	https://vignette.wikia.nocookie.net/naruto/images/2/2c/Tou.png/revision/latest?cb=20150222190838&path-prefix=pt-br	715
895	Boruto	https://vignette.wikia.nocookie.net/naruto/images/3/3d/Udon_%28Boruto_-_Anime%29.png/revision/latest/scale-to-width-down/310?cb=20180207114954&path-prefix=pt-br	716
896	Fase II	https://vignette.wikia.nocookie.net/naruto/images/7/74/Udon.png/revision/latest/scale-to-width-down/310?cb=20130611175721&path-prefix=pt-br	716
897	Fase I	https://vignette.wikia.nocookie.net/naruto/images/9/9c/Udon_Cl%C3%A1ssico.png/revision/latest/scale-to-width-down/310?cb=20180413191921&path-prefix=pt-br	716
898	Mangá	https://vignette.wikia.nocookie.net/naruto/images/0/00/Ugai_%28manga%29.png/revision/latest?cb=20160211075145&path-prefix=pt-br	717
899	Anime	https://vignette.wikia.nocookie.net/naruto/images/2/2f/Ugai_%28anime%29.png/revision/latest?cb=20160211075205&path-prefix=pt-br	717
900	Umibozu.png	https://vignette.wikia.nocookie.net/naruto/images/f/f9/Umibozu.png/revision/latest/scale-to-width-down/310?cb=20130722132547&path-prefix=pt-br	718
902	Unkai Kurama (HD).png	https://vignette.wikia.nocookie.net/naruto/images/4/4c/Unkai_Kurama_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160214111707&path-prefix=pt-br	720
908	Wasabi (Anime).png	https://vignette.wikia.nocookie.net/naruto/images/2/26/Wasabi_%28Anime%29.png/revision/latest/scale-to-width-down/310?cb=20180105010400&path-prefix=pt-br	726
921	Yashamaru.PNG	https://vignette.wikia.nocookie.net/naruto/images/8/86/Yashamaru.PNG/revision/latest/scale-to-width-down/310?cb=20130202204453&path-prefix=pt-br	736
937	Yukimi.png	https://vignette.wikia.nocookie.net/naruto/images/8/8d/Yukimi.png/revision/latest/scale-to-width-down/310?cb=20140326004422&path-prefix=pt-br	751
961	Uhei.png	https://vignette.wikia.nocookie.net/naruto/images/6/6c/Uhei.png/revision/latest/scale-to-width-down/310?cb=20150725185133&path-prefix=pt-br	770
903	Urashiki Ōtsutsuki.png	https://vignette.wikia.nocookie.net/naruto/images/e/eb/Urashiki_%C5%8Ctsutsuki.png/revision/latest/scale-to-width-down/310?cb=20191204180743&path-prefix=pt-br	721
904	Uroko Kurama.png	https://vignette.wikia.nocookie.net/naruto/images/4/44/Uroko_Kurama.png/revision/latest?cb=20150724164844&path-prefix=pt-br	722
910	Passado	https://vignette.wikia.nocookie.net/naruto/images/8/8e/Yahiko_%28Passado%29.png/revision/latest/scale-to-width-down/310?cb=20200217003145&path-prefix=pt-br	728
925	Yokaze.png	https://vignette.wikia.nocookie.net/naruto/images/1/18/Yokaze.png/revision/latest/scale-to-width-down/310?cb=20130405025538&path-prefix=pt-br	740
927	Yomi.PNG	https://vignette.wikia.nocookie.net/naruto/images/9/9a/Yomi.PNG/revision/latest/scale-to-width-down/310?cb=20160722084821&path-prefix=pt-br	742
928	Yone.png	https://vignette.wikia.nocookie.net/naruto/images/3/30/Yone.png/revision/latest?cb=20160204102935&path-prefix=pt-br	743
933	Yui anime.png	https://vignette.wikia.nocookie.net/naruto/images/d/dc/Yui_anime.png/revision/latest?cb=20160129221709&path-prefix=pt-br	748
935	Parte II	https://vignette.wikia.nocookie.net/naruto/images/0/08/Yukata_%28Parte_II%29.png/revision/latest/scale-to-width-down/310?cb=20150207015246&path-prefix=pt-br	750
942	Yudachi.png	https://vignette.wikia.nocookie.net/naruto/images/a/aa/Yudachi.png/revision/latest?cb=20151031191528&path-prefix=pt-br	756
947	Yukusuke.png	https://vignette.wikia.nocookie.net/naruto/images/b/b7/Yukusuke.png/revision/latest/scale-to-width-down/310?cb=20160407004606&path-prefix=pt-br	760
952	Geral	https://vignette.wikia.nocookie.net/naruto/images/a/a9/Zaku_Corpo_Inteiro.png/revision/latest/scale-to-width-down/206?cb=20130204030329&path-prefix=pt-br	763
960	Ōwashi (HD).png	https://vignette.wikia.nocookie.net/naruto/images/5/5a/%C5%8Cwashi_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160213160915&path-prefix=pt-br	769
905	Uruchi Uchiha.png	https://vignette.wikia.nocookie.net/naruto/images/b/bd/Uruchi_Uchiha.png/revision/latest/scale-to-width-down/310?cb=20121124164624&path-prefix=pt-br	723
911	Fase II	https://vignette.wikia.nocookie.net/naruto/images/5/5c/Yahiko_%28Parte_II%29.PNG/revision/latest/scale-to-width-down/310?cb=20141203222129&path-prefix=pt-br	728
912	Yajirobee -2-.png	https://vignette.wikia.nocookie.net/naruto/images/4/40/Yajirobee_-2-.png/revision/latest?cb=20180519161806&path-prefix=pt-br	729
914	Geral	https://vignette.wikia.nocookie.net/naruto/images/a/a5/Yakku_corpo_inteiro.png/revision/latest?cb=20140828202940&path-prefix=pt-br	730
915	Yakumi Uchiha.PNG	https://vignette.wikia.nocookie.net/naruto/images/7/79/Yakumi_Uchiha.PNG/revision/latest?cb=20120904194210&path-prefix=pt-br	731
917	Yamaoka.png	https://vignette.wikia.nocookie.net/naruto/images/5/51/Yamaoka.png/revision/latest/scale-to-width-down/310?cb=20200414200710&path-prefix=pt-br	733
920	Yaoki (HD).png	https://vignette.wikia.nocookie.net/naruto/images/b/b4/Yaoki_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20161026185124&path-prefix=pt-br	735
934	Yukai.png	https://vignette.wikia.nocookie.net/naruto/images/7/7a/Yukai.png/revision/latest/scale-to-width-down/310?cb=20130705103441&path-prefix=pt-br	749
955	Geral	https://vignette.wikia.nocookie.net/naruto/images/5/50/Z%C5%8D_%28Render%29.PNG/revision/latest/scale-to-width-down/310?cb=20160429192432&path-prefix=pt-br	765
956	Okei.PNG	https://vignette.wikia.nocookie.net/naruto/images/8/84/Okei.PNG/revision/latest/scale-to-width-down/310?cb=20121108002324&path-prefix=pt-br	766
957	Fase II	https://vignette.wikia.nocookie.net/naruto/images/6/67/%C5%8Cnoki.png/revision/latest/scale-to-width-down/310?cb=20141123194649&path-prefix=pt-br	767
906	Utakata.png	https://vignette.wikia.nocookie.net/naruto/images/2/27/Utakata.png/revision/latest/scale-to-width-down/310?cb=20130905194651&path-prefix=pt-br	724
943	Parte I	https://vignette.wikia.nocookie.net/naruto/images/6/64/Yugao_ANBU.PNG/revision/latest/scale-to-width-down/310?cb=20150918152258&path-prefix=pt-br	757
958	Boruto	https://vignette.wikia.nocookie.net/naruto/images/0/08/%C5%8Cnoki_%28Boruto%29.png/revision/latest/scale-to-width-down/310?cb=20181203132107&path-prefix=pt-br	767
907	Uō.png	https://vignette.wikia.nocookie.net/naruto/images/b/b4/U%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20180915011140&path-prefix=pt-br	725
909	Ya.png	https://vignette.wikia.nocookie.net/naruto/images/6/64/Ya.png/revision/latest/scale-to-width-down/310?cb=20160211184751&path-prefix=pt-br	727
913	Parte II	https://vignette.wikia.nocookie.net/naruto/images/8/84/Yakku.png/revision/latest/scale-to-width-down/310?cb=20140828201955&path-prefix=pt-br	730
916	Yakumo Kurama (HD).png	https://vignette.wikia.nocookie.net/naruto/images/6/6e/Yakumo_Kurama_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20160214112804&path-prefix=pt-br	732
918	Fase II	https://vignette.wikia.nocookie.net/naruto/images/6/64/Yamato.png/revision/latest/scale-to-width-down/310?cb=20170630020543&path-prefix=pt-br	734
919	Boruto	https://vignette.wikia.nocookie.net/naruto/images/4/48/Yamato_Part_III.png/revision/latest?cb=20171223004053&path-prefix=pt-br	734
922	Yashiro Uchiha.PNG	https://vignette.wikia.nocookie.net/naruto/images/5/5e/Yashiro_Uchiha.PNG/revision/latest/scale-to-width-down/310?cb=20200311191200&path-prefix=pt-br	737
926	Yome 2.png	https://vignette.wikia.nocookie.net/naruto/images/2/22/Yome_2.png/revision/latest?cb=20150212225615&path-prefix=pt-br	741
929	Yoroi Akadō.png	https://vignette.wikia.nocookie.net/naruto/images/4/40/Yoroi_Akad%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20141026134608&path-prefix=pt-br	744
930	Yoshino Nara.png	https://vignette.wikia.nocookie.net/naruto/images/9/9f/Yoshino_Nara.png/revision/latest/scale-to-width-down/310?cb=20140928184210&path-prefix=pt-br	745
931	Yotaka.png	https://vignette.wikia.nocookie.net/naruto/images/9/9e/Yotaka.png/revision/latest/scale-to-width-down/310?cb=20160131150643&path-prefix=pt-br	746
932	Yugito Nii.png	https://vignette.wikia.nocookie.net/naruto/images/7/7f/Yugito_Nii.png/revision/latest/scale-to-width-down/310?cb=20130905184357&path-prefix=pt-br	747
936	Guerra	https://vignette.wikia.nocookie.net/naruto/images/5/51/Yukata_%28Guerra%29.png/revision/latest/scale-to-width-down/310?cb=20150207015210&path-prefix=pt-br	750
938	Yurika (HD).png	https://vignette.wikia.nocookie.net/naruto/images/3/39/Yurika_%28HD%29.png/revision/latest/scale-to-width-down/310?cb=20190812234958&path-prefix=pt-br	752
939	Yurito.png	https://vignette.wikia.nocookie.net/naruto/images/c/c6/Yurito.png/revision/latest?cb=20180318185124&path-prefix=pt-br	753
940	Yurui (filme).png	https://vignette.wikia.nocookie.net/naruto/images/a/a3/Yurui_%28filme%29.png/revision/latest/scale-to-width-down/310?cb=20151227200832&path-prefix=pt-br	754
941	Yōrō.png	https://vignette.wikia.nocookie.net/naruto/images/8/82/Y%C5%8Dr%C5%8D.png/revision/latest/scale-to-width-down/310?cb=20150116171601&path-prefix=pt-br	755
944	Parte II	https://vignette.wikia.nocookie.net/naruto/images/6/62/Yugao_na_guerra.png/revision/latest/scale-to-width-down/310?cb=20130411202908&path-prefix=pt-br	757
945	Yukimaru.png	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Yukimaru.png/revision/latest/scale-to-width-down/310?cb=20131129185030&path-prefix=pt-br	758
946	Yūra.png	https://vignette.wikia.nocookie.net/naruto/images/0/08/Y%C5%ABra.png/revision/latest/scale-to-width-down/310?cb=20130819190248&path-prefix=pt-br	759
948	Parte I	https://vignette.wikia.nocookie.net/naruto/images/7/7d/Zabuza.png/revision/latest/scale-to-width-down/310?cb=20190810152940&path-prefix=pt-br	761
949	Parte II	https://vignette.wikia.nocookie.net/naruto/images/8/87/Zabuza_Momochi.PNG/revision/latest/scale-to-width-down/310?cb=20121009231933&path-prefix=pt-br	761
953	Zetsu Negro.PNG	https://vignette.wikia.nocookie.net/naruto/images/0/0e/Zetsu_Negro.PNG/revision/latest/scale-to-width-down/310?cb=20140619053903&path-prefix=pt-br	764
954	Parte II	https://vignette.wikia.nocookie.net/naruto/images/9/91/Z%C5%8D.PNG/revision/latest/scale-to-width-down/310?cb=20150112132240&path-prefix=pt-br	765
923	Yatogo Ryugen.png	https://vignette.wikia.nocookie.net/naruto/images/4/4f/Yatogo_Ryugen.png/revision/latest/scale-to-width-down/310?cb=20160623121952&path-prefix=pt-br	738
924	Yodo.png	https://vignette.wikia.nocookie.net/naruto/images/f/ff/Yodo.png/revision/latest?cb=20180519162008&path-prefix=pt-br	739
950	Zaji.png	https://vignette.wikia.nocookie.net/naruto/images/3/3b/Zaji.png/revision/latest/scale-to-width-down/310?cb=20140803022820&path-prefix=pt-br	762
951	Naruto	https://vignette.wikia.nocookie.net/naruto/images/4/40/Zaku_Abumi.PNG/revision/latest/scale-to-width-down/310?cb=20160511124157&path-prefix=pt-br	763
959	Ōtora.png	https://vignette.wikia.nocookie.net/naruto/images/c/cb/%C5%8Ctora.png/revision/latest/scale-to-width-down/310?cb=20160215000446&path-prefix=pt-br	768
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team (id, name) FROM stdin;
1	Time Ajisai
2	Grupo Magaki
3	Time Kurenai
4	Time de Resgate de Sasuke
5	11 de Konoha
6	Esquadrão de Oito Homens
7	Time de Procura a Orochimaru
8	Quinta Divisão
9	Time Ameno
10	Sete Espadachins da Névoa
11	Trio Moya
12	Time Orochimaru
13	Time de Infiltração e Reconhecimento
14	Divisão de Sensor
15	Vinte Pelotões
16	Divisão de Inteligência
17	Time Oboro
18	Time Shinki
19	Doze Guardiões Ninja
20	Time Asuma
21	Primeira Divisão
22	Três Irmãos da Areia
23	Segurança de Fronteira
24	Conselho de Suna
25	Time Bandō
26	Grupo de Magaki
27	Time Konohamaru
28	Time Shikadai
29	Novos Sete Espadachins Ninja
30	Gangue Akagi
31	Divisão de Sensores
32	Órfãos de Ame
33	Brigada de Marionetes
34	Honoráveis Irmãos
35	Time de Resgate do Kazekage
36	Quarta Divisão
37	Sete Espadachins Ninja da Névoa
38	Ino–Shika–Chō (Anterior)
39	Pelotão de Ataque Surpresa e Distração
40	Unidade de Escolta
41	Conselho de Kumo
42	Corpo de Explosão
43	Time 5
44	Time de Comunicações
45	Time Dosu
46	Time 40
47	Time Ebisu
48	Time Chōza
49	Irmãos Honoráveis
50	Terceira Divisão
51	Time de Três Homens de Dotō
52	Equipe de 4 Homens do Furido
53	Time de Quatro Homens de Furido
54	Cavaleiros de Haido
55	Polícia de Konoha
56	Dois Grandes Sábios Sapos
57	Time de Captura do Hachibi
58	Time Ganryū
59	Iluminados
60	Pelotão de Guardas do Hokage
61	Pelotão de Missões Especiais de Konoha
62	Esquadrão de Proteção ao Daimyō
63	Time Komugi
64	Três Irmãos Ryūdōin
65	Irmãos Ouro e Prata
66	Time Goji
67	Time Guren
68	Irmãos Demônios
69	Time 25
70	Esquadrão de Dois Homens
71	Time 15
72	Grupo Nokizaru
73	Esquadrão dos Oito
74	Time de Resgate de Hanabi
75	Segunda Divisão
76	Divisão de Suporte Médico e Logístico
77	Time Tobirama
78	Time Hiruzen
79	Time Suien
80	Watari Ninja
81	Conselho de Konoha
82	Corpo Médico de Konoha
83	Força de Tortura e Interrogação de Konoha
84	Polícia Militar de Konoha
85	Time de Captura ao Kaima
86	Ino–Saku–Sai
87	Time de Barreira de Konoha
88	Time de Análise
89	Time Moegi
90	Três Ninjas Fugitivos
91	Time Ro
92	Time 2
93	Divisão de Ataque Surpresa
94	Time Sari
95	Três Irmãos
96	Time Jiraiya
97	Quarteto do Som
98	Taka
99	Garotas Fãs de Naruto
100	Aliança Armamentista Ryūha
101	Time Kakashi
102	Time Minato
103	Gangue Kanabun
104	Divisão Contra Terrorismo
105	Família Kurosuki
106	Time Samui
107	Grupo do Relâmpago
108	Grupo do Trovão Negro
109	Time Científico de Armas Ninja
110	Combo A–B
111	Esquadrão de Criptograma
112	Homens dos Quatro Símbolos Celestiais
113	Grupo Prajñā
114	Time de Selamento
115	Três Irmãos Senka
116	Time de Liberação de Vento
117	Forças Aliadas das Mães
118	Time Shigure
119	Time Guy
120	Time de Genin de Kabuto
121	Esquadrão de Criptograma de Konoha
122	Shinobazu
123	Doze Ninjas Guardiões
124	Time Hiruko
125	Janin
126	Gangue Byakuya
127	Time Saya
128	Trio Shinobi Genbu
129	Time Shira
130	Time Shibire
131	Ino–Shika–Chō
132	Shin Uchiha
133	Anbu da Folha
134	Time Shisui
135	Gangue dos Quatro
136	Bandidos Mujina
137	Time Yurui
138	Exército de Zetsu Branco
139	Exército Fantasma
140	Unidade Tempestuosa
141	Time Matsuri
142	Time Fū
\.


--
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.titles (id, name, id_character) FROM stdin;
1	Ē	1
2	Abiru	2
3	Agara	3
4	Kaisen Agari	4
5	Ageha	5
6	Ryūdōin Agira	6
7	Ahiko	7
8	Ajisai	8
9	Akaboshi	9
10	Yondaime Hoshikage	10
11	Akahoshi	10
12	Akamaru	11
13	Akane	12
14	Tatsushiro Akari	13
15	Akatsuchi	14
16	Akemaru	15
17	Akino	16
18	Akio	17
19	Amachi	18
20	Amado	19
21	Amai	20
22	Amaru	21
23	Amayo	22
24	Ameno	23
25	Ringo Ameyuri	24
26	Ami	25
27	Aniki	27
28	Mitarashi Anko	28
29	Ao	29
30	Byakugangoroshi	29
31	Yamashiro Aoba	30
32	Aoda	31
33	Rokushō Aoi	32
34	Arai	33
35	Araya	34
36	Ashitaba	37
37	Sarutobi Asuma	38
38	Atsui	39
39	Ayame	40
40	Ayato	41
41	Azami	42
42	Baji	43
43	Baki	44
44	Bandō	45
45	Banna	46
46	Baraki	47
47	Uchiha Baru	48
48	Bekkō	49
49	Benten	50
50	Bisuke	51
51	Sarutobi Biwako	52
52	Fukai	53
53	Burū Bī	53
54	Uzumaki Boruto	54
55	Buna	55
56	Bunpuku	56
57	Kurosuki Buntan	57
58	Bunzō	58
59	Burami	59
60	Senju Butsuma	60
61	Byakuren	61
62	Shī	62
63	Chishima	65
64	Chiyo	66
65	Chiyo-baa-sama	66
66	Chogo	67
67	Akimichi Chōbee	68
68	Akimichi Chōchō	69
69	Chōhan	70
70	Akimichi Chōji	71
71	Akimichi Jūrokudaime Tōshu	71
72	Rokudaime Mizukage	72
73	Chōjūrō	72
74	Chōmei	73
75	Shichibi	73
76	Rakkī Sebun Chōmei	73
77	Nanabi	73
78	Chōseki	74
79	Akimichi Chōza	75
80	Chūji	76
81	Chūkaku	77
82	Chūkichi	78
83	Chūshin	79
84	Nara Dean	81
85	Daibutsu	82
86	Daimaru	84
87	Katō Dan	85
88	Dango	86
89	Danzō Shimura	87
90	Shinobi no Yami	87
91	Rokudaime Hokage Kōho	87
92	Kanzō	87
93	Darui	88
94	Godaime Raikage	88
95	Deidara	89
96	Dengaku	90
97	Denka	91
98	Kaminarimon Denki	92
99	Dodai	93
100	Doki	94
101	Dokku	95
102	Don	96
103	Doragu	97
104	Dosu Kinuta	98
105	Kazahana Dotō	99
106	Goetsu Dōshu	100
107	Ebisu	101
108	Ebizō	102
109	Ebizō-jiisama	102
110	En	104
111	Oyashiro En	105
112	Shi no Shōnin	105
113	Onikuma Enko	106
114	Nara Ensui	107
115	Kaminarimon Ereki	108
116	Efu	110
117	Kakuyoku Fubuki	111
118	Fudō	112
119	Fuen	113
120	Fugai	114
121	Kyōgan Fugaku	115
122	Uchiha Fugaku	115
123	Fugi	116
124	Suikazan Fuguki	117
125	Fukasaku	118
126	Kashira	118
127	Fuku	119
128	Fukuemon	120
129	Hikyakuya Fukusuke	121
130	Furofuki	122
131	Fusō	124
132	Futami	126
133	Futsu	127
134	Fuyō	128
135	Fū	129
136	Fūka	130
137	Kagetsu Fūta	131
138	Gaara	132
139	Suna no Gaara	132
140	Sabaku no Gaara	132
141	Godaime Kazekage	132
142	Sabaku no Hyōtan Ōji	132
143	Kogane no Ko	132
144	Inuzuka Gaku	133
145	Gamabunta	135
146	Bunta	135
147	Gama Oyabun	135
148	Gamagorō	137
149	Gamahiro	138
150	Hiro	138
151	Ken	139
152	Gamaken	139
153	Gamakichi	140
154	Gamamaru	141
155	Ōgama Sennin	141
156	Ōjiji-sama	141
157	Deka-jiichan Sennin	141
158	Ganryū	144
159	Garaga	145
160	Gari	146
161	Bakuton no Gari	146
162	Garuda	147
163	Garō	148
164	Gatai	149
165	Gataro	150
166	Gatō	151
167	Gazeru	152
168	Gen'yūmaru	153
169	Hōzuki Gengetsu	154
170	Gengo	155
173	Gennai	158
175	Gennō	159
184	Goshiki	168
188	Hachibi	171
208	Jōki no Jinchūriki	183
214	Harine	188
215	Haruna	189
217	Harusame	190
229	Hidan	201
231	Hidero	203
248	Purofessā	214
252	Hishaku	216
263	Taketori Hōki	226
171	Shiranui Genma	156
172	Genmai	157
174	Torappu Masutā	159
176	Ryūdōin Genshō	160
177	Genzō	161
178	Gerotora	162
179	Giichi	163
180	Ginji	164
182	Goji	166
185	Gozu	169
189	Kyogyū	171
193	Rikudō Sennin	174
195	Kono Yo no Kyūseishu	174
196	Rikudō no Shinsen	174
197	Haido	175
198	Hajiki	176
202	Kōri no Kamen	179
204	Hakuhyō	180
211	Hanare	186
212	Hanzō	187
218	Senju Hashirama	191
224	Hebiichigo	195
232	Shishimaru	203
235	Uzumaki Himawari	206
237	Uzumaki Hinata	210
240	Hyūga Hinata	210
245	Sarutobi Hiruzen	214
247	Saru	214
253	Hyūga Hizashi	217
254	Hokushin	218
255	Mitokado Homura	219
256	Honoka	220
258	Hyō	222
261	Hōki	225
268	Igī	233
275	Ino-buta	239
277	Yamanaka Inoichi	240
279	Hyūga Iroha	242
280	Umino Iruka	243
281	Ise	244
181	Ginkaku	165
183	Gojō	167
186	Guruko	170
187	Gyūki	171
190	Gōza	172
191	Gōzu	173
192	Ōtsutsuki Hagoromo	174
194	Shinobi no Kami	174
199	Hakkaku	177
200	Kuroi Hako	178
201	Hyōton no Haku	179
203	Haku	179
205	Mimura Hamaki	181
206	Ōtsutsuki Hamura	182
207	Han	183
209	Inuzuka Hana	184
210	Hyūga Hanabi	185
213	Sanshōuo no Hanzō	187
216	Shun	189
219	Shodai Hokage	191
220	Shinobi no Kami	191
221	Onomichi Hassaku	192
222	Shirakumo Hayama	193
223	Gekkō Hayate	194
225	Heiji	196
226	Heki	197
227	Hyūga Hiashi	198
228	Hibari	200
230	Hidari	202
233	Uchiha Hikaku	204
234	Tsuki Hikaru	205
236	Himushi	208
238	Literalmente significando:	210
239	Byakugan no Hime	210
241	Densetsu no Ōgui Joō	210
242	Hino	211
243	Soku	213
244	Hinoko	213
246	Sandaime Hokage	214
249	Shinobi no Kami	214
250	Shinobi Supremo	214
251	Hisame	215
257	Hotarubi	221
259	Hōichi	223
260	Hōki	224
262	Mōsō	225
264	Morino Ibiki	228
265	Ichigen	230
266	Oniyuzu Ichirōta	231
267	Morino Idate	232
269	Umino Ikkaku	234
270	Madoka Ikkyū	235
271	Uchiha Inabi	236
272	Inari	237
273	Ōtsutsuki Indora	238
274	Yamanaka Ino	239
276	Bijin-san	239
278	Yamanaka Inojin	241
282	Ishikawa	246
283	Shodai Tsuchikage	246
284	Isobu	247
285	Sanbi	247
286	Kyodaigame	247
287	Isono	248
288	Akatsuki no Itachi	249
289	Uchiha Itachi	249
290	Ichizokugoroshi no Itachi	249
291	Sharingan no Itachi	249
292	Senju Itama	250
293	Ittan	251
294	Ittetsu	252
295	Yuino Iwabee	253
296	Iwaji	254
297	Iwakyō	255
298	Tatami Iwashi	256
299	Uchiha Izumi	257
300	Kamizuki Izumo	258
301	Uchiha Izuna	259
302	Iō	260
303	Jei Jei	261
304	Ryūdōin Jakō	262
305	Jantō	263
306	Jimei	264
307	Jin	265
308	Akebino Jinin	266
309	Munashi Jinpachi	267
310	Jiraiya	268
311	Densetsu no Sannin	268
312	Gama Sennin	268
313	Sato no Kyōki	268
314	Ero-sennin	268
315	Jirōbō	269
316	Sono Yon	269
317	Nanmon no Jirōbō	269
318	Wasabi Jirōchō	270
319	Junsai	271
320	Jōseki	272
321	Jūgo	273
322	Tenbin no Jūgo	273
323	Biwa Jūzō	274
324	Tokisuki Kabure	275
325	Yakushi Kabuto	276
326	Kaede	277
327	Uchiha Kagami	279
328	Kagari	280
329	Kageki	281
330	Uchiha Kagen	282
331	Karatachi Kagura	283
332	Ōtsutsuki Kaguya	284
333	Usagi no Megami	284
334	Oni	284
335	Chakura no So	284
336	Kahyō	285
337	Kaiza	286
338	Hatake Kakashi	288
339	Kopī Ninja no Kakashi	288
340	Sharingan no Kakashi	288
341	Sharingan no Eiyū	288
342	Reiketsu Kakashi	288
343	Nakamagoroshi no Kakashi	288
344	Rokudaime Hokage	288
345	Sukea	288
346	Tsuki Kakeru	289
347	Kakkō	290
348	Kakuzu	291
349	Kakō	292
350	Kamata	293
351	Kamatari	294
352	Kamira	295
353	Kanabun	296
354	Kandachi	297
355	Kankurō	298
356	Kanna	299
357	Kanpu	300
358	Kanpō	301
359	Kaori	302
360	Karai	303
361	Karashi	304
362	Karin	306
363	Karui	307
364	Akimichi Karui	307
365	Karyū	308
366	Kashike	309
367	Nara Kasuga	310
368	Kasumi	311
369	Tōno Katasuke	312
370	Katazu	313
371	Katsuyu	314
372	Senju Kawarama	315
373	Kaya	316
374	Kayui	317
375	Kazabune	318
376	Kazan	319
377	Kazuma	320
378	Furido	320
379	Keiri	321
380	Inuzuka Kiba	322
381	Kidōmaru	323
382	Sono Ichi	323
383	Tōmon no Kidōmaru	323
384	Kie	324
385	Kihō	326
386	Kiki	327
387	Kiku	328
388	Kirābī	329
407	Yanagikage Kokage	349
389	Kimimaro	330
399	Kitō	342
401	Kagetsu Yōichi	344
390	Kin Tsuchi	331
394	Kintoki	336
409	Kokuō	351
391	Kingu	332
397	Hoshigaki Kisame	339
392	Kinkaku	333
405	Umino Kohari	347
393	Ōtsutsuki Kinshiki	335
400	Fukuda Kiyomu	343
395	Kirara	337
398	Kitsuchi	341
403	Haruno Kizashi	345
408	Kokuyō	350
396	Kirisame	338
402	Kiyoyasu Kagetsu	344
406	Utatane Koharu	348
404	Kohada	346
410	Gobi	351
411	Komaza	352
412	Komichi	353
413	Komugi	354
414	Konan	355
415	Sarutobi Konohamaru	356
416	Omago-sama	356
417	Kontsuchi	357
418	Korobi	358
419	Maruboshi Kosuke	359
420	Mannen Genin	359
421	Konoha Saikyō no Genin	359
422	Hagane Kotetsu	360
423	Kozuchi	362
424	Kujaku	363
425	Kumadori	365
426	Kunihisa	366
427	Kunijirō	367
428	Mokume Kunugi	368
429	Kurama	369
430	Kyūbi	369
431	Bakegitsune	369
432	Kyūbi no Yōko	369
433	Yūhi Kurenai	370
434	Sarutobi Kurenai	370
435	Kurotsuchi	371
436	Yondaime Tsuchikage	371
437	Kusabi	373
438	Kuriarare Kushimaru	374
439	Uzumaki Kushina	375
440	Tomato	375
441	Akai Chishio no Habanero	375
442	Kusuma	376
443	Kusushi	377
444	Kyodaigumo	378
445	Fuefuki Kyohō	379
446	Kyōya	380
447	Wagarashi Kyūroku	381
448	Idaten no Kyūsuke	382
449	Kyūsuke	382
450	Hyūga Kō	383
451	Kōji	384
452	Kōmei	385
453	Kōsuke	386
454	Kū	387
455	Rando	388
456	Reo	389
457	Mabui	390
458	Uchiha Madara	391
459	Kono Yo no Kyūseishu	391
460	Uchiha no Bōrei	391
461	Futarime no Rikudō	391
462	Nara Maen	392
463	Mahiru	393
464	Kagetsu Mai	394
465	Akimichi Makaro	395
466	Maki	396
467	Senka Makinami	397
468	Marisu	398
469	Akado Manabu	399
470	Manda	400
471	Saikyō no Uwahebi	400
472	Nidaime Manda	401
473	Hōzuki Mangetsu	402
474	Kijin no Sairai	402
475	Mari	403
476	Akimichi Maruten	404
477	Matatabi	405
478	Nibi	405
479	Bakeneko	405
480	Espirito de Gato	405
481	Matsu	406
482	Matsuba	407
483	Matsuri	408
484	Haruno Mebuki	409
485	Meka-Kurama	410
486	Meka-Naruto	411
487	Terumī Mei	412
488	Godaime Mizukage	412
489	Kirigakure no Saien	412
490	Meizu	413
491	Metaru Rī	415
492	Tsuki Michiru	416
493	Mishī	417
494	Midare	418
495	Midori	419
496	Mifune	420
497	Migaki	421
498	Mannen Genin	422
499	Maito Dai	422
500	Maito Gai	423
501	Konoha no Kedakaki Aoi Mōjū	423
502	Gekimayu-sensei	423
503	Miina	424
504	Mijin	425
505	Uchiha Mikoto	426
506	Namikaze Minato	427
507	Konoha no Kiiroi Senkō	427
508	Yogen no Ko	427
509	Kono Yo no Kyūseishu	427
510	Yondaime Hokage	427
511	Konoha no Eiyū	427
512	Minoichi	428
513	Miroku	430
514	Tsurugi Misumi	431
515	Misuno	432
516	Mitate	433
517	Mito Uzumaki	434
518	Mitoku	435
519	Mitsuki	436
520	Mitsuo	437
521	Mizuki	438
522	Mo	439
523	Moegi	440
524	Kazamatsuri Moegi	440
525	Moguranmaru	441
526	Mogusa	442
527	Momiji	443
528	Momo	444
529	Ōtsutsuki Momoshiki	445
530	Monga	446
531	Morio	449
532	Motoi	450
533	Mozuku	451
534	Mubi	452
535	Mui	453
536	Mukade	454
537	Muku	455
538	Murasame	456
539	Aburame Muta	457
540	Muyami	458
541	Mū	459
542	Nidaime Tsuchikage	459
543	Mujin	459
544	Jinton no Mū	459
545	Rōga Nadare	460
546	Nagare	462
547	Nagato	463
548	Kami	463
549	Yogen no Ko	463
550	Kono Yo no Kyūseishu	463
551	Sanninme no Rikudō	463
552	Pein	463
553	Uchiha Naka	464
554	Suzumeno Namida	465
555	Nan	466
556	Nanafushi	467
557	Nangō	468
558	Uchiha Naori	469
559	Uzumaki Naruto	470
560	Medachitagariya de Igaisei Nanbā Wan no Dotabata	470
561	Yogen no Ko	470
562	Kono Yo no Kyūseishu	470
563	Konohagakure no Sato no Eiyū	470
564	Kiseki o Okosu Shōnen	470
565	Konoha no Orenji Hokage	470
566	Natori	471
567	Natsu	472
568	Hyūga Natsu	473
569	Nawaki	475
570	Hyūga Neji	476
571	Nejiri	477
574	Ni	481
576	Take Nitora	483
582	Nanigashi	486
584	Nurari	488
589	Okisuke	493
605	Rahyō	507
611	Ranke	512
620	Shodai Kazekage	519
628	Ryūdōin Rokkaku	526
638	Rōshi	536
642	Sadai	538
659	Samo	549
667	Uchiha Sarada	557
671	Sasori	560
572	Nekobaa	478
578	Nonota	485
580	Mazā	486
583	Nue	487
590	Okyō	494
596	Oyone	500
606	Uchiha Rai	508
613	Rasa	514
623	Nohara Rin	522
626	Gejimayu; TV Brasileira	525
631	Ryōgi	529
653	Hatake Sakumo	546
655	Uchiha Sakura	547
666	Yamanaka Santa	556
672	Purofessā	561
674	Uchiha Sasuke	562
573	Nerugui	480
575	Nigai	482
577	Nobori	484
581	Aruki no Miko	486
586	Uchiha Obito	490
598	Pakkun	502
601	Sunagakure no Eiyū	503
608	Kurosuki RaigaKirigakure no Raijin	510
609	Raimei	511
617	Renga	517
618	Kokubō Renga	518
646	Rokubi	541
650	Sajin	544
579	Yakushi Nonō	486
585	Nurui	489
587	Oboro	491
588	Okami	492
591	Omoi	495
592	Orochimaru	496
593	Osoi	497
594	Otoha	498
595	Otokaze	499
597	Pakku Rī	501
599	Pakura	503
600	Shakuton no Pakura	503
602	Pochi	505
603	Shūtingu Sutā	505
604	Potcha	506
607	Namiashi Raidō	509
610	Kuroi Inabikari	511
612	Ranmaru	513
614	Yondaime Kazekage	514
615	Rashii	515
616	Yoimura Remon	516
619	Reto	519
621	Riichi	520
622	Rikumaru	521
624	Rinji	523
625	Rokku Rī	525
627	Konoha no Utsukushiki Aoi Yajū; TV Brasileira	525
629	Rokusuke	527
630	Ruka	528
632	Ryōkan	530
633	Ryūgan	531
634	Ryūki	532
635	Ryūsa	533
636	Ryūsui	534
637	Ryūzetsu	535
639	Yōton no Rōshi	536
640	Sabu	537
641	Kin	537
643	Saji	539
644	Sai	540
645	Yamanaka Sai	540
647	Saiken	541
648	Kamano Saisu	542
649	Sajin	543
651	Sajō	545
652	Konoha no Shiroi Kiba	546
654	Haruno Sakura	547
656	Dekorīn	547
657	Tsunade Nigō	547
658	Samidare	548
660	Samui	550
661	San	551
662	Sana	552
663	Asama Sandayū	553
664	Sangorō	554
665	Sanshō	555
668	Sari	558
669	Sasami	559
670	Akasuna no Sasori	560
673	Sarutobi Sasuke	561
675	Hebi Hakase	562
676	Yogen no Ko	562
677	Sasaukage	562
678	Sharingan no Sasuke	562
679	Satori	563
680	Senka Sazanami	564
681	Saō	565
682	Seimei	566
683	Sekiei	568
684	Sekka	569
685	Sekki	570
686	Sen	571
687	Shabadaba	572
688	Shamon	573
689	Nidaime Kazekage	573
690	Aburame Shibi	574
691	Shibire	575
692	Shigezane	577
693	Shiho	579
694	Shiin	580
695	Nara Shikaku	582
696	Nara Shikamaru	583
697	Aburame Shikuro	584
698	Shima	585
699	Gamadō no Haha	585
700	Shimeji	586
701	Hijiri Shimon	587
702	Shin	588
703	Shin'emon	589
704	Uchiha Shin	590
705	Shinga	591
706	Shinigami	592
707	Shinki	593
708	Inari Shinko	594
709	Aburame Shino	596
710	Mibu Shinobu	597
711	Shinta	598
712	Shion	599
713	Shira	601
714	Shiseru	602
715	Shishio	603
716	Uchiha Shisui	604
717	Shunshin no Shisui	604
718	TV Brasileira	604
719	Shisō	605
720	Akimichi Shitō	606
721	Shizuka	607
722	Shizuku	608
723	Hoshigaki Shizuma	609
724	Shizune	610
725	Shojoji	611
726	Shikabane Bunshin no Shojoji	611
727	Shukaku	612
728	Ichibi	612
729	Suna no Keshin	612
730	Suna no Shukaku	612
731	Shukaku, o Espírito da Areia	612
732	Bakedanuki	612
733	Ichibi no Shukaku	612
734	Shōseki	613
735	Son Gokū	614
736	Yonbi	614
737	Sen'en no Ō	614
738	Bien'ō	614
739	Seiten Taisei	614
740	Sora	615
741	Suguro	616
742	Hōzuki Suigetsu	617
743	Kijin no Sairai	617
744	Suika	618
745	Suiren	619
746	Suiu	620
747	Sukima	621
748	Sukui	622
749	Sukune	623
750	Sumaru	624
751	Sumashi	625
752	Kakei Sumire	627
753	Shigaraki Sumire	627
754	Iinchō	627
755	Susuki	629
756	Nara Suzaku	630
757	Suzu	631
758	Tsukishiro no Yōen	633
759	Suzuran	633
760	Sāra	634
761	Kazahana Sōsetsu	635
762	Sōta	636
763	Sōzu	637
764	Tagitsuhime	638
765	Taiga	639
766	Uchiha Taiko	640
767	Taiseki	641
768	Taji	643
769	Tajiki	644
770	Uchiha Tajima	645
771	Senka Takanami	646
772	Takemaru	647
773	Taku	648
774	Tamae	649
775	Tamaki	650
776	Tamao	651
777	Tango	653
778	Tanishi	654
779	Shigaraki Tanuki	655
780	Tanzō	656
781	Tatewaki	658
782	Tatsuji	659
783	Aburame Tatsuma	660
784	Tatsumi	661
785	Hokumon no Tayuya	662
786	Tayuya	662
790	Nara Temari	665
787	Sono San	662
788	Tazuna	663
789	Teguse	664
792	Temui	666
793	Temujin	667
791	Temari	665
794	Tenga	668
795	Izumo Tenma	669
796	Tenten	670
797	Madoka Tentō	671
798	Tenzen	672
799	Daikoku Tenzen	673
800	Terubō	674
801	Tetsu	675
802	Hyūga Tetsu	676
803	Tetsuru	677
804	Teuchi	678
805	Uchiha Teyaki	679
806	Tobi	680
807	Guruguru	680
808	Senju Tobirama	682
809	Nidaime Hokage	682
810	Todoroki	683
811	Tofu	684
812	Tokara	685
813	Tokiwa	686
814	Hyūga Tokuma	687
815	Tomari	688
816	Minakura Tomaru	689
817	Tonbee	690
818	Tobitake Tonbo	691
819	Ōtsutsuki Toneri	692
820	Tonton	693
821	Akimichi Torifu	694
822	Toroi	695
823	Jiton no Toroi	695
824	Toroi	696
825	Torune	697
826	Tosaka	698
827	Toyosa	699
828	Kurogane Tsubaki	700
829	Tsuchino	702
830	Inuzuka Tsume	705
831	Godaime Hokage	706
832	Densetsu no Kamo	706
833	Tsunade	706
834	Tsuna	706
835	Konoha no Namekuji Tsunade-hime	706
836	Tsunami	707
837	Itoi Tsuru	708
838	Hachiya Tsurushi	710
839	Sarugaku Tsuzumi	711
840	Kagetsu Tōbei	712
841	Tōfu	713
842	Senju Tōka	714
843	Udon	716
844	Ise Udon	716
845	Ugai	717
846	Umibōzu	718
847	Kurama Unkai	720
848	Ōtsutsuki Urashiki	721
849	Uchiha Uruchi	723
850	Utakata	724
851	Uō	725
852	Izuno Wasabi	726
853	Ya	727
854	Tendō	728
855	Yahiko	728
856	Yajirobee	729
857	Yakku	730
858	Uchiha Yakumi	731
859	Kurama Yakumo	732
860	Yamaoka	733
861	Yamato	734
862	Tenzō	734
863	Kinoe	734
864	Mokuton no Tenzō	734
865	Yashamaru	736
866	Uchiha Yashiro	737
867	Ryūgen Yatogo	738
868	Yodo	739
869	Yokaze	740
870	Yome	741
871	Yomi	742
872	Yone	743
873	Akadō Yoroi	744
874	Nara Yoshino	745
875	Yotaka	746
876	Nii Yugito	747
877	Yukai	749
878	Yukata	750
879	Yukimi	751
880	Yurika	752
881	Yurito	753
882	Yurui	754
883	Yūdachi	756
884	Yūgao Uzuki	757
885	Yūkimaru	758
886	Yūra	759
887	Yūsuke	760
888	Momochi Zabuza	761
889	Kirigakure no Kijin	761
890	Zaji	762
891	Abumi Zaku	763
892	Kuro-Zetsu	764
893	Dokuzetsu	764
894	Zō	765
895	Ōkei	766
896	Ōnoki	767
897	Sandaime Tsuchikage	767
898	Ryōtenbin no Ōnoki	767
899	Ōtora	768
900	Ōwashi	769
901	Ūhei	770
\.


--
-- Name: affiliation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.affiliation_id_seq', 49, true);


--
-- Name: characters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.characters_id_seq', 770, true);


--
-- Name: clan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clan_id_seq', 28, true);


--
-- Name: classification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classification_id_seq', 26, true);


--
-- Name: family_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_id_seq', 259, true);


--
-- Name: jutsu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jutsu_id_seq', 1583, true);


--
-- Name: kekkei_genkai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kekkei_genkai_id_seq', 20, true);


--
-- Name: nature_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nature_type_id_seq', 17, true);


--
-- Name: partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partner_id_seq', 80, true);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photos_id_seq', 961, true);


--
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.team_id_seq', 142, true);


--
-- Name: titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.titles_id_seq', 901, true);


--
-- Name: classification PK_1dc9176492b73104aa3d19ccff4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classification
    ADD CONSTRAINT "PK_1dc9176492b73104aa3d19ccff4" PRIMARY KEY (id);


--
-- Name: clan PK_25593abe237e38783ed2e91838f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clan
    ADD CONSTRAINT "PK_25593abe237e38783ed2e91838f" PRIMARY KEY (id);


--
-- Name: character_partner PK_3b8c8400a2400720419928e6d35; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_partner
    ADD CONSTRAINT "PK_3b8c8400a2400720419928e6d35" PRIMARY KEY (id_character, id_partner);


--
-- Name: photos PK_5220c45b8e32d49d767b9b3d725; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT "PK_5220c45b8e32d49d767b9b3d725" PRIMARY KEY (id);


--
-- Name: character_classification PK_5a437b4b2fe0e2b2618b0da6168; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_classification
    ADD CONSTRAINT "PK_5a437b4b2fe0e2b2618b0da6168" PRIMARY KEY (id_character, id_classification);


--
-- Name: character_family PK_6343a948eb9a14b52f358e99993; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_family
    ADD CONSTRAINT "PK_6343a948eb9a14b52f358e99993" PRIMARY KEY (id_character, id_family);


--
-- Name: character_nature_type PK_6a95aa5db3438a2abe9130f1e96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_nature_type
    ADD CONSTRAINT "PK_6a95aa5db3438a2abe9130f1e96" PRIMARY KEY (id_character, id_nature_type);


--
-- Name: titles PK_7c5aeca381c331c3aaf9d50931c; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT "PK_7c5aeca381c331c3aaf9d50931c" PRIMARY KEY (id);


--
-- Name: character_clan PK_8c41088c44c7ce8885d9aff7b09; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_clan
    ADD CONSTRAINT "PK_8c41088c44c7ce8885d9aff7b09" PRIMARY KEY (id_character, id_clan);


--
-- Name: partner PK_8f34ff11ddd5459eacbfacd48ca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT "PK_8f34ff11ddd5459eacbfacd48ca" PRIMARY KEY (id);


--
-- Name: character_team PK_8f684b45050da77e2e4f826f8df; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_team
    ADD CONSTRAINT "PK_8f684b45050da77e2e4f826f8df" PRIMARY KEY (id_character, id_team);


--
-- Name: characters PK_9d731e05758f26b9315dac5e378; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.characters
    ADD CONSTRAINT "PK_9d731e05758f26b9315dac5e378" PRIMARY KEY (id);


--
-- Name: family PK_ba386a5a59c3de8593cda4e5626; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT "PK_ba386a5a59c3de8593cda4e5626" PRIMARY KEY (id);


--
-- Name: character_kekkei_genkai PK_ba3e17756f4921e1a5a1c061585; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_kekkei_genkai
    ADD CONSTRAINT "PK_ba3e17756f4921e1a5a1c061585" PRIMARY KEY (id_character, id_kekkei_genkai);


--
-- Name: jutsu PK_c4ef7234287299b9a3ea804afdd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jutsu
    ADD CONSTRAINT "PK_c4ef7234287299b9a3ea804afdd" PRIMARY KEY (id);


--
-- Name: kekkei_genkai PK_d054b04b00577f20c4fe4adc43b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kekkei_genkai
    ADD CONSTRAINT "PK_d054b04b00577f20c4fe4adc43b" PRIMARY KEY (id);


--
-- Name: nature_type PK_e47b250910043e25961abdebc1d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nature_type
    ADD CONSTRAINT "PK_e47b250910043e25961abdebc1d" PRIMARY KEY (id);


--
-- Name: team PK_f57d8293406df4af348402e4b74; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT "PK_f57d8293406df4af348402e4b74" PRIMARY KEY (id);


--
-- Name: character_affiliation PK_f5e04decee1ef304b1b609278c4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_affiliation
    ADD CONSTRAINT "PK_f5e04decee1ef304b1b609278c4" PRIMARY KEY (id_character, id_affiliation);


--
-- Name: affiliation PK_faec2110a0fda4a0b7f93df6e6a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliation
    ADD CONSTRAINT "PK_faec2110a0fda4a0b7f93df6e6a" PRIMARY KEY (id);


--
-- Name: affiliation UQ_0a266ecb9defdbfb5088e8a9ee6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliation
    ADD CONSTRAINT "UQ_0a266ecb9defdbfb5088e8a9ee6" UNIQUE (name);


--
-- Name: kekkei_genkai UQ_4ed0a8deb270ab2fe5509d74862; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kekkei_genkai
    ADD CONSTRAINT "UQ_4ed0a8deb270ab2fe5509d74862" UNIQUE (name);


--
-- Name: nature_type UQ_55529bd064a8bf479d6cfe5eec0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nature_type
    ADD CONSTRAINT "UQ_55529bd064a8bf479d6cfe5eec0" UNIQUE (name);


--
-- Name: classification UQ_6d16b249bbcd93a087e56804b12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classification
    ADD CONSTRAINT "UQ_6d16b249bbcd93a087e56804b12" UNIQUE (name);


--
-- Name: partner UQ_9af6a8bd7cac55b61babc753853; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT "UQ_9af6a8bd7cac55b61babc753853" UNIQUE (name);


--
-- Name: clan UQ_b394039ff70f0dfb0b89ec51238; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clan
    ADD CONSTRAINT "UQ_b394039ff70f0dfb0b89ec51238" UNIQUE (name);


--
-- Name: family UQ_cb945a3561693907692670cdb4e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT "UQ_cb945a3561693907692670cdb4e" UNIQUE (name);


--
-- Name: team UQ_cf461f5b40cf1a2b8876011e1e1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT "UQ_cf461f5b40cf1a2b8876011e1e1" UNIQUE (name);


--
-- Name: IDX_02ddb20677b7f27073dddc44f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_02ddb20677b7f27073dddc44f5" ON public.character_clan USING btree (id_clan);


--
-- Name: IDX_12d12eaebd26d6417af9a7f9e8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_12d12eaebd26d6417af9a7f9e8" ON public.character_kekkei_genkai USING btree (id_kekkei_genkai);


--
-- Name: IDX_30179a93850839b0f9581e69bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_30179a93850839b0f9581e69bc" ON public.character_kekkei_genkai USING btree (id_character);


--
-- Name: IDX_5282474360f46490aa670cabf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_5282474360f46490aa670cabf9" ON public.character_classification USING btree (id_character);


--
-- Name: IDX_58bed9d94eafd1e67f77f94c24; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_58bed9d94eafd1e67f77f94c24" ON public.character_classification USING btree (id_classification);


--
-- Name: IDX_5a3438a0c7b0d5b341d52a8a0b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_5a3438a0c7b0d5b341d52a8a0b" ON public.character_family USING btree (id_family);


--
-- Name: IDX_7a352af8e723196dc208590289; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_7a352af8e723196dc208590289" ON public.character_team USING btree (id_team);


--
-- Name: IDX_89c5f6f3a1efe693d0f503aff2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_89c5f6f3a1efe693d0f503aff2" ON public.character_partner USING btree (id_character);


--
-- Name: IDX_9a3299c9cac1890865fd64b2e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_9a3299c9cac1890865fd64b2e4" ON public.character_clan USING btree (id_character);


--
-- Name: IDX_b356b3de7edb4f0f62cc19b508; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_b356b3de7edb4f0f62cc19b508" ON public.character_affiliation USING btree (id_affiliation);


--
-- Name: IDX_c048da9c218dab066d371bf4e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_c048da9c218dab066d371bf4e4" ON public.character_affiliation USING btree (id_character);


--
-- Name: IDX_ca8acee62df710e135c1a28a71; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_ca8acee62df710e135c1a28a71" ON public.character_team USING btree (id_character);


--
-- Name: IDX_ee30a3e86b9889f2a25cfafec3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_ee30a3e86b9889f2a25cfafec3" ON public.character_family USING btree (id_character);


--
-- Name: IDX_f8f4b2cb1e6c1dee8441268e0a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_f8f4b2cb1e6c1dee8441268e0a" ON public.character_nature_type USING btree (id_nature_type);


--
-- Name: IDX_fc5a31df31f2c99321b1eb99e7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fc5a31df31f2c99321b1eb99e7" ON public.character_partner USING btree (id_partner);


--
-- Name: IDX_fef6ea961b7335066dac893461; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_fef6ea961b7335066dac893461" ON public.character_nature_type USING btree (id_character);


--
-- Name: character_clan FK_02ddb20677b7f27073dddc44f53; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_clan
    ADD CONSTRAINT "FK_02ddb20677b7f27073dddc44f53" FOREIGN KEY (id_clan) REFERENCES public.clan(id) ON DELETE CASCADE;


--
-- Name: photos FK_0b1d752b1fb7c1a08de9ba6ef41; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT "FK_0b1d752b1fb7c1a08de9ba6ef41" FOREIGN KEY (id_character) REFERENCES public.characters(id);


--
-- Name: character_kekkei_genkai FK_12d12eaebd26d6417af9a7f9e8b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_kekkei_genkai
    ADD CONSTRAINT "FK_12d12eaebd26d6417af9a7f9e8b" FOREIGN KEY (id_kekkei_genkai) REFERENCES public.kekkei_genkai(id) ON DELETE CASCADE;


--
-- Name: character_kekkei_genkai FK_30179a93850839b0f9581e69bc4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_kekkei_genkai
    ADD CONSTRAINT "FK_30179a93850839b0f9581e69bc4" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: character_classification FK_5282474360f46490aa670cabf94; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_classification
    ADD CONSTRAINT "FK_5282474360f46490aa670cabf94" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: character_classification FK_58bed9d94eafd1e67f77f94c24a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_classification
    ADD CONSTRAINT "FK_58bed9d94eafd1e67f77f94c24a" FOREIGN KEY (id_classification) REFERENCES public.classification(id) ON DELETE CASCADE;


--
-- Name: character_family FK_5a3438a0c7b0d5b341d52a8a0b5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_family
    ADD CONSTRAINT "FK_5a3438a0c7b0d5b341d52a8a0b5" FOREIGN KEY (id_family) REFERENCES public.family(id) ON DELETE CASCADE;


--
-- Name: character_team FK_7a352af8e723196dc208590289b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_team
    ADD CONSTRAINT "FK_7a352af8e723196dc208590289b" FOREIGN KEY (id_team) REFERENCES public.team(id) ON DELETE CASCADE;


--
-- Name: titles FK_7ac035bec92669533052306a933; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT "FK_7ac035bec92669533052306a933" FOREIGN KEY (id_character) REFERENCES public.characters(id);


--
-- Name: character_partner FK_89c5f6f3a1efe693d0f503aff25; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_partner
    ADD CONSTRAINT "FK_89c5f6f3a1efe693d0f503aff25" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: character_clan FK_9a3299c9cac1890865fd64b2e40; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_clan
    ADD CONSTRAINT "FK_9a3299c9cac1890865fd64b2e40" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: jutsu FK_9d2018a04a2d96095885d0f8463; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jutsu
    ADD CONSTRAINT "FK_9d2018a04a2d96095885d0f8463" FOREIGN KEY (id_character) REFERENCES public.characters(id);


--
-- Name: character_affiliation FK_b356b3de7edb4f0f62cc19b5081; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_affiliation
    ADD CONSTRAINT "FK_b356b3de7edb4f0f62cc19b5081" FOREIGN KEY (id_affiliation) REFERENCES public.affiliation(id) ON DELETE CASCADE;


--
-- Name: character_affiliation FK_c048da9c218dab066d371bf4e45; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_affiliation
    ADD CONSTRAINT "FK_c048da9c218dab066d371bf4e45" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: character_team FK_ca8acee62df710e135c1a28a716; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_team
    ADD CONSTRAINT "FK_ca8acee62df710e135c1a28a716" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: character_family FK_ee30a3e86b9889f2a25cfafec3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_family
    ADD CONSTRAINT "FK_ee30a3e86b9889f2a25cfafec3c" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;


--
-- Name: character_nature_type FK_f8f4b2cb1e6c1dee8441268e0a6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_nature_type
    ADD CONSTRAINT "FK_f8f4b2cb1e6c1dee8441268e0a6" FOREIGN KEY (id_nature_type) REFERENCES public.nature_type(id) ON DELETE CASCADE;


--
-- Name: character_partner FK_fc5a31df31f2c99321b1eb99e71; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_partner
    ADD CONSTRAINT "FK_fc5a31df31f2c99321b1eb99e71" FOREIGN KEY (id_partner) REFERENCES public.partner(id) ON DELETE CASCADE;


--
-- Name: character_nature_type FK_fef6ea961b7335066dac8934616; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.character_nature_type
    ADD CONSTRAINT "FK_fef6ea961b7335066dac8934616" FOREIGN KEY (id_character) REFERENCES public.characters(id) ON DELETE CASCADE;
