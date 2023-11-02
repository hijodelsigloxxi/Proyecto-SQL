--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-02 12:29:26 CET

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
-- TOC entry 3398 (class 0 OID 17611)
-- Dependencies: 217
-- Data for Name: campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campus (id, nombre) FROM stdin;
0	Madrid
1	Valencia
\.


--
-- TOC entry 3396 (class 0 OID 17596)
-- Dependencies: 215
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (id, nombre) FROM stdin;
7	Mario Prats
8	Luis Ángel Suárez
9	María Dolores Diaz
\.


--
-- TOC entry 3399 (class 0 OID 17616)
-- Dependencies: 218
-- Data for Name: promocion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promocion (id, mes, fecha_inicio, id_campus) FROM stdin;
0	Septiembre	18/09/2023	0
1	Febrero	12/02/2024	0
2	Febrero	12/02/2024	1
\.


--
-- TOC entry 3400 (class 0 OID 17626)
-- Dependencies: 219
-- Data for Name: vertical; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vertical (id, nombre, id_promocion, id_profesor) FROM stdin;
0	DS	0	9
1	FS	0	8
3	FS	2	7
2	DS	1	\N
\.


--
-- TOC entry 3402 (class 0 OID 17646)
-- Dependencies: 221
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (id, nombre, email, id_vertical) FROM stdin;
0	Jafet Casals	Jafet_Casals@gmail.com	0
1	Jorge Manzanares	Jorge_Manzanares@gmail.com	0
2	Onofre Adadia	Onofre_Adadia@gmail.com	0
3	Merche Prada	Merche_Prada@gmail.com	0
4	Pilar Abella	Pilar_Abella@gmail.com	0
5	Leoncio Tena	Leoncio_Tena@gmail.com	0
6	Odalys Torrijos	Odalys_Torrijos@gmail.com	0
7	Eduardo Caparrós	Eduardo_Caparrós@gmail.com	0
8	Ignacio Goicoechea	Ignacio_Goicoechea@gmail.com	0
9	Clementina Santos	Clementina_Santos@gmail.com	0
10	Daniela Falcó	Daniela_Falcó@gmail.com	0
11	Abraham Vélez	Abraham_Vélez@gmail.com	0
12	Maximiliano Menéndez	Maximiliano_Menéndez@gmail.com	0
13	Anita Heredia	Anita_Heredia@gmail.com	0
14	Eli Casas	Eli_Casas@gmail.com	0
15	Guillermo Borrego	Guillermo_Borrego@gmail.com	2
16	Sergio Aguirre	Sergio_Aguirre@gmail.com	2
17	Carlito Carrión	Carlito_Carrión@gmail.com	2
18	Haydée Figueroa	Haydée_Figueroa@gmail.com	2
19	Chita Mancebo	Chita_Mancebo@gmail.com	2
20	Joaquina Asensio	Joaquina_Asensio@gmail.com	2
21	Cristian Sarabia	Cristian_Sarabia@gmail.com	2
22	Isabel Ibáñez	Isabel_Ibáñez@gmail.com	2
23	Desiderio Jordá	Desiderio_Jordá@gmail.com	2
24	Rosalina Llanos	Rosalina_Llanos@gmail.com	2
25	Amor Larrañaga	Amor_Larrañaga@gmail.com	1
26	Teodoro Alberola	Teodoro_Alberola@gmail.com	1
27	Cleto Plana	Cleto_Plana@gmail.com	1
28	Aitana Sebastián	Aitana_Sebastián@gmail.com	1
29	Dolores Valbuena	Dolores_Valbuena@gmail.com	1
30	Julie Ferrer	Julie_Ferrer@gmail.com	1
31	Mireia Cabañas	Mireia_Cabañas@gmail.com	1
32	Flavia Amador	Flavia_Amador@gmail.com	1
33	Albino Macias	Albino_Macias@gmail.com	1
34	Ester Sánchez	Ester_Sánchez@gmail.com	1
35	Luis Miguel Galvez	Luis_Miguel_Galvez@gmail.com	1
36	Loida Arellano	Loida_Arellano@gmail.com	1
37	Heraclio Duque	Heraclio_Duque@gmail.com	1
38	Herberto Figueras	Herberto_Figueras@gmail.com	1
39	Teresa Laguna	Teresa_Laguna@gmail.com	3
40	Estrella Murillo	Estrella_Murillo@gmail.com	3
41	Ernesto Uriarte	Ernesto_Uriarte@gmail.com	3
42	Daniela Guitart	Daniela_Guitart@gmail.com	3
43	Timoteo Trillo	Timoteo_Trillo@gmail.com	3
44	Ricarda Tovar	Ricarda_Tovar@gmail.com	3
45	Alejandra Vilaplana	Alejandra_Vilaplana@gmail.com	3
46	Daniel Rosselló	Daniel_Rosselló@gmail.com	3
47	Rita Olivares	Rita_Olivares@gmail.com	3
48	Cleto Montes	Cleto_Montes@gmail.com	3
49	Marino Castilla	Marino_Castilla@gmail.com	3
50	Estefanía Valcárcel	Estefanía_Valcárcel@gmail.com	3
51	Noemí Vilanova	Noemí_Vilanova@gmail.com	3
\.


--
-- TOC entry 3401 (class 0 OID 17641)
-- Dependencies: 220
-- Data for Name: proyectos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proyectos (id, nombre) FROM stdin;
0	Proyecto_HLF
1	Proyecto_EDA
2	Proyecto_BBDD
3	Proyecto_ML
4	Proyecto_Deployment
5	Proyecto_WebDev
6	Proyecto_FrontEnd
7	Proyecto_Backend
8	Proyecto_React
9	Proyecto_FullSatck
\.


--
-- TOC entry 3403 (class 0 OID 17656)
-- Dependencies: 222
-- Data for Name: notas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notas (id, id_alumno, id_proyecto, nota) FROM stdin;
0	0	0	Apto
1	1	0	Apto
2	2	0	Apto
3	3	0	Apto
4	4	0	Apto
5	5	0	Apto
6	6	0	No Apto
7	7	0	No Apto
8	8	0	Apto
9	9	0	Apto
10	10	0	Apto
11	11	0	Apto
12	12	0	Apto
13	13	0	Apto
14	14	0	Apto
15	15	0	Apto
16	16	0	Apto
17	17	0	Apto
18	18	0	Apto
19	19	0	No Apto
20	20	0	No Apto
21	21	0	Apto
22	22	0	No Apto
23	23	0	No Apto
24	24	0	Apto
25	0	1	No Apto
26	1	1	No Apto
27	2	1	Apto
28	3	1	No Apto
29	4	1	No Apto
30	5	1	Apto
31	6	1	Apto
32	7	1	Apto
33	8	1	Apto
34	9	1	No Apto
35	10	1	Apto
36	11	1	No Apto
37	12	1	No Apto
38	13	1	Apto
39	14	1	Apto
40	15	1	No Apto
41	16	1	No Apto
42	17	1	No Apto
43	18	1	Apto
44	19	1	Apto
45	20	1	No Apto
46	21	1	Apto
47	22	1	Apto
48	23	1	Apto
49	24	1	Apto
50	0	2	Apto
51	1	2	Apto
52	2	2	Apto
53	3	2	No Apto
54	4	2	Apto
55	5	2	Apto
56	6	2	Apto
57	7	2	Apto
58	8	2	Apto
59	9	2	Apto
60	10	2	Apto
61	11	2	No Apto
62	12	2	Apto
63	13	2	Apto
64	14	2	Apto
65	15	2	No Apto
66	16	2	Apto
67	17	2	Apto
68	18	2	Apto
69	19	2	No Apto
70	20	2	Apto
71	21	2	No Apto
72	22	2	No Apto
73	23	2	No Apto
74	24	2	Apto
75	0	3	Apto
76	1	3	Apto
77	2	3	No Apto
78	3	3	Apto
79	4	3	Apto
80	5	3	Apto
81	6	3	Apto
82	7	3	Apto
83	8	3	No Apto
84	9	3	Apto
85	10	3	Apto
86	11	3	Apto
87	12	3	Apto
88	13	3	Apto
89	14	3	Apto
90	15	3	Apto
91	16	3	Apto
92	17	3	Apto
93	18	3	Apto
94	19	3	Apto
95	20	3	Apto
96	21	3	Apto
97	22	3	Apto
98	23	3	No Apto
99	24	3	Apto
100	0	4	Apto
101	1	4	Apto
102	2	4	Apto
103	3	4	No Apto
104	4	4	Apto
105	5	4	Apto
106	6	4	Apto
107	7	4	Apto
108	8	4	Apto
109	9	4	Apto
110	10	4	Apto
111	11	4	Apto
112	12	4	Apto
113	13	4	Apto
114	14	4	Apto
115	15	4	No Apto
116	16	4	No Apto
117	17	4	Apto
118	18	4	Apto
119	19	4	Apto
120	20	4	Apto
121	21	4	Apto
122	22	4	Apto
123	23	4	Apto
124	24	4	Apto
125	25	5	Apto
126	26	5	No Apto
127	27	5	Apto
128	28	5	Apto
129	29	5	Apto
130	30	5	No Apto
131	31	5	No Apto
132	32	5	Apto
133	33	5	No Apto
134	34	5	No Apto
135	35	5	No Apto
136	36	5	Apto
137	37	5	Apto
138	38	5	Apto
139	39	5	Apto
140	40	5	Apto
141	41	5	Apto
142	42	5	Apto
143	43	5	No Apto
144	44	5	Apto
145	45	5	No Apto
146	46	5	No Apto
147	47	5	No Apto
148	48	5	Apto
149	49	5	No Apto
150	50	5	Apto
151	51	5	Apto
152	25	6	Apto
153	26	6	No Apto
154	27	6	No Apto
155	28	6	No Apto
156	29	6	Apto
157	30	6	No Apto
158	31	6	Apto
159	32	6	Apto
160	33	6	Apto
161	34	6	Apto
162	35	6	Apto
163	36	6	Apto
164	37	6	Apto
165	38	6	Apto
166	39	6	Apto
167	40	6	Apto
168	41	6	Apto
169	42	6	No Apto
170	43	6	Apto
171	44	6	Apto
172	45	6	No Apto
173	46	6	No Apto
174	47	6	No Apto
175	48	6	Apto
176	49	6	No Apto
177	50	6	Apto
178	51	6	No Apto
179	25	7	Apto
180	26	7	Apto
181	27	7	Apto
182	28	7	Apto
183	29	7	Apto
184	30	7	No Apto
185	31	7	Apto
186	32	7	No Apto
187	33	7	Apto
188	34	7	Apto
189	35	7	Apto
190	36	7	Apto
191	37	7	No Apto
192	38	7	Apto
193	39	7	Apto
194	40	7	No Apto
195	41	7	Apto
196	42	7	No Apto
197	43	7	Apto
198	44	7	Apto
199	45	7	No Apto
200	46	7	Apto
201	47	7	No Apto
202	48	7	No Apto
203	49	7	Apto
204	50	7	No Apto
205	51	7	No Apto
206	25	8	Apto
207	26	8	No Apto
208	27	8	No Apto
209	28	8	No Apto
210	29	8	Apto
211	30	8	Apto
212	31	8	Apto
213	32	8	Apto
214	33	8	Apto
215	34	8	No Apto
216	35	8	Apto
217	36	8	Apto
218	37	8	No Apto
219	38	8	Apto
220	39	8	Apto
221	40	8	Apto
222	41	8	Apto
223	42	8	Apto
224	43	8	Apto
225	44	8	Apto
226	45	8	Apto
227	46	8	No Apto
228	47	8	Apto
229	48	8	Apto
230	49	8	No Apto
231	50	8	No Apto
232	51	8	Apto
233	25	9	No Apto
234	26	9	Apto
235	27	9	Apto
236	28	9	Apto
237	29	9	No Apto
238	30	9	No Apto
239	31	9	Apto
240	32	9	Apto
241	33	9	Apto
242	34	9	Apto
243	35	9	Apto
244	36	9	Apto
245	37	9	No Apto
246	38	9	Apto
247	39	9	Apto
248	40	9	Apto
249	41	9	Apto
250	42	9	Apto
251	43	9	No Apto
252	44	9	Apto
253	45	9	Apto
254	46	9	No Apto
255	47	9	Apto
256	48	9	Apto
257	49	9	No Apto
258	50	9	Apto
259	51	9	Apto
\.


--
-- TOC entry 3397 (class 0 OID 17601)
-- Dependencies: 216
-- Data for Name: ta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ta (id, id_profesor, nombre) FROM stdin;
0	9	Noa Yáñez
1	9	Saturnina Benitez
2	9	Ariel Lledó
3	8	Anna Feliu
4	8	Angélica Corral
5	7	Rosalva Ayuso
6	7	Ana Sofía Ferrer
\.


-- Completed on 2023-11-02 12:29:26 CET

--
-- PostgreSQL database dump complete
--

