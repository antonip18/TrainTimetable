-- Wygenerowano przez gen7.py
SET client_encoding = 'UTF8';
BEGIN;

COPY wojewodztwa (id_wojewodztwa, nazwa_wojewodztwa) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	DOLNOŚLĄSKIE
2	KUJAWSKO-POMORSKIE
3	LUBELSKIE
4	LUBUSKIE
5	ŁÓDZKIE
6	MAŁOPOLSKIE
7	MAZOWIECKIE
8	OPOLSKIE
9	PODKARPACKIE
10	PODLASKIE
11	POMORSKIE
12	ŚLĄSKIE
13	ŚWIĘTOKRZYSKIE
14	WARMIŃSKO-MAZURSKIE
15	WIELKOPOLSKIE
16	ZACHODNIOPOMORSKIE
\.

COPY powiaty (id_powiatu, nazwa_powiatu, id_wojewodztwa) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	bolesławiecki	1
2	dzierżoniowski	1
3	głogowski	1
4	górowski	1
5	jaworski	1
6	karkonoski	1
7	kamiennogórski	1
8	kłodzki	1
9	legnicki	1
10	lubański	1
11	lubiński	1
12	lwówecki	1
13	milicki	1
14	oleśnicki	1
15	oławski	1
16	polkowicki	1
17	strzeliński	1
18	średzki	1
19	świdnicki	1
20	trzebnicki	1
21	wałbrzyski	1
22	wołowski	1
23	wrocławski	1
24	ząbkowicki	1
25	zgorzelecki	1
26	złotoryjski	1
27	Jelenia Góra	1
28	Legnica	1
29	Wrocław	1
30	Wałbrzych	1
31	aleksandrowski	2
32	brodnicki	2
33	bydgoski	2
34	chełmiński	2
35	golubsko-dobrzyński	2
36	grudziądzki	2
37	inowrocławski	2
38	lipnowski	2
39	mogileński	2
40	nakielski	2
41	radziejowski	2
42	rypiński	2
43	sępoleński	2
44	świecki	2
45	toruński	2
46	tucholski	2
47	wąbrzeski	2
48	włocławski	2
49	żniński	2
50	Bydgoszcz	2
51	Grudziądz	2
52	Toruń	2
53	Włocławek	2
54	bialski	3
55	biłgorajski	3
56	chełmski	3
57	hrubieszowski	3
58	janowski	3
59	krasnostawski	3
60	kraśnicki	3
61	lubartowski	3
62	lubelski	3
63	łęczyński	3
64	łukowski	3
65	opolski	3
66	parczewski	3
67	puławski	3
68	radzyński	3
69	rycki	3
70	świdnicki	3
71	tomaszowski	3
72	włodawski	3
73	zamojski	3
74	Biała Podlaska	3
75	Chełm	3
76	Lublin	3
77	Zamość	3
78	gorzowski	4
79	krośnieński	4
80	międzyrzecki	4
81	nowosolski	4
82	słubicki	4
83	strzelecko-drezdenecki	4
84	sulęciński	4
85	świebodziński	4
86	zielonogórski	4
87	żagański	4
88	żarski	4
89	wschowski	4
90	Gorzów Wielkopolski	4
91	Zielona Góra	4
92	bełchatowski	5
93	kutnowski	5
94	łaski	5
95	łęczycki	5
96	łowicki	5
97	łódzki wschodni	5
98	opoczyński	5
99	pabianicki	5
100	pajęczański	5
101	piotrkowski	5
102	poddębicki	5
103	radomszczański	5
104	rawski	5
105	sieradzki	5
106	skierniewicki	5
107	tomaszowski	5
108	wieluński	5
109	wieruszowski	5
110	zduńskowolski	5
111	zgierski	5
112	brzeziński	5
113	Łódź	5
114	Piotrków Trybunalski	5
115	Skierniewice	5
116	bocheński	6
117	brzeski	6
118	chrzanowski	6
119	dąbrowski	6
120	gorlicki	6
121	krakowski	6
122	limanowski	6
123	miechowski	6
124	myślenicki	6
125	nowosądecki	6
126	nowotarski	6
127	olkuski	6
128	oświęcimski	6
129	proszowicki	6
130	suski	6
131	tarnowski	6
132	tatrzański	6
133	wadowicki	6
134	wielicki	6
135	Kraków	6
136	Nowy Sącz	6
137	Tarnów	6
138	białobrzeski	7
139	ciechanowski	7
140	garwoliński	7
141	gostyniński	7
142	grodziski	7
143	grójecki	7
144	kozienicki	7
145	legionowski	7
146	lipski	7
147	łosicki	7
148	makowski	7
149	miński	7
150	mławski	7
151	nowodworski	7
152	ostrołęcki	7
153	ostrowski	7
154	otwocki	7
155	piaseczyński	7
156	płocki	7
157	płoński	7
158	pruszkowski	7
159	przasnyski	7
160	przysuski	7
161	pułtuski	7
162	radomski	7
163	siedlecki	7
164	sierpecki	7
165	sochaczewski	7
166	sokołowski	7
167	szydłowiecki	7
168	warszawski zachodni	7
169	węgrowski	7
170	wołomiński	7
171	wyszkowski	7
172	zwoleński	7
173	żuromiński	7
174	żyrardowski	7
175	Ostrołęka	7
176	Płock	7
177	Radom	7
178	Siedlce	7
179	Warszawa	7
180	brzeski	8
181	głubczycki	8
182	kędzierzyńsko-kozielski	8
183	kluczborski	8
184	krapkowicki	8
185	namysłowski	8
186	nyski	8
187	oleski	8
188	opolski	8
189	prudnicki	8
190	strzelecki	8
191	Opole	8
192	bieszczadzki	9
193	brzozowski	9
194	dębicki	9
195	jarosławski	9
196	jasielski	9
197	kolbuszowski	9
198	krośnieński	9
199	leżajski	9
200	lubaczowski	9
201	łańcucki	9
202	mielecki	9
203	niżański	9
204	przemyski	9
205	przeworski	9
206	ropczycko-sędziszowski	9
207	rzeszowski	9
208	sanocki	9
209	stalowowolski	9
210	strzyżowski	9
211	tarnobrzeski	9
212	leski	9
213	Krosno	9
214	Przemyśl	9
215	Rzeszów	9
216	Tarnobrzeg	9
217	augustowski	10
218	białostocki	10
219	bielski	10
220	grajewski	10
221	hajnowski	10
222	kolneński	10
223	łomżyński	10
224	moniecki	10
225	sejneński	10
226	siemiatycki	10
227	sokólski	10
228	suwalski	10
229	wysokomazowiecki	10
230	zambrowski	10
231	Białystok	10
232	Łomża	10
233	Suwałki	10
234	bytowski	11
235	chojnicki	11
236	człuchowski	11
237	gdański	11
238	kartuski	11
239	kościerski	11
240	kwidzyński	11
241	lęborski	11
242	malborski	11
243	nowodworski	11
244	pucki	11
245	słupski	11
246	starogardzki	11
247	tczewski	11
248	wejherowski	11
249	sztumski	11
250	Gdańsk	11
251	Gdynia	11
252	Słupsk	11
253	Sopot	11
254	będziński	12
255	bielski	12
256	cieszyński	12
257	częstochowski	12
258	gliwicki	12
259	kłobucki	12
260	lubliniecki	12
261	mikołowski	12
262	myszkowski	12
263	pszczyński	12
264	raciborski	12
265	rybnicki	12
266	tarnogórski	12
267	bieruńsko-lędziński	12
268	wodzisławski	12
269	zawierciański	12
270	żywiecki	12
271	Bielsko-Biała	12
272	Bytom	12
273	Chorzów	12
274	Częstochowa	12
275	Dąbrowa Górnicza	12
276	Gliwice	12
277	Jastrzębie-Zdrój	12
278	Jaworzno	12
279	Katowice	12
280	Mysłowice	12
281	Piekary Śląskie	12
282	Ruda Śląska	12
283	Rybnik	12
284	Siemianowice Śląskie	12
285	Sosnowiec	12
286	Świętochłowice	12
287	Tychy	12
288	Zabrze	12
289	Żory	12
290	buski	13
291	jędrzejowski	13
292	kazimierski	13
293	kielecki	13
294	konecki	13
295	opatowski	13
296	ostrowiecki	13
297	pińczowski	13
298	sandomierski	13
299	skarżyski	13
300	starachowicki	13
301	staszowski	13
302	włoszczowski	13
303	Kielce	13
304	bartoszycki	14
305	braniewski	14
306	działdowski	14
307	elbląski	14
308	ełcki	14
309	giżycki	14
310	iławski	14
311	kętrzyński	14
312	lidzbarski	14
313	mrągowski	14
314	nidzicki	14
315	nowomiejski	14
316	olecki	14
317	olsztyński	14
318	ostródzki	14
319	piski	14
320	szczycieński	14
321	gołdapski	14
322	węgorzewski	14
323	Elbląg	14
324	Olsztyn	14
325	chodzieski	15
326	czarnkowsko-trzcianecki	15
327	gnieźnieński	15
328	gostyński	15
329	grodziski	15
330	jarociński	15
331	kaliski	15
332	kępiński	15
333	kolski	15
334	koniński	15
335	kościański	15
336	krotoszyński	15
337	leszczyński	15
338	międzychodzki	15
339	nowotomyski	15
340	obornicki	15
341	ostrowski	15
342	ostrzeszowski	15
343	pilski	15
344	pleszewski	15
345	poznański	15
346	rawicki	15
347	słupecki	15
348	szamotulski	15
349	średzki	15
350	śremski	15
351	turecki	15
352	wągrowiecki	15
353	wolsztyński	15
354	wrzesiński	15
355	złotowski	15
356	Kalisz	15
357	Konin	15
358	Leszno	15
359	Poznań	15
360	białogardzki	16
361	choszczeński	16
362	drawski	16
363	goleniowski	16
364	gryficki	16
365	gryfiński	16
366	kamieński	16
367	kołobrzeski	16
368	koszaliński	16
369	myśliborski	16
370	policki	16
371	pyrzycki	16
372	sławieński	16
373	stargardzki	16
374	szczecinecki	16
375	świdwiński	16
376	wałecki	16
377	łobeski	16
378	Koszalin	16
379	Szczecin	16
380	Świnoujście	16
\.

COPY gminy (id_gminy, nazwa_gminy, id_powiatu) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	Bolesławiec	1
2	Bolesławiec	1
3	Gromadka	1
4	Nowogrodziec	1
5	Osiecznica	1
6	Warta Bolesławiecka	1
7	Bielawa	2
8	Dzierżoniów	2
9	Pieszyce	2
10	Piława Górna	2
11	Dzierżoniów	2
12	Łagiewniki	2
13	Niemcza	2
14	Głogów	3
15	Głogów	3
16	Jerzmanowa	3
17	Kotla	3
18	Pęcław	3
19	Żukowice	3
20	Góra	4
21	Jemielno	4
22	Niechlów	4
23	Wąsosz	4
24	Jawor	5
25	Bolków	5
26	Męcinka	5
27	Mściwojów	5
28	Paszowice	5
29	Wądroże Wielkie	5
30	Karpacz	6
31	Kowary	6
32	Piechowice	6
33	Szklarska Poręba	6
34	Janowice Wielkie	6
35	Jeżów Sudecki	6
36	Mysłakowice	6
37	Podgórzyn	6
38	Stara Kamienica	6
39	Kamienna Góra	7
40	Kamienna Góra	7
41	Lubawka	7
42	Marciszów	7
43	Duszniki-Zdrój	8
44	Kłodzko	8
45	Kudowa-Zdrój	8
46	Nowa Ruda	8
47	Polanica-Zdrój	8
48	Bystrzyca Kłodzka	8
49	Kłodzko	8
50	Lądek-Zdrój	8
51	Lewin Kłodzki	8
52	Międzylesie	8
53	Nowa Ruda	8
54	Radków	8
55	Stronie Śląskie	8
56	Szczytna	8
57	Chojnów	9
58	Chojnów	9
59	Krotoszyce	9
60	Kunice	9
61	Legnickie Pole	9
62	Miłkowice	9
63	Prochowice	9
64	Ruja	9
65	Lubań	10
66	Świeradów-Zdrój	10
67	Leśna	10
68	Lubań	10
69	Olszyna	10
70	Platerówka	10
71	Siekierczyn	10
72	Lubin	11
73	Lubin	11
74	Rudna	11
75	Ścinawa	11
76	Gryfów Śląski	12
77	Lubomierz	12
78	Lwówek Śląski	12
79	Mirsk	12
80	Wleń	12
81	Cieszków	13
82	Krośnice	13
83	Milicz	13
84	Oleśnica	14
85	Bierutów	14
86	Dobroszyce	14
87	Dziadowa Kłoda	14
88	Międzybórz	14
89	Oleśnica	14
90	Syców	14
91	Twardogóra	14
92	Oława	15
93	Domaniów	15
94	Jelcz-Laskowice	15
95	Oława	15
96	Chocianów	16
97	Gaworzyce	16
98	Grębocice	16
99	Polkowice	16
100	Przemków	16
101	Radwanice	16
102	Borów	17
103	Kondratowice	17
104	Przeworno	17
105	Strzelin	17
106	Wiązów	17
107	Kostomłoty	18
108	Malczyce	18
109	Miękinia	18
110	Środa Śląska	18
111	Udanin	18
112	Świdnica	19
113	Świebodzice	19
114	Dobromierz	19
115	Jaworzyna Śląska	19
116	Marcinowice	19
117	Strzegom	19
118	Świdnica	19
119	Żarów	19
120	Oborniki Śląskie	20
121	Prusice	20
122	Trzebnica	20
123	Wisznia Mała	20
124	Zawonia	20
125	Żmigród	20
126	Boguszów-Gorce	21
127	Jedlina-Zdrój	21
128	Szczawno-Zdrój	21
129	Czarny Bór	21
130	Głuszyca	21
131	Mieroszów	21
132	Stare Bogaczowice	21
133	Walim	21
134	Brzeg Dolny	22
135	Wińsko	22
136	Wołów	22
137	Czernica	23
138	Długołęka	23
139	Jordanów Śląski	23
140	Kąty Wrocławskie	23
141	Kobierzyce	23
142	Mietków	23
143	Sobótka	23
144	Siechnice	23
145	Żórawina	23
146	Bardo	24
147	Ciepłowody	24
148	Kamieniec Ząbkowicki	24
149	Stoszowice	24
150	Ząbkowice Śląskie	24
151	Ziębice	24
152	Złoty Stok	24
153	Zawidów	25
154	Zgorzelec	25
155	Bogatynia	25
156	Pieńsk	25
157	Sulików	25
158	Węgliniec	25
159	Zgorzelec	25
160	Wojcieszów	26
161	Złotoryja	26
162	Pielgrzymka	26
163	Świerzawa	26
164	Zagrodno	26
165	Złotoryja	26
166	Jelenia Góra	27
167	Legnica	28
168	Wrocław	29
169	Wałbrzych	30
170	Aleksandrów Kujawski	31
171	Ciechocinek	31
172	Nieszawa	31
173	Aleksandrów Kujawski	31
174	Bądkowo	31
175	Koneck	31
176	Raciążek	31
177	Waganiec	31
178	Zakrzewo	31
179	Brodnica	32
180	Bobrowo	32
181	Brodnica	32
182	Brzozie	32
183	Górzno	32
184	Bartniczka	32
185	Jabłonowo Pomorskie	32
186	Osiek	32
187	Świedziebnia	32
188	Zbiczno	32
189	Białe Błota	33
190	Dąbrowa Chełmińska	33
191	Dobrcz	33
192	Koronowo	33
193	Nowa Wieś Wielka	33
194	Osielsko	33
195	Sicienko	33
196	Solec Kujawski	33
197	Chełmno	34
198	Chełmno	34
199	Kijewo Królewskie	34
200	Lisewo	34
201	Papowo Biskupie	34
202	Stolno	34
203	Unisław	34
204	Golub-Dobrzyń	35
205	Ciechocin	35
206	Golub-Dobrzyń	35
207	Kowalewo Pomorskie	35
208	Radomin	35
209	Zbójno	35
210	Grudziądz	36
211	Gruta	36
212	Łasin	36
213	Radzyń Chełmiński	36
214	Rogóźno	36
215	Świecie nad Osą	36
216	Inowrocław	37
217	Dąbrowa Biskupia	37
218	Gniewkowo	37
219	Inowrocław	37
220	Janikowo	37
221	Kruszwica	37
222	Pakość	37
223	Rojewo	37
224	Złotniki Kujawskie	37
225	Lipno	38
226	Bobrowniki	38
227	Chrostkowo	38
228	Dobrzyń nad Wisłą	38
229	Kikół	38
230	Lipno	38
231	Skępe	38
232	Tłuchowo	38
233	Wielgie	38
234	Dąbrowa	39
235	Jeziora Wielkie	39
236	Mogilno	39
237	Strzelno	39
238	Kcynia	40
239	Mrocza	40
240	Nakło nad Notecią	40
241	Sadki	40
242	Szubin	40
243	Radziejów	41
244	Bytoń	41
245	Dobre	41
246	Osięciny	41
247	Piotrków Kujawski	41
248	Radziejów	41
249	Topólka	41
250	Rypin	42
251	Brzuze	42
252	Rogowo	42
253	Rypin	42
254	Skrwilno	42
255	Wąpielsk	42
256	Kamień Krajeński	43
257	Sępólno Krajeńskie	43
258	Sośno	43
259	Więcbork	43
260	Bukowiec	44
261	Dragacz	44
262	Drzycim	44
263	Jeżewo	44
264	Lniano	44
265	Nowe	44
266	Osie	44
267	Pruszcz	44
268	Świecie	44
269	Świekatowo	44
270	Warlubie	44
271	Chełmża	45
272	Chełmża	45
273	Czernikowo	45
274	Lubicz	45
275	Łubianka	45
276	Łysomice	45
277	Obrowo	45
278	Wielka Nieszawka	45
279	Zławieś Wielka	45
280	Cekcyn	46
281	Gostycyn	46
282	Kęsowo	46
283	Lubiewo	46
284	Śliwice	46
285	Tuchola	46
286	Wąbrzeźno	47
287	Dębowa Łąka	47
288	Książki	47
289	Płużnica	47
290	Ryńsk	47
291	Kowal	48
292	Baruchowo	48
293	Boniewo	48
294	Brześć Kujawski	48
295	Choceń	48
296	Chodecz	48
297	Fabianki	48
298	Izbica Kujawska	48
299	Kowal	48
300	Lubanie	48
301	Lubień Kujawski	48
302	Lubraniec	48
303	Włocławek	48
304	Barcin	49
305	Gąsawa	49
306	Janowiec Wielkopolski	49
307	Łabiszyn	49
308	Rogowo	49
309	Żnin	49
310	Bydgoszcz	50
311	Grudziądz	51
312	Toruń	52
313	Włocławek	53
314	Międzyrzec Podlaski	54
315	Terespol	54
316	Biała Podlaska	54
317	Drelów	54
318	Janów Podlaski	54
319	Kodeń	54
320	Konstantynów	54
321	Leśna Podlaska	54
322	Łomazy	54
323	Międzyrzec Podlaski	54
324	Piszczac	54
325	Rokitno	54
326	Rossosz	54
327	Sławatycze	54
328	Sosnówka	54
329	Terespol	54
330	Tuczna	54
331	Wisznice	54
332	Zalesie	54
333	Biłgoraj	55
334	Aleksandrów	55
335	Biłgoraj	55
336	Biszcza	55
337	Frampol	55
338	Goraj	55
339	Józefów	55
340	Księżpol	55
341	Łukowa	55
342	Obsza	55
343	Potok Górny	55
344	Tarnogród	55
345	Tereszpol	55
346	Turobin	55
347	Rejowiec Fabryczny	56
348	Białopole	56
349	Chełm	56
350	Dorohusk	56
351	Dubienka	56
352	Kamień	56
353	Leśniowice	56
354	Rejowiec Fabryczny	56
355	Ruda-Huta	56
356	Sawin	56
357	Siedliszcze	56
358	Wierzbica	56
359	Wojsławice	56
360	Żmudź	56
361	Rejowiec	56
362	Hrubieszów	57
363	Dołhobyczów	57
364	Horodło	57
365	Hrubieszów	57
366	Mircze	57
367	Trzeszczany	57
368	Uchanie	57
369	Werbkowice	57
370	Batorz	58
371	Chrzanów	58
372	Dzwola	58
373	Godziszów	58
374	Janów Lubelski	58
375	Modliborzyce	58
376	Potok Wielki	58
377	Krasnystaw	59
378	Fajsławice	59
379	Gorzków	59
380	Izbica	59
381	Krasnystaw	59
382	Kraśniczyn	59
383	Łopiennik Górny	59
384	Rudnik	59
385	Siennica Różana	59
386	Żółkiewka	59
387	Kraśnik	60
388	Annopol	60
389	Dzierzkowice	60
390	Gościeradów	60
391	Kraśnik	60
392	Szastarka	60
393	Trzydnik Duży	60
394	Urzędów	60
395	Wilkołaz	60
396	Zakrzówek	60
397	Lubartów	61
398	Abramów	61
399	Firlej	61
400	Jeziorzany	61
401	Kamionka	61
402	Kock	61
403	Lubartów	61
404	Michów	61
405	Niedźwiada	61
406	Ostrów Lubelski	61
407	Ostrówek	61
408	Serniki	61
409	Uścimów	61
410	Bełżyce	62
411	Borzechów	62
412	Bychawa	62
413	Garbów	62
414	Głusk	62
415	Jabłonna	62
416	Jastków	62
417	Konopnica	62
418	Krzczonów	62
419	Niedrzwica Duża	62
420	Niemce	62
421	Strzyżewice	62
422	Wojciechów	62
423	Wólka	62
424	Wysokie	62
425	Zakrzew	62
426	Cyców	63
427	Ludwin	63
428	Łęczna	63
429	Milejów	63
430	Puchaczów	63
431	Spiczyn	63
432	Łuków	64
433	Stoczek Łukowski	64
434	Adamów	64
435	Krzywda	64
436	Łuków	64
437	Serokomla	64
438	Stanin	64
439	Stoczek Łukowski	64
440	Trzebieszów	64
441	Wojcieszków	64
442	Wola Mysłowska	64
443	Chodel	65
444	Józefów nad Wisłą	65
445	Karczmiska	65
446	Łaziska	65
447	Opole Lubelskie	65
448	Poniatowa	65
449	Wilków	65
450	Dębowa Kłoda	66
451	Jabłoń	66
452	Milanów	66
453	Parczew	66
454	Podedwórze	66
455	Siemień	66
456	Sosnowica	66
457	Puławy	67
458	Baranów	67
459	Janowiec	67
460	Kazimierz Dolny	67
461	Końskowola	67
462	Kurów	67
463	Markuszów	67
464	Nałęczów	67
465	Puławy	67
466	Wąwolnica	67
467	Żyrzyn	67
468	Radzyń Podlaski	68
469	Borki	68
470	Czemierniki	68
471	Kąkolewnica	68
472	Komarówka Podlaska	68
473	Radzyń Podlaski	68
474	Ulan-Majorat	68
475	Wohyń	68
476	Dęblin	69
477	Kłoczew	69
478	Nowodwór	69
479	Ryki	69
480	Stężyca	69
481	Ułęż	69
482	Świdnik	70
483	Mełgiew	70
484	Piaski	70
485	Rybczewice	70
486	Trawniki	70
487	Tomaszów Lubelski	71
488	Bełżec	71
489	Jarczów	71
490	Krynice	71
491	Lubycza Królewska	71
492	Łaszczów	71
493	Rachanie	71
494	Susiec	71
495	Tarnawatka	71
496	Telatyn	71
497	Tomaszów Lubelski	71
498	Tyszowce	71
499	Ulhówek	71
500	Włodawa	72
501	Hanna	72
502	Hańsk	72
503	Stary Brus	72
504	Urszulin	72
505	Włodawa	72
506	Wola Uhruska	72
507	Wyryki	72
508	Adamów	73
509	Grabowiec	73
510	Komarów-Osada	73
511	Krasnobród	73
512	Łabunie	73
513	Miączyn	73
514	Nielisz	73
515	Radecznica	73
516	Sitno	73
517	Skierbieszów	73
518	Stary Zamość	73
519	Sułów	73
520	Szczebrzeszyn	73
521	Zamość	73
522	Zwierzyniec	73
523	Biała Podlaska	74
524	Chełm	75
525	Lublin	76
526	Zamość	77
527	Kostrzyn nad Odrą	78
528	Bogdaniec	78
529	Deszczno	78
530	Kłodawa	78
531	Lubiszyn	78
532	Santok	78
533	Witnica	78
534	Gubin	79
535	Bobrowice	79
536	Bytnica	79
537	Dąbie	79
538	Gubin	79
539	Krosno Odrzańskie	79
540	Maszewo	79
541	Bledzew	80
542	Międzyrzecz	80
543	Przytoczna	80
544	Pszczew	80
545	Skwierzyna	80
546	Trzciel	80
547	Nowa Sól	81
548	Bytom Odrzański	81
549	Kolsko	81
550	Kożuchów	81
551	Nowa Sól	81
552	Nowe Miasteczko	81
553	Otyń	81
554	Siedlisko	81
555	Cybinka	82
556	Górzyca	82
557	Ośno Lubuskie	82
558	Rzepin	82
559	Słubice	82
560	Dobiegniew	83
561	Drezdenko	83
562	Stare Kurowo	83
563	Strzelce Krajeńskie	83
564	Zwierzyn	83
565	Krzeszyce	84
566	Lubniewice	84
567	Słońsk	84
568	Sulęcin	84
569	Torzym	84
570	Lubrza	85
571	Łagów	85
572	Skąpe	85
573	Szczaniec	85
574	Świebodzin	85
575	Zbąszynek	85
576	Babimost	86
577	Bojadła	86
578	Czerwieńsk	86
579	Kargowa	86
580	Nowogród Bobrzański	86
581	Sulechów	86
582	Świdnica	86
583	Trzebiechów	86
584	Zabór	86
585	Gozdnica	87
586	Żagań	87
587	Brzeźnica	87
588	Iłowa	87
589	Małomice	87
590	Niegosławice	87
591	Szprotawa	87
592	Wymiarki	87
593	Żagań	87
594	Łęknica	88
595	Żary	88
596	Brody	88
597	Jasień	88
598	Lipinki Łużyckie	88
599	Lubsko	88
600	Przewóz	88
601	Trzebiel	88
602	Tuplice	88
603	Żary	88
604	Sława	89
605	Szlichtyngowa	89
606	Wschowa	89
607	Gorzów Wielkopolski	90
608	Zielona Góra	91
609	Bełchatów	92
610	Bełchatów	92
611	Drużbice	92
612	Kleszczów	92
613	Kluki	92
614	Rusiec	92
615	Szczerców	92
616	Zelów	92
617	Kutno	93
618	Bedlno	93
619	Dąbrowice	93
620	Krośniewice	93
621	Krzyżanów	93
622	Kutno	93
623	Łanięta	93
624	Nowe Ostrowy	93
625	Oporów	93
626	Strzelce	93
627	Żychlin	93
628	Buczek	94
629	Łask	94
630	Sędziejowice	94
631	Widawa	94
632	Wodzierady	94
633	Łęczyca	95
634	Daszyna	95
635	Góra Świętej Małgorzaty	95
636	Grabów	95
637	Łęczyca	95
638	Piątek	95
639	Świnice Warckie	95
640	Witonia	95
641	Łowicz	96
642	Bielawy	96
643	Chąśno	96
644	Domaniewice	96
645	Kiernozia	96
646	Kocierzew Południowy	96
647	Łowicz	96
648	Łyszkowice	96
649	Nieborów	96
650	Zduny	96
651	Andrespol	97
652	Brójce	97
653	Koluszki	97
654	Nowosolna	97
655	Rzgów	97
656	Tuszyn	97
657	Białaczów	98
658	Drzewica	98
659	Mniszków	98
660	Opoczno	98
661	Paradyż	98
662	Poświętne	98
663	Sławno	98
664	Żarnów	98
665	Konstantynów Łódzki	99
666	Pabianice	99
667	Dłutów	99
668	Dobroń	99
669	Ksawerów	99
670	Lutomiersk	99
671	Pabianice	99
672	Działoszyn	100
673	Kiełczygłów	100
674	Nowa Brzeźnica	100
675	Pajęczno	100
676	Rząśnia	100
677	Siemkowice	100
678	Strzelce Wielkie	100
679	Sulmierzyce	100
680	Aleksandrów	101
681	Czarnocin	101
682	Gorzkowice	101
683	Grabica	101
684	Łęki Szlacheckie	101
685	Moszczenica	101
686	Ręczno	101
687	Rozprza	101
688	Sulejów	101
689	Wola Krzysztoporska	101
690	Wolbórz	101
691	Dalików	102
692	Pęczniew	102
693	Poddębice	102
694	Uniejów	102
695	Wartkowice	102
696	Zadzim	102
697	Radomsko	103
698	Dobryszyce	103
699	Gidle	103
700	Gomunice	103
701	Kamieńsk	103
702	Kobiele Wielkie	103
703	Kodrąb	103
704	Lgota Wielka	103
705	Ładzice	103
706	Masłowice	103
707	Przedbórz	103
708	Radomsko	103
709	Wielgomłyny	103
710	Żytno	103
711	Rawa Mazowiecka	104
712	Biała Rawska	104
713	Cielądz	104
714	Rawa Mazowiecka	104
715	Regnów	104
716	Sadkowice	104
717	Sieradz	105
718	Błaszki	105
719	Brąszewice	105
720	Brzeźnio	105
721	Burzenin	105
722	Goszczanów	105
723	Klonowa	105
724	Sieradz	105
725	Warta	105
726	Wróblew	105
727	Złoczew	105
728	Bolimów	106
729	Głuchów	106
730	Godzianów	106
731	Kowiesy	106
732	Lipce Reymontowskie	106
733	Maków	106
734	Nowy Kawęczyn	106
735	Skierniewice	106
736	Słupia	106
737	Tomaszów Mazowiecki	107
738	Będków	107
739	Budziszewice	107
740	Czerniewice	107
741	Inowłódz	107
742	Lubochnia	107
743	Rokiciny	107
744	Rzeczyca	107
745	Tomaszów Mazowiecki	107
746	Ujazd	107
747	Żelechlinek	107
748	Biała	108
749	Czarnożyły	108
750	Konopnica	108
751	Mokrsko	108
752	Osjaków	108
753	Ostrówek	108
754	Pątnów	108
755	Skomlin	108
756	Wieluń	108
757	Wierzchlas	108
758	Bolesławiec	109
759	Czastary	109
760	Galewice	109
761	Lututów	109
762	Łubnice	109
763	Sokolniki	109
764	Wieruszów	109
765	Zduńska Wola	110
766	Szadek	110
767	Zapolice	110
768	Zduńska Wola	110
769	Głowno	111
770	Ozorków	111
771	Zgierz	111
772	Aleksandrów Łódzki	111
773	Głowno	111
774	Ozorków	111
775	Parzęczew	111
776	Stryków	111
777	Zgierz	111
778	Brzeziny	112
779	Brzeziny	112
780	Dmosin	112
781	Jeżów	112
782	Rogów	112
783	Łódź	113
784	Piotrków Trybunalski	114
785	Skierniewice	115
786	Bochnia	116
787	Bochnia	116
788	Drwinia	116
789	Lipnica Murowana	116
790	Łapanów	116
791	Nowy Wiśnicz	116
792	Rzezawa	116
793	Trzciana	116
794	Żegocina	116
795	Borzęcin	117
796	Brzesko	117
797	Czchów	117
798	Dębno	117
799	Gnojnik	117
800	Iwkowa	117
801	Szczurowa	117
802	Alwernia	118
803	Babice	118
804	Chrzanów	118
805	Libiąż	118
806	Trzebinia	118
807	Bolesław	119
808	Dąbrowa Tarnowska	119
809	Gręboszów	119
810	Mędrzechów	119
811	Olesno	119
812	Radgoszcz	119
813	Szczucin	119
814	Gorlice	120
815	Biecz	120
816	Bobowa	120
817	Gorlice	120
818	Lipinki	120
819	Łużna	120
820	Moszczenica	120
821	Ropa	120
822	Sękowa	120
823	Uście Gorlickie	120
824	Czernichów	121
825	Igołomia-Wawrzeńczyce	121
826	Iwanowice	121
827	Jerzmanowice-Przeginia	121
828	Kocmyrzów-Luborzyca	121
829	Krzeszowice	121
830	Liszki	121
831	Michałowice	121
832	Mogilany	121
833	Skała	121
834	Skawina	121
835	Słomniki	121
836	Sułoszowa	121
837	Świątniki Górne	121
838	Wielka Wieś	121
839	Zabierzów	121
840	Zielonki	121
841	Limanowa	122
842	Mszana Dolna	122
843	Dobra	122
844	Jodłownik	122
845	Kamienica	122
846	Laskowa	122
847	Limanowa	122
848	Łukowica	122
849	Mszana Dolna	122
850	Niedźwiedź	122
851	Słopnice	122
852	Tymbark	122
853	Szczawa	122
854	Charsznica	123
855	Gołcza	123
856	Kozłów	123
857	Książ Wielki	123
858	Miechów	123
859	Racławice	123
860	Słaboszów	123
861	Dobczyce	124
862	Lubień	124
863	Myślenice	124
864	Pcim	124
865	Raciechowice	124
866	Siepraw	124
867	Sułkowice	124
868	Tokarnia	124
869	Wiśniowa	124
870	Grybów	125
871	Chełmiec	125
872	Gródek nad Dunajcem	125
873	Grybów	125
874	Kamionka Wielka	125
875	Korzenna	125
876	Krynica-Zdrój	125
877	Łabowa	125
878	Łącko	125
879	Łososina Dolna	125
880	Muszyna	125
881	Nawojowa	125
882	Piwniczna-Zdrój	125
883	Podegrodzie	125
884	Rytro	125
885	Stary Sącz	125
886	Nowy Targ	126
887	Szczawnica	126
888	Czarny Dunajec	126
889	Czorsztyn	126
890	Jabłonka	126
891	Krościenko nad Dunajcem	126
892	Lipnica Wielka	126
893	Łapsze Niżne	126
894	Nowy Targ	126
895	Ochotnica Dolna	126
896	Raba Wyżna	126
897	Rabka-Zdrój	126
898	Spytkowice	126
899	Szaflary	126
900	Bukowno	127
901	Bolesław	127
902	Klucze	127
903	Olkusz	127
904	Trzyciąż	127
905	Wolbrom	127
906	Oświęcim	128
907	Brzeszcze	128
908	Chełmek	128
909	Kęty	128
910	Osiek	128
911	Oświęcim	128
912	Polanka Wielka	128
913	Przeciszów	128
914	Zator	128
915	Koniusza	129
916	Koszyce	129
917	Nowe Brzesko	129
918	Pałecznica	129
919	Proszowice	129
920	Radziemice	129
921	Jordanów	130
922	Sucha Beskidzka	130
923	Budzów	130
924	Bystra-Sidzina	130
925	Jordanów	130
926	Maków Podhalański	130
927	Stryszawa	130
928	Zawoja	130
929	Zembrzyce	130
930	Ciężkowice	131
931	Gromnik	131
932	Lisia Góra	131
933	Pleśna	131
934	Radłów	131
935	Ryglice	131
936	Rzepiennik Strzyżewski	131
937	Skrzyszów	131
938	Tarnów	131
939	Tuchów	131
940	Wierzchosławice	131
941	Wietrzychowice	131
942	Wojnicz	131
943	Zakliczyn	131
944	Żabno	131
945	Szerzyny	131
946	Zakopane	132
947	Biały Dunajec	132
948	Bukowina Tatrzańska	132
949	Kościelisko	132
950	Poronin	132
951	Andrychów	133
952	Brzeźnica	133
953	Kalwaria Zebrzydowska	133
954	Lanckorona	133
955	Mucharz	133
956	Spytkowice	133
957	Stryszów	133
958	Tomice	133
959	Wadowice	133
960	Wieprz	133
961	Biskupice	134
962	Gdów	134
963	Kłaj	134
964	Niepołomice	134
965	Wieliczka	134
966	Kraków	135
967	Nowy Sącz	136
968	Tarnów	137
969	Białobrzegi	138
970	Promna	138
971	Radzanów	138
972	Stara Błotnica	138
973	Stromiec	138
974	Wyśmierzyce	138
975	Ciechanów	139
976	Ciechanów	139
977	Glinojeck	139
978	Gołymin-Ośrodek	139
979	Grudusk	139
980	Ojrzeń	139
981	Opinogóra Górna	139
982	Regimin	139
983	Sońsk	139
984	Garwolin	140
985	Łaskarzew	140
986	Borowie	140
987	Garwolin	140
988	Górzno	140
989	Łaskarzew	140
990	Maciejowice	140
991	Miastków Kościelny	140
992	Parysów	140
993	Pilawa	140
994	Sobolew	140
995	Trojanów	140
996	Wilga	140
997	Żelechów	140
998	Gostynin	141
999	Gostynin	141
1000	Pacyna	141
1001	Sanniki	141
1002	Szczawin Kościelny	141
1003	Milanówek	142
1004	Podkowa Leśna	142
1005	Baranów	142
1006	Grodzisk Mazowiecki	142
1007	Jaktorów	142
1008	Żabia Wola	142
1009	Belsk Duży	143
1010	Błędów	143
1011	Chynów	143
1012	Goszczyn	143
1013	Grójec	143
1014	Jasieniec	143
1015	Mogielnica	143
1016	Nowe Miasto nad Pilicą	143
1017	Pniewy	143
1018	Warka	143
1019	Garbatka-Letnisko	144
1020	Głowaczów	144
1021	Gniewoszów	144
1022	Grabów nad Pilicą	144
1023	Kozienice	144
1024	Magnuszew	144
1025	Sieciechów	144
1026	Legionowo	145
1027	Jabłonna	145
1028	Nieporęt	145
1029	Serock	145
1030	Wieliszew	145
1031	Chotcza	146
1032	Ciepielów	146
1033	Lipsko	146
1034	Rzeczniów	146
1035	Sienno	146
1036	Solec nad Wisłą	146
1037	Huszlew	147
1038	Łosice	147
1039	Olszanka	147
1040	Platerów	147
1041	Sarnaki	147
1042	Stara Kornica	147
1043	Maków Mazowiecki	148
1044	Czerwonka	148
1045	Karniewo	148
1046	Krasnosielc	148
1047	Młynarze	148
1048	Płoniawy-Bramura	148
1049	Różan	148
1050	Rzewnie	148
1051	Sypniewo	148
1052	Szelków	148
1053	Mińsk Mazowiecki	149
1054	Cegłów	149
1055	Dębe Wielkie	149
1056	Dobre	149
1057	Halinów	149
1058	Jakubów	149
1059	Kałuszyn	149
1060	Latowicz	149
1061	Mińsk Mazowiecki	149
1062	Mrozy	149
1063	Siennica	149
1064	Stanisławów	149
1065	Sulejówek	149
1066	Mława	150
1067	Dzierzgowo	150
1068	Lipowiec Kościelny	150
1069	Radzanów	150
1070	Strzegowo	150
1071	Stupsk	150
1072	Szreńsk	150
1073	Szydłowo	150
1074	Wieczfnia Kościelna	150
1075	Wiśniewo	150
1076	Nowy Dwór Mazowiecki	151
1077	Czosnów	151
1078	Leoncin	151
1079	Nasielsk	151
1080	Pomiechówek	151
1081	Zakroczym	151
1082	Baranowo	152
1083	Czarnia	152
1084	Czerwin	152
1085	Goworowo	152
1086	Kadzidło	152
1087	Lelis	152
1088	Łyse	152
1089	Myszyniec	152
1090	Olszewo-Borki	152
1091	Rzekuń	152
1092	Troszyn	152
1093	Ostrów Mazowiecka	153
1094	Andrzejewo	153
1095	Boguty-Pianki	153
1096	Brok	153
1097	Małkinia Górna	153
1098	Nur	153
1099	Ostrów Mazowiecka	153
1100	Stary Lubotyń	153
1101	Szulborze Wielkie	153
1102	Wąsewo	153
1103	Zaręby Kościelne	153
1104	Józefów	154
1105	Otwock	154
1106	Celestynów	154
1107	Karczew	154
1108	Kołbiel	154
1109	Osieck	154
1110	Sobienie-Jeziory	154
1111	Wiązowna	154
1112	Góra Kalwaria	155
1113	Konstancin-Jeziorna	155
1114	Lesznowola	155
1115	Piaseczno	155
1116	Prażmów	155
1117	Tarczyn	155
1118	Bielsk	156
1119	Bodzanów	156
1120	Brudzeń Duży	156
1121	Bulkowo	156
1122	Drobin	156
1123	Gąbin	156
1124	Łąck	156
1125	Mała Wieś	156
1126	Nowy Duninów	156
1127	Radzanowo	156
1128	Słubice	156
1129	Słupno	156
1130	Stara Biała	156
1131	Staroźreby	156
1132	Wyszogród	156
1133	Płońsk	157
1134	Raciąż	157
1135	Baboszewo	157
1136	Czerwińsk nad Wisłą	157
1137	Dzierzążnia	157
1138	Joniec	157
1139	Naruszewo	157
1140	Nowe Miasto	157
1141	Płońsk	157
1142	Raciąż	157
1143	Sochocin	157
1144	Załuski	157
1145	Piastów	158
1146	Pruszków	158
1147	Brwinów	158
1148	Michałowice	158
1149	Nadarzyn	158
1150	Raszyn	158
1151	Przasnysz	159
1152	Chorzele	159
1153	Czernice Borowe	159
1154	Jednorożec	159
1155	Krasne	159
1156	Krzynowłoga Mała	159
1157	Przasnysz	159
1158	Borkowice	160
1159	Gielniów	160
1160	Klwów	160
1161	Odrzywół	160
1162	Potworów	160
1163	Przysucha	160
1164	Rusinów	160
1165	Wieniawa	160
1166	Gzy	161
1167	Obryte	161
1168	Pokrzywnica	161
1169	Pułtusk	161
1170	Świercze	161
1171	Winnica	161
1172	Zatory	161
1173	Pionki	162
1174	Gózd	162
1175	Iłża	162
1176	Jastrzębia	162
1177	Jedlińsk	162
1178	Jedlnia-Letnisko	162
1179	Kowala	162
1180	Pionki	162
1181	Przytyk	162
1182	Skaryszew	162
1183	Wierzbica	162
1184	Wolanów	162
1185	Zakrzew	162
1186	Domanice	163
1187	Korczew	163
1188	Kotuń	163
1189	Mokobody	163
1190	Mordy	163
1191	Paprotnia	163
1192	Przesmyki	163
1193	Siedlce	163
1194	Skórzec	163
1195	Suchożebry	163
1196	Wiśniew	163
1197	Wodynie	163
1198	Zbuczyn	163
1199	Sierpc	164
1200	Gozdowo	164
1201	Mochowo	164
1202	Rościszewo	164
1203	Sierpc	164
1204	Szczutowo	164
1205	Zawidz	164
1206	Sochaczew	165
1207	Brochów	165
1208	Iłów	165
1209	Młodzieszyn	165
1210	Nowa Sucha	165
1211	Rybno	165
1212	Sochaczew	165
1213	Teresin	165
1214	Sokołów Podlaski	166
1215	Bielany	166
1216	Ceranów	166
1217	Jabłonna Lacka	166
1218	Kosów Lacki	166
1219	Repki	166
1220	Sabnie	166
1221	Sokołów Podlaski	166
1222	Sterdyń	166
1223	Chlewiska	167
1224	Jastrząb	167
1225	Mirów	167
1226	Orońsko	167
1227	Szydłowiec	167
1228	Błonie	168
1229	Izabelin	168
1230	Kampinos	168
1231	Leszno	168
1232	Łomianki	168
1233	Ożarów Mazowiecki	168
1234	Stare Babice	168
1235	Węgrów	169
1236	Grębków	169
1237	Korytnica	169
1238	Liw	169
1239	Łochów	169
1240	Miedzna	169
1241	Sadowne	169
1242	Stoczek	169
1243	Wierzbno	169
1244	Kobyłka	170
1245	Marki	170
1246	Ząbki	170
1247	Zielonka	170
1248	Dąbrówka	170
1249	Jadów	170
1250	Klembów	170
1251	Poświętne	170
1252	Radzymin	170
1253	Strachówka	170
1254	Tłuszcz	170
1255	Wołomin	170
1256	Brańszczyk	171
1257	Długosiodło	171
1258	Rząśnik	171
1259	Somianka	171
1260	Wyszków	171
1261	Zabrodzie	171
1262	Kazanów	172
1263	Policzna	172
1264	Przyłęk	172
1265	Tczów	172
1266	Zwoleń	172
1267	Bieżuń	173
1268	Kuczbork-Osada	173
1269	Lubowidz	173
1270	Lutocin	173
1271	Siemiątkowo	173
1272	Żuromin	173
1273	Żyrardów	174
1274	Mszczonów	174
1275	Puszcza Mariańska	174
1276	Radziejowice	174
1277	Wiskitki	174
1278	Ostrołęka	175
1279	Płock	176
1280	Radom	177
1281	Siedlce	178
1282	Warszawa	179
1283	Brzeg	180
1284	Skarbimierz	180
1285	Grodków	180
1286	Lewin Brzeski	180
1287	Lubsza	180
1288	Olszanka	180
1289	Baborów	181
1290	Branice	181
1291	Głubczyce	181
1292	Kietrz	181
1293	Kędzierzyn-Koźle	182
1294	Bierawa	182
1295	Cisek	182
1296	Pawłowiczki	182
1297	Polska Cerekiew	182
1298	Reńska Wieś	182
1299	Byczyna	183
1300	Kluczbork	183
1301	Lasowice Wielkie	183
1302	Wołczyn	183
1303	Gogolin	184
1304	Krapkowice	184
1305	Strzeleczki	184
1306	Walce	184
1307	Zdzieszowice	184
1308	Domaszowice	185
1309	Namysłów	185
1310	Pokój	185
1311	Świerczów	185
1312	Wilków	185
1313	Głuchołazy	186
1314	Kamiennik	186
1315	Korfantów	186
1316	Łambinowice	186
1317	Nysa	186
1318	Otmuchów	186
1319	Paczków	186
1320	Pakosławice	186
1321	Skoroszyce	186
1322	Dobrodzień	187
1323	Gorzów Śląski	187
1324	Olesno	187
1325	Praszka	187
1326	Radłów	187
1327	Rudniki	187
1328	Zębowice	187
1329	Chrząstowice	188
1330	Dąbrowa	188
1331	Dobrzeń Wielki	188
1332	Komprachcice	188
1333	Łubniany	188
1334	Murów	188
1335	Niemodlin	188
1336	Ozimek	188
1337	Popielów	188
1338	Prószków	188
1339	Tarnów Opolski	188
1340	Tułowice	188
1341	Turawa	188
1342	Biała	189
1343	Głogówek	189
1344	Lubrza	189
1345	Prudnik	189
1346	Izbicko	190
1347	Jemielnica	190
1348	Kolonowskie	190
1349	Leśnica	190
1350	Strzelce Opolskie	190
1351	Ujazd	190
1352	Zawadzkie	190
1353	Opole	191
1354	Czarna	192
1355	Lutowiska	192
1356	Ustrzyki Dolne	192
1357	Brzozów	193
1358	Domaradz	193
1359	Dydnia	193
1360	Haczów	193
1361	Jasienica Rosielna	193
1362	Nozdrzec	193
1363	Dębica	194
1364	Brzostek	194
1365	Czarna	194
1366	Dębica	194
1367	Jodłowa	194
1368	Pilzno	194
1369	Żyraków	194
1370	Jarosław	195
1371	Radymno	195
1372	Chłopice	195
1373	Jarosław	195
1374	Laszki	195
1375	Pawłosiów	195
1376	Pruchnik	195
1377	Radymno	195
1378	Rokietnica	195
1379	Roźwienica	195
1380	Wiązownica	195
1381	Jasło	196
1382	Brzyska	196
1383	Dębowiec	196
1384	Jasło	196
1385	Kołaczyce	196
1386	Krempna	196
1387	Nowy Żmigród	196
1388	Osiek Jasielski	196
1389	Skołyszyn	196
1390	Tarnowiec	196
1391	Cmolas	197
1392	Kolbuszowa	197
1393	Majdan Królewski	197
1394	Niwiska	197
1395	Raniżów	197
1396	Dzikowiec	197
1397	Chorkówka	198
1398	Dukla	198
1399	Iwonicz-Zdrój	198
1400	Jedlicze	198
1401	Korczyna	198
1402	Krościenko Wyżne	198
1403	Miejsce Piastowe	198
1404	Rymanów	198
1405	Wojaszówka	198
1406	Jaśliska	198
1407	Leżajsk	199
1408	Grodzisko Dolne	199
1409	Kuryłówka	199
1410	Leżajsk	199
1411	Nowa Sarzyna	199
1412	Lubaczów	200
1413	Cieszanów	200
1414	Horyniec-Zdrój	200
1415	Lubaczów	200
1416	Narol	200
1417	Oleszyce	200
1418	Stary Dzików	200
1419	Wielkie Oczy	200
1420	Łańcut	201
1421	Białobrzegi	201
1422	Czarna	201
1423	Łańcut	201
1424	Markowa	201
1425	Rakszawa	201
1426	Żołynia	201
1427	Mielec	202
1428	Borowa	202
1429	Czermin	202
1430	Gawłuszowice	202
1431	Mielec	202
1432	Padew Narodowa	202
1433	Przecław	202
1434	Radomyśl Wielki	202
1435	Tuszów Narodowy	202
1436	Wadowice Górne	202
1437	Harasiuki	203
1438	Jarocin	203
1439	Jeżowe	203
1440	Krzeszów	203
1441	Nisko	203
1442	Rudnik nad Sanem	203
1443	Ulanów	203
1444	Bircza	204
1445	Dubiecko	204
1446	Fredropol	204
1447	Krasiczyn	204
1448	Krzywcza	204
1449	Medyka	204
1450	Orły	204
1451	Przemyśl	204
1452	Stubno	204
1453	Żurawica	204
1454	Przeworsk	205
1455	Adamówka	205
1456	Gać	205
1457	Jawornik Polski	205
1458	Kańczuga	205
1459	Przeworsk	205
1460	Sieniawa	205
1461	Tryńcza	205
1462	Zarzecze	205
1463	Iwierzyce	206
1464	Ostrów	206
1465	Ropczyce	206
1466	Sędziszów Małopolski	206
1467	Wielopole Skrzyńskie	206
1468	Dynów	207
1469	Błażowa	207
1470	Boguchwała	207
1471	Chmielnik	207
1472	Dynów	207
1473	Głogów Małopolski	207
1474	Hyżne	207
1475	Kamień	207
1476	Krasne	207
1477	Lubenia	207
1478	Sokołów Małopolski	207
1479	Świlcza	207
1480	Trzebownisko	207
1481	Tyczyn	207
1482	Sanok	208
1483	Besko	208
1484	Bukowsko	208
1485	Komańcza	208
1486	Sanok	208
1487	Tyrawa Wołoska	208
1488	Zagórz	208
1489	Zarszyn	208
1490	Stalowa Wola	209
1491	Bojanów	209
1492	Pysznica	209
1493	Radomyśl nad Sanem	209
1494	Zaklików	209
1495	Zaleszany	209
1496	Czudec	210
1497	Frysztak	210
1498	Niebylec	210
1499	Strzyżów	210
1500	Wiśniowa	210
1501	Baranów Sandomierski	211
1502	Gorzyce	211
1503	Grębów	211
1504	Nowa Dęba	211
1505	Baligród	212
1506	Cisna	212
1507	Lesko	212
1508	Olszanica	212
1509	Solina	212
1510	Krosno	213
1511	Przemyśl	214
1512	Rzeszów	215
1513	Tarnobrzeg	216
1514	Augustów	217
1515	Augustów	217
1516	Bargłów Kościelny	217
1517	Lipsk	217
1518	Nowinka	217
1519	Płaska	217
1520	Sztabin	217
1521	Choroszcz	218
1522	Czarna Białostocka	218
1523	Dobrzyniewo Duże	218
1524	Gródek	218
1525	Juchnowiec Kościelny	218
1526	Łapy	218
1527	Michałowo	218
1528	Poświętne	218
1529	Supraśl	218
1530	Suraż	218
1531	Turośń Kościelna	218
1532	Tykocin	218
1533	Wasilków	218
1534	Zabłudów	218
1535	Zawady	218
1536	Grabówka	218
1537	Bielsk Podlaski	219
1538	Brańsk	219
1539	Bielsk Podlaski	219
1540	Boćki	219
1541	Brańsk	219
1542	Orla	219
1543	Rudka	219
1544	Wyszki	219
1545	Grajewo	220
1546	Grajewo	220
1547	Radziłów	220
1548	Rajgród	220
1549	Szczuczyn	220
1550	Wąsosz	220
1551	Hajnówka	221
1552	Białowieża	221
1553	Czeremcha	221
1554	Czyże	221
1555	Dubicze Cerkiewne	221
1556	Hajnówka	221
1557	Kleszczele	221
1558	Narew	221
1559	Narewka	221
1560	Kolno	222
1561	Grabowo	222
1562	Kolno	222
1563	Mały Płock	222
1564	Stawiski	222
1565	Turośl	222
1566	Jedwabne	223
1567	Łomża	223
1568	Miastkowo	223
1569	Nowogród	223
1570	Piątnica	223
1571	Przytuły	223
1572	Śniadowo	223
1573	Wizna	223
1574	Zbójna	223
1575	Goniądz	224
1576	Jasionówka	224
1577	Jaświły	224
1578	Knyszyn	224
1579	Krypno	224
1580	Mońki	224
1581	Trzcianne	224
1582	Sejny	225
1583	Giby	225
1584	Krasnopol	225
1585	Puńsk	225
1586	Sejny	225
1587	Siemiatycze	226
1588	Drohiczyn	226
1589	Dziadkowice	226
1590	Grodzisk	226
1591	Mielnik	226
1592	Milejczyce	226
1593	Nurzec-Stacja	226
1594	Perlejewo	226
1595	Siemiatycze	226
1596	Dąbrowa Białostocka	227
1597	Janów	227
1598	Korycin	227
1599	Krynki	227
1600	Kuźnica	227
1601	Nowy Dwór	227
1602	Sidra	227
1603	Sokółka	227
1604	Suchowola	227
1605	Szudziałowo	227
1606	Bakałarzewo	228
1607	Filipów	228
1608	Jeleniewo	228
1609	Przerośl	228
1610	Raczki	228
1611	Rutka-Tartak	228
1612	Suwałki	228
1613	Szypliszki	228
1614	Wiżajny	228
1615	Wysokie Mazowieckie	229
1616	Ciechanowiec	229
1617	Czyżew	229
1618	Klukowo	229
1619	Kobylin-Borzymy	229
1620	Kulesze Kościelne	229
1621	Nowe Piekuty	229
1622	Sokoły	229
1623	Szepietowo	229
1624	Wysokie Mazowieckie	229
1625	Zambrów	230
1626	Kołaki Kościelne	230
1627	Rutki	230
1628	Szumowo	230
1629	Zambrów	230
1630	Białystok	231
1631	Łomża	232
1632	Suwałki	233
1633	Borzytuchom	234
1634	Bytów	234
1635	Czarna Dąbrówka	234
1636	Kołczygłowy	234
1637	Lipnica	234
1638	Miastko	234
1639	Parchowo	234
1640	Studzienice	234
1641	Trzebielino	234
1642	Tuchomie	234
1643	Chojnice	235
1644	Brusy	235
1645	Chojnice	235
1646	Czersk	235
1647	Konarzyny	235
1648	Człuchów	236
1649	Czarne	236
1650	Człuchów	236
1651	Debrzno	236
1652	Koczała	236
1653	Przechlewo	236
1654	Rzeczenica	236
1655	Pruszcz Gdański	237
1656	Cedry Wielkie	237
1657	Kolbudy	237
1658	Pruszcz Gdański	237
1659	Przywidz	237
1660	Pszczółki	237
1661	Suchy Dąb	237
1662	Trąbki Wielkie	237
1663	Chmielno	238
1664	Kartuzy	238
1665	Przodkowo	238
1666	Sierakowice	238
1667	Somonino	238
1668	Stężyca	238
1669	Sulęczyno	238
1670	Żukowo	238
1671	Kościerzyna	239
1672	Dziemiany	239
1673	Karsin	239
1674	Kościerzyna	239
1675	Liniewo	239
1676	Lipusz	239
1677	Nowa Karczma	239
1678	Stara Kiszewa	239
1679	Kwidzyn	240
1680	Gardeja	240
1681	Kwidzyn	240
1682	Prabuty	240
1683	Ryjewo	240
1684	Sadlinki	240
1685	Lębork	241
1686	Łeba	241
1687	Cewice	241
1688	Nowa Wieś Lęborska	241
1689	Wicko	241
1690	Malbork	242
1691	Lichnowy	242
1692	Malbork	242
1693	Miłoradz	242
1694	Nowy Staw	242
1695	Stare Pole	242
1696	Krynica Morska	243
1697	Nowy Dwór Gdański	243
1698	Ostaszewo	243
1699	Stegna	243
1700	Sztutowo	243
1701	Hel	244
1702	Jastarnia	244
1703	Puck	244
1704	Władysławowo	244
1705	Kosakowo	244
1706	Krokowa	244
1707	Puck	244
1708	Ustka	245
1709	Damnica	245
1710	Dębnica Kaszubska	245
1711	Główczyce	245
1712	Kępice	245
1713	Kobylnica	245
1714	Potęgowo	245
1715	Redzikowo	245
1716	Smołdzino	245
1717	Ustka	245
1718	Czarna Woda	246
1719	Skórcz	246
1720	Starogard Gdański	246
1721	Bobowo	246
1722	Kaliska	246
1723	Lubichowo	246
1724	Osieczna	246
1725	Osiek	246
1726	Skarszewy	246
1727	Skórcz	246
1728	Smętowo Graniczne	246
1729	Starogard Gdański	246
1730	Zblewo	246
1731	Tczew	247
1732	Gniew	247
1733	Morzeszczyn	247
1734	Pelplin	247
1735	Subkowy	247
1736	Tczew	247
1737	Reda	248
1738	Rumia	248
1739	Wejherowo	248
1740	Choczewo	248
1741	Gniewino	248
1742	Linia	248
1743	Luzino	248
1744	Łęczyce	248
1745	Szemud	248
1746	Wejherowo	248
1747	Dzierzgoń	249
1748	Mikołajki Pomorskie	249
1749	Stary Dzierzgoń	249
1750	Stary Targ	249
1751	Sztum	249
1752	Gdańsk	250
1753	Gdynia	251
1754	Słupsk	252
1755	Sopot	253
1756	Będzin	254
1757	Czeladź	254
1758	Wojkowice	254
1759	Bobrowniki	254
1760	Mierzęcice	254
1761	Psary	254
1762	Siewierz	254
1763	Sławków	254
1764	Szczyrk	255
1765	Bestwina	255
1766	Buczkowice	255
1767	Czechowice-Dziedzice	255
1768	Jasienica	255
1769	Jaworze	255
1770	Kozy	255
1771	Porąbka	255
1772	Wilamowice	255
1773	Wilkowice	255
1774	Cieszyn	256
1775	Ustroń	256
1776	Wisła	256
1777	Brenna	256
1778	Chybie	256
1779	Dębowiec	256
1780	Goleszów	256
1781	Hażlach	256
1782	Istebna	256
1783	Skoczów	256
1784	Strumień	256
1785	Zebrzydowice	256
1786	Blachownia	257
1787	Dąbrowa Zielona	257
1788	Janów	257
1789	Kamienica Polska	257
1790	Kłomnice	257
1791	Koniecpol	257
1792	Konopiska	257
1793	Kruszyna	257
1794	Lelów	257
1795	Mstów	257
1796	Mykanów	257
1797	Olsztyn	257
1798	Poczesna	257
1799	Przyrów	257
1800	Rędziny	257
1801	Starcza	257
1802	Knurów	258
1803	Pyskowice	258
1804	Gierałtowice	258
1805	Pilchowice	258
1806	Rudziniec	258
1807	Sośnicowice	258
1808	Toszek	258
1809	Wielowieś	258
1810	Kłobuck	259
1811	Krzepice	259
1812	Lipie	259
1813	Miedźno	259
1814	Opatów	259
1815	Panki	259
1816	Popów	259
1817	Przystajń	259
1818	Wręczyca Wielka	259
1819	Lubliniec	260
1820	Boronów	260
1821	Ciasna	260
1822	Herby	260
1823	Kochanowice	260
1824	Koszęcin	260
1825	Pawonków	260
1826	Woźniki	260
1827	Łaziska Górne	261
1828	Mikołów	261
1829	Orzesze	261
1830	Ornontowice	261
1831	Wyry	261
1832	Myszków	262
1833	Koziegłowy	262
1834	Niegowa	262
1835	Poraj	262
1836	Żarki	262
1837	Goczałkowice-Zdrój	263
1838	Kobiór	263
1839	Miedźna	263
1840	Pawłowice	263
1841	Pszczyna	263
1842	Suszec	263
1843	Racibórz	264
1844	Kornowac	264
1845	Krzanowice	264
1846	Krzyżanowice	264
1847	Kuźnia Raciborska	264
1848	Nędza	264
1849	Pietrowice Wielkie	264
1850	Rudnik	264
1851	Czerwionka-Leszczyny	265
1852	Gaszowice	265
1853	Jejkowice	265
1854	Lyski	265
1855	Świerklany	265
1856	Kalety	266
1857	Miasteczko Śląskie	266
1858	Radzionków	266
1859	Tarnowskie Góry	266
1860	Krupski Młyn	266
1861	Ożarowice	266
1862	Świerklaniec	266
1863	Tworóg	266
1864	Zbrosławice	266
1865	Bieruń	267
1866	Imielin	267
1867	Lędziny	267
1868	Bojszowy	267
1869	Chełm Śląski	267
1870	Pszów	268
1871	Radlin	268
1872	Rydułtowy	268
1873	Wodzisław Śląski	268
1874	Godów	268
1875	Gorzyce	268
1876	Lubomia	268
1877	Marklowice	268
1878	Mszana	268
1879	Poręba	269
1880	Zawiercie	269
1881	Irządze	269
1882	Kroczyce	269
1883	Łazy	269
1884	Ogrodzieniec	269
1885	Pilica	269
1886	Szczekociny	269
1887	Włodowice	269
1888	Żarnowiec	269
1889	Żywiec	270
1890	Czernichów	270
1891	Gilowice	270
1892	Jeleśnia	270
1893	Koszarawa	270
1894	Lipowa	270
1895	Łękawica	270
1896	Łodygowice	270
1897	Milówka	270
1898	Radziechowy-Wieprz	270
1899	Rajcza	270
1900	Ślemień	270
1901	Świnna	270
1902	Ujsoły	270
1903	Węgierska Górka	270
1904	Bielsko-Biała	271
1905	Bytom	272
1906	Chorzów	273
1907	Częstochowa	274
1908	Dąbrowa Górnicza	275
1909	Gliwice	276
1910	Jastrzębie-Zdrój	277
1911	Jaworzno	278
1912	Katowice	279
1913	Mysłowice	280
1914	Piekary Śląskie	281
1915	Ruda Śląska	282
1916	Rybnik	283
1917	Siemianowice Śląskie	284
1918	Sosnowiec	285
1919	Świętochłowice	286
1920	Tychy	287
1921	Zabrze	288
1922	Żory	289
1923	Busko-Zdrój	290
1924	Gnojno	290
1925	Nowy Korczyn	290
1926	Pacanów	290
1927	Solec-Zdrój	290
1928	Stopnica	290
1929	Tuczępy	290
1930	Wiślica	290
1931	Imielno	291
1932	Jędrzejów	291
1933	Małogoszcz	291
1934	Nagłowice	291
1935	Oksa	291
1936	Sędziszów	291
1937	Słupia	291
1938	Sobków	291
1939	Wodzisław	291
1940	Bejsce	292
1941	Czarnocin	292
1942	Kazimierza Wielka	292
1943	Opatowiec	292
1944	Skalbmierz	292
1945	Bieliny	293
1946	Bodzentyn	293
1947	Chęciny	293
1948	Chmielnik	293
1949	Daleszyce	293
1950	Górno	293
1951	Łagów	293
1952	Łopuszno	293
1953	Masłów	293
1954	Miedziana Góra	293
1955	Mniów	293
1956	Morawica	293
1957	Nowa Słupia	293
1958	Piekoszów	293
1959	Pierzchnica	293
1960	Raków	293
1961	Nowiny	293
1962	Strawczyn	293
1963	Zagnańsk	293
1964	Fałków	294
1965	Gowarczów	294
1966	Końskie	294
1967	Radoszyce	294
1968	Ruda Maleniecka	294
1969	Słupia Konecka	294
1970	Smyków	294
1971	Stąporków	294
1972	Baćkowice	295
1973	Iwaniska	295
1974	Lipnik	295
1975	Opatów	295
1976	Ożarów	295
1977	Sadowie	295
1978	Tarłów	295
1979	Wojciechowice	295
1980	Ostrowiec Świętokrzyski	296
1981	Bałtów	296
1982	Bodzechów	296
1983	Ćmielów	296
1984	Kunów	296
1985	Waśniów	296
1986	Działoszyce	297
1987	Kije	297
1988	Michałów	297
1989	Pińczów	297
1990	Złota	297
1991	Sandomierz	298
1992	Dwikozy	298
1993	Klimontów	298
1994	Koprzywnica	298
1995	Łoniów	298
1996	Obrazów	298
1997	Samborzec	298
1998	Wilczyce	298
1999	Zawichost	298
2000	Skarżysko-Kamienna	299
2001	Bliżyn	299
2002	Łączna	299
2003	Skarżysko Kościelne	299
2004	Suchedniów	299
2005	Starachowice	300
2006	Brody	300
2007	Mirzec	300
2008	Pawłów	300
2009	Wąchock	300
2010	Bogoria	301
2011	Łubnice	301
2012	Oleśnica	301
2013	Osiek	301
2014	Połaniec	301
2015	Rytwiany	301
2016	Staszów	301
2017	Szydłów	301
2018	Kluczewsko	302
2019	Krasocin	302
2020	Moskorzew	302
2021	Radków	302
2022	Secemin	302
2023	Włoszczowa	302
2024	Kielce	303
2025	Bartoszyce	304
2026	Górowo Iławeckie	304
2027	Bartoszyce	304
2028	Bisztynek	304
2029	Górowo Iławeckie	304
2030	Sępopol	304
2031	Braniewo	305
2032	Braniewo	305
2033	Frombork	305
2034	Lelkowo	305
2035	Pieniężno	305
2036	Płoskinia	305
2037	Wilczęta	305
2038	Działdowo	306
2039	Działdowo	306
2040	Iłowo-Osada	306
2041	Lidzbark	306
2042	Płośnica	306
2043	Rybno	306
2044	Elbląg	307
2045	Godkowo	307
2046	Gronowo Elbląskie	307
2047	Markusy	307
2048	Milejewo	307
2049	Młynary	307
2050	Pasłęk	307
2051	Rychliki	307
2052	Tolkmicko	307
2053	Ełk	308
2054	Ełk	308
2055	Kalinowo	308
2056	Prostki	308
2057	Stare Juchy	308
2058	Giżycko	309
2059	Giżycko	309
2060	Kruklanki	309
2061	Miłki	309
2062	Ryn	309
2063	Wydminy	309
2064	Iława	310
2065	Lubawa	310
2066	Iława	310
2067	Kisielice	310
2068	Lubawa	310
2069	Susz	310
2070	Zalewo	310
2071	Kętrzyn	311
2072	Barciany	311
2073	Kętrzyn	311
2074	Korsze	311
2075	Reszel	311
2076	Srokowo	311
2077	Lidzbark Warmiński	312
2078	Kiwity	312
2079	Lidzbark Warmiński	312
2080	Lubomino	312
2081	Orneta	312
2082	Mrągowo	313
2083	Mikołajki	313
2084	Mrągowo	313
2085	Piecki	313
2086	Sorkwity	313
2087	Janowiec Kościelny	314
2088	Janowo	314
2089	Kozłowo	314
2090	Nidzica	314
2091	Nowe Miasto Lubawskie	315
2092	Biskupiec	315
2093	Grodziczno	315
2094	Kurzętnik	315
2095	Bratian	315
2096	Kowale Oleckie	316
2097	Olecko	316
2098	Świętajno	316
2099	Wieliczki	316
2100	Barczewo	317
2101	Biskupiec	317
2102	Dobre Miasto	317
2103	Dywity	317
2104	Gietrzwałd	317
2105	Jeziorany	317
2106	Jonkowo	317
2107	Kolno	317
2108	Olsztynek	317
2109	Purda	317
2110	Stawiguda	317
2111	Świątki	317
2112	Ostróda	318
2113	Dąbrówno	318
2114	Grunwald	318
2115	Łukta	318
2116	Małdyty	318
2117	Miłakowo	318
2118	Miłomłyn	318
2119	Morąg	318
2120	Ostróda	318
2121	Biała Piska	319
2122	Orzysz	319
2123	Pisz	319
2124	Ruciane-Nida	319
2125	Szczytno	320
2126	Dźwierzuty	320
2127	Jedwabno	320
2128	Pasym	320
2129	Rozogi	320
2130	Szczytno	320
2131	Świętajno	320
2132	Wielbark	320
2133	Banie Mazurskie	321
2134	Dubeninki	321
2135	Gołdap	321
2136	Budry	322
2137	Pozezdrze	322
2138	Węgorzewo	322
2139	Elbląg	323
2140	Olsztyn	324
2141	Chodzież	325
2142	Budzyń	325
2143	Chodzież	325
2144	Margonin	325
2145	Szamocin	325
2146	Czarnków	326
2147	Czarnków	326
2148	Drawsko	326
2149	Krzyż Wielkopolski	326
2150	Lubasz	326
2151	Połajewo	326
2152	Trzcianka	326
2153	Wieleń	326
2154	Gniezno	327
2155	Czerniejewo	327
2156	Gniezno	327
2157	Kiszkowo	327
2158	Kłecko	327
2159	Łubowo	327
2160	Mieleszyn	327
2161	Niechanowo	327
2162	Trzemeszno	327
2163	Witkowo	327
2164	Borek Wielkopolski	328
2165	Gostyń	328
2166	Krobia	328
2167	Pępowo	328
2168	Piaski	328
2169	Pogorzela	328
2170	Poniec	328
2171	Granowo	329
2172	Grodzisk Wielkopolski	329
2173	Kamieniec	329
2174	Rakoniewice	329
2175	Wielichowo	329
2176	Jaraczewo	330
2177	Jarocin	330
2178	Kotlin	330
2179	Żerków	330
2180	Blizanów	331
2181	Brzeziny	331
2182	Ceków-Kolonia	331
2183	Godziesze Wielkie	331
2184	Koźminek	331
2185	Lisków	331
2186	Mycielin	331
2187	Opatówek	331
2188	Stawiszyn	331
2189	Szczytniki	331
2190	Żelazków	331
2191	Baranów	332
2192	Bralin	332
2193	Kępno	332
2194	Łęka Opatowska	332
2195	Perzów	332
2196	Rychtal	332
2197	Trzcinica	332
2198	Koło	333
2199	Babiak	333
2200	Chodów	333
2201	Dąbie	333
2202	Grzegorzew	333
2203	Kłodawa	333
2204	Koło	333
2205	Kościelec	333
2206	Olszówka	333
2207	Osiek Mały	333
2208	Przedecz	333
2209	Golina	334
2210	Grodziec	334
2211	Kazimierz Biskupi	334
2212	Kleczew	334
2213	Kramsk	334
2214	Krzymów	334
2215	Rychwał	334
2216	Rzgów	334
2217	Skulsk	334
2218	Sompolno	334
2219	Stare Miasto	334
2220	Ślesin	334
2221	Wierzbinek	334
2222	Wilczyn	334
2223	Kościan	335
2224	Czempiń	335
2225	Kościan	335
2226	Krzywiń	335
2227	Śmigiel	335
2228	Sulmierzyce	336
2229	Kobylin	336
2230	Koźmin Wielkopolski	336
2231	Krotoszyn	336
2232	Rozdrażew	336
2233	Zduny	336
2234	Krzemieniewo	337
2235	Lipno	337
2236	Osieczna	337
2237	Rydzyna	337
2238	Święciechowa	337
2239	Wijewo	337
2240	Włoszakowice	337
2241	Chrzypsko Wielkie	338
2242	Kwilcz	338
2243	Międzychód	338
2244	Sieraków	338
2245	Kuślin	339
2246	Lwówek	339
2247	Miedzichowo	339
2248	Nowy Tomyśl	339
2249	Opalenica	339
2250	Zbąszyń	339
2251	Oborniki	340
2252	Rogoźno	340
2253	Ryczywół	340
2254	Ostrów Wielkopolski	341
2255	Nowe Skalmierzyce	341
2256	Odolanów	341
2257	Ostrów Wielkopolski	341
2258	Przygodzice	341
2259	Raszków	341
2260	Sieroszewice	341
2261	Sośnie	341
2262	Czajków	342
2263	Doruchów	342
2264	Grabów nad Prosną	342
2265	Kobyla Góra	342
2266	Kraszewice	342
2267	Mikstat	342
2268	Ostrzeszów	342
2269	Piła	343
2270	Białośliwie	343
2271	Kaczory	343
2272	Łobżenica	343
2273	Miasteczko Krajeńskie	343
2274	Szydłowo	343
2275	Ujście	343
2276	Wyrzysk	343
2277	Wysoka	343
2278	Chocz	344
2279	Czermin	344
2280	Dobrzyca	344
2281	Gizałki	344
2282	Gołuchów	344
2283	Pleszew	344
2284	Luboń	345
2285	Puszczykowo	345
2286	Buk	345
2287	Czerwonak	345
2288	Dopiewo	345
2289	Kleszczewo	345
2290	Komorniki	345
2291	Kostrzyn	345
2292	Kórnik	345
2293	Mosina	345
2294	Murowana Goślina	345
2295	Pobiedziska	345
2296	Rokietnica	345
2297	Stęszew	345
2298	Suchy Las	345
2299	Swarzędz	345
2300	Tarnowo Podgórne	345
2301	Bojanowo	346
2302	Jutrosin	346
2303	Miejska Górka	346
2304	Pakosław	346
2305	Rawicz	346
2306	Słupca	347
2307	Lądek	347
2308	Orchowo	347
2309	Ostrowite	347
2310	Powidz	347
2311	Słupca	347
2312	Strzałkowo	347
2313	Zagórów	347
2314	Obrzycko	348
2315	Duszniki	348
2316	Kaźmierz	348
2317	Obrzycko	348
2318	Ostroróg	348
2319	Pniewy	348
2320	Szamotuły	348
2321	Wronki	348
2322	Dominowo	349
2323	Krzykosy	349
2324	Nowe Miasto nad Wartą	349
2325	Środa Wielkopolska	349
2326	Zaniemyśl	349
2327	Brodnica	350
2328	Dolsk	350
2329	Książ Wielkopolski	350
2330	Śrem	350
2331	Turek	351
2332	Brudzew	351
2333	Dobra	351
2334	Kawęczyn	351
2335	Malanów	351
2336	Przykona	351
2337	Tuliszków	351
2338	Turek	351
2339	Władysławów	351
2340	Wągrowiec	352
2341	Damasławek	352
2342	Gołańcz	352
2343	Mieścisko	352
2344	Skoki	352
2345	Wapno	352
2346	Wągrowiec	352
2347	Przemęt	353
2348	Siedlec	353
2349	Wolsztyn	353
2350	Kołaczkowo	354
2351	Miłosław	354
2352	Nekla	354
2353	Pyzdry	354
2354	Września	354
2355	Złotów	355
2356	Jastrowie	355
2357	Krajenka	355
2358	Lipka	355
2359	Okonek	355
2360	Tarnówka	355
2361	Zakrzewo	355
2362	Złotów	355
2363	Kalisz	356
2364	Konin	357
2365	Leszno	358
2366	Poznań	359
2367	Białogard	360
2368	Białogard	360
2369	Karlino	360
2370	Tychowo	360
2371	Bierzwnik	361
2372	Choszczno	361
2373	Drawno	361
2374	Krzęcin	361
2375	Pełczyce	361
2376	Recz	361
2377	Czaplinek	362
2378	Drawsko Pomorskie	362
2379	Kalisz Pomorski	362
2380	Wierzchowo	362
2381	Złocieniec	362
2382	Goleniów	363
2383	Maszewo	363
2384	Nowogard	363
2385	Osina	363
2386	Przybiernów	363
2387	Stepnica	363
2388	Brojce	364
2389	Gryfice	364
2390	Karnice	364
2391	Płoty	364
2392	Rewal	364
2393	Trzebiatów	364
2394	Banie	365
2395	Cedynia	365
2396	Chojna	365
2397	Gryfino	365
2398	Mieszkowice	365
2399	Moryń	365
2400	Stare Czarnowo	365
2401	Trzcińsko-Zdrój	365
2402	Widuchowa	365
2403	Dziwnów	366
2404	Golczewo	366
2405	Kamień Pomorski	366
2406	Międzyzdroje	366
2407	Świerzno	366
2408	Wolin	366
2409	Kołobrzeg	367
2410	Dygowo	367
2411	Gościno	367
2412	Kołobrzeg	367
2413	Rymań	367
2414	Siemyśl	367
2415	Ustronie Morskie	367
2416	Będzino	368
2417	Biesiekierz	368
2418	Bobolice	368
2419	Manowo	368
2420	Mielno	368
2421	Polanów	368
2422	Sianów	368
2423	Świeszyno	368
2424	Barlinek	369
2425	Boleszkowice	369
2426	Dębno	369
2427	Myślibórz	369
2428	Nowogródek Pomorski	369
2429	Dobra (Szczecińska)	370
2430	Kołbaskowo	370
2431	Nowe Warpno	370
2432	Police	370
2433	Bielice	371
2434	Kozielice	371
2435	Lipiany	371
2436	Przelewice	371
2437	Pyrzyce	371
2438	Warnice	371
2439	Darłowo	372
2440	Sławno	372
2441	Darłowo	372
2442	Malechowo	372
2443	Postomino	372
2444	Sławno	372
2445	Stargard	373
2446	Chociwel	373
2447	Dobrzany	373
2448	Dolice	373
2449	Ińsko	373
2450	Kobylanka	373
2451	Marianowo	373
2452	Stara Dąbrowa	373
2453	Stargard	373
2454	Suchań	373
2455	Szczecinek	374
2456	Barwice	374
2457	Biały Bór	374
2458	Borne Sulinowo	374
2459	Grzmiąca	374
2460	Szczecinek	374
2461	Świdwin	375
2462	Brzeżno	375
2463	Połczyn-Zdrój	375
2464	Rąbino	375
2465	Sławoborze	375
2466	Świdwin	375
2467	Wałcz	376
2468	Człopa	376
2469	Mirosławiec	376
2470	Tuczno	376
2471	Wałcz	376
2472	Dobra	377
2473	Łobez	377
2474	Radowo Małe	377
2475	Resko	377
2476	Węgorzyno	377
2477	Koszalin	378
2478	Szczecin	379
2479	Świnoujście	380
\.

COPY stacje (id_stacji, nazwa_stacji, id_gminy, szerokosc_geograficzna, dlugosc_geograficzna) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	Lotnisko Modlin	1076	52.44592070147	20.65071673974
2	Korsze	2074	54.17218815958	21.13651401118
3	Łankiejmy	2074	54.14225747014	21.06948827173
4	Sątopy-Samulewo	2028	54.073276749	21.0242308214
5	Świnoujście	2479	53.90470769185	14.26656323212
6	Międzyzdroje	2406	53.92428980699	14.45527677392
7	Tołkiny	2074	54.11757953105	21.23539103266
8	Linkowo	2073	54.09054152149	21.26541414758
9	Nowy Młyn	2073	54.066464533	21.32757895692
10	Lubiewo	2406	53.91551316328	14.41701010585
11	Świnoujście Przytór	2479	53.89745618943	14.33684509729
12	Kętrzyn	2071	54.07262720034	21.38515338756
13	Martiany	2073	54.02661795548	21.51664700383
14	Świnoujście Warszów	2479	53.90036624457	14.28530277179
15	Szczytno	2125	53.56020424599	20.99707764687
16	Szymany	2130	53.48692840552	20.96654890895
17	Siódmak	2130	53.52452290193	20.97143962765
18	Jesionowiec	2132	53.44669187808	20.9958118093
19	Grom	2128	53.60628292414	20.86202181998
20	Świętajno	2131	53.56275335686	21.22888534737
21	Świnoujście Port	2479	53.90122157607	14.26013897421
22	Olszyny	2130	53.55388104421	21.10722903455
23	Jeruty	2131	53.5526986374	21.15422245207
24	Kolonia	2131	53.56727025186	21.27229134348
25	Spychowo	2131	53.59124439098	21.35501355027
26	Ruciane-Nida	2124	53.64918966836	21.56292929043
27	Ruciane-Nida Zachód	2124	53.64258474779	21.52349285583
28	Szczecin Port Centralny	2478	53.41307922018	14.56610588998
29	Morąg	2119	53.9190426325	19.92265326678
30	Zielonka Pasłęcka	2050	53.98089366426	19.7010313817
31	Nowa Wieś Cierpkie	2050	54.0244653024	19.65636163348
32	Pasłęk	2050	54.05549901392	19.65647127013
33	Bogaczewo	2044	54.10014439564	19.57311141869
34	Małdyty	2116	53.9212250891	19.73545069663
35	Szczecin Dąbie	2478	53.39123361294	14.66926219396
36	Dobrocin	2116	53.90999951922	19.82915728892
37	Żabi Róg	2119	53.876204023	20.01797652531
38	Morąg Kolonia	2119	53.90990791133	19.94578067853
39	Kozia Góra	2115	53.85328030983	20.08072941543
40	Szczecin Zdroje	2478	53.37882988237	14.63695399909
41	Braniewo	2031	54.3812759417	19.84198449969
42	Jarzębiec	2036	54.31291210058	19.99321281374
43	Wysoka Braniewska	2036	54.27922309243	20.02121507585
44	Pieniężno	2035	54.24012736522	20.1247000587
45	Żugienie	2035	54.25933674965	20.08806108892
46	Henrykowo	2081	54.17448664545	20.14453767657
47	Orneta	2081	54.11535789582	20.1504063499
48	Grodzie	2032	54.34525088992	19.96163247943
49	Dzierżążno	1664	54.31520235936	18.26392940475
50	Szczecin Załom	2478	53.42940887949	14.74382367001
51	Ełk	2053	53.82500922001	22.36246191495
52	Orlanka	1542	52.72696209944	23.34840733331
53	Morze	1554	52.73040794059	23.41123589682
54	Stare Berezowo	1556	52.7319166517	23.45341023279
55	Chytra	1556	52.73909818208	23.51503458583
56	Stare Juchy	2057	53.92496315876	22.16922226733
57	Woszczele	2054	53.8599125494	22.24857765272
58	Wydminy	2063	53.97676045014	22.03271586733
59	Zegrze Południowe	1028	52.45230882592	21.00886344373
60	Kliniska	2382	53.46073082018	14.78396596104
61	Szczecin Zdunowo	2450	53.38321816404	14.76353921303
62	Prostki	2056	53.69563443628	22.43140439706
63	Ełk Szyba Wschód	2054	53.80114713046	22.37289058286
64	Lipińskie Małe	2056	53.73640010911	22.39746598211
65	Grajewo	1545	53.64989283042	22.44843402862
66	Bajtkowo	2054	53.73714550244	22.23999274094
67	Ełk Szyba Zachód	2053	53.80233453089	22.37029543624
68	Nowa Wieś Ełcka	2054	53.77196898553	22.32360692533
69	Pogorzel Wielka	2121	53.70722001377	22.14986881874
70	Drygały	2121	53.67923597344	22.10398891467
71	Biała Piska	2121	53.61494359299	22.06528369869
72	Kaliszki	2121	53.62044334809	22.00605501733
73	Stare Guty	2123	53.6140180425	21.92472308797
74	Pisz	2123	53.63182419077	21.79292007566
75	Szeroki Bór	2124	53.6397314807	21.69952218551
76	Дарниця		50.43172546463	30.64643739581
77	Київ-Пасажирськи		50.43996683953	30.48855184436
78	Волочиськ		49.53234964333	26.20807885587
79	Хмельницький		49.41614896337	27.00958728254
80	Вінниця		49.23923991905	28.51106106699
81	Шепетівка		50.1967716667	27.0659780395
82	Бердичів		49.88933992633	28.61351608694
83	Козятин 1		49.70497873298	28.82988451838
84	Бiла Церква		49.81216901167	30.11011361539
85	Ковель		51.22133284303	24.71238254428
86	Рівне		50.62796565491	26.23932122111
87	Ківерці		50.83040270827	25.46224503636
88	Тернопіль		49.55389256072	25.60101985395
89	Львів-Головний		49.84017591578	23.99376510501
90	Красне		49.91686691536	24.61531876981
91	Олександрія		48.67405205906	33.13311337352
92	імені Тараса Шевченка		49.20231041117	31.89726948202
93	Кременчук		49.06754706025	33.42797397494
94	Ромодан		49.99291883925	33.32231639743
95	Гребінка		50.12179568145	32.43255256534
96	Лубни		50.02044184217	32.97493814886
97	Харків-Пасажирський		49.98947692416	36.20335220218
98	Миргород		49.94924551136	33.62976729333
99	Полтава-Київська		49.60340974793	34.525415892
100	Люботин		49.94147828944	35.92696666181
101	Дніпро-Головний		48.47816324463	35.01491903186
102	Запоріжжя-1		47.79526153949	35.18800734401
103	Кривий Ріг		47.88105280734	33.38336347461
104	Giżycko	2058	54.03136915601	21.77804811001
105	Siedliska	2063	54.00034406121	21.91429061453
106	Sterławki Wielkie	2062	54.01513127738	21.57506120865
107	Wilkasy Niegocin	2059	54.01961435742	21.73798453613
108	Sterławki Małe	2059	54.01171397853	21.64638429344
109	Baška		49.65098734003	18.3691888994
110	Dobrá u Frýdku-Místku		49.6709052476	18.41421782434
111	Dobratice-Vojkovice		49.66973971136	18.47295097351
112	Frenštát pod Radhoštěm		49.54190223975	18.22431742609
113	Frýdek-Místek		49.67749066948	18.35402905405
114	Frýdlant nad Ostravicí		49.58907733184	18.35440456331
115	Čeladná		49.55289898819	18.3341753456
116	Pržno		49.61714015881	18.36197912157
117	Břeclav		48.75370602868	16.89301908016
118	Hnojník		49.67872989272	18.53898345888
119	Střítež u Českého Těšína		49.67886873929	18.56927096307
120	Horní Tošanovice		49.68132972905	18.50387870729
121	Hranice na Moravě		49.56555630789	17.74178812087
122	Hodonín		48.85605047412	17.12147895813
123	Kunčice pod Ondřejníkem		49.5349085576	18.2958787626
124	Olomouc hlavní nádraží		49.59266952402	17.27842032373
125	Ostrava hlavní nádraží		49.85137011689	18.26616504192
126	Ostrava-Svinov		49.82113048872	18.21006932259
127	Ropice		49.71249264183	18.61646174848
128	Ropice-Zálesí		49.69375773315	18.59655707538
129	Přerov		49.44669321692	17.44542018771
130	Studénka		49.70756328571	18.06649624765
131	Suchdol nad Odrou		49.64235232508	17.93899475992
132	Zábřeh na Moravě		49.87207959012	16.88729661405
133	Otrokovice		49.20287114359	17.53115426302
134	Staré Město u Uherského Hradiště		49.07631146985	17.42279324949
135	Letohrad		50.03150468731	16.50756124467
136	Jablonné nad Orlicí		50.02610961353	16.59422906399
137	Kolín		50.02535310152	15.21421917915
138	Suwałki	1632	54.10586069177	22.94531372953
139	Pardubice hlavní nádraží		50.03169404893	15.75661539495
140	Ústí nad Orlicí		49.97130816425	16.37850130498
141	Ústí nad Orlicí město		49.96855824532	16.39539385736
142	Česká Třebová		49.89715614384	16.44641653776
143	Liberec		50.76124676405	15.04594717026
144	Liberec-Rochlice		50.747259269	15.0617292881
145	Kořenov		50.77009166699	15.36584705114
146	Kořenov zastávka		50.76259163747	15.34721910954
147	Tanvald		50.74311580603	15.31090736389
148	Dolní Polubný		50.76052514348	15.32351642847
149	Desná		50.75345460071	15.30922293663
150	Tanvald zastávka		50.73699834631	15.30524253845
151	Smržovka dolní nádraží		50.73477793853	15.28064131737
152	Smržovka střed		50.73200058307	15.25454342365
153	Smržovka		50.74024049581	15.24376094341
154	Nová Ves nad Nisou		50.72351810415	15.19427418709
155	Lučany nad Nisou		50.73950721253	15.22521078587
156	Jablonecké Paseky		50.73154559717	15.19059419632
157	Jablonec nad Nisou		50.7207603497	15.16116517067
158	Jablonec nad Nisou zastávka		50.72040725064	15.18561601639
159	Jablonec nad Nisou dolní nádraží		50.72634296056	15.14922466278
160	Vesec u Liberce		50.74350333139	15.08082125187
161	Proseč nad Nisou		50.72813815551	15.1159080863
162	Vratislavice nad Nisou		50.74012222071	15.09361002445
163	Trakiszki	1585	54.23942758887	23.20794756812
164	Trutnov hlavní nádraží		50.56512932807	15.91119915247
165	Trutnov střed		50.57767400666	15.94466507435
166	Praha hlavní nádraží		50.0830243953	14.43630337715
167	Libeč		50.59622221397	15.94616259392
168	Praha-Libeň		50.10074856656	14.50238227844
169	Bernartice u Trutnova		50.6472427381	15.95906166138
170	Křenov		50.63832605406	15.93619731549
171	Płociczno koło Suwałk	1612	54.0382974074	22.9487626093
172	Szczepki	1518	53.96698504512	22.98439850794
173	Blizna	1518	53.90637837021	23.01496241505
174	Augustów Port	1514	53.86251706655	23.00372660034
175	Augustów	1514	53.85269715953	23.02612300308
176	Kostrzyn	527	52.59137475132	14.64705568111
177	Budapest-Keleti		47.5004019706	19.08392785907
178	Budapest-Nyugati		47.51126595248	19.05829668045
179	Vác		47.78256768492	19.13352191448
180	Nagymaros-Visegrád		47.79108105046	18.95888328552
181	Szob		47.82100012089	18.86197775602
182	Namyślin	2425	52.67811071791	14.57051659805
183	Ługi Górzyckie	556	52.51573515997	14.65095718619
184	Górzyca	556	52.49957659631	14.657152895
185	Laski Lubuskie	556	52.45980471327	14.71270550109
186	Kúty		48.66210760464	17.04756528139
187	Bratislava hlavná stanica		48.15900779451	17.10647463799
188	Nové Zámky		47.99491539046	18.17450344563
189	Štúrovo		47.79994255199	18.67922544479
190	Radów	558	52.43163465224	14.74252808436
191	Kowalów	558	52.39753255864	14.7596656279
192	Godków	2399	52.90115645677	14.4586228439
193	Chojna	2396	52.96358798355	14.44419154429
194	Lisie Pole	2396	53.02214104856	14.45061871164
195	Witnica Chojeńska	2399	52.86620910399	14.45120222669
196	Mieszkowice	2398	52.7817920555	14.48582982023
197	Boleszkowice	2398	52.73668160007	14.51883616389
198	Bielin	2399	52.82239329683	14.46679975131
199	Gorzów Wielkopolski	607	52.72749044273	15.22879814324
200	Gorzów Wielkopolski Zieleniec	607	52.69972670878	15.26169709566
201	Gorzów Wielkopolski Karnin	607	52.68894409415	15.28102240911
202	Gorzów Wielkopolski Zamoście	607	52.72269033427	15.23901681331
203	Gorzów Wielkopolski Wieprzyce	607	52.7178313548	15.18110982681
204	Berlin-Charlottenburg		52.50436592003	13.30285300133
205	Berlin Zoologischer Garten		52.50741264133	13.33254827976
206	Berlin Ostkreuz		52.50318074601	13.46921680212
207	Łupowo	528	52.70079702676	15.12316786061
208	Bogdaniec	528	52.6891323478	15.07864072922
209	Nowiny Wielkie	533	52.67263999176	15.00270424939
210	Goleniów	2382	53.55909731774	14.83954776098
211	Witnica	533	52.66737323074	14.89613557767
212	Kamień Mały	533	52.64165663653	14.78028438266
213	Cottbus Hauptbahnhof		51.75094591445	14.3249298783
214	Dąbroszyn	533	52.6187764275	14.71219237484
215	Ruhland		51.45528	13.87
216	Hoyerswerda		51.43278	14.23114323677
217	Klinge		51.74361127201	14.51838583069
218	Elsterwerda		51.45989714576	13.51645973743
219	Rurka	2382	53.49379840327	14.79597448303
220	Dresden Hauptbahnhof		51.04016873202	13.73240133995
221	Görlitz-Rauschwalde		51.1491026985	14.93602416931
222	Gersdorf (bei Görlitz)		51.12521266367	14.85429338161
223	Reichenbach (Oberlausitz)		51.13558356245	14.79622906746
224	Zoblitz		51.12374467723	14.75113040741
225	Löbau (Sachs)		51.09941305041	14.6717307877
226	Breitendorf		51.13857297572	14.62291411045
227	Pommritz		51.15903803176	14.57488093254
228	Kubschütz		51.16573581189	14.50970390675
229	Bautzen		51.17315753647	14.42871728836
230	Seitschen		51.15370493958	14.32521562698
231	Demitz-Thumitz		51.14195748408	14.24038518784
232	Bischofswerda		51.12540176043	14.18570766865
233	Weickersdorf (Sachs)		51.11098660556	14.151289708
234	Großharthau		51.10218968354	14.08778
235	Arnsdorf (bei Dresden)		51.09296867383	13.98194105026
236	Radeberg		51.11163632193	13.91312227249
237	Langebrück (Sachs)		51.12685011878	13.84075058399
238	Dresden-Klotzsche		51.11466106725	13.78905466501
239	Dresden-Industriegelände		51.08735510839	13.76271562698
240	Dresden-Neustadt		51.06586371144	13.74052422817
241	Dresden Mitte		51.05609651258	13.72421291534
242	Riesa		51.30963951946	13.28788728836
243	Białuń	2382	53.61507268414	14.84094975144
244	Zwierzyn	564	52.83680698734	15.58457212689
245	Stare Kurowo	562	52.85452117897	15.67850628405
246	Sarbiewo	564	52.81915615554	15.54544708667
247	Górki Noteckie	564	52.79337896631	15.48871847369
248	Santok	532	52.74328445355	15.41564714626
249	Łoźnica	2386	53.69012162417	14.86615281088
250	Piła Główna	2269	53.14309783834	16.74507578666
251	Dziembówko	2271	53.07088930085	16.81515059873
252	Piła Kalina	2269	53.10119993738	16.78807308439
253	Kaczory	2271	53.10542543261	16.88162544058
254	Miasteczko Krajeńskie	2273	53.09268337563	17.01871771761
255	Białośliwie	2270	53.09782155203	17.12461062121
256	Krostkowo	2270	53.10786880699	17.20808590025
257	Wyrzysk Osiek	2276	53.11915408536	17.29478465849
258	Stobno	2152	53.10883813174	16.62536361632
259	Biała Pilska	2152	53.06117885107	16.51674606778
260	Trzcianka	2152	53.03334950777	16.46566994802
261	Rosenheim		47.85001439968	12.11921291534
262	München Ost		48.12757161227	11.60527894974
263	München Hauptbahnhof		48.14035159445	11.55837291534
264	Wałcz	2467	53.27510473715	16.48431759469
265	Wałcz Raduń	2467	53.27686608822	16.45771163632
266	Strączno	2471	53.2435948687	16.36158227384
267	Rutwica	2471	53.22935867133	16.28324906618
268	Tuczno Krajeńskie	2470	53.21895710594	16.17519857003
269	Dobino Wałeckie	2471	53.22685116664	16.52479028217
270	Szydłowo Krajeńskie	2274	53.16679307058	16.60676702433
271	Leipzig Hauptbahnhof		51.34499707342	12.38146793121
272	Kalisz Pomorski	2379	53.27774129392	15.88089584789
273	Bad Kleinen		53.76692960947	11.46671042328
274	Ventschow		53.78717313854	11.58004282209
275	Blankenberg (Meckl)		53.77226061511	11.71514516071
276	Bützow		53.83714870434	11.99809132275
277	Güstrow		53.80079145644	12.17257816931
278	Priemerburg		53.79593464014	12.22296835582
279	Lalendorf		53.755004	12.38694134855
280	Neu Wokern		53.76000128724	12.50104474603
281	Teterow		53.76832919811	12.57784630423
282	Biały Zdrój Południowy	2379	53.25652117356	15.95444365389
283	Schwerin Hauptbahnhof		53.63471643392	11.40751844907
284	Lübstorf		53.72906506993	11.41124089815
285	Krępa Krajeńska	2470	53.22769994741	16.05794597165
286	Neubrandenburg		53.56187560709	13.2615830172
287	Mölln (Meckl)		53.58582117679	13.08463038161
288	Reuterstadt Stavenhagen		53.70684914369	12.9140497963
289	Malchin		53.74332182402	12.76148088228
290	Jeziorki Wałeckie	2470	53.22557788195	16.10790938348
291	Angermünde		53.015195182	13.99648438161
292	Passow (Uckermark)		53.14906876579	14.10185279762
293	Schönow (Uckermark)		53.18506172334	14.15436117064
294	Casekow		53.21358187607	14.20844985648
295	Petershagen (Uckermark)		53.24012467884	14.25285325529
296	Pasewalk		53.51532862055	13.9898369008
297	Pasewalk Ost		53.50957033782	14.00924903705
298	Zerrenthin		53.4995495459	14.09756240608
299	Oertzenhof		53.51808618952	13.57288296561
300	Neetzka		53.53352756506	13.50078972024
301	Sponholz		53.56387470945	13.36690525529
302	Blumenhagen		53.5283627351	13.87250338889
303	Prostynia	2373	53.30522135217	15.77385187542
304	Cybowo	2379	53.29324570585	15.81649924634
305	Żółwino	2373	53.28892221709	15.6903771862
306	Złotów	2355	53.35922537361	17.05310625693
307	Zakrzewo Złotowskie	2361	53.41649174474	17.14087038914
308	Lipka Krajeńska	2358	53.49734059016	17.25740911939
309	Krajenka	2357	53.28905096242	16.99163627891
310	Dolnik	2357	53.25559721374	16.92982306457
311	Skórka	2357	53.21893814639	16.8706869151
312	Piła Podlasie	2269	53.16294643666	16.77709712655
313	Brzeźno Człuchowskie	1650	53.67086707644	17.48184483073
314	Wien Westbahnhof		48.19673975636	16.33732728836
315	St. Pölten Hauptbahnhof		48.20831212511	15.62466635582
316	Linz Hauptbahnhof		48.29039064673	14.2920697963
317	Attnang-Puchheim		48.01260774658	13.72070125397
318	Człuchów	1648	53.65763356828	17.37112539991
319	Salzburg Hauptbahnhof		47.8128366455	13.04568516071
320	Wysoka Kamieńska	2404	53.82558867231	14.83212091762
321	Chojnice	1643	53.68889583547	17.57791578233
322	Powałki	1645	53.74337797716	17.5997675852
323	Męcikał	1644	53.83233576885	17.67117091705
324	Żabno koło Chojnic	1644	53.85447295276	17.70720421751
325	Brusy	1644	53.88229192363	17.72793107559
326	Lubnia	1644	53.93553688285	17.74229262611
327	Racławki	1645	53.66800619837	17.6541697963
328	Wien Meidling		48.17459024816	16.33427235847
329	Bruck an der Mur		47.41408965448	15.27931661839
330	Graz Hauptbahnhof		47.07278264776	15.41636854233
331	Silno	1645	53.64426536085	17.69326271164
332	Piastoszyn	282	53.62106911416	17.72964320503
333	Żalno	282	53.5981164038	17.75897125397
334	Tuchola	285	53.5838779141	17.85998393387
335	Cekcyn	280	53.57623259468	18.02795040741
336	Parłówko	2408	53.84564080353	14.74950635926
337	Troszyn	2408	53.84417894215	14.71740965077
338	Wierzchowo Człuchowskie	1650	53.61804777683	17.44762628532
339	Moszczenica Pomorska	1645	53.6423905808	17.48885638013
340	Bukowo Człuchowskie	1650	53.57356636298	17.37246948158
341	Warnowo	2408	53.92837728222	14.53557610424
342	Rogoźno Wielkopolskie	2252	52.75438614339	16.97174572074
343	Tarnowo Rogozińskie	2252	52.80389195646	16.97523618095
344	Sokołowo Budzyńskie	2142	52.83825318225	16.96926875192
345	Budzyń	2142	52.89416520031	16.96601673596
346	Ostrówki koło Chodzieży	2142	52.93352292895	16.92655981234
347	Chodzież	2141	52.99399610345	16.90955846355
348	Milcz	2143	53.04194847311	16.85783834081
349	Ładzin	2408	53.91089458144	14.5625739797
350	Mokrzyca Wielka	2408	53.87447082218	14.58041148287
351	Jastrowie	2356	53.40813914877	16.79827740168
352	Ptusza	2356	53.36543594295	16.78402766476
353	Płytnica	2356	53.29606843724	16.75083666351
354	Wolin	2408	53.84869452264	14.60973776241
355	Stara Łubianka	2274	53.23189096919	16.70505172427
356	Maksymilianowo	194	53.2140410735	18.02921568594
357	Kamień Pomorski	2405	53.96616399426	14.77421193812
358	Stronno	191	53.28582469317	18.0591990086
359	Wudzyn	191	53.32258021109	18.07573583069
360	Serock	267	53.36105798675	18.08974364418
361	Lubania-Lipiny	269	53.38872766258	18.09701026257
362	Świekatowo	269	53.41700245185	18.10513463558
363	Lipienica	269	53.44655261955	18.11243072884
364	Błądzim	264	53.47591229256	18.11514
365	Wierzchucin	280	53.54824597328	18.11246126622
366	Wierzchucin Stary	280	53.55710373162	18.09088740608
367	Zielonka Pomorska	280	53.57746733084	18.10923
368	Małe Gacno	280	53.60970172266	18.10952781349
369	Zarośle	284	53.6643296086	18.11739
370	Rosochatka	284	53.70531379034	18.11465463558
371	Lipowa Tucholska	284	53.75362471078	18.10883635582
372	Kotomierz	191	53.28399483874	18.12035682666
373	Bydgoszcz Wschód	310	53.12792718815	18.08195121957
374	Bydgoszcz Bielawy	310	53.13172228523	18.05393881327
375	Bydgoszcz Brdyujście	310	53.13364988531	18.11156740608
376	Bydgoszcz Politechnika	310	53.14073113928	18.13698530556
377	Jarszewo	2405	53.92980420363	14.79991294268
378	Bydgoszcz Łęgnowo	310	53.10760214942	18.11293766861
379	Górki Pomorskie	2405	53.89826346481	14.82433582213
380	Terespol Pomorski	268	53.40965319222	18.35191214257
381	Parlin	267	53.37073988322	18.26951898085
382	Pruszcz Pomorski	267	53.33391535213	18.19821409961
383	Rokita	2386	53.76638397519	14.85497651762
384	Laskowice Pomorskie	263	53.49127459736	18.45632827308
385	Warlubie	270	53.58839480747	18.62266283095
386	Twarda Góra	265	53.68264240826	18.67160417934
387	Czersk Świecki	263	53.55137824414	18.46773125397
388	Stawno	2405	53.86692573501	14.82783994619
389	Dąbrowy	263	53.51731520724	18.48968713939
390	Kwiatki	266	53.57835369961	18.42160463558
391	Osie	266	53.59362183829	18.34754906746
392	Tleń	266	53.61432182269	18.26656833862
393	Łążek	266	53.6405585891	18.21535781349
394	Śliwiczki	284	53.68713917161	18.19296072884
395	Śliwice	284	53.71312331631	18.18218728836
396	Laski Tucholskie	284	53.66637581534	18.20793708466
397	Jeżewo	263	53.50739287657	18.48922311187
398	Dubielno	263	53.50874874796	18.55661628485
399	Grupa	261	53.5039376174	18.62919687152
400	Dolna Grupa	261	53.49876536892	18.67723523498
401	Kościerzyna	1671	54.1205684094	17.99476023801
402	Łubiana	1674	54.11478342664	17.8665775581
403	Garczyn	1674	54.1237423648	17.91107850342
404	Lipusz	1676	54.09680547844	17.78035044907
405	Lipuska Huta	1676	54.07022899545	17.76734018083
406	Kalisz Kaszubski	1672	54.04509654868	17.78607937416
407	Dziemiany Kaszubskie	1672	54.01134622646	17.77521604984
408	Raduń	1672	53.96932714021	17.77844102848
409	Skorzewo	1674	54.16523726929	17.9809645666
410	Gołubie Kaszubskie	1668	54.21246011585	18.03672946025
411	Krzeszna	1668	54.23561452305	18.08878756736
412	Wieżyca	1668	54.23452651599	18.12777765757
413	Sławki	1667	54.25725182006	18.17622188136
414	Somonino	1667	54.26991503847	18.19295567982
415	Siedlce Wschodnie	1193	52.14431438014	22.29785462698
416	Łódź Arturówek	783	51.8155197341	19.45645451277
417	Łódź Stoki	783	51.77667292425	19.51035886735
418	Łódź Marysin	783	51.80005668179	19.48650330037
419	Łódź Olechów Wiadukt	783	51.72367619399	19.54348161436
420	Łódź Olechów Wschód	783	51.72975345469	19.59443912482
421	Kiełpino Kartuskie	1664	54.28723277738	18.23151458891
422	Łódź Andrzejów Szosa	783	51.74155952443	19.61292961818
423	Radzice	658	51.46668104587	20.39713739276
424	Witowo	1555	52.63963520548	23.4851332601
425	Barwałd Średni	953	49.87235435702	19.59824251759
426	Podolany	953	49.89819236475	19.75341793491
427	Dębica Wschodnia	1363	50.06242168658	21.44851629366
428	Leźno	1670	54.34763352884	18.45924674928
429	Brzezie	313	52.69628600796	18.96499053468
430	Olsztyn Likusy	2140	53.78965818794	20.44487273728
431	Brzeszcze	907	49.99578461121	19.15458797872
432	Słone	582	51.92880304024	15.39015590608
433	Rajcza Centrum	1899	49.50669043013	19.10026251733
434	Cięcina Dolna	1903	49.62152120817	19.15203827976
435	Bielawa Centralna	7	50.69282746885	16.62081250793
436	Szklarska Poręba Huta	33	50.82660495542	15.49694469444
437	Hurko	1449	49.78526658903	22.86267933003
438	Kraków Nowa Huta	966	50.09047339955	20.1288400172
439	Opole Zachodnie	1353	50.66084320994	17.89841794076
440	Kłokowa	933	49.95329886183	20.95726657367
441	Żurawica Rozrządowa	1453	49.83246942889	22.83733470128
442	Borkowo	1670	54.33337014879	18.33346813902
443	Żukowo Wschodnie	1670	54.34849600561	18.37314270622
444	Czyżowice	1875	49.97420639822	18.42581309193
445	Poręba	1879	50.48392391678	19.3321072948
446	Czerwionka Dębieńsko	1851	50.15684	18.66369530556
447	Pępowo Kartuskie	1670	54.3668619273	18.40163296934
448	Chotomów	1027	52.4156838428	20.88478693254
449	Dobroń	668	51.62960816031	19.2416131645
450	Kolumna	629	51.61481795902	19.19568764724
451	Wrocław Brochów	168	51.06436746475	17.08460021052
452	Spała	741	51.55218309853	20.13521166138
453	Rębiechowo	1670	54.38869046123	18.42161793254
454	Gdynia Cisowa	1753	54.55003024337	18.44648743667
455	Jezierzany	62	51.23572938863	16.09746081713
456	Dąbrowa Oleśnicka	84	51.23003094297	17.3688819079
457	Koźlice	74	51.45097800898	16.23290466501
458	Ludwikowice Kłodzkie	53	50.6194623503	16.48149306019
459	Łuków Zapowiednik	432	51.93202696493	22.41436825201
460	Nowe Dębe Wielkie	1055	52.19339671162	21.44009152513
461	Mockava		54.32812093551	23.35573813462
462	Forst (Lausitz)		51.73888432313	14.63714790204
463	Frankfurt (Oder)		52.33643454168	14.54657617299
464	Guben		51.95821565204	14.70663517445
465	Görlitz		51.14664260811	14.97892085193
466	Tantow		53.27047736065	14.34939004471
467	Grambow		53.41727731155	14.347177496
468	Petrovice u Karviné		49.89406074761	18.55008243442
469	Bohumín		49.90081976766	18.35969923854
470	Český Těšín		49.74319815511	18.62240568584
471	Lichkov		50.09723178982	16.65857254922
472	Královec		50.6729252236	15.97039860119
473	Basznia	1415	50.17861368458	23.24903665057
474	Łagów	571	52.33688292412	15.30142306745
475	Hirschfelde		50.94341661995	14.89106434359
476	Hagenwerder		51.07022505624	14.96022854233
477	Skalité		49.49816832447	18.89083128109
478	Kartuzy	1664	54.33401066344	18.2060686118
479	Żukowo Zachodnie	1670	54.33339190537	18.34904014528
480	Nakło nad Notecią	240	53.142570647	17.60715211531
481	Samostrzel	241	53.12775103674	17.43407235498
482	Anieliny	241	53.1290913408	17.48641663311
483	Jadwiżyn	241	53.12390562935	17.37193483541
484	Bydgoszcz Leśna	310	53.14351512249	18.03218214594
485	Bydgoszcz Główna	310	53.13528294461	17.99163586184
486	Rynkowo Wiadukt	310	53.15177134005	18.00540652287
487	Zielonczyn	195	53.15100116861	17.80741598266
488	Bydgoszcz Zachód	310	53.13588000919	17.94945872171
489	Bydgoszcz Osowa Góra	310	53.14816837894	17.91214337819
490	Pawłówek	195	53.15220031319	17.85637761644
491	Ślesin	240	53.15608625702	17.70064903338
492	Trzciniec	189	53.08560782546	17.94818045332
493	Brzoza Bydgoska	193	53.02744122739	18.02037193442
494	Bydgoszcz Fordon	310	53.14646582746	18.15762647123
495	Nowogard	2384	53.66611406458	15.12096218901
496	Ostromecko	190	53.14378546113	18.21442667725
497	Dąbrowa Chełmińska	190	53.17506234391	18.2816980172
498	Gzin	190	53.19201464589	18.33172588955
499	Wyszomierz	2384	53.62601863881	15.06367927789
500	Inowrocław	216	52.8054428257	18.24415940463
501	Osina	2385	53.60880680993	15.01241935616
502	Więcławice	218	52.84113111085	18.30442923187
503	Wierzchosławice	218	52.86819151502	18.35787899427
504	Gniewkowo	218	52.88804590716	18.40383843265
505	Suchatówka	218	52.91033232961	18.47993400346
506	Mosty	2382	53.57438318093	14.94052722936
507	Inowrocław Rąbinek	216	52.76926334759	18.24369370401
508	Geniusze	1603	53.38232133906	23.43553435143
509	Skalité-Serafínov		49.50155729164	18.96396997288
510	Skalité-Kudlov		49.49886651601	18.93579661839
511	Skalité pod Poľanou		49.49575140542	18.91596054764
512	Рава-Руська		50.23284643759	23.63707422674
513	Jaksice	219	52.85601213392	18.19931331535
514	Złotniki Kujawskie	224	52.90345301174	18.14756393376
515	Nowa Wieś Wielka	193	52.96857172578	18.09670252468
516	Chmielniki Bydgoskie	193	53.00161577503	18.05013670189
517	Janikowo	220	52.74898255909	18.11618383708
518	Kołodziejewo	220	52.71297787963	18.03507027071
519	Babiak	2199	52.35331125446	18.67035268664
520	Piotrków Kujawski	247	52.53779355906	18.51947306514
521	Zduńska Wola Karsznice	768	51.58911622285	18.99462102771
522	Zduńska Wola Południowa	765	51.58010318117	19.00567172885
523	Zduńska Wola	765	51.61127947075	18.94675425261
524	Męcka Wola	724	51.60910272599	18.84686260735
525	Sieradz	717	51.59775671857	18.71469214251
526	Sieradz Męka	717	51.61513716082	18.77681534113
527	Sieradz Warta	717	51.60287558176	18.73002291157
528	Kozuby	630	51.49411359904	19.02314835974
529	Siedlce Łaskie	630	51.45697522461	19.01547788501
530	Chociw Łaski	631	51.40590548128	18.98266910433
531	Rusiec Łódzki	614	51.31627999193	18.96921333555
532	Płoty	2391	53.8082099732	15.26130313527
533	Huta	673	51.2701083441	18.96335221619
534	Wielowieś	1513	50.62518771919	21.75847334143
535	Toruń Główny	312	53.00028543145	18.61523577175
536	Żabowo	2384	53.71759724003	15.19063666242
537	Toruń Czerniewice	312	52.97495301956	18.67391481421
538	Brzoza Toruńska	278	52.96139683976	18.68526576877
539	Otłoczyn	278	52.91267765555	18.69266907185
540	Toruń Kluczyki	312	52.99005809783	18.57845761241
541	Toruń Miasto	312	53.01255851114	18.61958619091
542	Cierpice	278	52.98877404353	18.4699276489
543	Przyłubie	196	53.04983131727	18.32408873476
544	Solec Kujawski	196	53.07834855349	18.22523224971
545	Toruń Wschodni	312	53.02627374254	18.63324836377
546	Lubicz	274	53.02795742353	18.74520953373
547	Grębocin	312	53.04586045779	18.689986462
548	Dobrzejewice	277	52.99909880142	18.82203381615
549	Obrowo	277	52.96814492338	18.88307259392
550	Czernikowo	273	52.93951112405	18.95099320734
551	Ograszka	273	52.90586529593	19.02613344048
552	Konotopie	230	52.86998628611	19.10265714352
553	Lipno	225	52.85416056431	19.17894702579
554	Karnkowo	230	52.86702647664	19.26449688095
555	Skępe	231	52.87211057235	19.34167755093
556	Czermno	231	52.86366	19.42471125397
557	Papowo Toruńskie	276	53.06806413795	18.69328479873
558	Warszawa Praga	1282	52.276981488	21.02265696693
559	Chełmża	271	53.18508108504	18.59809033492
560	Wrocławki	272	53.24116188206	18.61031166138
561	Kornatowo	200	53.29704335954	18.64772364418
562	Firlus	201	53.26941757775	18.6294580172
563	Ostaszewo Toruńskie	276	53.11064981067	18.62728562698
564	Grzywna	272	53.15491489495	18.61711145767
565	Łysomice	276	53.08486809764	18.61997682209
566	Unisław Pomorski	203	53.20653072246	18.38400542328
567	Grzybno	203	53.20358714743	18.4462202037
568	Nawra	199	53.20323285268	18.48466239021
569	Głuchowo	272	53.20206321326	18.54354344048
570	Grudziądz	311	53.48202833459	18.760921647
571	Grudziądz Owczarki	311	53.50280551803	18.84686602208
572	Rogóźno Pomorskie	214	53.54392060108	18.91133358215
573	Gardeja	1680	53.59187465865	18.93280703879
574	Nicwałd	211	53.45978714819	18.88012102083
575	Mełno	211	53.43672904671	18.94784330249
576	Grudziądz Mniszek	311	53.4330403102	18.72535781349
577	Grudziądz Przedmieście	311	53.47464903578	18.74890489815
578	Wałdowo Szlacheckie	210	53.38749035308	18.72277
579	Gorzuchowo Chełmińskie	202	53.35042134076	18.69325874603
580	Dragacz	261	53.49149252232	18.70995282054
581	Kowalewo Pomorskie	207	53.16390015664	18.86912122812
582	Zieleń	290	53.21617170908	18.93055668537
583	Wąbrzeźno	290	53.26501488054	18.98184118506
584	Rychnowo Wielkie	207	53.14251923905	18.81447893464
585	Kamionki Jezioro	276	53.12978058548	18.77983152395
586	Turzno	276	53.10076888342	18.73652242151
587	Szczecin Gumieńce	2478	53.39796622962	14.49716905694
588	Jabłonowo Pomorskie	185	53.39343883028	19.16297520632
589	Książki	288	53.32988662059	19.06743292583
590	Bursztynowo	215	53.40152	19.06933
591	Linowo	215	53.41119462852	19.03297660589
592	Boguszewo	211	53.42202657534	19.00063989401
593	Знам’янка-Пасажирська		48.71037637811	32.68977640986
594	Кам'янське-Пасажирське		48.49728435238	34.60406362474
595	Konojady	185	53.34937293657	19.22761914968
596	Ostrowite koło Jabłonowa	2092	53.43368324719	19.26812972453
597	Biskupiec Pomorski	2092	53.48938671312	19.38935189345
598	Lipinki	2092	53.46438168847	19.3188861896
599	Brodnica	179	53.26365677302	19.40584122598
600	Najmowo	188	53.3067495231	19.32176469684
601	Rypin	250	53.06863231073	19.42769586772
602	Trzebiatów	2393	54.06059807419	15.27763338805
603	Aleksandrów Kujawski	170	52.87577962272	18.69652461131
604	Nieszawa Waganiec	177	52.80312571824	18.87017088688
605	Gąbin	2393	54.01065169468	15.2867842755
606	Turzno Kujawskie	176	52.83350450139	18.78086236224
607	Ciechocinek	171	52.88140387601	18.7885308212
608	Odolion	173	52.86991659616	18.74750107259
609	Włocławek	313	52.65299481041	19.05898571719
610	Borucice	1287	50.98195411375	17.55672155093
611	Górzyca Reska	2389	53.96931271802	15.23300754656
612	Włocławek Zazamcze	313	52.6681799647	19.03827462692
613	Lubanie	300	52.74246066148	18.92430247059
614	Czerniewice	295	52.50895836903	19.08934113293
615	Gryfice	2389	53.91486909876	15.19175232243
616	Warząchewka	303	52.5847377689	19.08077691384
617	Gołaszewo Kujawskie	299	52.54652998608	19.0912225776
618	Wiktorowo	301	52.46428159846	19.10633478788
619	Kaliska Kujawskie	301	52.41190907786	19.12392194677
620	Rutkowice	301	52.36167955691	19.15905632329
621	Iława Główna	2064	53.58231351954	19.57368118092
622	Iława Miasto	2064	53.59578157385	19.54828696662
623	Rudzienice Suskie	2066	53.63816621839	19.66818546718
624	Pikus	2066	53.65633047277	19.73778270089
625	Samborowo	2120	53.67184512434	19.82036058529
626	Smolniki	2066	53.54025761411	19.60436469159
627	Rakowice	2068	53.47816034692	19.64148965795
628	Zajączkowo Lubawskie	2093	53.4442854364	19.71297885189
629	Baszewice	2389	53.86282216121	15.19239284608
630	Montowo	2093	53.41618307104	19.78003703047
631	Hartowiec	2043	53.39613298757	19.84517478658
632	Jeglia	2043	53.39105150998	19.87611679498
633	Jamielnik	2095	53.52868023833	19.50079801807
634	Ostróda	2112	53.69967504512	19.95142715682
635	Stargard	2445	53.33916044899	15.03132722574
636	Łódź Olechów Zachód	783	51.72496777711	19.55949202168
637	Stare Jabłonki	2120	53.69135344775	20.09366151963
638	Lubajny	2120	53.70042725499	20.02500832025
639	Biesal	2104	53.72026146591	20.19367253802
640	Ulikowo	2453	53.34854535165	15.11740972817
641	Gogolewo	2451	53.37220968931	15.17647376905
642	Nidzica	2090	53.35711425351	20.41398876596
643	Kozłowo	2089	53.31083432105	20.31274849188
644	Zakrzów-Sarnowo	2089	53.28284400425	20.2845943577
645	Iłowo	2040	53.16565276898	20.29372732275
646	Narzym	2040	53.18996957	20.25356215211
647	Działdowo	2038	53.23894199774	20.1672217791
648	Burkat	2039	53.27517359084	20.1353243569
649	Turza Wielka	2039	53.30737998054	20.08390632526
650	Frenštát pod Radhoštěm město		49.54452146431	18.20834808355
651	Gralewo	2043	53.32016175727	20.03490659746
652	Żabiny	2043	53.34214940502	19.98314374022
653	Tuczki	2043	53.35213728614	19.95460390208
654	Rybno Pomorskie	2043	53.38090761567	19.91399262892
655	Reptowo	2450	53.37238311132	14.86373790328
656	Miedwiecko	2450	53.36471987503	14.92454228294
657	Prabuty	1682	53.75781755726	19.21039490068
658	Susz	2069	53.71120190409	19.32907854879
659	Redaki	2069	53.67107421044	19.40818047442
660	Ząbrowo	2066	53.63723902211	19.46088081705
661	Mikołajki Pomorskie	1748	53.84976093593	19.15838597059
662	Gdakowo	1682	53.81649149556	19.17013400255
663	Kwidzyn	1679	53.73096712328	18.93361571347
664	Grzędzice	2453	53.35826690536	14.97252683247
665	Sadlinki	1684	53.66726316996	18.88045234718
666	Dziwno	1684	53.61870496794	18.9017196495
667	Brachlewo	1681	53.80243977919	18.96120131131
668	Ryjewo	1683	53.84319010872	18.95681329538
669	Sztumska Wieś	1751	53.89508223835	19.00146283258
670	Kolin	2448	53.24501073137	15.1238891382
671	Ostrołęka	1278	53.05607334229	21.61671868584
672	Słubice	559	52.33595458924	14.59507038591
673	Siedlce Zachodnie	1281	52.17351388703	22.2355422324
674	Grabowo	1090	53.07284167846	21.53316019893
675	Nowa Wieś Kościelna	1090	53.08472623382	21.41255735278
676	Zabiele Wielkie	1090	53.08460380225	21.34836671591
677	Jastrząbka	1082	53.1326426275	21.24736052513
678	Parciaki	1154	53.17479952878	21.14110861244
679	Olszewka	1154	53.21430815735	21.05940038359
680	Raszujka	1152	53.24610249644	21.00394457275
681	Chorzele	1152	53.27941854423	20.9430678889
682	Wielbark	2132	53.4002127907	20.95288037181
683	Kurpie	1092	53.05582765746	21.75462482214
684	Witkowo	2453	53.28450823145	15.07831252373
685	Śniadowo	1572	53.04385448775	21.99063777387
686	Kulesze Kościelne	1620	53.01991432215	22.51953184068
687	Sokoły	1622	52.9998867729	22.71915256441
688	Lewin Brzeski	1286	50.75811696643	17.61540146435
689	Kraków Lotnisko	839	50.07095272195	19.80129807919
690	Morzyca	2448	53.21861252291	15.15528061464
691	Zabierzów Rząska	839	50.10575289604	19.82342125397
692	Löcknitz		53.45613209781	14.21539946337
693	Gierwaty	1091	52.9925236435	21.60403431779
694	Goworowo	1085	52.92109104572	21.58202165277
695	Pasieki	1085	52.85402350326	21.56048106746
696	Prabuty Góry	1085	52.80640571438	21.56985827116
697	Przetycz	1257	52.76895988161	21.55118464887
698	Dalekie	1256	52.68248581795	21.49440306746
699	Leszczydół	1260	52.64587921163	21.46926464418
700	Zygmuntowo Mazowieckie	1257	52.72745056379	21.52551669444
701	Dolice	2448	53.19917286418	15.20880649049
702	Kraków Podgórze	966	50.04144753293	19.96005213439
703	Kraków Grzegórzki	966	50.05743496953	19.94795858324
704	Białystok	1630	53.13357012396	23.1353969616
705	Białystok Starosielce	1630	53.12133576085	23.08656280864
706	Białystok Bacieczki	1630	53.15092967256	23.07171681973
707	Fasty	1523	53.1767017601	23.02492544428
708	Warszawa Żwirki i Wigury	1282	52.19340974892	20.98037906746
709	Dobrzyniewo Duże	1523	53.19434708606	23.002746358
710	Borsukówka	1523	53.22733793467	22.93083655236
711	Knyszyn	1579	53.28463049794	22.89599857642
712	Zastocze	1579	53.31236921407	22.857372896
713	Czechowizna	1580	53.35117161474	22.83676115472
714	Mońki	1580	53.40236162335	22.79687370076
715	Goniądz	1575	53.45937931057	22.7263862125
716	Cygany	1504	50.51268628593	21.69704854489
717	Tarnowska Wola	1504	50.45157475985	21.73572063446
718	Rogoźnica koło Rzeszowa	1473	50.11691142317	21.96892261505
719	Rzeszów Miłocin	1512	50.07556107463	21.9872072339
720	Osowiec	1575	53.47288699902	22.65683136153
721	Podlasek	1546	53.55790339299	22.53482581267
722	Port Lotniczy Szczecin Goleniów	2382	53.59359705876	14.89776528836
723	Harrachov		50.77146072849	15.39339478043
724	Ruda	1546	53.58936189187	22.52060171512
725	Wasilków	1533	53.19794863109	23.17681023032
726	Wieliczka Rynek-Kopalnia	965	49.985672592	20.05670606822
727	Wrocław Stadion	168	51.13716008979	16.94045936931
728	Warszawa Lotnisko Chopina	1282	52.16962861123	20.97518083069
729	Czarny Blok	1533	53.24852216112	23.20921213215
730	Kotowo	2171	52.22834342842	16.4837562381
731	Zielone Wzgórza	2294	52.56507326357	17.00848416931
732	Czerwonak Osiedle	2287	52.48026178794	16.97802536442
733	Wólka Ratowiecka	1522	53.27962158213	23.24356799945
734	Czarna Białostocka	1522	53.30561866908	23.27966765671
735	Machnacz	1522	53.33136054596	23.31764179735
736	Rozedranka	1603	53.35910923869	23.36548483305
737	Białystok Fabryczny	1630	53.14024184289	23.18444390816
738	Tarnowo Pomorskie	2454	53.30628810479	15.36666556906
739	Kuriany	1529	53.11119978029	23.32128220858
740	Wieliczka Bogucice	965	49.99837435105	20.03712862462
741	Tychy Grota Roweckiego	1920	50.11395648009	18.98641749207
742	Tychy Aleja Bielska	1920	50.11715439773	18.98254536442
743	Tychy Lodowisko	1920	50.10765935728	19.00079358532
744	Glinnik Wieś	777	51.8825705473	19.48152972751
745	Domaniewice Centrum	644	52.01203319469	19.79204480957
746	Pierwoszów Miłocin	123	51.25515827226	17.09906358532
747	Zagrody Kościół	383	51.07852483401	23.19047218651
748	Lublin Ponikwoda	525	51.26609978214	22.60603503439
749	Lublin Zadębie	525	51.25799500005	22.60998288095
750	Niemce	420	51.36291890987	22.64641670898
751	Lubartów Lipowa	397	51.46414800452	22.5994082123
752	Lubartów Słowackiego	397	51.47314710327	22.60518820398
753	Parczew Kolejowa	453	51.6346649681	22.88088092527
754	Zajezierce	1534	53.10138172476	23.35805805637
755	Lublin Airport	482	51.23498178221	22.71539751653
756	Żednia	1527	53.08702830397	23.46981780015
757	Sokole Białostockie	1527	53.0862875424	23.51135010435
758	Waliły	1524	53.1081649054	23.65107129355
759	Wien Hauptbahnhof		48.18484462747	16.37810468674
760	Barzkowice	2453	53.32700984235	15.26425065989
761	Lewickie	1525	53.02805209369	23.12476246158
762	Białystok Stadion	1630	53.09799296238	23.1292194196
763	Hołówki Duże	1525	52.97136631736	23.09527816219
764	Zimnochy	1525	52.95480321897	23.0855189777
765	Strabla	1544	52.90154474544	23.11328791854
766	Rajsk	1539	52.82876277657	23.1486986597
767	Bielsk Podlaski	1537	52.7617180417	23.18770672342
768	Sulino	2451	53.31803723266	15.3152866603
769	Lewki	1539	52.73030237084	23.21155120283
770	Ognica	2447	53.31605057572	15.45341551872
771	Gregorowce	1542	52.66228641241	23.24183003885
772	Podbiele	1542	52.69186275759	23.21047422971
773	Łapy	1526	52.98997579471	22.88359562683
774	Uhowo	1526	53.00456775122	22.90920805889
775	Bojary	1531	53.0277775866	22.94979974275
776	Baciuty	1531	53.04686321417	22.98318241141
777	Trypucie	1531	53.07079841362	23.02498386002
778	Niewodnica	1531	53.08276362722	23.04586337635
779	Klepacze	1521	53.10261875846	23.08042288678
780	Szepietowo	1623	52.87006765067	22.54107530054
781	Łapy Osse	1526	52.97391019222	22.83962834115
782	Zdrody Nowe	1528	52.95412247536	22.7824251135
783	Racibory	1622	52.92992232747	22.7125818016
784	Berlin Ostbahnhof		52.51047506371	13.43471288681
785	Jabłoń Kościelna	1621	52.90836875575	22.65055689084
786	Sokoliniec	2376	53.2940140269	15.50556047949
787	Strasburg (Uckermark)		53.51510737948	13.74505742328
788	Szymbory	1623	52.89403042638	22.60943074305
789	Dąbrowa-Łazy	1623	52.84042362734	22.45665549159
790	Kity	1617	52.8282804999	22.42224274993
791	Czyżew	1617	52.79971278558	22.34214662433
792	Szulborze Wielkie	1101	52.76059373232	22.22744992262
793	Berlin Hauptbahnhof		52.52493988276	13.36949364418
794	Cottbus-Sandow		51.75498392635	14.35360549808
795	Recz Pomorski	2376	53.27103294834	15.56352664676
796	Jablonec nad Nisou centrum		50.72087754692	15.17377734722
797	Smržovka-Luční		50.73504034176	15.24956936176
798	Sokółka	1603	53.40325782489	23.50737489028
799	Berlin Gesundbrunnen		52.54874770663	13.39037981748
800	Kundzin	1603	53.43949596834	23.59077712249
801	Czuprynowo	1600	53.47224486644	23.63154489206
802	Pęzino	2453	53.33549265711	15.19549517214
803	Gliniszcze	1603	53.46581147083	23.5010527552
804	Racewo	1602	53.49795909662	23.48457830612
805	Sidra	1602	53.54476453004	23.44666271808
806	Różanystok	1596	53.62317198592	23.39223814144
807	Dąbrowa Białostocka	1596	53.64823698271	23.36495438078
808	Kamienna Nowa	1596	53.69120801043	23.26306948383
809	Ostrowie Biebrzańskie	1520	53.71963009642	23.24394815031
810	Jastrzębna	1520	53.74579686539	23.19831801078
811	Balinka	1520	53.76812163045	23.1608199315
812	Desná-Pustinská		50.76416823245	15.33549994114
813	Desná-Riedlova vila		50.75926331926	15.31393827976
814	Kuźnica Białostocka	1600	53.51153439649	23.64210453598
815	Łódź Pabianicka	783	51.72641710553	19.4451013029
816	Łódź Radogoszcz Zachód	783	51.82164942214	19.41554277867
817	Ozorków Nowe Miasto	770	51.95881116578	19.269708
818	Zgierz Jaracza	771	51.86398312085	19.42214655952
819	Łódź Dąbrowa	783	51.73592584622	19.51061381349
820	Ramiszów	138	51.19316914421	17.09829122454
821	Warszawa Zacisze - Wilno	1282	52.27795623182	21.08023411045
822	Małaszewicze	329	52.02702328044	23.53101906754
823	Kołobrzeg Stadion	2409	54.17514277076	15.55921523677
824	Warszawa Ursus Niedźwiadek	1282	52.1913526495	20.86947281217
825	Pałecznica	405	51.49045780759	22.65905083189
826	Zabiele	405	51.5436432332	22.76371040874
827	Czeremcha	1553	52.51867068876	23.35354454233
828	Dobrowoda	1557	52.56148566886	23.39126533817
829	Policzna	1557	52.58936382777	23.42375289837
830	Kleszczele	1557	52.56101979067	23.32892890044
831	Suchowolce	1557	52.6170105616	23.28394220465
832	Borowiki	1592	52.48207606321	23.21520624537
833	Nowy Nurzec	1593	52.47256037859	23.17662271891
834	Nurzec	1593	52.46006477662	23.08304835449
835	Sycze	1593	52.42921479271	22.99842081349
836	Siemiatycze	1595	52.39102692267	22.9450162209
837	Hajnówka	1551	52.73340523923	23.58311622799
838	Orzeszkowo	1556	52.68168555944	23.53360467291
839	Lębork Mosty	1688	54.55021992997	17.7929913944
840	Wrocław Grabiszyn	168	51.09659785733	16.97412514219
841	Izbica	380	50.89063190852	23.15544673968
842	Grąblewo	2172	52.23542205145	16.39055923943
843	Kobylany	329	52.03755200442	23.56063167725
844	Gdańsk Rębiechowo	1752	54.38745024741	18.4464659914
845	Gdańsk Port Lotniczy	1752	54.38286874433	18.4660080172
846	Gdańsk Matarnia	1752	54.37339867388	18.50649533464
847	Gdańsk Jasień	1752	54.35366498979	18.55015172024
848	Gdańsk Brętowo	1752	54.36528034553	18.57362381602
849	Gdańsk Niedźwiednik	1752	54.37803566944	18.57202487161
850	Gdańsk Strzyża	1752	54.39177971798	18.57887122223
851	Gdańsk Firoga	1752	54.37834223228	18.48605811059
852	Gdańsk Kiełpinek	1752	54.35534753227	18.52856516071
853	Żukowo	1670	54.34438504767	18.36209927116
854	Rzepin	558	52.34991618475	14.81499390067
855	Wrocław Różanka	168	51.13804682313	17.00373252646
856	Zielona Góra Nowy Kisielin	608	51.91543020972	15.62704843915
857	Gdańsk Śródmieście	1752	54.3466251019	18.64421224537
858	Kraków Sanktuarium	966	50.01381723595	19.93429615211
859	Kraków Zakliki	966	50.07982130139	19.84899043769
860	Kraków Młynówka	966	50.08170170367	19.85818371043
861	Kraków Olszanica	966	50.07652676054	19.82562035054
862	Zamość Starówka	526	50.71700579393	23.26270216325
863	Zamość Wschód	526	50.72251787642	23.27600378741
864	Warszawa Mokry Ług	1282	52.2772554876	21.17047981349
865	Sucha Beskidzka Zamek	922	49.74347611177	19.60342883527
866	Łopuchowo Osiedle	2294	52.61905210884	17.1098702037
867	Przebędowo	2294	52.5834889573	17.02349297421
868	Drzeńsko	558	52.36984989296	14.77144092796
869	Jerzmanice Lubuskie	558	52.30663356713	14.86743763104
870	Bydgoszcz Błonie	310	53.11778834395	17.95152335582
871	Gądków Wielki	569	52.24621774924	14.9635560007
872	Cierpice Kąkol	278	52.99195451886	18.44625605488
873	Szymany Lotnisko	2130	53.48905663179	20.94752749207
874	Chmielów Zagumnie	1504	50.52363490875	21.68586052513
875	Kunowice	559	52.34179675959	14.63860609931
876	Mokre	521	50.70803274125	23.20536256218
877	Wólka Orłowska	380	50.92703027536	23.18342823677
878	Boczów	569	52.32675015592	14.94622819615
879	Torzym	569	52.31242204385	15.05958541691
880	Gorzów Wielkopolski Wschodni	607	52.7318397516	15.24941829696
881	Wrocław Popowice	168	51.12710048522	17.0013527968
882	Gdynia Stadion	1753	54.49586743918	18.53313176071
883	Gdynia Karwiny	1753	54.46938650857	18.50873873069
884	Ryki	479	51.606333	21.92220593492
885	Zaborów Błonia	1496	49.92422069892	21.81951848651
886	Jasło Fabryczne	1381	49.7492937112	21.53372977379
887	Kraków Bronowice	966	50.08298189422	19.89220045173
888	Zbąszynek	575	52.24319855199	15.81866168851
889	Subkowy Centrum	1735	54.00254229452	18.76073815344
890	Warszawa Koło	1282	52.24619343106	20.95901317791
891	Rzeszów Zachodni	1512	50.05270823989	21.99420066138
892	Markuszowa	1500	49.87406100235	21.70559696693
893	Jelenia Góra Przemysłowa	166	50.88770235221	15.7052317791
894	Jelenia Góra Zabobrze	166	50.91033884333	15.7428272295
895	Zbąszyń	2250	52.25945349529	15.89568303348
896	Zbąszyń Przedmieście	2250	52.25699418388	15.92659965145
897	Babimost	576	52.16850193898	15.81518693923
898	Chrośnica	2250	52.28137222425	15.99168317144
899	Jastrzębsko	2248	52.29515729322	16.06128426871
900	Nowy Tomyśl	2248	52.30412409838	16.13304662706
901	Majdan Królewski Podlasek	1393	50.3629543429	21.73667830675
902	Huta Komorowska	1393	50.38939441341	21.71572415582
903	Radziszów Centrum	834	49.93693816072	19.8068883201
904	Sątopy	2248	52.30330322671	16.20345823258
905	Porażyn	2249	52.30229728497	16.28674150014
906	Nysa Wschodnia	1317	50.46590751209	17.35834975463
907	Goszczowice	1340	50.57280767147	17.62205001258
908	Bogdanowo	2251	52.62800803267	16.8180894705
909	Złotkowo	2298	52.51029398261	16.83059274789
910	Złotniki Grzybowe	2298	52.4846240814	16.84380785886
911	Lutol Suchy	546	52.34393116459	15.7544919883
912	Panowice	546	52.3605001406	15.73503600272
913	Parzniew	1147	52.15660840423	20.7634370172
914	Bukowiec Międzyrzecki	542	52.3852131028	15.70660324082
915	Zaklików Miasto	1494	50.75496097548	22.09291528836
916	Skawina Jagielnia	834	49.98127081687	19.84155097351
917	Kraków Opatkowice	966	49.98835169109	19.89829864153
918	Wałbrzych Centrum	169	50.77345966476	16.26989167061
919	Lublin Zachodni	525	51.21886871976	22.50866684061
920	Stefanowo	2250	52.23611101049	15.97215119511
921	Kraków Złocień	966	50.01808	20.05117
922	Chociszewo Rogoziniec	575	52.30712295436	15.7699190461
923	Dąbrówka Wielkopolska	575	52.27764717467	15.80016646389
924	Belęcin Wielkopolski	2348	52.20399369414	16.00804542328
925	Grabniak	994	51.7124404877	21.70526916931
926	Pisz Wschodni	2123	53.62726992174	21.83101641133
927	Tuchorza	2348	52.16789732127	16.04730880489
928	Olsztyn Śródmieście	2140	53.78250845637	20.48149533862
929	Olsztyn Dajtki	2140	53.76577032635	20.43829237302
930	Warszawa Targówek	1282	52.26431716822	21.05156753345
931	Iwiny	168	51.05461521533	17.06879875463
932	Mokronos Górny	140	51.07884790164	16.90864886872
933	Laski	453	51.60840882314	22.84183571297
934	Berejów	405	51.51419832723	22.72155081666
935	Wrocław Popiele	168	51.12232389459	17.11443006724
936	Wrocław Strachocin	168	51.10991809259	17.14551955193
937	Wrocław Wojnów Wschodni	137	51.09795532842	17.16841757029
938	Nadolice Małe	137	51.08183447143	17.2189664787
939	Chrząstawa Mała	137	51.07323516719	17.27632552117
940	Szydłów Centrum	1340	50.60528568292	17.71827929857
941	Słupsk Północny	1754	54.48340604131	17.01454458476
942	Ustka Uroczysko	1708	54.579668379	16.8452837222
943	Goleniów Park Przemysłowy	2382	53.52987229499	14.8103401038
944	Szczecin Trzebusz	2478	53.41190446927	14.71352845162
945	Szczecin Dunikowo	2478	53.38582242521	14.73910331458
946	Szczecin Żydowce	2478	53.35282859611	14.57462205523
947	Szczecin Łasztownia	2478	53.4186245339	14.55926180853
948	Warszawa Powązki	1282	52.25593086312	20.97169433995
949	Białystok Nowe Miasto	1630	53.10637829631	23.11402462566
950	Hryniewicze	1525	53.07260231049	23.128056
951	Orzechowicze	1539	52.81080243197	23.15877636909
952	Mikłasze	1542	52.72693750246	23.31597650528
953	Lubin Stadion	72	51.40848619336	16.19925172024
954	Burkatów	118	50.79357138253	16.47335145767
955	Jedlina-Zdrój Centrum	127	50.72113075428	16.34459489815
956	Praha-Zahradní Město		50.06212357583	14.50379344048
957	Szaniawy	440	51.94685973333	22.54441515871
958	Kotuń	1188	52.17628385342	22.0678263849
959	Sokule	317	51.99794370436	22.95715495897
960	Wrocław Szczepin	168	51.12283904723	17.01392233104
961	Sieniawa Żarska	603	51.63655904775	15.06169933582
962	Rzozów Centrum	834	49.95479917003	19.80434774816
963	Wola Radziszowska Lipki	834	49.9103844322	19.79341232806
964	Poraj	1835	50.67686464976	19.21926008598
965	Wadowice Osiedle Podhalanin	959	49.88781885752	19.48217908081
966	Łódź Retkinia	783	51.74034966243	19.40656944841
967	Łódź Warszawska	783	51.807740777	19.47143465012
968	Łódź Radogoszcz Wschód	783	51.82676210796	19.44327681988
969	Skoczów Bajerki	1783	49.79863396252	18.80108483929
970	Cieszyn Uniwersytet	1774	49.75069091308	18.64923667725
971	Ustroń Brzegi	1775	49.70970550335	18.82127271164
972	Wisła Jawornik	1776	49.66946234527	18.84744093254
973	Radom Północny	1280	51.41959192244	21.18646554233
974	Radom Gołębiów	1280	51.41182168415	21.18806184292
975	Skwierzyna	545	52.59049577374	15.49964522587
976	Biała Podlaska Wschodnia	523	52.02062600362	23.16159365416
977	Wieliszew Centrum	1030	52.44377022859	20.9960461389
978	Olsztyn Redykajny	2140	53.79653829262	20.43517649174
979	Miasteczko Śląskie Centrum	1857	50.48692756998	18.91933678508
980	Pyrzowice Lotnisko	1861	50.46823696385	19.07596170366
981	Mierzęcice	1760	50.46305008213	19.12855981708
982	Olsztyn Jezioro Ukiel	2140	53.78388766436	20.44960141182
983	Warka Miasto	1018	51.78068461651	21.17769028471
984	Warszawa Grochów	1282	52.25549035164	21.08425497472
985	Chabówka Stadion	897	49.5898110925	19.92032110155
986	Bańska Niżna	899	49.39754090735	20.01608132244
987	Poronin Misiagi	950	49.32974744156	19.99663531244
988	Zittau		50.90445278828	14.80575
989	Brzozowiec Gorzowski	529	52.65314029192	15.36781854661
990	Nowy Sącz Dąbrówka	967	49.59742672081	20.67915678031
991	Nowy Sącz Gorzków	967	49.59985267391	20.72200548525
992	Dąbrówka Jezioro Mucharskie	957	49.81430931646	19.59977062587
993	Trzebiszewo	545	52.62554105753	15.40551183623
994	Deszczno	529	52.67173885707	15.30664662105
995	Nowy Dwór koło Ornety	2081	54.14403102175	20.14289616466
996	Otomino	1670	54.33065810018	18.37654351652
997	Popowo Skwierzyńskie	541	52.53594732518	15.52218317215
998	Częstochowa Gnaszyn	1907	50.79166431561	19.02952870617
999	Blachownia	1786	50.77389639404	18.96960399627
1000	Świdnica Zawiszów	112	50.85975974362	16.47952583069
1001	Głębokie Międzyrzeckie	542	52.48470221148	15.53404329692
1002	Międzyrzecz	542	52.44527366544	15.59291895114
1003	Opalenica	2249	52.30964531078	16.39967456997
1004	Buk	2286	52.34354956913	16.5209083124
1005	Wojnowice Wielkopolskie	2249	52.32686852762	16.46655480116
1006	Otusz	2297	52.34669905447	16.59746832002
1007	Dopiewo	2288	52.35384409933	16.67823172106
1008	Szczecin Główny	2478	53.41848158335	14.54975301866
1009	Sulechów	581	52.0925649714	15.61831231824
1010	Łęgowo Sulechowskie	581	52.13246525794	15.67489987212
1011	Czerwieńsk	578	52.01520259378	15.41226824802
1012	Będów	578	52.0734225375	15.31118191805
1013	Nietkowice	578	52.05755747291	15.35122890927
1014	Radnica	539	52.09007605759	15.26917697245
1015	Bytnica	536	52.13141346095	15.14807088539
1016	Budachów	536	52.15288689466	15.08167965535
1017	Pliszka	540	52.2046952675	15.01677758318
1018	Szczawno - Ciemnice	537	52.03947485176	15.23335396707
1019	Laski Odrzańskie	578	52.03602354257	15.30580214048
1020	Nietków	578	52.02583240973	15.34382427116
1021	Krosno Odrzańskie	539	52.0318946764	15.09384155005
1022	Wężyska	539	52.01273886656	14.95161473215
1023	Zielona Góra Główna	608	51.94743950846	15.51348489897
1024	Buchałów	582	51.91690279579	15.36265529563
1025	Letnica	582	51.8897548116	15.31922311905
1026	Koźla Kożuchowska	582	51.87239681351	15.31882530556
1027	Bogaczów	580	51.84386097801	15.26784444313
1028	Nowogród Bobrzański	580	51.8120305415	15.24438886375
1029	Nowogród Osiedle	580	51.79507580889	15.22561513359
1030	Zielona Góra Stary Kisielin	608	51.93666841144	15.58988838223
1031	Wietrzychowo	2090	53.4192337567	20.39987454619
1032	Somonino Bernardyno	1667	54.28726825691	18.20205509126
1033	Zielona Góra Przylep	608	51.97768859717	15.43871049736
1034	Mirków	138	51.16527730742	17.16500043333
1035	Koniecpol Centrum	1791	50.77740729472	19.67327822356
1036	Dąbrówka Zabłotnia	1179	51.30999824462	21.04601598421
1037	Kosów	1179	51.34661046341	21.06464266509
1038	Tomaszówek	663	51.44907936699	20.12222169757
1039	Groszowice Wrzosów	1178	51.42958997042	21.30093383536
1040	Oława Zachodnia	92	50.94538345982	17.26798352209
1041	Nikielkowo	2100	53.80288260065	20.56528917549
1042	Kolno	2107	53.99374730088	20.99174862698
1043	Niedoradz	553	51.86555640721	15.66430319408
1044	Legnica Strefa	167	51.16541437233	16.18544218651
1045	Wolbrom Zachodni	905	50.37984569342	19.75873410166
1046	Zator Park Rozrywki	914	50.00540147057	19.4053396529
1047	Białystok Zielone Wzgórza	1630	53.11686060601	23.1054335779
1048	Gubin	534	51.97849017514	14.72135245264
1049	Radziszewo	2397	53.31952435351	14.53315256953
1050	Piła Fabryczna	2269	53.13912510437	16.77200585335
1051	Szczecinek Bugno	2455	53.72348580967	16.6836838836
1052	Świdwin Zamek	2461	53.77083850214	15.76550960272
1053	Kołobrzeg Ogrody	2409	54.17644902989	15.59720634878
1054	Kołobrzeg Amfiteatr	2409	54.1811238469	15.59568821847
1055	Kołobrzeg Radzikowo	2409	54.16209790323	15.54317593038
1056	Koszalin Wschodni	2477	54.21195058455	16.1842131561
1057	Koszalin Politechnika	2477	54.20417310565	16.17396711767
1058	Jastrowie Miasto	2356	53.42442415494	16.81117398262
1059	Mielec Południowy	1427	50.25826985952	21.48355335751
1060	Przemyśl Wschodni	1511	49.78463063724	22.80499642199
1061	Wodzisław Śląski Centrum	1873	49.99837655338	18.46382737434
1062	Pawłowice Śląskie Centrum	1840	49.96381668147	18.72492014618
1063	Żarnowa	1499	49.87742883723	21.81884323831
1064	Lutoryż	1470	49.96600278352	21.92261706862
1065	Boguchwała Dolna	1470	49.99441968253	21.94361516798
1066	Rzeszów Politechnika	1512	50.02756567401	21.98395907342
1067	Rzeszów Centrum	1512	50.04313999014	21.99850737512
1068	Kolbuszowa Górna	1392	50.22265755517	21.80548672024
1069	Rzeszów Staromieście	1512	50.06259576799	21.99238362698
1070	Głogów Małopolski Niwa	1473	50.13665486389	21.9647480086
1071	Rzeszów Pobitno	1512	50.05245355583	22.03183935316
1072	Rzeszów Baranówka	1512	50.06438113637	21.98907136381
1073	Rzeszów Dworzysko	1473	50.07791931002	21.96838616788
1074	Sędziszów Małopolski Wschodni	1466	50.06984231432	21.7289668268
1075	Chorzelów Południowy	1431	50.32379883757	21.43871622933
1076	Strzyżów Zachodni	1499	49.86870944373	21.77269756258
1077	Błonie Rokitno	1228	52.18937177831	20.64123304663
1078	Tuchola Rudzki Most	285	53.57654274046	17.89149250793
1079	Grudziądz Śródmieście	311	53.48237361559	18.74795326389
1080	Grudziądz Tuszewo	311	53.48647687984	18.81257696996
1081	Gregorowce Południowe	1542	52.64787128082	23.25801530978
1082	Jedlicze koło Zgierza	777	51.86878760954	19.321662602
1083	Zgierz Rudunki	771	51.86120787296	19.43737863421
1084	Studniska	157	51.10987477761	15.0856337619
1085	Pabianice Północne	666	51.670219699	19.34224605024
1086	Wronki Zamość	2321	52.71028959142	16.36117994249
1087	Żurawnica	522	50.64212654875	22.9600310111
1088	Aleksandrów	436	51.90437184604	22.48190150594
1089	Szczebrzeszyn	520	50.68085834288	22.98769263267
1090	Piekoszów	1958	50.87591367548	20.48382638812
1091	Adamowo	2349	52.10372716493	16.1547909914
1092	Izabelów	768	51.61000349103	18.91165559508
1093	Jasionka Lotnisko	1480	50.11554925074	22.02219128072
1094	Głogów Małopolski Południowy	1473	50.11348871411	21.98591172159
1095	Obłaczkowo	2354	52.29438901433	17.53438332275
1096	Łagiewniki	420	51.30518435787	22.61726615667
1097	Chorzów Uniwersytet	1906	50.29307614001	18.94140702579
1098	Bytom Stroszek	1858	50.38414297629	18.88401204166
1099	Trzeciewnica	240	53.15314675507	17.64066337466
1100	Grudziądz Rządz	311	53.45112418088	18.73357259392
1101	Rzepin Miasto	558	52.34587616577	14.82519149244
1102	Żary Muzyków	603	51.64164390735	15.1165813154
1103	Podchojny	1932	50.66438635965	20.32097847893
1104	Józefin	1057	52.22934340872	21.33240315809
1105	Wałowice	538	51.98453324488	14.79331075608
1106	Mnichów	1932	50.70792278716	20.33366241964
1107	Grabik	603	51.65564881923	15.11632054418
1108	Ustrzesz	473	51.80222327338	22.72969590116
1109	Pisary	839	50.12851930743	19.68327819765
1110	Kraków Piastów	840	50.1069994668	20.01287840718
1111	Kraków Przylasek	966	50.05199455408	20.16358512752
1112	Kraków Kościelniki	966	50.08784671076	20.16887604654
1113	Medyka	1449	49.80279330828	22.94004673408
1114	Dąbrowa Chełmińska Centrum	190	53.18128	18.29391
1115	Łódź Zarzew	783	51.75086864278	19.51313923949
1116	Kunice	60	51.21500344108	16.25448043915
1117	Głowno Północne	769	51.97898557611	19.72171434589
1118	Bezwola	475	51.77177649126	22.80434608047
1119	Biała Szlachecka	676	51.17518661906	19.02507248364
1120	Stary Broniszew	1796	50.98346336302	19.16073933232
1121	Cykarzew Północny	1796	50.96417971815	19.16342179726
1122	Nowa Brzeźnica	674	51.07527936836	19.14661256793
1123	Sosnowiec Jęzor Południowy	1918	50.22865473211	19.16541874141
1124	Widzów Teklinów	1793	50.98130615046	19.36742516675
1125	Świebodzin	574	52.24530528201	15.54018141065
1126	Zabrze Maciejów	1921	50.3060409787	18.74744233366
1127	Repczyce	1557	52.54537203533	23.35557340707
1128	Mielec Wolności	1427	50.27869799736	21.44831476576
1129	Radom Wschodni	1280	51.39927259303	21.17401778162
1130	Szczaniec	573	52.26438119906	15.69424094912
1131	Śniadowo Stara Stacja	1572	53.04492432807	22.0238659407
1132	Kupienino	574	52.25740022755	15.61404059319
1133	Wilkowo Świebodzińskie	574	52.25635571548	15.46921005526
1134	Mostki	570	52.26883951642	15.39598401668
1135	Toporów	571	52.2602705031	15.2616373635
1136	Drzewce	569	52.26945013435	15.16166589412
1137	Poznań Antoninek	2366	52.4096710874	17.02813781349
1138	Swarzędz	2299	52.40418947752	17.0736819452
1139	Paczkowo	2299	52.39692963981	17.15894244907
1140	Poznań Starołęka	2366	52.36673584877	16.93316366178
1141	Poznań Dębina	2366	52.37340668663	16.91072688221
1142	Poznań Krzesiny	2366	52.341777407	16.9753880341
1143	Złotniki	2298	52.49567078597	16.83610570285
1144	Poznań Podolany	2366	52.44744108355	16.88075408347
1145	Wargowo	2251	52.58416893947	16.8227555052
1146	Golęczewo	2298	52.53491958401	16.82797327846
1147	Chludowo	2298	52.56006584796	16.82530114263
1148	Poznań Górczyn	2366	52.38022615808	16.88137726116
1149	Poznań Junikowo	2290	52.37787840959	16.82562387799
1150	Palędzie	2288	52.37456507528	16.74918662003
1151	Szamotuły	2320	52.60283919382	16.58667754389
1152	Baborówko	2320	52.58035691458	16.63176128012
1153	Pamiątkowo	2320	52.5537408089	16.68493140689
1154	Pęckowo	2317	52.66397540777	16.48926012408
1155	Wronki	2321	52.70508207887	16.38586900418
1156	Mokrz	2321	52.74112831677	16.27811697468
1157	Miały	2153	52.80930643349	16.17592751756
1158	Drawski Młyn	2148	52.8604127165	16.0937563409
1159	Krzyż	2149	52.87738056072	16.01794189538
1160	Stare Bielice	561	52.85347900123	15.9221403149
1161	Drawiny	561	52.89690708495	15.95024913163
1162	Podlesiec	560	52.93686547856	15.87605303606
1163	Mierzęcin	560	52.95103169807	15.82711074067
1164	Dobiegniew	560	52.96864780224	15.74627182799
1165	Bierzwnik	2371	53.02409824017	15.65797509909
1166	Nowe Drezdenko	561	52.85381062199	15.83407429203
1167	Wieleń	2153	52.90747049724	16.18013012138
1168	Biernatowo	2152	52.95706228376	16.34270141863
1169	Siedlisko Czarnkowskie	2152	52.98362926186	16.39855716905
1170	Choszczno	2372	53.16524892098	15.40335939926
1171	Stary Klukom	2372	53.13193452891	15.45507123836
1172	Słonice	2374	53.09189843212	15.51599820007
1173	Rębusz	2371	53.05408389676	15.59023423764
1174	Ziemomyśl	2448	53.16708838218	15.30216935953
1175	Oborniki Wielkopolskie	2251	52.65766909515	16.8297475029
1176	Parkowo	2252	52.70799029041	16.91481114587
1177	Oborniki Wielkopolskie Miasto	2251	52.64561481549	16.8202492644
1178	Rożnowo	2251	52.67878730221	16.87102318529
1179	Poznań Wschód	2366	52.41845093624	16.97216823949
1180	Poznań Karolin	2366	52.438169177	16.98135615211
1181	Czerwonak	2287	52.46839928029	16.97968655952
1182	Owińska	2287	52.51153631152	16.98756586012
1183	Bolechowo	2287	52.5396068649	16.97922947487
1184	Murowana Goślina	2294	52.57496849809	17.01566807606
1185	Łopuchowo	2294	52.61353468757	17.09497384789
1186	Poznań Garbary	2366	52.41634597356	16.93745565332
1187	Szczecinek Chyże	2455	53.71837857917	16.69680391774
1188	Września	2354	52.32755673486	17.55531548381
1189	Podstolice	2352	52.34163192531	17.48050320503
1190	Szczecinek	2455	53.69353652129	16.70497103387
1191	Nekla	2352	52.35437085317	17.40162833401
1192	Kostrzyn Wielkopolski	2291	52.39325035856	17.22547081482
1193	Gutowo Wielkopolskie	2354	52.33239966852	17.64377927116
1194	Otoczna	2354	52.32518378135	17.69240480293
1195	Wólka	2312	52.32169278881	17.75341682209
1196	Strzałkowo	2312	52.31046597903	17.80684003174
1197	Iwin	2459	53.79511740076	16.51540527652
1198	Słupca	2306	52.28741036413	17.85207509458
1199	Gułtowy	2291	52.36820585607	17.31630880489
1200	Łubowo	2458	53.58389986221	16.38972966503
1201	Środa Wielkopolska	2325	52.21817178112	17.27455870753
1202	Pierzchno	2292	52.26311281639	17.15795507941
1203	Gądki	2292	52.30204721336	17.04527044104
1204	Kórnik	2292	52.28198864559	17.10344812142
1205	Sulęcinek	2323	52.13866580155	17.30881708466
1206	Solec Wielkopolski	2323	52.10977178215	17.31959222659
1207	Chocicza	2324	52.06985432781	17.34996730267
1208	Dalęcino	2460	53.74782443233	16.60866842447
1209	Luboń koło Poznania	2284	52.34442282247	16.89298218317
1210	Puszczykowo	2285	52.29568824412	16.87114601189
1211	Puszczykówko	2285	52.27293326149	16.863760241
1212	Mosina	2293	52.24044951629	16.85171965576
1213	Przeradz	2459	53.77053346941	16.53670844055
1214	Drużyna Poznańska	2293	52.21034790757	16.82392396386
1215	Iłowiec	2293	52.18366488811	16.79936968034
1216	Szreniawa	2290	52.31765610149	16.80025851059
1217	Wiry	2290	52.31528902841	16.86825384789
1218	Trzebaw Rosnówko	2297	52.29653750814	16.7675337619
1219	Gwda Mała	2460	53.7319923397	16.82800727407
1220	Stęszew	2297	52.28048274656	16.70989930093
1221	Poznań Dębiec	2366	52.36888692663	16.90132480897
1222	Poznań Główny	2366	52.40162478054	16.91155849814
1223	Poznań Strzeszyn	2366	52.46051520393	16.86573201215
1224	Poznań Wola	2366	52.43348580802	16.85049296088
1225	Kiekrz	2366	52.47617335721	16.7895177609
1226	Rokietnica	2296	52.51096657046	16.75561645974
1227	Drzonowo	2457	53.8068958437	16.86624068576
1228	Gniezno	2154	52.52968955788	17.60357013519
1229	Biały Bór	2457	53.88677179407	16.85543719142
1230	Gębarzewo	2155	52.48315291228	17.57023416931
1231	Żydowo	2155	52.45321345655	17.56809072884
1232	Czerniejewo	2155	52.42403776661	17.56515
1233	Marzenin	2354	52.38568487256	17.56131781349
1234	Pierzyska	2159	52.50559825426	17.48192901708
1235	Fałkowo	2159	52.49853092359	17.42452756686
1236	Silnowo	2458	53.6348794314	16.49167917023
1237	Lednogóra	2159	52.49092619848	17.36319366298
1238	Pobiedziska	2295	52.47931618166	17.2779332498
1239	Biskupice Wielkopolskie	2295	52.46684217519	17.1687384091
1240	Pobiedziska Letnisko	2295	52.47428301863	17.23967226492
1241	Promno	2295	52.47164939153	17.21448467858
1242	Kobylnica	2299	52.44588799818	17.07973860186
1243	Ligowiec	2299	52.43509148773	17.03697902747
1244	Jelenino	2460	53.6593717778	16.62551953113
1245	Sława Wielkopolska	2344	52.63442022337	17.14396903802
1246	Skoki	2344	52.67439591431	17.16211172024
1247	Wągrowiec	2340	52.8095724261	17.20271810318
1248	Kobylec	2346	52.84840535598	17.20092728836
1249	Grylewo	2346	52.88872333891	17.22788510185
1250	Laskownica	2342	52.9159911627	17.25101364418
1251	Gołańcz	2342	52.94748	17.30562740608
1252	Czarne	1649	53.68000194859	16.93842057707
1253	Czarnobór	2455	53.69975121328	16.76772324553
1254	Przysieczyn	2346	52.75399142861	17.18402364418
1255	Roszkowo Wągrowieckie	2344	52.70887487994	17.17621903803
1256	Żółtnica	2460	53.69527582444	16.81214325734
1257	Domisław	1649	53.66799334249	17.03262077771
1258	Bińcze	1649	53.66011100599	17.12897648689
1259	Biskupnica	1650	53.65507859635	17.21155373612
1260	Lotyń	2359	53.5999227264	16.77974633886
1261	Mogilno	236	52.65857188473	17.94605076941
1262	Wydartowo	236	52.61155682779	17.90430715143
1263	Jankowo Dolne	2156	52.53882532998	17.71952715989
1264	Trzemeszno	2162	52.56990511104	17.81799042266
1265	Turowo Pomorskie	2460	53.64698505017	16.72320148217
1266	Kutno	617	52.22701929483	19.34870615211
1267	Krzewie	620	52.23540876174	19.16623948932
1268	Nowe Kutnowskie	620	52.23771	19.22653
1269	Turzynów	2200	52.23047401267	19.02588485599
1270	Kłodawa	2203	52.2273854086	18.89056204677
1271	Ostrowy	624	52.29923699789	19.19158677795
1272	Brokęcino	2359	53.56262194503	16.81766735248
1273	Strzelce Kujawskie	626	52.32286831678	19.36866042852
1274	Kutno Azory	617	52.2400209672	19.30402505886
1275	Raciborów Kutnowski	622	52.28048275836	19.34161654233
1276	Sierakówek	999	52.37094205994	19.42074892759
1277	Gostynin	998	52.43336054116	19.4761607877
1278	Okonek	2359	53.52026430861	16.8306187619
1279	Rogożew	999	52.46174972358	19.5412909828
1280	Łąck	1124	52.48703747043	19.59615905026
1281	Płock Radziwie	1279	52.5242193615	19.67225016071
1282	Żychlin	618	52.21311918462	19.61909293056
1283	Sklęczki	617	52.22541341187	19.40559196295
1284	Złotniki Kutnowskie	621	52.22506240609	19.49207188361
1285	Zosinów	650	52.18572046737	19.71620722817
1286	Jackowice	650	52.15718246382	19.79475847487
1287	Niedźwiada Łowicka	647	52.1403002923	19.88423479266
1288	Rzęśnica	2381	53.52450325105	15.95202160616
1289	Witonia	640	52.15693325031	19.27661239564
1290	Łęczyca	633	52.04922785545	19.19323861063
1291	Sierpów	774	52.01848268246	19.2224611786
1292	Ozorków	770	51.97250907933	19.26593183935
1293	Chociszew	775	51.92387673676	19.26725956812
1294	Gawrony	637	52.11247119463	19.21974230556
1295	Płock	1279	52.55274238269	19.71269974603
1296	Płock Trzepowo	1130	52.58890905413	19.73371831283
1297	Sierpc	1199	52.84789825922	19.65378252646
1298	Koziołek	231	52.86588295363	19.49862688095
1299	Podwierzbie	1203	52.86482	19.57912145767
1300	Jankowo Pomorskie	2378	53.5166603593	15.77440498429
1301	Zawidz	1205	52.82950564505	19.84339880357
1302	Mieszaki	1203	52.83675616524	19.74517082209
1303	Zawidz Kościelny	1205	52.82413839021	19.87778459126
1304	Gozdowo	1200	52.7294397652	19.69569988095
1305	Susk	1203	52.78510142233	19.6831260086
1306	Proboszczewice Płockie	1130	52.66034801731	19.71377777777
1307	Łowicz Główny	641	52.10521690787	19.95498597086
1308	Bednary	649	52.10546073288	20.06451665283
1309	Jasionna Łowicka	728	52.12461364118	20.12365507606
1310	Kęszyce	728	52.13823272766	20.14796554506
1311	Nowa Sucha	1210	52.1584866138	20.16764758945
1312	Złocieniec	2381	53.52796836384	16.01818888846
1313	Bobrowniki	649	52.05865220009	20.01037358165
1314	Bełchów	649	52.02646203805	20.03315626502
1315	Mokra	735	51.97876773477	20.0995302093
1316	Sierakowice Skierniewickie	735	51.99866800531	20.06166814685
1317	Łowicz Przedmieście	641	52.09305647898	19.94679990675
1318	Mysłaków	649	52.09239292287	20.01630259657
1319	Konin	2364	52.23132169834	18.25252889514
1320	Patrzyków	2213	52.22936985715	18.36808215477
1321	Kramsk	2213	52.24516970729	18.476734459
1322	Budki Nowe	2207	52.24444912285	18.56348253967
1323	Koło	2198	52.21107796102	18.63200246215
1324	Barłogi	2202	52.21596885199	18.76799582362
1325	Suliszewo Drawskie	2378	53.5171698653	15.89307789623
1326	Spławie	2209	52.25770626896	18.09115145767
1327	Kawnice	2209	52.24984597884	18.1508517791
1328	Drawsko Pomorskie	2378	53.52311872829	15.82372312511
1329	Konin Zachód	2364	52.23707537515	18.22112539616
1330	Cienin	2311	52.27255847568	17.96600743782
1331	Cienin Kościelny	2311	52.27007282704	18.00948
1332	Bobrowo Pomorskie	2381	53.52826912691	16.07851881144
1333	Warszawa Gołąbki	1233	52.20844831988	20.86436281482
1334	Warszawa Aleje Jerozolimskie	1282	52.20543248688	20.94148151787
1335	Warszawa Główna	1282	52.22514314412	20.98546389815
1336	Warszawa Ochota	1282	52.22580542435	20.99078633862
1337	Żelisławie Pomorskie	2377	53.52406996992	16.15012438252
1338	Warszawa Zachodnia	1282	52.22005750107	20.96523811276
1339	Warszawa Włochy	1282	52.20626871726	20.91497539401
1340	Warszawa Ursus	1282	52.19648425748	20.88534235418
1341	Warszawa Ursus Północny	1282	52.20569204427	20.88977133499
1342	Warszawa Rakowiec	1282	52.19681659314	20.96603470304
1343	Warszawa Służewiec	1282	52.18086526898	20.98701819241
1344	Warszawa Śródmieście	1282	52.22938671429	21.00759854233
1345	Warszawa Centralna	1282	52.22884143194	21.0032749828
1346	Warszawa Powiśle	1282	52.23371763214	21.02817669242
1347	Warszawa Stadion	1282	52.2448233422	21.04395746648
1348	Czaplinek	2377	53.53741934852	16.23877050197
1349	Czarne Małe	2377	53.5574379698	16.31910175181
1350	Warszawa Okęcie	1282	52.16596885644	20.98736381349
1351	Warszawa Dawidy	1282	52.12854932542	20.99116172884
1352	Warszawa Jeziorki	1282	52.11030334732	20.99319855704
1353	Piaseczno	1115	52.06656150582	21.01725960979
1354	Nowa Iwiczna	1114	52.09134289942	20.99532493121
1355	Zalesie Górne	1115	52.02664042676	21.04168389815
1356	Ustanówek	1116	51.99678566986	21.0600625582
1357	Pruszków	1146	52.16825322977	20.79886836309
1358	Piastów	1145	52.18262583466	20.84266304434
1359	Brwinów	1147	52.14171320914	20.7182313201
1360	Milanówek	1003	52.12484226231	20.66716466005
1361	Grodzisk Mazowiecki	1006	52.11021993141	20.62252647354
1362	Żyrardów	1273	52.05234533554	20.44856070399
1363	Sucha Żyrardowska	1277	52.02289712281	20.35942553938
1364	Jesionka	1277	52.0148222069	20.33472775877
1365	Radziwiłłów Mazowiecki	1275	52.00029293561	20.29034792304
1366	Jaktorów	1007	52.08676410864	20.55203651191
1367	Międzyborów	1007	52.06360272882	20.48246919036
1368	Ożarów Mazowiecki	1233	52.20740985064	20.79627733862
1369	Płochocin	1233	52.20006655554	20.70204554915
1370	Błonie	1228	52.18653866675	20.60834904299
1371	Witanów	1228	52.18594271107	20.57413988955
1372	Boża Wola	1005	52.18988116076	20.52694290608
1373	Seroki	1213	52.19645217796	20.46781182209
1374	Teresin-Niepokalanów	1213	52.20210492946	20.41658183929
1375	Piasecznica	1213	52.21003266044	20.3442495954
1376	Sochaczew	1206	52.21517565534	20.23901892527
1377	Kornelin	1210	52.18316196692	20.2062338537
1378	Runowo Pomorskie	2476	53.55566783884	15.52945065248
1379	Worowo	2473	53.68864995204	15.63527255528
1380	Klępnica	2473	53.71758441586	15.65515462146
1381	Warszawa Młynów	1282	52.23895144989	20.95845
1382	Warszawa Wola	1282	52.22986288041	20.95783977628
1383	Warszawa Zachodnia (Peron 9)	1282	52.22223604539	20.96142072884
1384	Łobez	2473	53.63665778088	15.62768048243
1385	Chociwel	2446	53.47076432765	15.33607448192
1386	Lisowo	2446	53.43126809724	15.29760198872
1387	Trąbki	2451	53.39574135935	15.23873798109
1388	Cieszyno Łobeskie	2476	53.52071910034	15.46933073467
1389	Węgorzyno	2476	53.5434529612	15.56063978617
1390	Wiewiecko	2476	53.52623126379	15.6507405891
1391	Warszawa Gdańska	1282	52.25911858243	20.99311973016
1392	Warszawa ZOO	1282	52.26357245135	21.01800065278
1393	Warszawa Toruńska	1282	52.294097465	21.01308769444
1394	Warszawa Żerań	1282	52.31413273668	20.99893625397
1395	Warszawa Płudy	1282	52.33402917298	20.98591253373
1396	Warszawa Choszczówka	1282	52.35785951492	20.97227694114
1397	Zielonka	1247	52.31171045037	21.15742133862
1398	Zielonka Bankowa	1247	52.29144304482	21.15404068887
1399	Lesięcin	2476	53.58619405597	15.57081771158
1400	Świdwin	2461	53.78111392914	15.77274066944
1401	Kobyłka-Ossów	1244	52.32725015223	21.19327126257
1402	Kobyłka	1244	52.33686322295	21.21546406746
1403	Wołomin	1255	52.34664299751	21.23811721265
1404	Wołomin Słoneczna	1255	52.3543423823	21.25593711045
1405	Zagościniec	1255	52.36484089728	21.28048235582
1406	Dobczyn	1250	52.37884350575	21.31305718881
1407	Klembów	1250	52.39593479727	21.35294258058
1408	Jasienica Mazowiecka	1254	52.41540055703	21.39849016071
1409	Nowy Dwór Mazowiecki	1076	52.42529479678	20.72381501454
1410	Modlin	1080	52.44367451743	20.70438260482
1411	Modlin	1080	52.44367451743	20.70438260482
1412	Pomiechówek	1080	52.47336511222	20.7434919828
1413	Brody Warszawskie	1080	52.5138846715	20.74809466138
1414	Studzianki Nowe	1079	52.53789470381	20.75146793783
1415	Legionowo	1026	52.40140810951	20.94165234261
1416	Legionowo Przystanek	1026	52.41124919955	20.91432283069
1417	Legionowo Piaski	1026	52.41268698697	20.94283974603
1418	Janówek	1030	52.42530122016	20.77844407606
1419	Michałów-Reginów	1030	52.42251866489	20.96262843188
1420	Wieliszew	1030	52.42826658052	20.97487970304
1421	Nieporęt	1028	52.43067437521	21.03221116204
1422	Dąbkowizna	1028	52.423811	21.08566847487
1423	Nasielsk	1079	52.57283001138	20.76804374603
1424	Wkra	1138	52.58488737645	20.57068059853
1425	Cieksyn	1079	52.57749132199	20.66418372618
1426	Dalanówek	1141	52.59443655148	20.46385520636
1427	Płońsk	1133	52.61603973898	20.3660787619
1428	Arcelin	1141	52.65979204524	20.31837039385
1429	Baboszewo	1135	52.68318383552	20.26032997819
1430	Kaczorowo	1142	52.72691375615	20.17345192394
1431	Raciąż	1134	52.77895585818	20.10491857805
1432	Koziebrody	1142	52.80202198507	19.97262417197
1433	Świercze	1170	52.67043360135	20.7628119914
1434	Kątne	1079	52.60665542278	20.76224554233
1435	Jackowo Dworskie	1079	52.6311592323	20.77500776687
1436	Kałęczyn	1170	52.70738724687	20.7473802352
1437	Gąsocin	983	52.73864749009	20.72033869179
1438	Gołotczyzna	983	52.78447746879	20.68189153373
1439	Ciechanów Przemysłowy	975	52.86471481594	20.61534234722
1440	Ciechanów	975	52.88339915431	20.59131914352
1441	Czeruchy	982	52.93618698985	20.50594197421
1442	Krośnice Mazowieckie	1071	52.96759397421	20.49117028177
1443	Konopki	1071	52.99653585036	20.45983740741
1444	Stupsk Mazowiecki	1071	53.02115468581	20.43404297421
1445	Wyszyny	1071	53.06118790955	20.39208725397
1446	Mława Miasto	1066	53.10853971369	20.36422754233
1447	Mława	1066	53.12646126612	20.35064938756
1448	Warszawa Wileńska	1282	52.25569643758	21.03832098148
1449	Ząbki	1246	52.29244466016	21.1133249828
1450	Tłuszcz	1254	52.4311589486	21.43562146165
1451	Krusze	1250	52.42716218683	21.35799111772
1452	Wyszków	1260	52.60195039211	21.44662364418
1453	Jarzębia Łąka	1254	52.4578693739	21.44772647738
1454	Grzegorzewo	1261	52.48556387098	21.42862843188
1455	Mostówka	1261	52.51886027542	21.44195188095
1456	Lucynów	1260	52.55328122535	21.45934647487
1457	Rybienko	1260	52.58226802733	21.4582192871
1458	Łochów	1239	52.53397373547	21.68755579762
1459	Barchów	1239	52.51765311472	21.64751419511
1460	Urle	1249	52.50737696309	21.622328
1461	Szewnica	1249	52.48336926362	21.563417
1462	Mokra Wieś	1254	52.457494	21.50001791534
1463	Chrzęsne	1254	52.44715012197	21.47472502579
1464	Ostrówek Węgrowski	1239	52.55968829502	21.75069808423
1465	Topór	1239	52.58478600522	21.81249780622
1466	Sadowne Węgrowskie	1241	52.60542261105	21.8587312832
1467	Radzymin	1252	52.42428373273	21.17749396445
1468	Rąbino	2464	53.86938885838	15.95240745321
1469	Małkinia	1097	52.69415895659	22.03357172883
1470	Kietlanka	1103	52.74397487284	22.17875457539
1471	Zaręby Kościelne	1103	52.73097000613	22.14081725397
1472	Prostyń	1097	52.659234	21.961007
1473	Warszawa Gocławek	1282	52.23872182909	21.13266616524
1474	Warszawa Wschodnia	1282	52.25143798823	21.05225084066
1475	Warszawa Rembertów	1282	52.2571282693	21.15821974471
1476	Warszawa Wesoła	1282	52.25408728389	21.22408961227
1477	Warszawa Wola Grzybowska	1282	52.25282706189	21.25086482209
1478	Sulejówek	1065	52.247739051	21.27710226505
1479	Sulejówek Miłosna	1065	52.24048288352	21.29895841601
1480	Warszawa Wawer	1282	52.22338255687	21.14955292394
1481	Warszawa Wawer	1282	52.22338255687	21.14955292394
1482	Warszawa Olszynka Grochowska	1282	52.24982598942	21.10670472884
1483	Warszawa Anin	1282	52.21303183538	21.15989691534
1484	Warszawa Anin	1282	52.21303183538	21.15989691534
1485	Warszawa Międzylesie	1282	52.20394445698	21.16895566138
1486	Warszawa Międzylesie	1282	52.20394445698	21.16895566138
1487	Warszawa Radość	1282	52.18574024783	21.18714211409
1488	Warszawa Radość	1282	52.18574024783	21.18714211409
1489	Warszawa Miedzeszyn	1282	52.17267295793	21.20020344907
1490	Warszawa Miedzeszyn	1282	52.17267295793	21.20020344907
1491	Warszawa Falenica	1282	52.16182633676	21.21100794974
1492	Warszawa Falenica	1282	52.16182633676	21.21100794974
1493	Michalin	1104	52.14833316799	21.22446162698
1494	Michalin	1104	52.14833316799	21.22446162698
1495	Józefów	1104	52.13602102297	21.23671289815
1496	Józefów	1104	52.13602102297	21.23671289815
1497	Otwock Świder	1105	52.12112611213	21.25151981349
1498	Otwock Świder	1105	52.12112611213	21.25151981349
1499	Otwock	1105	52.10961288372	21.26300835582
1500	Otwock	1105	52.10961288372	21.26300835582
1501	Otwock Śródborów	1105	52.10122249429	21.29439559853
1502	Pogorzel Warszawska	1106	52.09469154811	21.34057425397
1503	Stara Wieś	1106	52.08425751778	21.35878654233
1504	Celestynów	1106	52.05791247682	21.39363541006
1505	Kołbiel	1108	52.04022742893	21.43447900266
1506	Chrosna	1108	52.0316362148	21.44831860979
1507	Zabieżki	1108	52.01245522448	21.4718879914
1508	Augustówka	993	51.98700467401	21.51386435715
1509	Mińsk Mazowiecki	1053	52.17586935636	21.55245601594
1510	Białogard	2367	54.00994582961	15.97770929606
1511	Mienia	1054	52.14933583346	21.68712272884
1512	Barcząca	1061	52.15682153062	21.62631827116
1513	Dębe Wielkie	1055	52.19917981693	21.4228349828
1514	Kościernica	2368	54.05438259153	16.01113413166
1515	Halinów	1057	52.22343028926	21.35011789815
1516	Cisie	1057	52.21001084138	21.39035614352
1517	Wrzosów	1055	52.18439491026	21.48263458895
1518	Pilawa	993	51.95562237451	21.53356362698
1519	Nosówko	2368	54.0926993555	16.05249804963
1520	Garwolin	987	51.90101942603	21.5541062209
1521	Wola Rowska	989	51.82130194434	21.60118318651
1522	Łaskarzew Przystanek	989	51.7979990755	21.60853327116
1523	Leokadia	989	51.76687905341	21.63310049207
1524	Sobolew	994	51.74134575258	21.673084459
1525	Wygoda	995	51.68878717439	21.73097733862
1526	Mika	995	51.67269001972	21.74848726257
1527	Życzyn	995	51.64773426344	21.76039519378
1528	Ruda Talubska	987	51.85285748836	21.58979996728
1529	Dunowo	2423	54.12222445008	16.09225465615
1530	Siedlce	1281	52.16181364664	22.27167427003
1531	Stok Lacki	1193	52.16213488444	22.38828666005
1532	Krzymosze	1190	52.17795326288	22.43917473743
1533	Białki Siedleckie	1193	52.12860906833	22.30943645767
1534	Kosiorki	1196	52.10710676855	22.33601208466
1535	Borki-Kosy	1196	52.08898435195	22.358397
1536	Dziewule	1198	52.0552074299	22.38617019511
1537	Radomyśl	1196	52.03111220148	22.38099972884
1538	Podborsko	2370	53.93419498942	16.13879315176
1539	Tychowo	2370	53.92145924928	16.23497379961
1540	Mordy	1190	52.19581050689	22.49657249074
1541	Wielanowo	2459	53.87381936913	16.32635262219
1542	Mordy Miasto	1190	52.20342623152	22.52156014484
1543	Cierpigórz	1192	52.22605726444	22.59473850661
1544	Niemojki	1038	52.25866465828	22.70130330423
1545	Patków	1038	52.27087460635	22.74549011639
1546	Platerów	1040	52.30105256082	22.82068389815
1547	Sarnaki	1041	52.32522762664	22.87979228703
1548	Fronołów	1041	52.36085682793	22.92909917791
1549	Mińsk Mazowiecki Anielina	1053	52.16779167783	21.58554522454
1550	Sabinka	1193	52.17317174145	22.17269002855
1551	Koszewnica	1188	52.16909990404	21.98689004663
1552	Sosnowe	1188	52.17588073804	21.940556
1553	Grodziszcze Mazowieckie	1062	52.16082621327	21.87231232275
1554	Mrozy	1062	52.16419810829	21.80148861111
1555	Grzmiąca	2459	53.83252830598	16.41947706134
1556	Cegłów	1054	52.14847603036	21.73634290158
1557	Łuków	432	51.9410027565	22.39151672618
1558	Krynka Łukowska	436	52.00671762606	22.37578931779
1559	Matysy	440	51.9399922711	22.49385434593
1560	Nielep	2464	53.82976930365	15.87115681656
1561	Radzyń Podlaski	473	51.82712515124	22.66861437678
1562	Jaski	473	51.85937253766	22.5914095974
1563	Milanów	452	51.70221187971	22.87511377034
1564	Parczew	453	51.62622126255	22.87159169588
1565	Gródek	455	51.57970100163	22.79404887325
1566	Brzeźnica Bychawska	405	51.52901231232	22.74273471191
1567	Tarło	405	51.50630158131	22.68739723964
1568	Czarnowęsy Pomorskie	2368	53.93990874421	15.98145960689
1569	Łuków Łapiguz	432	51.92473284937	22.35988793065
1570	Sarnów	438	51.84302360449	22.29603822872
1571	Borowina	438	51.82495112991	22.27002586838
1572	Hordzieżka	435	51.75438767628	22.16067523108
1573	Krzywda	435	51.79499692911	22.20518390974
1574	Okrzeja	435	51.73174623917	22.13606765552
1575	Karlino	2369	54.04519141621	15.88331332492
1576	Góra Kalwaria	1112	51.98927746226	21.19313725529
1577	Daszewo	2369	54.07692101351	15.87504563803
1578	Czachówek Wschodni	1112	51.97350599689	21.10445042023
1579	Czachówek Górny	1116	51.96789606624	21.07763617791
1580	Czachówek Południowy	1116	51.95828068108	21.08155178043
1581	Biała Podlaska	523	52.02033370388	23.1305732068
1582	Międzyrzec Podlaski	314	51.97602474764	22.7854278251
1583	Brzozowica	471	51.95371819587	22.60754507414
1584	Misie	323	51.95931284033	22.68816927312
1585	Sitno	323	51.98578893745	22.86611090352
1586	Szachy	317	51.99170421802	22.91042567244
1587	Porosiuki	316	52.01182946062	23.06217154641
1588	Chotyłów	324	51.99684579892	23.3558781676
1589	Ogrodniki	316	52.00079667487	23.23971751922
1590	Perkowice	316	51.99660882906	23.27986922878
1591	Dobrynka	324	51.99856348797	23.44132916868
1592	Terespol	315	52.07398543681	23.60112306555
1593	Kołobrzeg	2409	54.18224244455	15.57084203011
1594	Żagań	586	51.60411323724	15.31502653134
1595	Wrzosowo	2410	54.11483830389	15.8374181517
1596	Małomice	589	51.5496823915	15.4469895364
1597	Leszno Górne	591	51.46679466929	15.61650751948
1598	Ustronie Morskie	2415	54.20030545011	15.74765922422
1599	Bieniów	603	51.71601797405	15.17904033592
1600	Dygowo	2410	54.14085719199	15.72668350965
1601	Jazy	2410	54.12920552654	15.79018778744
1602	Żary	595	51.63428898391	15.13823113914
1603	Lubanice	603	51.69190047951	15.12033137169
1604	Lipinki Łużyckie	598	51.64874854834	15.01050262957
1605	Żary Kunice	595	51.59938232924	15.16573009676
1606	Konin Żagański	588	51.54597554799	15.19147801522
1607	Jankowa Żagańska	588	51.56704652974	15.18100457499
1608	Iłowa Żagańska	588	51.50204191731	15.18854501138
1609	Stramnica	2412	54.15486854454	15.65028238459
1610	Tuplice	602	51.67178410463	14.83754429243
1611	Zasieki	596	51.73549379919	14.66923087643
1612	Tuplice Dębinka	601	51.66613591966	14.90992302667
1613	Głowaczewo	2412	54.13067078185	15.4385107215
1614	Stary Borek	2412	54.1379522399	15.48143648354
1615	Nowa Sól	547	51.79912167571	15.70874382983
1616	Bytom Odrzański	548	51.72648093427	15.82103212556
1617	Karcino	2412	54.10885113216	15.39721791072
1618	Głogów	14	51.66967512769	16.07957260999
1619	Bieczyno Pomorskie	2393	54.09586189373	15.3534530391
1620	Krzepów	14	51.64493922763	16.13341680657
1621	Grębocice	98	51.59331318454	16.1851474122
1622	Głogów Wróblin	14	51.6865758013	15.95455879242
1623	Głogów Huta	14	51.67537658522	15.9923153504
1624	Brzeg Głogowski	19	51.6909839441	15.9183685723
1625	Czerna	19	51.70216198721	15.88493439219
1626	Głogówko	17	51.73524143918	16.09566982234
1627	Leszno	2365	51.84588963258	16.56545428391
1628	Lipno Nowe	2235	51.91927009437	16.57064854931
1629	Górka Duchowna	2235	51.9542482321	16.57692342314
1630	Stare Bojanowo	2227	51.99652520111	16.58508213222
1631	Przysieka Stara	2225	52.03636850708	16.60440346091
1632	Kąkolewo	2236	51.85783975774	16.68673489815
1633	Leszno Grzybowo	2365	51.86025638155	16.61213157539
1634	Pawłowice	2234	51.81995073103	16.75912311905
1635	Poniec	2170	51.76159964619	16.8077827705
1636	Dzięczyn	2170	51.75727644928	16.85428084656
1637	Karzec	2166	51.75474328292	16.90422437302
1638	Krobia	2166	51.75901312669	16.97145781349
1639	Rydzyna	2237	51.77124991374	16.6463987018
1640	Kaczkowo	2237	51.74313969908	16.6802150919
1641	Lasocice	2238	51.81589535332	16.48598373653
1642	Wschowa	606	51.79397990707	16.31674040741
1643	Stare Drzewce	605	51.77665826586	16.19567380817
1644	Wilkowice	2235	51.88676648811	16.54124976686
1645	Krzycko Wielkie	2240	51.90422929191	16.45262250793
1646	Włoszakowice	2240	51.93282584394	16.37348760979
1647	Wolsztyn	2349	52.11144382872	16.10821008146
1648	Rostarzewo	2174	52.13496695112	16.20683661839
1649	Tłoki	2349	52.11627941122	16.17225682209
1650	Rakoniewice	2174	52.13848295206	16.26446753472
1651	Drzymałowo	2174	52.15695696249	16.29686708466
1652	Ruchocice	2174	52.17747369036	16.34224769577
1653	Ptaszkowo	2172	52.22923314291	16.44117833862
1654	Grodzisk Wielkopolski	2172	52.23047565056	16.3638970229
1655	Granowo	2171	52.2254894217	16.5307760185
1656	Strykowo Poznańskie	2297	52.24352824822	16.61392749207
1657	Powodowo	2349	52.12329317425	16.05409603439
1658	Wroniawy	2349	52.05999171919	16.1648597963
1659	Nowy Widzim	2349	52.08097670289	16.14236959259
1660	Nowy Solec	2347	52.03071940721	16.19484489815
1661	Nowawieś Mochy	2347	52.01473320632	16.21562344048
1662	Perkowo	2347	52.00366200322	16.26963766865
1663	Błotnica	2347	51.99310873352	16.30052536442
1664	Starkowo	2347	51.97877870443	16.31266650066
1665	Boszkowo	2240	51.96093305548	16.33534390675
1666	Kościan	2223	52.07887930382	16.6419466574
1667	Oborzyska Stare	2225	52.11037815478	16.70109517865
1668	Czempiń	2224	52.13897413456	16.75235817165
1669	Krotoszyn	2231	51.70152870299	17.42615102649
1670	Biadki	2231	51.67709309899	17.56698594841
1671	Gorzupia	2231	51.69185961262	17.50406383395
1672	Łąkociny	2257	51.65683677382	17.66863343954
1673	Koszalin	2477	54.19039460958	16.16960647928
1674	Daniszyn	2257	51.66747157194	17.61421678305
1675	Dzierżanów Wielkopolski	2231	51.71217991474	17.35368927116
1676	Kuklinów	2229	51.71916320351	17.31916807606
1677	Kobylin	2229	51.72002332328	17.22371516071
1678	Czeluścin	2167	51.72792658162	17.16379708466
1679	Mścice	2416	54.21427020781	16.07319467119
1680	Pępowo	2167	51.73702335593	17.1129392123
1681	Włostowo	2166	51.75290332087	17.02572577183
1682	Zduny	2233	51.64654565691	17.36632703662
1683	Cieszków	81	51.6313643418	17.35256192923
1684	Będzino	2416	54.21123446404	15.9927743942
1685	Rawicz	2305	51.60877741913	16.83979934136
1686	Rawicz	2305	51.60877741913	16.83979934136
1687	Słowienkowo	2416	54.20714933429	15.94128875997
1688	Żmigród	125	51.47485191109	16.90180355369
1689	Garbce	125	51.51402155535	16.88945971221
1690	Korzeńsko	125	51.54445053198	16.87232823677
1691	Bojanowo	2301	51.70052468981	16.74423054228
1692	Bojanowo	2301	51.70052468981	16.74423054228
1693	Zaborowice	2301	51.685819	16.686808
1694	Borszyn Wielki	20	51.671431	16.63472
1695	Borszyn Mały	20	51.673327	16.595522
1696	Miłogoszcz	2416	54.20533957721	15.90930613342
1697	Tymień	2416	54.20533674093	15.8450021528
1698	Jarocin	2177	51.96872297641	17.49468683124
1699	Radlin Wielkopolski	2177	52.03329228618	17.49948854233
1700	Mieszków	2177	52.02335477922	17.4403764918
1701	Żerków	2179	52.06965895898	17.49765781349
1702	Orzechowo	2351	52.12661336231	17.47783927116
1703	Miłosław	2351	52.20856276507	17.47673489815
1704	Książno	2351	52.24620261189	17.49385848347
1705	Chwalibogowo	2354	52.28340659377	17.52515338161
1706	Skibno	2422	54.24943321166	16.30459844798
1707	Witaszyce	2177	51.93609338545	17.56245356249
1708	Kotlin	2178	51.91456671823	17.64923426501
1709	Pleszew	2283	51.89250513527	17.73247445481
1710	Taczanów	2283	51.84056123736	17.75627321281
1711	Bronów	2283	51.7950380985	17.77404774263
1712	Biniew	2257	51.73918451684	17.79240435171
1713	Wiekowo	2441	54.30409600263	16.38789477959
1714	Nowe Skalmierzyce	2255	51.70819767368	17.99797696306
1715	Ociąż	2255	51.70200522955	17.93335604715
1716	Kalisz	2363	51.74278329437	18.07118445486
1717	Kalisz Szczypiorno	2363	51.72600891317	18.02737160699
1718	Kalisz Winiary	2363	51.73348569898	18.14153905968
1719	Opatówek	2187	51.74334955902	18.22791781486
1720	Radliczyce	2189	51.72329777994	18.34993935063
1721	Skalmierz	718	51.69730519018	18.43020210808
1722	Błaszki	718	51.6736341489	18.47122193039
1723	Sędzice	726	51.62881147064	18.57030599483
1724	Kępno	2193	51.29195579895	18.00141915717
1725	Domanin	2193	51.34434324571	17.99534419251
1726	Ostrzeszów	2268	51.4296015581	17.94054666434
1727	Niedźwiedź Wielkopolski	2268	51.48588650324	17.88376957464
1728	Miastko	1638	53.99753249534	16.96597282834
1729	Wieruszów Miasto	764	51.29912719792	18.16577552676
1730	Słosinko	1638	53.94179814677	16.97747672
1731	Wieluń Dąbrowa	756	51.23949550475	18.55060589273
1732	Wieluń	756	51.22344251522	18.5826561733
1733	Pątnów Wieluński	754	51.16007763394	18.63360955048
1734	Kawcze	1638	54.07202722811	16.88386684145
1735	Słupia	2191	51.25195314349	18.04128101279
1736	Łęka Opatowska	2194	51.21732793425	18.09123090768
1737	Stradomia	90	51.273048	17.62347
1738	Ostrów Wielkopolski	2254	51.6496675147	17.80517738591
1739	Ostrów Wielkopolski Gorzyce	2254	51.64749099883	17.73152587652
1740	Czekanów	2257	51.68542567962	17.8603899342
1741	Przytocko	1712	54.12316027991	16.85750198077
1742	Janków Przygodzki	2258	51.60928525939	17.80961213409
1743	Przygodzice	2258	51.57034788914	17.82981337737
1744	Antonin	2258	51.51304463219	17.86069274409
1745	Topola-Osiedle	2258	51.61282557693	17.76190182572
1746	Tarchały Wielkie	2256	51.58706466566	17.70158668221
1747	Odolanów	2256	51.57471075171	17.66780762831
1748	Garki	2256	51.54013724004	17.64865144048
1749	Granowiec	2261	51.51178692856	17.64524125397
1750	Sośnie Ostrowskie	2261	51.47128851377	17.63944954233
1751	Pawłów Wielkopolski	2261	51.42180331928	17.65475072024
1752	Międzybórz Sycowski	88	51.40103624019	17.65351483069
1753	Bukowina Sycowska	88	51.38812635243	17.58315323677
1754	Koźmin Wielkopolski	2230	51.83210254689	17.44372536442
1755	Ciecholub	1712	54.1728728096	16.88788148213
1756	Obra Stara	2230	51.88779677752	17.44930437302
1757	Golina	2177	51.90679291003	17.45997378902
1758	Wolenice	2232	51.76509420225	17.43715460846
1759	Bożacin	2231	51.7326988153	17.43397291534
1760	Biesowice	1712	54.19348449878	16.88794471329
1761	Łódź Widzew	783	51.76321082812	19.54318695347
1762	Łódź Niciarniana	783	51.76682560172	19.5074091136
1763	Łódź Fabryczna	783	51.76956162252	19.46956420169
1764	Bedoń	651	51.73177083684	19.6432143285
1765	Kępka	1712	54.21626066627	16.8973052448
1766	Łódź Andrzejów	783	51.74107053154	19.61707446226
1767	Gałkówek	653	51.72972250022	19.73104248686
1768	Justynów	651	51.73077230135	19.68390370892
1769	Żakowice	653	51.73219645271	19.79104290298
1770	Łódź Chojny	783	51.72641334627	19.48432155992
1771	Łódź Lublinek	783	51.72102685901	19.3594095295
1772	Pabianice	666	51.66080053969	19.32482150618
1773	Chechło	668	51.64493645938	19.28645087915
1774	Łask	629	51.60372042378	19.11212892399
1775	Borszewice	629	51.6097399766	19.03568967857
1776	Łódź Kaliska	783	51.75786647986	19.42983100106
1777	Łódź Żabieniec	783	51.79352425398	19.40702408284
1778	Zgierz	771	51.84930968801	19.42559837759
1779	Zgierz Północ	771	51.86915774189	19.38362542195
1780	Zgierz Kontrewers	771	51.86480412422	19.34012794576
1781	Grotniki	777	51.88729242701	19.31108618651
1782	Stryków	776	51.910679526	19.59395242328
1783	Bratoszewice	776	51.93867805892	19.65314944048
1784	Głowno	769	51.96142588689	19.70289864418
1785	Domaniewice	644	52.0206123635	19.82107645767
1786	Grudze	648	52.04857376589	19.90161860119
1787	Kamień Łowicki	773	51.98876	19.753123
1788	Swędów	776	51.90603241665	19.54055674736
1789	Glinnik	777	51.88692801351	19.49711358463
1790	Smardzew	777	51.87088984647	19.46759010185
1791	Gałęzinowo	1715	54.52302376186	16.93974954101
1792	Skierniewice	785	51.96730420328	20.15043398413
1793	Skierniewice Rawka	735	51.97758535489	20.2212768525
1794	Słupsk	1754	54.46771196624	17.01648113966
1795	Kobylnica Słupska	1713	54.44242860265	16.98623854694
1796	Widzino	1713	54.42871773098	16.96251988095
1797	Koluszki	653	51.74339815459	19.81837887943
1798	Żakowice Południowe	653	51.72988187815	19.78781955981
1799	Rogów	782	51.81805249261	19.88621943834
1800	Wągry	782	51.79110218926	19.84931170304
1801	Przyłęk Duży	782	51.84098141225	19.91738675952
1802	Krosnowa	736	51.8633214508	19.92320178866
1803	Lipce Reymontowskie	732	51.90524366394	19.94324918859
1804	Płyćwia	730	51.91704829086	20.00258671297
1805	Maków	733	51.9422609346	20.04559635043
1806	Dąbrowice Skierniewickie	733	51.93338446211	20.1031559828
1807	Słonowice	1713	54.38349093546	16.92656684921
1808	Baby	685	51.53672511832	19.71666314802
1809	Chrusty Nowe	743	51.69491809	19.79434656681
1810	Rokiciny	743	51.66760863454	19.78071168387
1811	Łaznów	743	51.63143265308	19.75510544353
1812	Wolbórka	738	51.59342087867	19.72353879822
1813	Wrząca Pomorska	1713	54.34342808244	16.91715408466
1814	Słotwiny	653	51.72235983712	19.83916309828
1815	Wykno	746	51.66063181725	19.90466318725
1816	Zaosie	746	51.63376960337	19.93335575104
1817	Skrzynki	746	51.60234983782	19.96677979977
1818	Tomaszów Mazowiecki	737	51.54681097307	20.03376730833
1819	Piotrków Trybunalski	784	51.41082312766	19.68475819874
1820	Milejów	687	51.35557131303	19.67576430025
1821	Jarosty	685	51.46153361821	19.69314687797
1822	Moszczenica	685	51.50348926123	19.70043071063
1823	Rozprza	687	51.30161376086	19.66015796413
1824	Luciążanka	687	51.27747252872	19.64830085587
1825	Wilkoszewice	682	51.25174320032	19.63053295307
1826	Gorzkowice	682	51.21824108365	19.60311984414
1827	Gorzędów	701	51.19705891309	19.5440378552
1828	Kamieńsk	701	51.18599297844	19.49827763708
1829	Gomunice	700	51.16388874572	19.486879643
1830	Dobryszyce koło Radomska	698	51.12418098953	19.44425152138
1831	Bobry	708	51.0284182716	19.40457837587
1832	Radomsko	697	51.07473698255	19.43759879597
1833	Skarżysko-Kamienna	2000	51.11591040278	20.88136602447
1834	Skarżysko Kościelne	2000	51.12214962411	20.91765162426
1835	Skarżysko Zachodnie	2000	51.10038879243	20.85951697038
1836	Szydłowiec	1227	51.20800654822	20.92344117791
1837	Lipowe Pole	2003	51.15507722674	20.90104708466
1838	Marcinków	2009	51.09334359238	20.97997614605
1839	Wąchock	2009	51.08016466726	21.01555198409
1840	Starachowice	2005	51.05147535154	21.05816631434
1841	Starachowice Wschodnie	2005	51.04173127118	21.07907576336
1842	Starachowice Michałów	2005	51.01494618865	21.1088913667
1843	Suchedniów	2004	51.04627759458	20.84977392972
1844	Suchedniów Północny	2004	51.06518560671	20.84916
1845	Berezów	2004	51.02371297115	20.83616670992
1846	Bliżyn	2001	51.11054789694	20.756864537
1847	Gilów	2001	51.11947194438	20.73002097845
1848	Brzask	2001	51.09711730716	20.80366553676
1849	Skarżysko Milica	2000	51.10821053049	20.85108516455
1850	Radom Główny	1280	51.39107956687	21.1559020539
1851	Radom Stara Wola	1280	51.43885743411	21.18482433002
1852	Lesiów	1176	51.4796862068	21.19367905753
1853	Trablice	1179	51.34947519654	21.10111331284
1854	Bartodzieje	1177	51.52527046727	21.17807355093
1855	Wola Bierwiecka	1177	51.54317667435	21.17728588095
1856	Wolanów	1184	51.35331265666	21.00001151653
1857	Radom Potkanów	1280	51.35299637393	21.10208629489
1858	Kończyce Radomskie	1179	51.3490519905	21.0455692209
1859	Warka	1018	51.79312701868	21.16958188228
1860	Dobieszyn	973	51.63089150185	21.1764103067
1861	Sycewice	1713	54.41460871045	16.85001036272
1862	Grabów nad Pilicą	1022	51.74209128669	21.1821165129
1863	Strzyżyna	1022	51.69356208905	21.17268030919
1864	Kruszyna	1177	51.57986376928	21.17896529084
1865	Chynów	1011	51.90275271757	21.10068733862
1866	Reblino	1713	54.43066274557	16.91826427815
1867	Sułkowice	1011	51.92586555806	21.09267034722
1868	Krężel	1011	51.87150391627	21.11143213625
1869	Michalczew	1011	51.84388534376	21.12086769577
1870	Gośniewice	1018	51.81633866923	21.13979760517
1871	Pionki	1173	51.47985027274	21.46270458665
1872	Pionki Zachodnie	1173	51.47189826741	21.44120349934
1873	Jedlnia Kościelna	1173	51.45543381524	21.40840172157
1874	Jedlnia Letnisko	1178	51.42967177899	21.32776322552
1875	Antoniówka	1178	51.42466541835	21.27849884904
1876	Rajec Poduchowny	1178	51.41516018465	21.25362638161
1877	Żytkowice	1019	51.48305076941	21.55701980622
1878	Wrześnica	2444	54.40297353584	16.77838253358
1879	Przysucha	1163	51.37805592715	20.6587555324
1880	Drzewica	658	51.43699538572	20.46566942328
1881	Smogorzów Przysuski	1163	51.39494181835	20.60514311045
1882	Zygmuntów	1164	51.40862597204	20.57215824935
1883	Bieliny Opoczyńskie	1159	51.42399089995	20.50209009689
1884	Dęba Opoczyńska	662	51.48194967038	20.25791999007
1885	Jezierzyce Słupskie	1715	54.50430238226	17.12140915633
1886	Tomaszów Mazowiecki Białobrzegi	737	51.52457892984	20.06592748404
1887	Antoniów	660	51.47586606015	20.19896411311
1888	Brzustów	741	51.49365867008	20.14672098398
1889	Damnica	1709	54.49802269437	17.26980003173
1890	Opoczno Południe	660	51.35914690831	20.23239611506
1891	Wieniawa	1165	51.36347859079	20.78974915939
1892	Chronów	1226	51.35810585167	20.93040477183
1893	Podbór	1184	51.36044760142	20.8755960172
1894	Skrzynno	1165	51.36522689015	20.72139808333
1895	Jastrząb	1224	51.24884163472	20.98456318385
1896	Strzyżyno Słupskie	1709	54.49104456036	17.37303077706
1897	Ruda Wielka	1183	51.29225685333	21.04011511047
1898	Wola Lipieniecka	1183	51.27690753807	21.02637554233
1899	Gąsawy Plebańskie	1224	51.23195205302	20.94724344048
1900	Rożki	1179	51.33928768147	21.0547064762
1901	Ostrowiec Świętokrzyski	1980	50.93359476679	21.37783609799
1902	Kunów	1984	50.96809596611	21.29495750064
1903	Boksycka	1984	50.94992490941	21.32280658146
1904	Staw Kunowski	2006	51.00557293132	21.24509594219
1905	Brody Iłżeckie	2006	51.02149697398	21.19987414463
1906	Głuszyno Pomorskie	1714	54.48989362267	17.41784218651
1907	Styków Iłżecki	2006	51.01088617932	21.15112220574
1908	Bodzechów	1982	50.91354598509	21.43417594671
1909	Brzóstowa	1983	50.89843175322	21.48264882803
1910	Ćmielów	1983	50.88794124295	21.52877498141
1911	Potęgowo	1714	54.48520779033	17.48563988095
1912	Jasice	1979	50.85285744691	21.62706996845
1913	Drygulec	1979	50.8756965334	21.5776858609
1914	Kępice	1712	54.24138000541	16.89080453031
1915	Jakubowice	1976	50.81104512557	21.66453103989
1916	Końskie	1966	51.19021723079	20.42286514163
1917	Czesławice	464	51.30738889456	22.2633606036
1918	Ustka	1708	54.57873708694	16.86106249282
1919	Kornica	1966	51.21701011892	20.40502412532
1920	Stąporków	1971	51.1432547936	20.57549970523
1921	Wąsosz Konecki	1966	51.14508613919	20.47778069437
1922	Czarniecka Góra	1971	51.14369285324	20.51859050721
1923	Sołtyków	2001	51.13778609774	20.69128985882
1924	Wólka Plebańska	1971	51.15339605073	20.632186442
1925	Opoczno	660	51.37289664142	20.27150690032
1926	Słomianka	663	51.40136200359	20.20464138208
1927	Szadkowice	663	51.41962710502	20.16854329263
1928	Bratków	663	51.45509305775	20.11525719076
1929	Jeleń	745	51.50209500077	20.07295687838
1930	Petrykozy	657	51.29540763845	20.36347074789
1931	Sitowa	660	51.33911487162	20.32434466982
1932	Charnowo Słupskie	1715	54.53195528163	16.92037521495
1933	Ruda Białaczowska	1965	51.26229421231	20.38234303548
1934	Dęblin	476	51.57814967532	21.83430789828
1935	Rokitnia Stara	480	51.61199971011	21.79831550528
1936	Strzelinko	1715	54.51318763048	16.96292310185
1937	Leopoldów	479	51.66824587786	22.01254455217
1938	Grabów Szlachecki	478	51.70371988546	22.09648639482
1939	Zajezierze koło Dęblina	1025	51.54214824003	21.81728732275
1940	Puławy Azoty	457	51.47498219493	21.94893818373
1941	Puławy Chemia	457	51.44633370451	21.96838543451
1942	Puławy Miasto	457	51.42721669507	21.98475355656
1943	Puławy	457	51.41033808928	22.01157478274
1944	Skoki-Borowa	465	51.54012097682	21.84842367592
1945	Gołąb	465	51.50529513463	21.90998663048
1946	Końskowola	461	51.3984549469	22.04833535824
1947	Nałęczów	464	51.31807269238	22.21296795595
1948	Sadurki	464	51.28570381579	22.28536842202
1949	Miłocin Lubelski	416	51.26879670941	22.31249562624
1950	Motycz	417	51.22135900427	22.42388801851
1951	Motycz Leśny	417	51.23779406433	22.37217752177
1952	Klementowice	462	51.36287685657	22.10991307614
1953	Łopatki	466	51.3296383548	22.15144015997
1954	Bąkowiec	1019	51.51730045124	21.72350870898
1955	Garbatka Letnisko	1019	51.49478541802	21.62993686375
1956	Lublin Północny	525	51.24229362694	22.59959854206
1957	Świdnik Miasto	482	51.22379900765	22.69500085715
1958	Świdnik Wschód	483	51.2210525917	22.7140210491
1959	Lublin Główny	525	51.23135643241	22.56920429158
1960	Podzamcze	483	51.20970769583	22.78739663953
1961	Stasin Polny	525	51.21349855366	22.47504376267
1962	Lubartów	397	51.44553685262	22.60821456346
1963	Wandzin	403	51.39852600337	22.62993170973
1964	Bystrzyca koło Lublina	420	51.34848122259	22.63769417313
1965	Ciecierzyn	420	51.31927989537	22.60828479305
1966	Rudnik	525	51.28761071223	22.62254239874
1967	Jaszczów	429	51.20196808359	22.91093749445
1968	Trawniki	486	51.13598108505	22.99342727878
1969	Biskupice	486	51.161208441	22.9471446445
1970	Minkowice	483	51.21712775975	22.76468884376
1971	Dominów	483	51.21235689099	22.84307805032
1972	Rejowiec	347	51.11755257754	23.23950290941
1973	Wólka Kańska	354	51.12839124651	23.0664771029
1974	Kanie	354	51.12465736936	23.10405224789
1975	Zalesie Krasieńskie	354	51.12172756458	23.16622294325
1976	Chełm	524	51.14124000061	23.49326282389
1977	Zawadówka	361	51.12404105479	23.35546339651
1978	Chełm Miasto	524	51.13799468398	23.45814500337
1979	Sławno	2440	54.3556494354	16.66879392961
1980	Dorohusk	350	51.17210046763	23.78424703807
1981	Krasnystaw Miasto	377	50.98511134643	23.18297937705
1982	Krasnystaw Fabryczny	381	51.02438431113	23.18280349339
1983	Tarzymiechy	380	50.85445265368	23.12222303107
1984	Żulin	383	51.06214007887	23.1719494515
1985	Niedrzwica	419	51.11450164291	22.37711215383
1986	Korzybie	1712	54.29667694032	16.87375991091
1987	Niedrzwica Kościelna	419	51.08016276338	22.36340577206
1988	Leśniczówka	419	51.05002354888	22.35691230776
1989	Wilkołaz Wieś	395	51.00715881726	22.33593525232
1990	Wilkołaz	395	50.98591617999	22.32906651339
1991	Pułankowice	395	50.95903297525	22.30633603907
1992	Lublin Zemborzyce	525	51.17124946362	22.50247638443
1993	Krężnica Jara	419	51.15312853918	22.46579242969
1994	Majdan	419	51.14835059844	22.42651807938
1995	Karwice	2442	54.34505750315	16.53561579015
1996	Kraśnik	391	50.92946229381	22.2834988062
1997	Szastarka	392	50.85343406341	22.33194684844
1998	Sulów	396	50.90562321146	22.33315692561
1999	Polichna Kraśnicka	392	50.83083505722	22.30574996441
2000	Darłowo	2439	54.41710381396	16.40431145767
2001	Rzeczyca-Kolonia	392	50.84167253778	22.2672216704
2002	Sińczyca	2441	54.39958296455	16.48687562566
2003	Nowy Jarosław	2441	54.39248739682	16.52583254233
2004	Węgliniec	158	51.29011852119	15.22298410229
2005	Boleszewo	2444	54.37266487653	16.58416483929
2006	Stary Węgliniec	158	51.30766235992	15.19515292196
2007	Zagajnik	158	51.27030733084	15.29880495701
2008	Zgorzelec	154	51.14017520146	15.00337796417
2009	Zgorzelec Miasto	154	51.15461801471	15.0201610086
2010	Gierałtów Wykroty	4	51.21726609209	15.28428224537
2011	Gierałtów	4	51.19193888402	15.29990728836
2012	Pieńsk	156	51.24537151725	15.04706640608
2013	Lasów	156	51.22513331438	15.03506589815
2014	Jędrzychowice	159	51.17392212317	15.01775518651
2015	Jerzmanki	159	51.12766192101	15.06115097755
2016	Ruszów	158	51.40091763721	15.17661151954
2017	Jagodzin	158	51.35583472638	15.17034781434
2018	Okrąglica	158	51.4372099889	15.18169645098
2019	Zebrzydowa	4	51.25464956728	15.3900235582
2020	Gryfów Śląski	76	51.03398636634	15.42896210611
2021	Rębiszów	79	50.9481936409	15.45607144544
2022	Młyńsko	76	50.98962168196	15.4503890086
2023	Proszówka	76	51.00999068262	15.42457489815
2024	Mirsk	79	50.97306297683	15.38021807606
2025	Mroczkowice	79	50.94744916436	15.36154953373
2026	Orłowice	79	50.93175181129	15.35202218651
2027	Świeradów-Zdrój	66	50.91148249967	15.34355338161
2028	Lubań Śląski	65	51.11135449901	15.29354541421
2029	Zaręba	71	51.09798390088	15.21847728836
2030	Batowice Lubańskie	70	51.09088673864	15.15567530556
2031	Lębork	1685	54.53362086617	17.75043008566
2032	Olszyna Lubańska	69	51.06973774172	15.38064822223
2033	Ubocze	76	51.0558679	15.42009781349
2034	Krzewina Zgorzelecka	155	51.01562174185	14.93979145767
2035	Miłkowice	62	51.25586796209	16.05388338161
2036	Legnica	167	51.21400115827	16.16883872867
2037	Szczedrzykowice	63	51.21515352182	16.35153058399
2038	Jaśkowice Legnickie	60	51.21509680132	16.31320113625
2039	Legnica Piekary	167	51.20181485814	16.19811457672
2040	Raszówka	73	51.3018131969	16.18169918651
2041	Rzeszotary	62	51.24989831773	16.16600489815
2042	Gorzelin	73	51.32841407965	16.18098463558
2043	Chróstnik	73	51.35553410042	16.18092291534
2044	Lubin	72	51.3961934329	16.19368671298
2045	Rynarcice	74	51.47286290525	16.22750172024
2046	Malczyce	108	51.21573663978	16.48709950661
2047	Jawor	24	51.05531907421	16.19729894974
2048	Przybyłowice	26	51.12497114323	16.15862023544
2049	Stary Jawor	24	51.07909519302	16.16112212765
2050	Pogorzelice	1688	54.50391629675	17.64170456085
2051	Leśnice	1688	54.51410085154	17.66909292394
2052	Bolesławiec	1	51.26609729848	15.56960104823
2053	Tomaszów Bolesławiecki	6	51.28607013049	15.67999139881
2054	Chojnów	57	51.27768932412	15.93743919253
2055	Okmiany	58	51.27087993143	15.77892947487
2056	Osetnica	58	51.26166572566	15.84646997288
2057	Biała Górna	58	51.29755398161	15.92855291534
2058	Godętowo	1744	54.58190007128	17.86306380651
2059	Rokitki	58	51.33566591902	15.89315055728
2060	Bożepole Wielkie	1744	54.56891094446	17.96737881518
2061	Modła	3	51.37563615001	15.8135592123
2062	Studzianka	3	51.42706972559	15.69508239021
2063	Wierzbowa Śląska	3	51.39678318317	15.75919874603
2064	Chocianów	96	51.41628804973	15.91207711409
2065	Strzebielino Morskie	1744	54.56289438206	18.02870389364
2066	Jaworzyna Śląska	115	50.91252237851	16.42891994556
2067	Stanowice	117	50.93002188718	16.37475521957
2068	Luzino	1743	54.5669205778	18.10265072375
2069	Świebodzice	113	50.86019406371	16.33289737096
2070	Wałbrzych Szczawienko	169	50.81648800607	16.30245650782
2071	Wałbrzych Miasto	169	50.78576642799	16.2850159353
2072	Żarów	119	50.93952222005	16.49294780756
2073	Imbramowice	119	50.96345716356	16.5788876589
2074	Bolesławice Świdnickie	115	50.88781051278	16.46455230423
2075	Świdnica Przedmieście	112	50.83505114649	16.50414166138
2076	Bystrzyca Górna	118	50.78124964903	16.45611562698
2077	Lubachów	118	50.77431812684	16.43444562699
2078	Zagórze Śląskie	133	50.75381769496	16.40359218651
2079	Jugowice	133	50.7320217197	16.40533781349
2080	Świdnica Miasto	112	50.84112363519	16.48150919795
2081	Pszenno	118	50.8559248622	16.53018244907
2082	Marcinowice Świdnickie	116	50.87674876252	16.58665443188
2083	Szczepanów	116	50.89835850027	16.62513886375
2084	Strzelce Świdnickie	116	50.91092882212	16.66087746494
2085	Dzierżoniów Śląski	8	50.72441634844	16.64071171403
2086	Bielawa Zachodnia	7	50.68574804839	16.60656221363
2087	Mościsko Dzierżoniowskie	11	50.77187946743	16.58058341105
2088	Krzyżowa	118	50.79393508636	16.52983830919
2089	Piława Górna	10	50.67850029024	16.77330556812
2090	Wałbrzych Główny	169	50.74332995856	16.28095583203
2091	Jedlina-Zdrój	127	50.71155241729	16.34301602304
2092	Jedlina-Zdrój Borowa	127	50.72985492613	16.3222324762
2093	Głuszyca	130	50.68798620988	16.35393145767
2094	Bartnica	53	50.64200783267	16.40780052513
2095	Głuszyca Górna	130	50.67295441106	16.37097154366
2096	Boguszów-Gorce	126	50.75024909981	16.20211694907
2097	Boguszów-Gorce Wschód	126	50.74776468829	16.22186245768
2098	Boguszów-Gorce Zachód	126	50.76236385675	16.16725664362
2099	Kamienna Góra	39	50.78546	16.02322268221
2100	Wałbrzych Fabryczny	169	50.76142071923	16.26756218651
2101	Błażkowa	41	50.74425119221	15.99011271164
2102	Lubawka	41	50.70619104109	16.00319854233
2103	Marciszów	42	50.85132642052	16.00783028651
2104	Sędzisław	42	50.81340553575	16.06981221998
2105	Witków Śląski	129	50.79387796576	16.12747896826
2106	Janowice Wielkie	34	50.87851661199	15.9187708272
2107	Ciechanowice	42	50.86541968116	15.97980999
2108	Jelenia Góra	166	50.90260149015	15.7559269735
2109	Stara Kamienica	38	50.91398416795	15.56597252017
2110	Kwieciszowice	79	50.92427942269	15.5035290086
2111	Rybnica	38	50.91051905653	15.64554742593
2112	Wojanów	36	50.88471848075	15.82152012892
2113	Trzcińsko	34	50.88320692348	15.87205301066
2114	Mysłakowice	36	50.83535212843	15.78801609325
2115	Mysłakowice Orzeł	36	50.8251502868	15.78652965145
2116	Miłków	37	50.81025779455	15.76400854233
2117	Karpacz	30	50.78255117797	15.76159854233
2118	Łomnica	36	50.86221466775	15.79789688095
2119	Łomnica Dolna	36	50.87792599746	15.80141291534
2120	Łomnica Średnia	36	50.88690445158	15.79436489815
2121	Jelenia Góra Zachodnia	166	50.90064676632	15.71943172024
2122	Jelenia Góra Cieplice	166	50.86977982131	15.68550465382
2123	Jelenia Góra Orle	166	50.86430866063	15.65773093254
2124	Jelenia Góra Sobieszów	166	50.85187384278	15.64545522841
2125	Piechowice Dolne	32	50.85055727353	15.61634717064
2126	Piechowice	32	50.85170662987	15.59147073651
2127	Szklarska Poręba Dolna	33	50.8483479237	15.55694243247
2128	Szklarska Poręba Średnia	33	50.83845500292	15.54002090289
2129	Szklarska Poręba Górna	33	50.83266886434	15.51872596693
2130	Polana Jakuszycka	33	50.81466204374	15.42961880489
2131	Strzegom	117	50.97468875588	16.35891072884
2132	Rogoźnica	117	51.01450687441	16.30208344048
2133	Goczałków	117	51.00845166514	16.32533699867
2134	Kamieniec Ząbkowicki	148	50.53616772711	16.89894453563
2135	Ziębice	151	50.60848803375	17.03393188032
2136	Starczów	148	50.56338835706	16.94673409233
2137	Henryków	151	50.66330548314	17.02998641451
2138	Doboszowice	148	50.50740994641	16.94265344605
2139	Bardo Przyłęk	146	50.50966099738	16.75837645024
2140	Suszka	148	50.53083418298	16.82436525285
2141	Bardo Śląskie	146	50.50484068595	16.73409309296
2142	Ławica	49	50.47753311217	16.67068695241
2143	Nysa	1317	50.47777011314	17.34184774757
2144	Nowy Świętów	1313	50.37781472892	17.36968012452
2145	Nowy Las	1313	50.36205434187	17.41389350559
2146	Goświnowice	1317	50.47855455417	17.2572320559
2147	Wójcice	1318	50.4684775438	17.22039926861
2148	Otmuchów	1318	50.47412628018	17.15278337229
2149	Otmuchów Jezioro	1318	50.48153579124	17.10945235467
2150	Paczków	1319	50.47840993325	17.01118203309
2151	Jasienica Dolna	1316	50.50406187681	17.50381088095
2152	Budziszowice	1316	50.52268091284	17.53315848043
2153	Łambinowice	1316	50.53755792316	17.56507700693
2154	Sowin	1316	50.55548334882	17.60900716797
2155	Tułowice	1340	50.59816092818	17.64937427176
2156	Mańkowice	1316	50.48907648362	17.47677111563
2157	Kubice	1317	50.47568193044	17.44256954683
2158	Wyszków Śląski	1317	50.46648500944	17.39099602212
2159	Myśliczyn	1320	50.52572615342	17.32867825083
2160	Pakosławice	1320	50.54523330393	17.35332409854
2161	Skoroszyce	1321	50.59342511115	17.37502985457
2162	Chróścina Nyska	1321	50.61680811853	17.37821265572
2163	Prudnik	1345	50.32914061399	17.57744390754
2164	Szybowice	1345	50.34458441256	17.48121067139
2165	Dytmarów	1344	50.32984838475	17.67655198446
2166	Głuchołazy	1313	50.3303069648	17.39444876686
2167	Głuchołazy Miasto	1313	50.31676756877	17.3898661083
2168	Międzylesie	52	50.1438861506	16.65494457652
2169	Kłodzko Główne	44	50.45087592085	16.65718329867
2170	Kłodzko Główne	44	50.45087592085	16.65718329867
2171	Gorzuchów Kłodzki	49	50.48979856736	16.5716980172
2172	Bierkowice	49	50.47530871052	16.6055863287
2173	Krosnowice Kłodzkie	49	50.39262928595	16.63693154762
2174	Krosnowice Kłodzkie	49	50.39262928595	16.63693154762
2175	Gorzanów	48	50.3542618691	16.64086758063
2176	Bystrzyca Kłodzka Przedmieście	48	50.28546330051	16.64692616636
2177	Bystrzyca Kłodzka	48	50.29688207324	16.65502146178
2178	Długopole Zdrój	52	50.23858644073	16.63776785254
2179	Domaszków	52	50.212701993	16.65542264359
2180	Roztoki Bystrzyckie	52	50.18767531667	16.6657270447
2181	Kłodzko Książek	44	50.41566911022	16.64088606566
2182	Kłodzko Miasto	44	50.43543140434	16.65855831741
2183	Kłodzko Miasto	44	50.43543140434	16.65855831741
2184	Kłodzko Zagórze	49	50.41499570633	16.61293208063
2185	Stary Wielisław	49	50.40517725441	16.57626628339
2186	Polanica Zdrój	47	50.39763084631	16.51362060428
2187	Szczytna	56	50.40839787617	16.44974111974
2188	Duszniki-Zdrój	56	50.40912607558	16.38563095987
2189	Lewin Kłodzki	51	50.40553967076	16.27468406618
2190	Kudowa-Zdrój	45	50.42973323862	16.24423026502
2191	Ołdrzychowice Kłodzkie	49	50.367384	16.70718
2192	Trzebieszowice	50	50.346647	16.775687
2193	Radochów	50	50.339699	16.817064
2194	Lądek Stójków	50	50.327553	16.876046
2195	Stronie Śląskie	55	50.302965	16.876121
2196	Żelazno	49	50.371474	16.674809
2197	Ząbkowice Śląskie	150	50.59734287465	16.81274055362
2198	Ścinawka Średnia	54	50.52640774396	16.50535883202
2199	Nowa Ruda	46	50.57730950515	16.49680852354
2200	Nowa Ruda Przedmieście	46	50.58831152197	16.51567332275
2201	Nowa Ruda Zdrojowisko	53	50.61185935604	16.51001985516
2202	Świerki Dolne	53	50.6323983373	16.43230218651
2203	Jelcz Miłoszyce	94	51.04453531994	17.30584350733
2204	Nadolice Wielkie	137	51.079856251	17.25067555368
2205	Dobrzykowice Wrocławskie	137	51.08749569107	17.18006371915
2206	Święta Katarzyna	144	51.02969710625	17.12297934412
2207	Zębice Wrocławskie	144	51.00662990576	17.16207527355
2208	Lizawice	95	50.97228586956	17.2143741193
2209	Oława	92	50.9309804404	17.29699599133
2210	Lipki	1284	50.89827481156	17.37250313787
2211	Siechnice	144	51.03832785364	17.14266513448
2212	Zakrzów Kotowice	144	51.03579217663	17.21040266476
2213	Czernica Wrocławska	137	51.04970539431	17.23621493158
2214	Jelcz-Laskowice	94	51.03693431598	17.34565742572
2215	Kopalina	94	51.02103414753	17.40440791023
2216	Minkowice Oławskie	94	51.01184797892	17.45692677233
2217	Biskupice Oławskie	94	50.99390383644	17.51593059407
2218	Kobierzyce	141	50.97412809036	16.92649384789
2219	Wierzbice	141	50.9650725659	16.89895787235
2220	Pustków Żurawski	141	50.95412944873	16.85704422817
2221	Rogów Sobócki	143	50.93406548175	16.75888422817
2222	Sobótka	143	50.90522174959	16.74030556812
2223	Sobótka Zachodnia	143	50.90769651187	16.70124962433
2224	Wrocław Nowy Dwór	168	51.11983559448	16.95425927102
2225	Wrocław Mikołajów	168	51.11606147634	16.99832434517
2226	Wrocław Osobowice	168	51.16665535036	16.99698101521
2227	Wrocław Świniary	168	51.19779322159	16.97002293553
2228	Szewce	123	51.21614153957	16.95410552475
2229	Pęgów	120	51.24714604492	16.9271488663
2230	Oborniki Śląskie	120	51.29940096999	16.90740536845
2231	Osola	120	51.33821063714	16.86568079014
2232	Skokowa	121	51.38707135472	16.84895878597
2233	Wrocław Muchobór	168	51.11109675051	16.97484657006
2234	Wrocław Zachodni	168	51.08997225511	16.94957881898
2235	Smolec	140	51.07175422233	16.88252465842
2236	Sadowice Wrocławskie	140	51.05604958073	16.82481408829
2237	Kąty Wrocławskie	140	51.03811289425	16.75035429388
2238	Mietków	142	50.98490161674	16.6553620317
2239	Wrocław Żerniki	168	51.12626713441	16.91566297421
2240	Wrocław Leśnica	168	51.14200672617	16.86706065059
2241	Mrozów	109	51.1837296494	16.79313909458
2242	Gdynia Główna	1753	54.5208668893	18.52902918993
2243	Miękinia	109	51.1882268978	16.74005927116
2244	Przedmoście Święte	110	51.19051672411	16.66549116798
2245	Środa Śląska	110	51.18943385646	16.60660206735
2246	Wrocław Kuźniki	168	51.12750204501	16.9529067658
2247	Wrocław Pracze	168	51.1698621936	16.90330557433
2248	Wrocław Nadodrze	168	51.12578939882	17.03263905435
2249	Gdynia Redłowo	1753	54.49189606006	18.53808469444
2250	Wrocław Sołtysowice	168	51.14250246971	17.08345347122
2251	Wrocław Kowale	168	51.13487952433	17.100195584
2252	Wrocław Psie Pole	168	51.15042371518	17.11842610185
2253	Wrocław Pawłowice	168	51.16861322663	17.1086262381
2254	Gdynia Wzgórze Świętego Maksymiliana	1753	54.50807176273	18.5353309914
2255	Wrocław Zakrzów	168	51.15887859711	17.12204463558
2256	Wrocław Swojczyce	168	51.11594966807	17.12124556035
2257	Wrocław Wojnów	168	51.10369878474	17.15744465321
2258	Długołęka	138	51.17841510776	17.19422568753
2259	Gdynia Orłowo	1753	54.47721712285	18.54827770028
2260	Borowa Oleśnicka	138	51.1841298963	17.27630059326
2261	Siedlec Trzebnicki	138	51.23359823561	17.1188980172
2262	Pasikurowice	138	51.20898614657	17.10970172024
2263	Brochocin Trzebnicki	122	51.27618328839	17.09414536442
2264	Trzebnica	122	51.30416957113	17.06320387732
2265	Sopot	1755	54.43995694985	18.56235946849
2266	Oleśnica	84	51.20049059302	17.38696191447
2267	Oleśnica	84	51.20049059302	17.38696191447
2268	Grabowno Wielkie	91	51.34324786074	17.40346503844
2269	Dobroszyce	86	51.27060176146	17.363883351
2270	Oleśnica Rataje	84	51.21584759927	17.36443823223
2271	Oleśnica Rataje	84	51.21584759927	17.36443823223
2272	Bierutów	85	51.12840991926	17.54622076298
2273	Sopot Kamienny Potok	1755	54.45775672607	18.55341612268
2274	Solniki Wielkie	85	51.15415373566	17.49346191798
2275	Bukowice Trzebnickie	82	51.39972775949	17.36848889708
2276	Krośnice	82	51.47129927587	17.37386940837
2277	Wierzchowice	82	51.50284578079	17.35176264703
2278	Sopot Wyścigi	1755	54.43120442779	18.56505755093
2279	Milicz	83	51.52726897144	17.29508756518
2280	Twardogóra	91	51.36031625873	17.46855667725
2281	Cieśle	89	51.226458	17.470707
2282	Poniatowice	89	51.241815	17.543726
2283	Jemielna Oleśnicka	90	51.26003	17.584522
2284	Strzelin	105	50.7846554663	17.06033877261
2285	Biały Kościół	105	50.72836861639	17.0299842848
2286	Warkocz	105	50.82902408157	17.04651395445
2287	Wrocław Główny	168	51.09791807899	17.03743373155
2288	Smardzów Wrocławski	144	51.03057509686	17.06612047887
2289	Żórawina	145	50.98334043406	17.04956112071
2290	Boreczek	102	50.87883230506	17.02458730635
2291	Węgry	145	50.92572950935	17.03282333342
2292	Wrocław Partynice	168	51.06111022894	16.99777437302
2293	Wrocław Wojszyce	168	51.06903808908	17.03216539385
2294	Bielany Wrocławskie	141	51.03617035976	16.97580437302
2295	Domasław	141	51.01014863463	16.95301265278
2296	Brzeg Dolny	134	51.26671570629	16.7255035535
2297	Brzezinka Średzka	109	51.2196707896	16.83691953756
2298	Gdynia Chylonia	1753	54.54583818736	18.46335644379
2299	Czerna Mała	109	51.22988207626	16.80383715811
2300	Wołów	136	51.33371086352	16.63311674999
2301	Łososiowice	136	51.29735770006	16.67476687386
2302	Księginice	109	51.24225175398	16.76378122454
2303	Ścinawa	75	51.4091782138	16.42173497635
2304	Rudna Gwizdanów	74	51.52918748477	16.28093476117
2305	Rudna Miasto	74	51.506092024	16.27013902405
2306	Chełmek Wołowski	75	51.45626176136	16.35918896561
2307	Gdynia Stocznia-Uniwersytet Morski	1753	54.52521294207	18.51849674106
2308	Gdynia Grabówek	1753	54.53438940083	18.49611265278
2309	Małowice Wołowskie	135	51.40428444351	16.47194846071
2310	Orzeszków	135	51.39388268918	16.50825902809
2311	Opole Główne	1353	50.66165452034	17.92718170047
2312	Gdynia Leszczynki	1753	54.54150248677	18.47825317791
2313	Dąbrowa Niemodlińska	1330	50.69162824438	17.75378324366
2314	Chróścina Opolska	1330	50.66984157855	17.8181446583
2315	Komprachcice	1332	50.63159756006	17.82121178916
2316	Opole Chmielowice	1353	50.64468945683	17.86674359076
2317	Szydłów	1340	50.60605539503	17.70506638762
2318	Rumia Janowo	1738	54.55935290308	18.40508451786
2319	Chrząstowice	1329	50.66054326076	18.07461033552
2320	Suchy Bór Opolski	1329	50.65729602468	18.03675976894
2321	Opole Gosławice	1353	50.67351120104	17.98755585792
2322	Kotórz Mały	1341	50.72897600058	18.03607585285
2323	Osowiec Przystanek	1341	50.7528768086	18.04344689642
2324	Osowiec Śląski	1341	50.77397777517	18.04509758681
2325	Jełowa	1333	50.7940634681	18.04663921976
2326	Rumia	1738	54.56902057926	18.38674911037
2327	Opole Wschodnie	1353	50.67440503919	17.93445335061
2328	Opole Czarnowąsy	1353	50.71622625317	17.90374316659
2329	Reda	1737	54.59490554336	18.35328737452
2330	Opole Borki	1353	50.74291266351	17.88176463265
2331	Dobrzeń Wielki	1331	50.77165282397	17.85958844323
2332	Chróścice	1331	50.79302922443	17.8164027341
2333	Popielów	1337	50.82959998677	17.76238081742
2334	Karłowice	1337	50.87998221792	17.69917844653
2335	Reda Pieleszewo	1737	54.60268631154	18.31762609721
2336	Tarnowiec Brzeski	1287	50.91368863139	17.65244849551
2337	Mąkoszyce	1287	50.93971671083	17.63097288754
2338	Rogalice	1287	50.96353524095	17.59773623101
2339	Kluczbork	1300	50.97091882626	18.20111780793
2340	Gdańsk Osowa	1752	54.42217942095	18.45261218384
2341	Smardy	1300	50.99219446223	18.14458065417
2342	Wołczyn	1302	51.01346488456	18.04720270711
2343	Wierzbica Górna	1302	51.02223030092	17.97576283504
2344	Krzywizna	1300	51.02630444554	18.20179556952
2345	Biskupice koło Kluczborka	1299	51.07115816424	18.21031401637
2346	Byczyna Kluczborska	1299	51.11371109591	18.1998799207
2347	Kostów	1299	51.16553687572	18.14582632974
2348	Bąków	1300	50.95616276725	18.31454693735
2349	Tuły	1334	50.8746476897	18.10008235582
2350	Bukowo	1334	50.89636909753	18.10694735582
2351	Borkowice	1300	50.93236481271	18.1568619914
2352	Laskowice Oleskie	1301	50.85600936317	18.09502818651
2353	Kały	1333	50.82774377691	18.08153537301
2354	Fosowskie	1348	50.66046766861	18.359201098
2355	Kolonowskie	1348	50.65195315967	18.38792349291
2356	Zawadzkie	1352	50.6089656934	18.47355345214
2357	Dębska Kuźnia	1329	50.66434221432	18.11257339642
2358	Ozimek	1336	50.67000478647	18.20859612165
2359	Krasiejów	1336	50.66835939243	18.24966764526
2360	Staniszcze Małe	1348	50.66434797253	18.31880656946
2361	Strzelce Opolskie	1350	50.51671187049	18.3065966348
2362	Błotnica Strzelecka	1350	50.48437797275	18.40289627585
2363	Szymiszów	1350	50.52829151179	18.22426469067
2364	Gogolin	1303	50.49288100669	18.01886108457
2365	Górażdże	1303	50.52831801701	18.00359201007
2366	Opole Groszowice	1353	50.63620570827	17.95514667453
2367	Opole Grotowice	1353	50.60951785315	17.97613648713
2368	Przywory Opolskie	1339	50.58185052921	17.98902209684
2369	Tarnów Opolski	1339	50.57196200653	18.07797802938
2370	Otmice	1346	50.5511228571	18.12434582058
2371	Brzeg	1283	50.85303562693	17.47054393643
2372	Przecza	1286	50.73297671335	17.66777849108
2373	Łosiów	1286	50.78861889107	17.55169472444
2374	Olszanka	1288	50.79524773352	17.47766089094
2375	Lipowa Śląska	1285	50.73702151319	17.42691453354
2376	Grodków Śląski	1285	50.69753598606	17.37631480363
2377	Stary Grodków	1321	50.65019007627	17.37770400999
2378	Czeska Wieś	1288	50.75785579945	17.45920000744
2379	Namysłów	1309	51.07437411208	17.71706755939
2380	Domaszowice	1308	51.04842538686	17.88399988719
2381	Gręboszów	1308	51.06539940177	17.80015832275
2382	Wilków Namysłowski	1312	51.09424455376	17.65837445377
2383	Częstochowa	1907	50.80863803089	19.12097955749
2384	Częstochowa Raków	1907	50.78767009632	19.15542534637
2385	Korwinów	1798	50.7386197704	19.17659510185
2386	Masłońskie Natalin	1835	50.65062169658	19.25378664782
2387	Żarki Letnisko	1835	50.62326790183	19.27292145767
2388	Częstochowa Stradom	1907	50.7972075927	19.10762895397
2389	Turów	1797	50.76821947956	19.31732371794
2390	Kusięta Nowe	1797	50.77784162415	19.26137472439
2391	Lusławice	1788	50.76091482517	19.38754662474
2392	Julianka	1799	50.76464118903	19.47347407963
2393	Staropole Częstochowskie	1799	50.76464806032	19.52968932844
2394	Wejherowo	1739	54.60582937299	18.22962210729
2395	Podlesie	1794	50.76497005945	19.6043621268
2396	Koniecpol Magdasz	1791	50.77249744577	19.65334037707
2397	Koniecpol	1791	50.77637636512	19.69978678459
2398	Częstochowa Aniołów	1907	50.83540282843	19.15186645656
2399	Wejherowo Śmiechowo	1739	54.60195271173	18.27457530556
2400	Rząsawa	1800	50.88555980858	19.17795537829
2401	Mykanów	1796	50.92561356445	19.17919836919
2402	Stary Cykarzew	1796	50.95219435921	19.1697039733
2403	Ważne Młyny	674	51.03915423536	19.14668081046
2404	Dubidze	674	51.10275796686	19.14284801871
2405	Wistka	678	51.14514994276	19.09649303267
2406	Wejherowo-Nanice	1739	54.60351717699	18.25008597553
2407	Dubidze-Kolonia	674	51.11577559112	19.13045351878
2408	Herby Stare	1822	50.74724082965	18.88073321693
2409	Rudniki koło Częstochowy	1800	50.87825794538	19.23253785427
2410	Rzerzęczyce	1790	50.89743803914	19.32877040977
2411	Kłomnice	1790	50.9158361372	19.34150310562
2412	Jacków	1793	50.96472449825	19.35485516009
2413	Kielce Herbskie	2024	50.88581644175	20.60315942235
2414	Kielce Piaski	2024	50.8895639772	20.62523528266
2415	Kielce Główne	2024	50.87428713415	20.61797141743
2416	Kielce Białogon	2024	50.85516319818	20.57426421467
2417	Szczukowskie Górki	1958	50.88329054102	20.52523957045
2418	Kielce Ślichowice	2024	50.88875296163	20.58405874201
2419	Zagnańsk	1963	50.97442023403	20.66365470763
2420	Łączna	2002	50.99176928615	20.79888173922
2421	Tumlin	1963	50.96732863626	20.60216304692
2422	Kostomłoty	1954	50.92148738373	20.61595349578
2423	Sitkówka Nowiny	1961	50.81861605853	20.55034598207
2424	Kielce Słowik	1961	50.83350060074	20.5387153956
2425	Radkowice	1956	50.78039304708	20.52863341989
2426	Brzeziny	1956	50.77596645401	20.56691460384
2427	Nida	1956	50.76089671872	20.57826160311
2428	Wolica	1947	50.75338374973	20.47006158651
2429	Sobków	1938	50.7315119285	20.43061005875
2430	Busko-Zdrój	1923	50.46191337326	20.68531237549
2431	Grochowiska	1989	50.49434032229	20.64190535019
2432	Kije	1987	50.60769194642	20.57783712143
2433	Stawiany Pińczowskie	1987	50.58143812821	20.59089480758
2434	Włoszczowice	1987	50.65219963626	20.58678159755
2435	Dębska Wola	1956	50.70121037056	20.59724542654
2436	Sędziszów	1936	50.56579676406	20.05489891086
2437	Kozłów	856	50.47472660786	20.01194974526
2438	Klimontów	1936	50.52526299331	20.03007016404
2439	Jędrzejów	1932	50.64475357679	20.27593224281
2440	Potok	1934	50.61732129093	20.19641482242
2441	Krzcięcice	1936	50.5875118535	20.14029694841
2442	Miąsowa	1938	50.71940161772	20.36509309406
2443	Gajówka	854	50.39456659702	19.87896710388
2444	Charsznica	854	50.39613327504	19.94131666764
2445	Tunel	854	50.43349907561	19.9911906973
2446	Małogoszcz	1933	50.85012704616	20.27339012741
2447	Ludynia	2019	50.85212670365	20.16283455748
2448	Bukowa	2019	50.85932663943	20.20124384934
2449	Ludynia Dwór	2019	50.84745009017	20.1142627906
2450	Rykoszyn	1958	50.86817066536	20.37897843457
2451	Wierna Rzeka	1958	50.86521395306	20.31300370999
2452	Piekoszów Łaziska	1958	50.87052249515	20.44779395379
2453	Włoszczowa	2023	50.83775009492	20.01541304641
2454	Żelisławice	2022	50.80377932761	19.85844650587
2455	Włoszczowa Północ	2023	50.85670346333	19.94616149783
2456	Czarnca	2023	50.82390297575	19.94499263133
2457	Stalowa Wola Rozwadów	1490	50.59132724573	22.04195261785
2458	Stalowa Wola Centrum	1490	50.57066449887	22.05472239413
2459	Stalowa Wola	1490	50.56263712175	22.06079952674
2460	Stalowa Wola Południe	1490	50.54517940226	22.07868167341
2461	Moskale	1441	50.52459870736	22.10827506374
2462	Nisko Osiedle	1441	50.52087580027	22.12274966276
2463	Nisko	1441	50.5141100868	22.14069776275
2464	Nisko Racławice	1441	50.50478790246	22.15771286305
2465	Nisko Podwolina	1441	50.49548440435	22.17343777757
2466	Rudnik Stróża	1442	50.45826194759	22.21677041669
2467	Rudnik nad Sanem	1442	50.43587286757	22.24895093019
2468	Łętownia	1439	50.36315934892	22.25649045743
2469	Zbydniów	1495	50.63466693338	21.92101049758
2470	Turbia	1495	50.61781172696	21.97261494833
2471	Lipa	1494	50.68968537852	22.06812494819
2472	Zaklików	1494	50.76843285504	22.10793206546
2473	Potok Kraśnicki	376	50.7964194126	22.1632963215
2474	Rzeczyca	393	50.83978915737	22.20800203321
2475	Pilchów	1495	50.61697601424	22.02697698823
2476	Kępa	1493	50.6541808263	22.03274785358
2477	Sandomierz	1991	50.6605739154	21.76532525756
2478	Dwikozy	1992	50.73221381105	21.79114610688
2479	Stary Garbów	1992	50.76419828875	21.74991487384
2480	Metan	1992	50.69168664645	21.80620906591
2481	Grębów	1503	50.60435473171	21.83768552287
2482	Sobów	1513	50.59233967252	21.7357644965
2483	Tarnobrzeg	1513	50.56800523269	21.69629665688
2484	Jadachy	1504	50.48289316397	21.69641543371
2485	Dęba Rozalin	1504	50.42881218195	21.74313842343
2486	Nowa Dęba	1504	50.41544555368	21.7398056001
2487	Majdan Królewski	1393	50.37890492933	21.72522024768
2488	Komorów Podmurynia	1393	50.34955327331	21.73303661336
2489	Padew	1432	50.43428698193	21.50605568123
2490	Zamość	526	50.71354997323	23.239233
2491	Gościcino Wejherowskie	1746	54.60516587493	18.16116209507
2492	Krzak	514	50.80157138911	23.09560119851
2493	Złojec	514	50.76862105061	23.10092098551
2494	Zawada	521	50.71603303507	23.12532976323
2495	Wólka Niedzieliska	520	50.70873368048	23.0870241873
2496	Niedzieliska-Kolonia	520	50.69820857876	23.04367232616
2497	Hrubieszów Miasto	362	50.79696043575	23.90884100854
2498	Werbkowice	369	50.74553949091	23.76763342738
2499	Bełżec	488	50.37665766298	23.4498879849
2500	Lubycza Królewska	491	50.33997277742	23.52993472566
2501	Susiec	494	50.41612738837	23.22656415988
2502	Bełżec Drugi	488	50.38074504079	23.4035960436
2503	Maziły	494	50.4050220613	23.31457209222
2504	Nowiny	494	50.44913233423	23.14134511934
2505	Długi Kąt	339	50.48247415611	23.10185437924
2506	Józefów Roztoczański	339	50.51801948439	23.03973331784
2507	Biłgoraj	333	50.55142585764	22.73176430583
2508	Tereszpol Biłgorajski	345	50.57453645358	22.88550852656
2509	Zwierzyniec	522	50.60920539748	22.98429796271
2510	Puck	1703	54.7150832613	18.40855335582
2511	Kędzierzyn-Koźle	1293	50.34486049756	18.20481953494
2512	Zdzieszowice	1307	50.42184403002	18.12642853642
2513	Raszowa	1349	50.3883409407	18.16062982845
2514	Jasiona	1303	50.45919080367	18.07555377913
2515	Bierawa	1294	50.29373674904	18.25673921908
2516	Kędzierzyn-Koźle Azoty	1294	50.31070950598	18.23959420012
2517	Dziergowice	1294	50.24183634677	18.30082321531
2518	Swarzewo	1707	54.75250331611	18.38257313929
2519	Kędzierzyn-Koźle Zachodnie	1293	50.34661212699	18.131367692
2520	Kędzierzyn-Koźle Przystanek	1293	50.35059151867	18.1544947289
2521	Chałupy	1704	54.76178380971	18.50200384789
2522	Władysławowo	1704	54.79372147682	18.40183055687
2523	Twardawa	1343	50.34712664357	17.99897632432
2524	Pokrzywnica	1298	50.34389303954	18.07954963085
2525	Głogówek	1343	50.34760123367	17.87576932675
2526	Racławice Śląskie	1343	50.31221646627	17.76122537242
2527	Jurata	1702	54.68544926722	18.7125494871
2528	Kuźnica (Hel)	1702	54.73645918481	18.57570659126
2529	Jastarnia	1702	54.7017925984	18.67641617791
2530	Sławięcice	1293	50.35143399302	18.31408463173
2531	Jastarnia Wczasy	1702	54.70829917566	18.65439807606
2532	Rudziniec Gliwicki	1806	50.36662346685	18.40454193355
2533	Chałupki	1846	49.9256534476	18.31153213441
2534	Hel	1701	54.61110813761	18.80093927487
2535	Rudyszwałd	1846	49.93986917242	18.30329
2536	Roszków Raciborski	1846	49.96520169055	18.29408827976
2537	Krzyżanowice	1846	49.98925114159	18.27591110912
2538	Rybnik Towarowy	1916	50.06665919822	18.51573160252
2539	Rybnik Rymer	1916	50.05642767327	18.49755323677
2540	Leszczyny	1916	50.13993819629	18.61775967857
2541	Rybnik Paruszowiec	1916	50.10251827812	18.56520405159
2542	Czerwionka	1851	50.14894531333	18.68494285648
2543	Orzesze Jaśkowice	1829	50.14478623853	18.7406265682
2544	Łaziska Średnie	1827	50.1299875108	18.86816323677
2545	Władysławowo Port	1704	54.79347360918	18.41796492394
2546	Orzesze Miasto	1829	50.14184621675	18.77450028969
2547	Rybnik	1916	50.08906167788	18.54784547746
2548	Szczejkowice	1851	50.07961016852	18.67183868717
2549	Rybnik Piaski	1916	50.09647097133	18.5866483115
2550	Rybnik Niewiadom	1916	50.06934622718	18.4687709914
2551	Rybnik Niedobczyce	1916	50.06629948031	18.49490239021
2552	Rydułtowy	1872	50.06904509166	18.42603005886
2553	Sumina	1854	50.13689882252	18.40180501587
2554	Łuków Śląski	1852	50.10013054719	18.40926244907
2555	Sumina Wieś	1854	50.1215598704	18.41049609325
2556	Wodzisław Śląski	1873	50.00788382162	18.47625731349
2557	Wodzisław Śląski Radlin	1873	50.01987991223	18.48096510185
2558	Radlin Obszary	1871	50.04119950607	18.49472384789
2559	Olza	1875	49.96018255213	18.33838550926
2560	Bełsznica	1875	49.97280654987	18.37256265278
2561	Racibórz	1843	50.0904006231	18.2264190835
2562	Żelistrzewo	1707	54.67418805536	18.41601681349
2563	Nędza	1848	50.15688915161	18.29173206747
2564	Racibórz Markowice	1843	50.11317739598	18.27009271184
2565	Reda Rekowo	1737	54.63201020637	18.36371983069
2566	Nędza Wieś	1848	50.16469498171	18.31223923943
2567	Szymocice	1848	50.1510884347	18.34973880489
2568	Górki Śląskie	1848	50.1421546937	18.38960349934
2569	Kuźnia Raciborska	1847	50.20079191749	18.29856663931
2570	Tworków	1846	50.01673121283	18.24934670437
2571	Mrzezino	1707	54.65290241309	18.41296207606
2572	Orzesze	1829	50.15428844348	18.77756781349
2573	Łaziska Górne Brada	1827	50.15785681215	18.82126137169
2574	Łaziska Górne	1827	50.15944503713	18.84541889549
2575	Mikołów	1828	50.17296090944	18.89941065431
2576	Mikołów Jamna	1828	50.19409231031	18.92277308731
2577	Żory	1922	50.05308148321	18.70202421069
2578	Warszowice	1840	49.98983928106	18.7154479101
2579	Gliwice	1909	50.3010996285	18.67722702764
2580	Zabrze Północne	1921	50.3240186112	18.78672837138
2581	Zabrze	1921	50.3053150488	18.78726481318
2582	Ruda Śląska	1915	50.31592221136	18.85089699867
2583	Przyszowice	1804	50.24704171655	18.73651151653
2584	Gliwice Łabędy	1909	50.34006837132	18.62255373449
2585	Gliwice Kuźnica	1909	50.35693581597	18.62149420743
2586	Rzeczyce Śląskie	1806	50.35660074654	18.56769757425
2587	Taciszów	1806	50.35796470108	18.50806771879
2588	Pyskowice	1803	50.38401739141	18.61866437566
2589	Paczyna	1808	50.41206902525	18.57223676082
2590	Toszek	1808	50.44161264137	18.51373071497
2591	Ligota Toszecka	1808	50.45631232237	18.46392997122
2592	Kotulin	1808	50.46882902796	18.43588093975
2593	Ruda Chebzie	1915	50.30384832591	18.87795927116
2594	Różyny	1660	54.21147655423	18.66217058127
2595	Skowarcz	1660	54.18506858	18.68240532942
2596	Pszczółki	1660	54.17445167268	18.70197285829
2597	Knurów	1802	50.21728226335	18.68826984286
2598	Miłobądz	1736	54.14713663125	18.74047221138
2599	Tarnowskie Góry	1859	50.44606860005	18.86443201317
2600	Miasteczko Śląskie	1857	50.49738970819	18.90021972857
2601	Nakło Śląskie	1862	50.42986492787	18.90304693981
2602	Radzionków	1858	50.40903221973	18.91507854233
2603	Radzionków Rojca	1858	50.39637792776	18.90067976456
2604	Tczew	1731	54.09745621809	18.78960368872
2605	Lubliniec	1819	50.67289146587	18.69052512305
2606	Kochcice-Glinica	1823	50.71393866495	18.65755051106
2607	Pawonków	1825	50.68074601733	18.56717910324
2608	Pludry	1322	50.66473211316	18.46947517562
2609	Lisowice	1825	50.68278219768	18.6305379653
2610	Ciasna	1821	50.75642735481	18.62938101125
2611	Sieraków Śląski	1821	50.79887613459	18.5935047242
2612	Sowczyce	1324	50.84596070931	18.50151836336
2613	Olesno Śląskie	1324	50.88215511747	18.42471599042
2614	Stare Olesno	1324	50.91540615946	18.3752050969
2615	Kochanowice	1823	50.69944205607	18.7484639828
2616	Lisów	1822	50.72088418862	18.7912200086
2617	Lisewo	1691	54.09292759686	18.82563445213
2618	Herby Nowe	1822	50.74755408462	18.85441176733
2619	Kuleje	1818	50.82882329453	18.79255976217
2620	Panki	1815	50.89668982705	18.74847008533
2621	Krzepice	1811	50.96915118418	18.69702274155
2622	Jaworzno koło Wielunia	1327	51.01460021599	18.65325433491
2623	Janinów	1327	51.05593374806	18.60558758232
2624	Dzietrzniki	754	51.11723448734	18.61496412831
2625	Kłobuck	1810	50.90853711425	18.92345635582
2626	Szymankowo	1691	54.07290283086	18.9267067007
2627	Działoszyn	672	51.11714917822	18.91402081482
2628	Chorzew Siemkowice	673	51.20998201257	18.94122361064
2629	Boronów	1820	50.66577025392	18.90108800169
2630	Kalety	1856	50.56600339159	18.88847561442
2631	Koszęcin	1824	50.62276517202	18.83630577183
2632	Rusinowice	1824	50.64904490218	18.76370495701
2633	Strzebiń	1824	50.6181627399	18.89992502369
2634	Chorzów Stary	1906	50.31634624152	18.95764409959
2635	Chorzów Miasto	1906	50.29814112104	18.94838064285
2636	Bytom	1905	50.34297500433	18.91514181018
2637	Bytom Karb	1905	50.35160076591	18.88225323446
2638	Gdańsk Lipce	1752	54.30144947275	18.63593132361
2639	Gdańsk Orunia	1752	54.32423435963	18.63447406578
2640	Stogi Malborskie	1692	54.06382934184	18.96963584212
2641	Katowice Ligota	1912	50.22577369242	18.97786258578
2642	Katowice Piotrowice	1912	50.21348791053	18.97053335449
2643	Katowice Podlesie	1912	50.18298809058	18.96032145767
2644	Pruszcz Gdański	1655	54.25745421232	18.64679795947
2645	Chorzów Batory	1906	50.27841150069	18.94469975352
2646	Świętochłowice	1919	50.28902483856	18.91827510185
2647	Cieplewo	1658	54.23354105192	18.64759456091
2648	Katowice	1912	50.25761103501	19.01740878365
2649	Katowice Załęże	1912	50.26379575394	18.98981647354
2650	Sosnowiec Dańdówka	1918	50.26552558602	19.17335746765
2651	Sosnowiec Południowy	1918	50.26988844279	19.12518348557
2652	Mysłowice	1913	50.23809360671	19.14153662356
2653	Katowice Zawodzie	1912	50.25734198839	19.05695515894
2654	Katowice Szopienice Południowe	1912	50.25886671293	19.09208831232
2655	Mysłowice Brzezinka	1913	50.19727636067	19.15448208466
2656	Tychy	1920	50.13617725106	18.96409748912
2657	Wyry	1831	50.12441592526	18.91226162964
2658	Tychy Zachodnie	1920	50.12089681503	18.97904093254
2659	Jaworzno Szczakowa	1911	50.2463654005	19.29713104255
2660	Sosnowiec Maczki	1918	50.2614416509	19.26993481216
2661	Dąbrowa Górnicza Południowa	1908	50.31197235985	19.28727708466
2662	Bukowno	900	50.26394669616	19.45818840808
2663	Sławków	1763	50.2954535138	19.37392425706
2664	Bukowno Przymiarki	900	50.27537634549	19.40947354701
2665	Stara Piła	1670	54.32646007299	18.41389595926
2666	Olkusz	903	50.27429536999	19.57142644385
2667	Jaroszowiec Olkuski	902	50.34219928694	19.62162594935
2668	Chrząstowice Olkuskie	905	50.34446595425	19.68576593785
2669	Zarzecze	905	50.36316608414	19.69859924173
2670	Wolbrom	905	50.37600387466	19.77214537646
2671	Jeżówka	905	50.39968993806	19.8220768481
2672	Gdańsk Kokoszki	1752	54.3623609436	18.4921896404
2673	Dąbrowa Górnicza Ząbkowice	1908	50.36666284561	19.2648067689
2674	Dąbrowa Górnicza Sikorka	1908	50.38889045572	19.29864540049
2675	Dąbrowa Górnicza Gołonóg	1908	50.34394014158	19.22610189979
2676	Dąbrowa Górnicza	1908	50.33027882754	19.18522905484
2677	Będzin Ksawera	1756	50.33054418508	19.15805149281
2678	Będzin Miasto	1756	50.31923030177	19.13555224872
2679	Sosnowiec Główny	1918	50.27889039075	19.12631094158
2680	Dąbrowa Górnicza Strzemieszyce	1908	50.31086070807	19.26842998655
2681	Dąbrowa Górnicza Wschodnia	1908	50.30334784202	19.3116132293
2682	Sosnowiec Kazimierz	1918	50.28886677084	19.23202507323
2683	Gdańsk Główny	1752	54.35643747799	18.64413141132
2684	Sosnowiec Porąbka	1918	50.27215327577	19.21641042525
2685	Gdańsk Stocznia	1752	54.36436441751	18.64185689807
2686	Łazy	1883	50.42974107158	19.39152202779
2687	Wiesiołka	1883	50.41469242724	19.34919494686
2688	Chruszczobród	1883	50.40012154079	19.32878865327
2689	Gdańsk Politechnika	1752	54.37418344904	18.62709401965
2690	Zawiercie	1880	50.48108578986	19.42316494732
2691	Gdańsk Wrzeszcz	1752	54.381951326	18.60508491696
2692	Zawiercie Borowe Pole	1880	50.51064778979	19.39917285648
2693	Siewierz	1762	50.47934297806	19.23746823192
2694	Myszków	1832	50.57438314385	19.32880281866
2695	Myszków Nowa Wieś	1832	50.59464951696	19.29168192394
2696	Myszków Światowit	1832	50.56544962737	19.36020571297
2697	Myszków Mrzygłód	1832	50.54381135516	19.37716740608
2698	Zebrzydowice	1785	49.87018235758	18.62380026698
2699	Kaczyce	1785	49.8322250302	18.61059306979
2700	Gdańsk Zaspa	1752	54.38966662129	18.5913455379
2701	Kończyce	1785	49.8509895092	18.62578510702
2702	Podgwizdów	1781	49.80654699065	18.59762191236
2703	Cieszyn Marklowice	1774	49.78515033931	18.60394656122
2704	Cieszyn	1774	49.75117816396	18.63660513819
2705	Gdańsk Przymorze-Uniwersytet	1752	54.40063189631	18.5764968288
2706	Zabrzeg	1767	49.90765038835	18.93898665369
2707	Pierściec	1783	49.83056346032	18.81341463558
2708	Zaborze	1778	49.87041510577	18.81123661839
2709	Skoczów	1783	49.79354529741	18.79014014661
2710	Chybie	1778	49.89281665303	18.80966662288
2711	Chybie Mnich	1778	49.88742198127	18.82062416931
2712	Gdańsk Oliwa	1752	54.40984425779	18.5718739534
2713	Pruchna	1784	49.87878726365	18.68842541635
2714	Drogomyśl	1784	49.88687565572	18.75810384214
2715	Strumień	1784	49.91141491041	18.75329137169
2716	Pszczyna	1841	49.97503751058	18.95342229724
2717	Goczałkowice	1837	49.94449289139	18.96657300133
2718	Goczałkowice-Zdrój	1837	49.93567873331	18.97665839748
2719	Kobiór	1838	50.06595010263	18.92348609325
2720	Tychy Żwaków	1920	50.11003417123	18.95315142824
2721	Piasek	1841	50.01272615287	18.94000588955
2722	Czechowice-Dziedzice	1767	49.91535743587	19.00664805293
2723	Kaniów	1765	49.92643048128	19.05339896142
2724	Czechowice-Dziedzice Południowe	1767	49.89025728023	19.02427973743
2725	Czechowice-Dziedzice Przystanek	1767	49.90616888648	19.0224190086
2726	Bielsko-Biała Główna	1904	49.83001185919	19.04538261071
2727	Bielsko-Biała Północ	1904	49.84116060396	19.04166854233
2728	Bielsko-Biała Komorowice	1904	49.86121812815	19.03588119511
2729	Bielsko-Biała Wschód	1904	49.83467504523	19.05841470338
2730	Gdańsk Żabianka-AWFiS	1752	54.42064665927	18.56842874408
2731	Krzemionki	1904	49.84080661748	19.1151739941
2732	Kozy	1770	49.84961690696	19.14232349443
2733	Kozy Zagroda	1770	49.85746421591	19.16359783475
2734	Kęty Podlesie	909	49.87813305683	19.19659527408
2735	Kęty	909	49.88063495026	19.2262486552
2736	Zamek Bulowicki	909	49.88010491298	19.26356546529
2737	Bulowice	909	49.8762576253	19.28983534066
2738	Andrychów Górnica	951	49.85851159593	19.32398407201
2739	Andrychów	951	49.85582652691	19.35330458126
2740	Chocznia Górna	959	49.86270293809	19.43209418698
2741	Inwałd	951	49.85298503152	19.3883195258
2742	Bielsko-Biała Leszczyny	1904	49.797357912	19.06044373016
2743	Bielsko-Biała Lipnik	1904	49.81400710471	19.0496438688
2744	Bielsko-Biała Mikuszowice	1904	49.78285653249	19.07425717064
2745	Wilkowice Bystra	1773	49.76026168942	19.08811210513
2746	Łodygowice Górne	1896	49.73574152761	19.12376268452
2747	Łodygowice	1896	49.72525946397	19.14120912015
2748	Pietrzykowice Żywieckie	1896	49.70994631675	19.17209250793
2749	Żywiec	1889	49.67940358325	19.18569006906
2750	Żywiec Sporysz	1889	49.67646352008	19.2216869267
2751	Pewel Mała	1901	49.66691313534	19.27903865914
2752	Jeleśnia	1892	49.6524215881	19.32072801883
2753	Pewel Wielka Centrum	1892	49.66064028339	19.35243662016
2754	Pewel Wielka	1892	49.66909956562	19.37999650868
2755	Hucisko	927	49.68865535176	19.40749670659
2756	Kurów Suski	927	49.70789666119	19.43375353548
2757	Lachowice Centrum	927	49.71224542262	19.47308931917
2758	Węgierska Górka	1903	49.60355576599	19.11858199954
2759	Radziechowy Wieprz	1898	49.64746128844	19.1639607877
2760	Cięcina	1903	49.60961488678	19.13624294708
2761	Cisiec	1903	49.58355386059	19.10562935715
2762	Milówka	1897	49.55515233417	19.09357308269
2763	Rajcza	1899	49.51682051365	19.11250501587
2764	Milówka Zabawa	1897	49.54029107881	19.10260052513
2765	Rycerka	1899	49.49875298843	19.08179093254
2766	Sól	1899	49.49469549512	19.05066847265
2767	Sól Kiczora	1899	49.51724085602	19.03116449074
2768	Laliki	1897	49.52296633333	19.00499539616
2769	Zwardoń	1899	49.50432860455	18.9774012512
2770	Goleszów	1780	49.74686280831	18.74919354379
2771	Goleszów Górny	1780	49.7369509445	18.73343384789
2772	Bażanowice	1780	49.73449667975	18.7025624762
2773	Skoczów Bładnice	1783	49.77192235689	18.77900670437
2774	Ustroń	1775	49.7280059706	18.80220434589
2775	Ustroń Zdrój	1775	49.72061232694	18.81663500726
2776	Wisła Uzdrowisko	1776	49.65836722274	18.85485112131
2777	Wisła Dziechcinka	1776	49.64738210113	18.86546046627
2778	Wisła Kopydło	1776	49.63485155524	18.86985810549
2779	Wisła Głębce	1776	49.62172006961	18.87606200993
2780	Ustroń Polana	1775	49.69672804322	18.83002727956
2781	Oświęcim	906	50.04166577323	19.20004194494
2782	Gorzów Chrzanowski	908	50.0734496522	19.24196852435
2783	Brzeszcze Jawiszowice	907	49.97257761459	19.1285169071
2784	Jawiszowice Jaźnik	907	49.94985647968	19.11596953332
2785	Dankowice	1772	49.93751825034	19.0830266422
2786	Nowy Bieruń	1865	50.07323480297	19.18533483276
2787	Chełm Śląski	1869	50.10951818276	19.1838061037
2788	Imielin	1866	50.14129067817	19.17641203069
2789	Mysłowice Kosztowy	1913	50.17081871834	19.16217809325
2790	Dwory	906	50.04541098924	19.28609063121
2791	Trzebinia	806	50.15412725631	19.45263331513
2792	Balin	804	50.17904375212	19.38343486241
2793	Jaworzno Ciężkowice	1911	50.21314717687	19.33698614467
2794	Dulowa	806	50.14046235854	19.52090114596
2795	Wola Filipowska	829	50.13074910403	19.57768185465
2796	Mysłowice Brzęczkowice	1913	50.2133110743	19.14711483069
2797	Krzeszowice	829	50.13093009818	19.63411147213
2798	Rudawa	839	50.11882349315	19.71934487039
2799	Chrzanów	804	50.13341782456	19.39841785531
2800	Chrzanów Śródmieście	804	50.1440642364	19.41376705146
2801	Libiąż	805	50.11301687929	19.32686733695
2802	Chełmek	908	50.09971003596	19.25446014299
2803	Spytkowice	956	49.99505007855	19.47679638326
2804	Wielkie Drogi	834	49.95955154397	19.71176325738
2805	Jaśkowice	834	49.9617670874	19.67443227232
2806	Brzeźnica	952	49.96746077334	19.62775110662
2807	Półwieś	956	49.97633389294	19.57579481216
2808	Ryczów	956	49.98909408728	19.54060613573
2809	Spytkowice Kępki	956	49.99913297236	19.52223836839
2810	Zator	914	50.00218620436	19.42935311002
2811	Przeciszów	913	50.01328069492	19.36942555875
2812	Włosienica	911	50.02306857721	19.32832501539
2813	Wadowice	959	49.88519429991	19.50179830643
2814	Chocznia	959	49.87416563614	19.45194168657
2815	Klecza Górna	959	49.86513468854	19.56707417013
2816	Klecza Dolna	959	49.87837885752	19.53455048731
2817	Barwałd Górny	953	49.86479619089	19.62111735074
2818	Kalwaria Zebrzydowska	953	49.87395282218	19.67374036622
2819	Kalwaria Zebrzydowska Lanckorona	953	49.87108770433	19.68870826434
2820	Sucha Beskidzka	922	49.74044796278	19.58014866266
2821	Lachowice	927	49.72349330633	19.50374507245
2822	Stryszawa	927	49.73327397748	19.52488553285
2823	Stronie	957	49.83354894951	19.66954550477
2824	Stryszów	957	49.82560432418	19.62175697012
2825	Zembrzyce	929	49.77502113436	19.59141619613
2826	Maków Podhalański	926	49.72682861133	19.6776473884
2827	Juszczyn	926	49.70688164496	19.6919856807
2828	Kojszówka	926	49.6903039652	19.72293810579
2829	Osielec	925	49.67500096224	19.75560806778
2830	Bystra Podhalańska	924	49.65855405259	19.7872931481
2831	Jordanów	921	49.63751028044	19.8325349356
2832	Skawa	896	49.63083873986	19.88014918827
2833	Malbork Kałdowo	1692	54.04714903962	19.02441798357
2834	Skawa Środkowa	896	49.61251133286	19.90041578518
2835	Chabówka	897	49.59703816822	19.93661694549
2836	Malbork	1690	54.03621384954	19.04257891417
2837	Rabka-Zdrój	897	49.60937922513	19.95180472534
2838	Rabka Zaryte	897	49.62680821819	19.98978495061
2839	Stare Pole	1695	54.05337850349	19.20553605099
2840	Raba Wyżna	896	49.56570827118	19.88184531151
2841	Rokiciny Podhalańskie	896	49.5786517269	19.90594662529
2842	Sieniawa	896	49.53898953032	19.92253328644
2843	Nowy Targ	886	49.47311287611	20.01558943355
2844	Lasek	894	49.49876075385	19.97974805725
2845	Pyzówka	894	49.52106823238	19.96046086844
2846	Szaflary	899	49.44042255717	20.01714663187
2847	Biały Dunajec	947	49.37590045149	20.00710057452
2848	Szaflary Centrum	899	49.42347508058	20.01908223823
2849	Królewo Malborskie	1695	54.03720602491	19.11705643181
2850	Poronin	950	49.34315915598	20.00358871285
2851	Zakopane	946	49.30075799047	19.96301588666
2852	Fiszewo	2046	54.06756825895	19.24884539378
2853	Kraków Prokocim	966	50.02666439036	19.99815073008
2854	Kraków Batowice	840	50.10751778906	19.99543073941
2855	Kraków Lubocza	966	50.09053662179	20.07452913669
2856	Zastów	828	50.12387082973	20.06919489425
2857	Baranówka	828	50.14644540741	20.09538709755
2858	Łuczyce	828	50.16264864332	20.07445414951
2859	Goszcza	828	50.18473963325	20.06117461057
2860	Niedźwiedź	835	50.20447268689	20.08100236335
2861	Słomniki Miasto	835	50.23594873408	20.07622835597
2862	Słomniki	835	50.24940298997	20.06372501251
2863	Smroków	835	50.27449824017	20.04688964
2864	Szczepanowice	858	50.30118033085	20.02462340113
2865	Kamieńczyce	858	50.32751529912	20.00562069655
2866	Miechów	858	50.35364233862	20.01075667005
2867	Pstroszyce	858	50.39901132582	20.00841410415
2868	Podłęże	964	50.0181450061	20.16896741832
2869	Węgrzce Wielkie	965	50.01874874439	20.10700077931
2870	Kokotów	965	50.01783851075	20.06999086597
2871	Komorowo Żuławskie	2044	54.10479982221	19.50999297852
2872	Staniątki	964	50.01064666426	20.20667619106
2873	Stanisławice	787	49.99198823537	20.354605258
2874	Bochnia	786	49.9773503436	20.43153122078
2875	Rzezawa	792	49.98479053839	20.51508048839
2876	Jasień Brzeski	796	49.98702232955	20.55806725396
2877	Kłaj	963	50.00177175506	20.30113293268
2878	Szarów	963	50.0095440963	20.2565664707
2879	Cikowice	787	49.9849103114	20.38071206288
2880	Brzesko Okocim	796	49.98672857214	20.60975255869
2881	Sterkowiec	796	49.99434817535	20.68044885375
2882	Biadoliny	798	50.00376953715	20.73459294852
2883	Kraków Płaszów	966	50.03446370099	19.97543319497
2884	Kraków Zabłocie	966	50.04802936723	19.95755792172
2885	Kraków Bieżanów	966	50.02125999198	20.02984910667
2886	Kraków Bieżanów Drożdżownia	966	50.01043326084	20.03536373109
2887	Kraków Bonarka	966	50.02992971175	19.94653701246
2888	Kraków Łagiewniki	966	50.02325078948	19.93377879211
2889	Kraków Swoszowice	966	50.00047967284	19.92834358865
2890	Kraków Sidzina	966	49.98552712511	19.87447002061
2891	Skawina	834	49.97714043884	19.82179967402
2892	Skawina Zachodnia	834	49.9731279083	19.79360282153
2893	Podbory Skawińskie	834	49.96642102176	19.77230475215
2894	Zelczyna	834	49.96111830954	19.74640666902
2895	Rzozów	834	49.94564559224	19.80441849785
2896	Radziszów	834	49.91813026674	19.80927797377
2897	Wola Radziszowska	834	49.90642211754	19.77716836961
2898	Leńcze	953	49.89200841001	19.7301535991
2899	Przytkowice	953	49.89655519735	19.67988124685
2900	Szczecin Podjuchy	2478	53.36005278975	14.58584743669
2901	Kraków Mydlniki	966	50.08362241772	19.85973467332
2902	Kraków Mydlniki Wapiennik	966	50.09140529333	19.84416064182
2903	Kraków Łobzów	966	50.08198976793	19.91705852475
2904	Zabierzów	839	50.11799519323	19.7984169409
2905	Kraków Główny	966	50.06861309734	19.94780299902
2906	Wieliczka Park	965	49.98929757398	20.04912882775
2907	Dąbrówka Malborska	1750	53.97754221778	19.08708202814
2908	Gronajny	1751	53.99155841458	19.05359208047
2909	Tarnów	968	50.00531942647	20.97452997647
2910	Bogumiłowice	940	50.0075227307	20.87219959418
2911	Tarnów Mościce	968	50.00640467898	20.92448657621
2912	Mleczewo	1750	53.91377447595	19.12291775512
2913	Sztum	1751	53.92566559823	19.02113221403
2914	Wola Rzędzińska	938	50.03523056594	21.07241453645
2915	Wałki	938	50.05076167407	21.14316440331
2916	Gościszewo	1751	53.97473694603	19.01796854921
2917	Czarna Tarnowska	1365	50.06044242284	21.24871559744
2918	Łowczówek Pleśna	933	49.92822908124	20.94957529885
2919	Łowczów	939	49.9128212015	21.00341313166
2920	Tuchów	939	49.8920200831	21.05657293692
2921	Lubaszowa	939	49.86530662224	21.0369630353
2922	Siedliska koło Tuchowa	939	49.86061638913	21.01947259144
2923	Chojnik	931	49.85084750666	20.98351444451
2924	Gromnik	931	49.83406596618	20.96109093565
2925	Bogoniowice Ciężkowice	930	49.79826770216	20.97655155797
2926	Pławna	930	49.75494075652	20.95087615985
2927	Bobowa	816	49.71649425673	20.95741556965
2928	Bobowa-Miasto	816	49.70818608951	20.93904963508
2929	Jankowa	816	49.69501364066	20.9338337892
2930	Wilczyska	816	49.67608416715	20.94314708407
2931	Dębica	1363	50.05405500371	21.40445496407
2932	Ropczyce	1465	50.07849860682	21.58056670819
2933	Lubzina	1465	50.07222629639	21.52911958999
2934	Ropczyce Witkowice	1465	50.07733113221	21.62794485936
2935	Sędziszów Małopolski	1466	50.07552395105	21.69121041341
2936	Będziemyśl	1466	50.06658882392	21.77396494004
2937	Trzciana	1479	50.07862826067	21.83898947596
2938	Świlcza	1479	50.07808990945	21.90136690305
2939	Rudna Wielka	1479	50.08110308573	21.94151293079
2940	Pustynia	1366	50.07959763236	21.45702063771
2941	Kochanówka Pustków	1366	50.11137344428	21.49243842834
2942	Pustków	1366	50.14361794167	21.49634608562
2943	Dąbie koło Dębicy	1433	50.17201728029	21.49633265959
2944	Tuszyma	1433	50.1862954965	21.50271657079
2945	Rzemień	1433	50.21680876719	21.50617857942
2946	Rzochów	1433	50.23853681047	21.49634083211
2947	Wojsław	1427	50.26991915487	21.46608888835
2948	Grabiny	1365	50.04603180918	21.33255458263
2949	Mielec	1427	50.29259927558	21.42967386374
2950	Elbląg	2139	54.15089738607	19.41618997433
2951	Chorzelów	1431	50.34305031831	21.45268320501
2952	Tuszów Narodowy	1435	50.37225761358	21.4586001581
2953	Jaślany	1435	50.40124435363	21.46924669444
2954	Stróże	873	49.65475123367	20.97622435956
2955	Polna	873	49.6752481835	20.99466114968
2956	Szalowa	819	49.67930033139	21.02352297421
2957	Wola Łużańska	819	49.69401278283	21.05998098582
2958	Moszczenica Małopolska	820	49.69666558526	21.12335622042
2959	Grybów	870	49.626085978	20.95727046809
2960	Ptaszkowa	873	49.60338960781	20.88161106
2961	Gorlice Zagórzany	817	49.69416026267	21.19548618257
2962	Mszalnica	874	49.59290133024	20.82879990883
2963	Gorlice	814	49.66355851671	21.16266667306
2964	Gorlice Glinik	814	49.67199188627	21.17343306005
2965	Biecz	815	49.73277370969	21.26360892177
2966	Libusza	815	49.71172257478	21.24094962001
2967	Siepietnica	1389	49.75447248373	21.29674224973
2968	Skołyszyn	1389	49.74509842784	21.33955299318
2969	Nowy Sącz	967	49.60638197092	20.70217668123
2970	Stary Sącz	885	49.55908636084	20.64342048454
2971	Nowy Sącz Biegonice	967	49.58611736072	20.66054648824
2972	Barcice	885	49.5265025792	20.64861183282
2973	Rytro	884	49.4865413333	20.68026774404
2974	Młodów	882	49.46921084405	20.69507722366
2975	Piwniczna-Zdrój	882	49.44071314858	20.71738364403
2976	Piwniczna	882	49.43172200161	20.71710852298
2977	Kamionka Wielka	874	49.57810222045	20.78176606974
2978	Nowy Sącz Jamnica	967	49.58753888167	20.74319341113
2979	Gronowo Elbląskie	2046	54.08961189313	19.30508801255
2980	Muszyna	880	49.34599381066	20.89367409099
2981	Muszyna Zdrój	880	49.3579786409	20.89654897887
2982	Powroźnik	880	49.36821920082	20.93993818515
2983	Krynica-Zdrój	876	49.40965968433	20.95715117422
2984	Żegiestów	880	49.36748210209	20.78524181085
2985	Milik	880	49.3458581736	20.85053116973
2986	Andrzejówka	880	49.34044830948	20.82115903599
2987	Żegiestów-Zdrój	880	49.36291161155	20.80335543266
2988	Zubrzyk	882	49.38753661152	20.7537878376
2989	Wierchomla Wielka	882	49.40255338727	20.75523721033
2990	Łomnica-Zdrój	882	49.41945420007	20.72489573541
2991	Rzeszów Staroniwa	1512	50.03856877442	21.98971295542
2992	Strażów	1476	50.06758645926	22.11531568221
2993	Rzeszów Załęże	1512	50.05860240549	22.0696591094
2994	Krzemienica	1422	50.08171302727	22.18688573626
2995	Rzeszów Główny	1512	50.04307416499	22.00594817934
2996	Rzeszów Osiedle	1512	50.02260856722	21.97774924289
2997	Boguchwała	1470	49.98429472742	21.9345619346
2998	Rzeszów Zwięczyca	1512	50.00591723725	21.95723209677
2999	Wisłoczanka	1470	49.95190605603	21.91486620835
3000	Babica	1496	49.93502791924	21.90152097417
3001	Czudec	1496	49.94032186294	21.83293480298
3002	Zaborów	1496	49.90733955202	21.83033091368
3003	Strzyżów nad Wisłokiem	1499	49.8692549642	21.80143001666
3004	Babica Kolonia	1496	49.93378547873	21.87014523171
3005	Daleszewo	2397	53.30609938799	14.52898982551
3006	Dobrzechów	1499	49.8727034057	21.74436755176
3007	Kalembina	1500	49.86928948731	21.68520057353
3008	Wiśniowa	1500	49.8662205276	21.65229657936
3009	Frysztak	1497	49.83125924255	21.61840303545
3010	Przybówka	1405	49.79892644478	21.64725601673
3011	Wojaszówka	1405	49.77617926654	21.65907679244
3012	Szebnie	1400	49.75616713129	21.6155885506
3013	Zaczernie	1480	50.09535376351	21.97939552251
3014	Głogów Małopolski	1473	50.14750985149	21.95933427606
3015	Budy Głogowskie	1473	50.16827354139	21.91803393239
3016	Widełka	1392	50.20166237014	21.87285711373
3017	Kolbuszowa	1392	50.24608371071	21.78448994467
3018	Zarębki	1392	50.27243647451	21.76212270349
3019	Cmolas	1391	50.29397577417	21.75210328284
3020	Łańcut	1420	50.08174555422	22.22795258547
3021	Głuchów	1423	50.08347361425	22.27934204042
3022	Kosina	1423	50.08357401701	22.32343106755
3023	Rogóżno koło Łańcuta	1423	50.08358412374	22.3629647166
3024	Grzęska	1459	50.079965973	22.45310895676
3025	Przeworsk	1454	50.06725141172	22.50268644933
3026	Gniewczyna	1461	50.10001865479	22.52112912415
3027	Tryńcza	1461	50.13704457978	22.53871014685
3028	Grodzisko Dolne	1410	50.16959521614	22.50911192847
3029	Wierzawice	1410	50.23899163375	22.46416359434
3030	Leżajsk	1407	50.2631651672	22.42036043068
3031	Jelna	1411	50.30390660531	22.36483947006
3032	Nowa Sarzyna	1411	50.32065517764	22.34788645327
3033	Nowa Sarzyna Kolonia	1411	50.3311633003	22.33580688516
3034	Jarosław	1370	50.01072068252	22.67726720859
3035	Pełkinie	1373	50.04777639932	22.61164697961
3036	Przysieki	1389	49.73302681919	21.39364778459
3037	Jasło Niegłowice	1381	49.72616803131	21.45118653238
3038	Tarnowiec	1390	49.73627445126	21.57789973732
3039	Gliniczek	1390	49.73704197372	21.53848826939
3040	Jedlicze Męcinka	1400	49.72609275705	21.62609953589
3041	Jedlicze	1400	49.71895301381	21.64829513859
3042	Jasło	1381	49.73760818105	21.47056255334
3043	Krosno	1510	49.69362843372	21.74929051956
3044	Krosno Turaszówka	1510	49.70928074595	21.69817471348
3045	Krosno Polanka	1510	49.70198572192	21.72205164866
3046	Czepino	2397	53.28492677217	14.51256094944
3047	Sanok	1482	49.55275654138	22.21155719156
3048	Zarszyn	1489	49.58419402356	22.01948210584
3049	Zagórz	1488	49.51343861102	22.26428609352
3050	Pelplin	1734	53.9272631663	18.70796312623
3051	Żurawica Osobowa	1453	49.81985050744	22.82451615306
3052	Kulice Tczewskie	1734	53.87941418536	18.69051950493
3053	Radymno	1371	49.93949300812	22.8290715277
3054	Ostrów koło Radymna	1377	49.95432715454	22.78367401632
3055	Sośnica Jarosławska	1377	49.90129295175	22.85163642155
3056	Morzeszczyn	1733	53.83684782375	18.68632394131
3057	Niziny	1450	49.87880840942	22.86183314768
3058	Walawa	1450	49.8622467779	22.85694300592
3059	Dolna Odra	2397	53.21144673159	14.48106350719
3060	Przemyśl Główny	1511	49.78371640149	22.77800023019
3061	Przemyśl Zasanie	1511	49.79333476461	22.77345105872
3062	Medyka Towarowa	1449	49.78626479454	22.88429396717
3063	Medyka Rozrządowa	1449	49.79406043396	22.91022237509
3064	Munina	1373	49.99010684012	22.7188414319
3065	Bobrówka	1374	50.0497086977	22.85868446173
3066	Smętowo	1728	53.74783147334	18.68602577636
3067	Zagrody	1374	50.05148692914	22.90527519002
3068	Korzenica	1374	50.05586838082	22.9368853684
3069	Nowa Grobla	1417	50.08879058061	22.99354822973
3070	Oleszyce	1417	50.15719182506	23.03683216704
3071	Lubaczów	1412	50.16567020004	23.12485416158
3072	Majewo	1733	53.80174259215	18.67959012557
3073	Basznia Dolna	1415	50.18997122536	23.20733984158
3074	Horyniec-Zdrój	1414	50.19439523848	23.35696337607
3075	Hrebenne	491	50.29833870559	23.57647612879
3076	Gryfino	2397	53.25433443787	14.49291904509
3077	Subkowy	1735	53.98613063123	18.75359893842
3078	Czarlin	1736	54.04832818431	18.76694383074
3079	Starogard Gdański	1720	53.97727723921	18.52621946272
3080	Piesienice	1730	53.96502343135	18.3960674829
3081	Pinczyn	1730	53.96226246928	18.34841209635
3082	Zblewo	1730	53.94269523955	18.30526527256
3083	Widuchowa	2402	53.12377501988	14.44615455865
3084	Bytonia	1730	53.9318146099	18.26741409053
3085	Swarożyn	1736	54.0381778691	18.65635040213
3086	Szpęgawsk	1729	54.00726342186	18.61038168045
3087	Rokitki Tczewskie	1736	54.08085864765	18.73686943987
3088	Czersk	1646	53.80072566028	17.97056937855
3089	Gutowiec	1646	53.77750324551	17.86076836469
3090	Krzywin Gryfiński	2402	53.08822352074	14.45384858086
3091	Rytel Wieś	1646	53.76054431841	17.77287272404
3092	Rytel	1646	53.74828611886	17.72538541995
3093	Krojanty	1645	53.72994949584	17.65530137453
3094	Czarna Woda	1718	53.85128125876	18.10877386083
3095	Łąg	1646	53.83092531709	18.06266191197
3096	Kamienna Karczma	1722	53.87717134273	18.16267659385
3097	Kaliska	1722	53.90293194235	18.21579803925
3098	Szlachta	284	53.76297048684	18.11928311905
3099	Będźmierowice	1646	53.78787443245	18.04303160252
3100	Pacholęta	2402	53.17128563986	14.47148721337
3101	Olsztyn Główny	2140	53.78558384702	20.49670073688
3102	Olsztyn Zachodni	2140	53.77834031204	20.46785566044
3103	Bukwałd	2103	53.86835137181	20.37968157649
3104	Cerkiewnik	2102	53.90917956168	20.39662777841
3105	Swobodna	2102	53.94002242038	20.39450882792
3106	Dobre Miasto	2102	53.9832316421	20.38507282197
3107	Bzowiec	2102	54.0199609962	20.31596301913
3108	Rogiedle	2080	54.03796541881	20.2827787292
3109	Lubomino	2080	54.06497632448	20.23347436845
3110	Łęgajny	2100	53.82117758116	20.61744656495
3111	Barczewo	2100	53.84476367874	20.70010969799
3112	Marcinkowo	2109	53.69524925603	20.67143588411
3113	Pasym	2128	53.63217634407	20.76479110618
3114	Klewki	2109	53.73629872913	20.56823357112
3115	Stawiguda	2110	53.65073050271	20.40768248437
3116	Bartąg	2110	53.71318734586	20.44722923911
3117	Gągławki	2110	53.68004649974	20.43713954192
3118	Gryźliny	2110	53.61303796201	20.34638199631
3119	Olsztynek	2108	53.58481033064	20.29516784826
3120	Waplewo	2108	53.5112577549	20.35579007429
3121	Bujaki	2090	53.4795625557	20.37610352647
3122	Dobrzyń	2090	53.43437937643	20.38647726054
3123	Olsztyn Gutkowo	2140	53.80886447858	20.40235029057
3124	Jonkowo	2106	53.81581592116	20.29603920254
3125	Godki	2106	53.81760176381	20.25025237304
3126	Wołowno	2106	53.81727866339	20.19824270846
3127	Gamerki Wielkie	2106	53.84500810159	20.1383468769
3128	Naterki	2104	53.74619495751	20.37641645449
3129	Unieszewo	2104	53.72905324102	20.29986287434
3130	Czerwonka	2101	53.91437043401	20.89369917574
3131	Górowo	2107	53.96002809855	20.98461558664
3132	Wipsowo	2100	53.89468977974	20.79689257608
\.

COPY infrastruktura_stacji (id, id_stacji, numer_peronu, numer_toru) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	1	1	1
2	1	1	2
3	2	1	1
4	2	1	2
5	3	1	1
6	3	1	2
7	4	1	1
8	4	1	2
9	5	1	1
10	5	1	2
11	6	1	1
12	6	1	2
13	7	1	1
14	7	1	2
15	8	1	1
16	8	1	2
17	9	1	1
18	9	1	2
19	10	1	1
20	10	1	2
21	11	1	1
22	11	1	2
23	12	1	1
24	12	1	2
25	13	1	1
26	13	1	2
27	14	1	1
28	14	1	2
29	15	1	1
30	15	1	2
31	16	1	1
32	16	1	2
33	17	1	1
34	17	1	2
35	18	1	1
36	18	1	2
37	19	1	1
38	19	1	2
39	20	1	1
40	20	1	2
41	21	1	1
42	21	1	2
43	22	1	1
44	22	1	2
45	23	1	1
46	23	1	2
47	24	1	1
48	24	1	2
49	25	1	1
50	25	1	2
51	26	1	1
52	26	1	2
53	27	1	1
54	27	1	2
55	28	1	1
56	28	1	2
57	29	1	1
58	29	1	2
59	30	1	1
60	30	1	2
61	31	1	1
62	31	1	2
63	32	1	1
64	32	1	2
65	33	1	1
66	33	1	2
67	34	1	1
68	34	1	2
69	35	1	1
70	35	1	2
71	36	1	1
72	36	1	2
73	37	1	1
74	37	1	2
75	38	1	1
76	38	1	2
77	39	1	1
78	39	1	2
79	40	1	1
80	40	1	2
81	41	1	1
82	41	1	2
83	42	1	1
84	42	1	2
85	43	1	1
86	43	1	2
87	44	1	1
88	44	1	2
89	45	1	1
90	45	1	2
91	46	1	1
92	46	1	2
93	47	1	1
94	47	1	2
95	48	1	1
96	48	1	2
97	49	1	1
98	49	1	2
99	50	1	1
100	50	1	2
101	51	1	1
102	51	1	2
103	52	1	1
104	52	1	2
105	53	1	1
106	53	1	2
107	54	1	1
108	54	1	2
109	55	1	1
110	55	1	2
111	56	1	1
112	56	1	2
113	57	1	1
114	57	1	2
115	58	1	1
116	58	1	2
117	59	1	1
118	59	1	2
119	60	1	1
120	60	1	2
121	61	1	1
122	61	1	2
123	62	1	1
124	62	1	2
125	63	1	1
126	63	1	2
127	64	1	1
128	64	1	2
129	65	1	1
130	65	1	2
131	66	1	1
132	66	1	2
133	67	1	1
134	67	1	2
135	68	1	1
136	68	1	2
137	69	1	1
138	69	1	2
139	70	1	1
140	70	1	2
141	71	1	1
142	71	1	2
143	72	1	1
144	72	1	2
145	73	1	1
146	73	1	2
147	74	1	1
148	74	1	2
149	75	1	1
150	75	1	2
151	76	1	1
152	76	1	2
153	77	1	1
154	77	1	2
155	78	1	1
156	78	1	2
157	79	1	1
158	79	1	2
159	80	1	1
160	80	1	2
161	81	1	1
162	81	1	2
163	82	1	1
164	82	1	2
165	83	1	1
166	83	1	2
167	84	1	1
168	84	1	2
169	85	1	1
170	85	1	2
171	86	1	1
172	86	1	2
173	87	1	1
174	87	1	2
175	88	1	1
176	88	1	2
177	89	1	1
178	89	1	2
179	90	1	1
180	90	1	2
181	91	1	1
182	91	1	2
183	92	1	1
184	92	1	2
185	93	1	1
186	93	1	2
187	94	1	1
188	94	1	2
189	95	1	1
190	95	1	2
191	96	1	1
192	96	1	2
193	97	1	1
194	97	1	2
195	98	1	1
196	98	1	2
197	99	1	1
198	99	1	2
199	100	1	1
200	100	1	2
201	101	1	1
202	101	1	2
203	102	1	1
204	102	1	2
205	103	1	1
206	103	1	2
207	104	1	1
208	104	1	2
209	105	1	1
210	105	1	2
211	106	1	1
212	106	1	2
213	107	1	1
214	107	1	2
215	108	1	1
216	108	1	2
217	109	1	1
218	109	1	2
219	110	1	1
220	110	1	2
221	111	1	1
222	111	1	2
223	112	1	1
224	112	1	2
225	113	1	1
226	113	1	2
227	114	1	1
228	114	1	2
229	115	1	1
230	115	1	2
231	116	1	1
232	116	1	2
233	117	1	1
234	117	1	2
235	118	1	1
236	118	1	2
237	119	1	1
238	119	1	2
239	120	1	1
240	120	1	2
241	121	1	1
242	121	1	2
243	122	1	1
244	122	1	2
245	123	1	1
246	123	1	2
247	124	1	1
248	124	1	2
249	125	1	1
250	125	1	2
251	126	1	1
252	126	1	2
253	127	1	1
254	127	1	2
255	128	1	1
256	128	1	2
257	129	1	1
258	129	1	2
259	130	1	1
260	130	1	2
261	131	1	1
262	131	1	2
263	132	1	1
264	132	1	2
265	133	1	1
266	133	1	2
267	134	1	1
268	134	1	2
269	135	1	1
270	135	1	2
271	136	1	1
272	136	1	2
273	137	1	1
274	137	1	2
275	138	1	1
276	138	1	2
277	139	1	1
278	139	1	2
279	140	1	1
280	140	1	2
281	141	1	1
282	141	1	2
283	142	1	1
284	142	1	2
285	143	1	1
286	143	1	2
287	144	1	1
288	144	1	2
289	145	1	1
290	145	1	2
291	146	1	1
292	146	1	2
293	147	1	1
294	147	1	2
295	148	1	1
296	148	1	2
297	149	1	1
298	149	1	2
299	150	1	1
300	150	1	2
301	151	1	1
302	151	1	2
303	152	1	1
304	152	1	2
305	153	1	1
306	153	1	2
307	154	1	1
308	154	1	2
309	155	1	1
310	155	1	2
311	156	1	1
312	156	1	2
313	157	1	1
314	157	1	2
315	158	1	1
316	158	1	2
317	159	1	1
318	159	1	2
319	160	1	1
320	160	1	2
321	161	1	1
322	161	1	2
323	162	1	1
324	162	1	2
325	163	1	1
326	163	1	2
327	164	1	1
328	164	1	2
329	165	1	1
330	165	1	2
331	166	1	1
332	166	1	2
333	167	1	1
334	167	1	2
335	168	1	1
336	168	1	2
337	169	1	1
338	169	1	2
339	170	1	1
340	170	1	2
341	171	1	1
342	171	1	2
343	172	1	1
344	172	1	2
345	173	1	1
346	173	1	2
347	174	1	1
348	174	1	2
349	175	1	1
350	175	1	2
351	176	1	1
352	176	1	2
353	177	1	1
354	177	1	2
355	178	1	1
356	178	1	2
357	179	1	1
358	179	1	2
359	180	1	1
360	180	1	2
361	181	1	1
362	181	1	2
363	182	1	1
364	182	1	2
365	183	1	1
366	183	1	2
367	184	1	1
368	184	1	2
369	185	1	1
370	185	1	2
371	186	1	1
372	186	1	2
373	187	1	1
374	187	1	2
375	188	1	1
376	188	1	2
377	189	1	1
378	189	1	2
379	190	1	1
380	190	1	2
381	191	1	1
382	191	1	2
383	192	1	1
384	192	1	2
385	193	1	1
386	193	1	2
387	194	1	1
388	194	1	2
389	195	1	1
390	195	1	2
391	196	1	1
392	196	1	2
393	197	1	1
394	197	1	2
395	198	1	1
396	198	1	2
397	199	1	1
398	199	1	2
399	200	1	1
400	200	1	2
401	201	1	1
402	201	1	2
403	202	1	1
404	202	1	2
405	203	1	1
406	203	1	2
407	204	1	1
408	204	1	2
409	205	1	1
410	205	1	2
411	206	1	1
412	206	1	2
413	207	1	1
414	207	1	2
415	208	1	1
416	208	1	2
417	209	1	1
418	209	1	2
419	210	1	1
420	210	1	2
421	211	1	1
422	211	1	2
423	212	1	1
424	212	1	2
425	213	1	1
426	213	1	2
427	214	1	1
428	214	1	2
429	215	1	1
430	215	1	2
431	216	1	1
432	216	1	2
433	217	1	1
434	217	1	2
435	218	1	1
436	218	1	2
437	219	1	1
438	219	1	2
439	220	1	1
440	220	1	2
441	221	1	1
442	221	1	2
443	222	1	1
444	222	1	2
445	223	1	1
446	223	1	2
447	224	1	1
448	224	1	2
449	225	1	1
450	225	1	2
451	226	1	1
452	226	1	2
453	227	1	1
454	227	1	2
455	228	1	1
456	228	1	2
457	229	1	1
458	229	1	2
459	230	1	1
460	230	1	2
461	231	1	1
462	231	1	2
463	232	1	1
464	232	1	2
465	233	1	1
466	233	1	2
467	234	1	1
468	234	1	2
469	235	1	1
470	235	1	2
471	236	1	1
472	236	1	2
473	237	1	1
474	237	1	2
475	238	1	1
476	238	1	2
477	239	1	1
478	239	1	2
479	240	1	1
480	240	1	2
481	241	1	1
482	241	1	2
483	242	1	1
484	242	1	2
485	243	1	1
486	243	1	2
487	244	1	1
488	244	1	2
489	245	1	1
490	245	1	2
491	246	1	1
492	246	1	2
493	247	1	1
494	247	1	2
495	248	1	1
496	248	1	2
497	249	1	1
498	249	1	2
499	250	1	1
500	250	1	2
501	251	1	1
502	251	1	2
503	252	1	1
504	252	1	2
505	253	1	1
506	253	1	2
507	254	1	1
508	254	1	2
509	255	1	1
510	255	1	2
511	256	1	1
512	256	1	2
513	257	1	1
514	257	1	2
515	258	1	1
516	258	1	2
517	259	1	1
518	259	1	2
519	260	1	1
520	260	1	2
521	261	1	1
522	261	1	2
523	262	1	1
524	262	1	2
525	263	1	1
526	263	1	2
527	264	1	1
528	264	1	2
529	265	1	1
530	265	1	2
531	266	1	1
532	266	1	2
533	267	1	1
534	267	1	2
535	268	1	1
536	268	1	2
537	269	1	1
538	269	1	2
539	270	1	1
540	270	1	2
541	271	1	1
542	271	1	2
543	272	1	1
544	272	1	2
545	273	1	1
546	273	1	2
547	274	1	1
548	274	1	2
549	275	1	1
550	275	1	2
551	276	1	1
552	276	1	2
553	277	1	1
554	277	1	2
555	278	1	1
556	278	1	2
557	279	1	1
558	279	1	2
559	280	1	1
560	280	1	2
561	281	1	1
562	281	1	2
563	282	1	1
564	282	1	2
565	283	1	1
566	283	1	2
567	284	1	1
568	284	1	2
569	285	1	1
570	285	1	2
571	286	1	1
572	286	1	2
573	287	1	1
574	287	1	2
575	288	1	1
576	288	1	2
577	289	1	1
578	289	1	2
579	290	1	1
580	290	1	2
581	291	1	1
582	291	1	2
583	292	1	1
584	292	1	2
585	293	1	1
586	293	1	2
587	294	1	1
588	294	1	2
589	295	1	1
590	295	1	2
591	296	1	1
592	296	1	2
593	297	1	1
594	297	1	2
595	298	1	1
596	298	1	2
597	299	1	1
598	299	1	2
599	300	1	1
600	300	1	2
601	301	1	1
602	301	1	2
603	302	1	1
604	302	1	2
605	303	1	1
606	303	1	2
607	304	1	1
608	304	1	2
609	305	1	1
610	305	1	2
611	306	1	1
612	306	1	2
613	307	1	1
614	307	1	2
615	308	1	1
616	308	1	2
617	309	1	1
618	309	1	2
619	310	1	1
620	310	1	2
621	311	1	1
622	311	1	2
623	312	1	1
624	312	1	2
625	313	1	1
626	313	1	2
627	314	1	1
628	314	1	2
629	315	1	1
630	315	1	2
631	316	1	1
632	316	1	2
633	317	1	1
634	317	1	2
635	318	1	1
636	318	1	2
637	319	1	1
638	319	1	2
639	320	1	1
640	320	1	2
641	321	1	1
642	321	1	2
643	322	1	1
644	322	1	2
645	323	1	1
646	323	1	2
647	324	1	1
648	324	1	2
649	325	1	1
650	325	1	2
651	326	1	1
652	326	1	2
653	327	1	1
654	327	1	2
655	328	1	1
656	328	1	2
657	329	1	1
658	329	1	2
659	330	1	1
660	330	1	2
661	331	1	1
662	331	1	2
663	332	1	1
664	332	1	2
665	333	1	1
666	333	1	2
667	334	1	1
668	334	1	2
669	335	1	1
670	335	1	2
671	336	1	1
672	336	1	2
673	337	1	1
674	337	1	2
675	338	1	1
676	338	1	2
677	339	1	1
678	339	1	2
679	340	1	1
680	340	1	2
681	341	1	1
682	341	1	2
683	342	1	1
684	342	1	2
685	343	1	1
686	343	1	2
687	344	1	1
688	344	1	2
689	345	1	1
690	345	1	2
691	346	1	1
692	346	1	2
693	347	1	1
694	347	1	2
695	348	1	1
696	348	1	2
697	349	1	1
698	349	1	2
699	350	1	1
700	350	1	2
701	351	1	1
702	351	1	2
703	352	1	1
704	352	1	2
705	353	1	1
706	353	1	2
707	354	1	1
708	354	1	2
709	355	1	1
710	355	1	2
711	356	1	1
712	356	1	2
713	357	1	1
714	357	1	2
715	358	1	1
716	358	1	2
717	359	1	1
718	359	1	2
719	360	1	1
720	360	1	2
721	361	1	1
722	361	1	2
723	362	1	1
724	362	1	2
725	363	1	1
726	363	1	2
727	364	1	1
728	364	1	2
729	365	1	1
730	365	1	2
731	366	1	1
732	366	1	2
733	367	1	1
734	367	1	2
735	368	1	1
736	368	1	2
737	369	1	1
738	369	1	2
739	370	1	1
740	370	1	2
741	371	1	1
742	371	1	2
743	372	1	1
744	372	1	2
745	373	1	1
746	373	1	2
747	374	1	1
748	374	1	2
749	375	1	1
750	375	1	2
751	376	1	1
752	376	1	2
753	377	1	1
754	377	1	2
755	378	1	1
756	378	1	2
757	379	1	1
758	379	1	2
759	380	1	1
760	380	1	2
761	381	1	1
762	381	1	2
763	382	1	1
764	382	1	2
765	383	1	1
766	383	1	2
767	384	1	1
768	384	1	2
769	385	1	1
770	385	1	2
771	386	1	1
772	386	1	2
773	387	1	1
774	387	1	2
775	388	1	1
776	388	1	2
777	389	1	1
778	389	1	2
779	390	1	1
780	390	1	2
781	391	1	1
782	391	1	2
783	392	1	1
784	392	1	2
785	393	1	1
786	393	1	2
787	394	1	1
788	394	1	2
789	395	1	1
790	395	1	2
791	396	1	1
792	396	1	2
793	397	1	1
794	397	1	2
795	398	1	1
796	398	1	2
797	399	1	1
798	399	1	2
799	400	1	1
800	400	1	2
801	401	1	1
802	401	1	2
803	402	1	1
804	402	1	2
805	403	1	1
806	403	1	2
807	404	1	1
808	404	1	2
809	405	1	1
810	405	1	2
811	406	1	1
812	406	1	2
813	407	1	1
814	407	1	2
815	408	1	1
816	408	1	2
817	409	1	1
818	409	1	2
819	410	1	1
820	410	1	2
821	411	1	1
822	411	1	2
823	412	1	1
824	412	1	2
825	413	1	1
826	413	1	2
827	414	1	1
828	414	1	2
829	415	1	1
830	415	1	2
831	416	1	1
832	416	1	2
833	417	1	1
834	417	1	2
835	418	1	1
836	418	1	2
837	419	1	1
838	419	1	2
839	420	1	1
840	420	1	2
841	421	1	1
842	421	1	2
843	422	1	1
844	422	1	2
845	423	1	1
846	423	1	2
847	424	1	1
848	424	1	2
849	425	1	1
850	425	1	2
851	426	1	1
852	426	1	2
853	427	1	1
854	427	1	2
855	428	1	1
856	428	1	2
857	429	1	1
858	429	1	2
859	430	1	1
860	430	1	2
861	431	1	1
862	431	1	2
863	432	1	1
864	432	1	2
865	433	1	1
866	433	1	2
867	434	1	1
868	434	1	2
869	435	1	1
870	435	1	2
871	436	1	1
872	436	1	2
873	437	1	1
874	437	1	2
875	438	1	1
876	438	1	2
877	439	1	1
878	439	1	2
879	440	1	1
880	440	1	2
881	441	1	1
882	441	1	2
883	442	1	1
884	442	1	2
885	443	1	1
886	443	1	2
887	444	1	1
888	444	1	2
889	445	1	1
890	445	1	2
891	446	1	1
892	446	1	2
893	447	1	1
894	447	1	2
895	448	1	1
896	448	1	2
897	449	1	1
898	449	1	2
899	450	1	1
900	450	1	2
901	451	1	1
902	451	1	2
903	452	1	1
904	452	1	2
905	453	1	1
906	453	1	2
907	454	1	1
908	454	1	2
909	455	1	1
910	455	1	2
911	456	1	1
912	456	1	2
913	457	1	1
914	457	1	2
915	458	1	1
916	458	1	2
917	459	1	1
918	459	1	2
919	460	1	1
920	460	1	2
921	461	1	1
922	461	1	2
923	462	1	1
924	462	1	2
925	463	1	1
926	463	1	2
927	464	1	1
928	464	1	2
929	465	1	1
930	465	1	2
931	466	1	1
932	466	1	2
933	467	1	1
934	467	1	2
935	468	1	1
936	468	1	2
937	469	1	1
938	469	1	2
939	470	1	1
940	470	1	2
941	471	1	1
942	471	1	2
943	472	1	1
944	472	1	2
945	473	1	1
946	473	1	2
947	474	1	1
948	474	1	2
949	475	1	1
950	475	1	2
951	476	1	1
952	476	1	2
953	477	1	1
954	477	1	2
955	478	1	1
956	478	1	2
957	479	1	1
958	479	1	2
959	480	1	1
960	480	1	2
961	481	1	1
962	481	1	2
963	482	1	1
964	482	1	2
965	483	1	1
966	483	1	2
967	484	1	1
968	484	1	2
969	485	1	1
970	485	1	2
971	485	2	3
972	485	2	4
973	485	3	5
974	485	3	6
975	485	4	7
976	485	4	8
977	485	5	9
978	485	5	10
979	486	1	1
980	486	1	2
981	487	1	1
982	487	1	2
983	488	1	1
984	488	1	2
985	489	1	1
986	489	1	2
987	490	1	1
988	490	1	2
989	491	1	1
990	491	1	2
991	492	1	1
992	492	1	2
993	493	1	1
994	493	1	2
995	494	1	1
996	494	1	2
997	495	1	1
998	495	1	2
999	496	1	1
1000	496	1	2
1001	497	1	1
1002	497	1	2
1003	498	1	1
1004	498	1	2
1005	499	1	1
1006	499	1	2
1007	500	1	1
1008	500	1	2
1009	501	1	1
1010	501	1	2
1011	502	1	1
1012	502	1	2
1013	503	1	1
1014	503	1	2
1015	504	1	1
1016	504	1	2
1017	505	1	1
1018	505	1	2
1019	506	1	1
1020	506	1	2
1021	507	1	1
1022	507	1	2
1023	508	1	1
1024	508	1	2
1025	509	1	1
1026	509	1	2
1027	510	1	1
1028	510	1	2
1029	511	1	1
1030	511	1	2
1031	512	1	1
1032	512	1	2
1033	513	1	1
1034	513	1	2
1035	514	1	1
1036	514	1	2
1037	515	1	1
1038	515	1	2
1039	516	1	1
1040	516	1	2
1041	517	1	1
1042	517	1	2
1043	518	1	1
1044	518	1	2
1045	519	1	1
1046	519	1	2
1047	520	1	1
1048	520	1	2
1049	521	1	1
1050	521	1	2
1051	522	1	1
1052	522	1	2
1053	523	1	1
1054	523	1	2
1055	524	1	1
1056	524	1	2
1057	525	1	1
1058	525	1	2
1059	526	1	1
1060	526	1	2
1061	527	1	1
1062	527	1	2
1063	528	1	1
1064	528	1	2
1065	529	1	1
1066	529	1	2
1067	530	1	1
1068	530	1	2
1069	531	1	1
1070	531	1	2
1071	532	1	1
1072	532	1	2
1073	533	1	1
1074	533	1	2
1075	534	1	1
1076	534	1	2
1077	535	1	1
1078	535	1	2
1079	535	2	3
1080	535	2	4
1081	535	3	5
1082	535	3	6
1083	535	4	7
1084	535	4	8
1085	536	1	1
1086	536	1	2
1087	537	1	1
1088	537	1	2
1089	538	1	1
1090	538	1	2
1091	539	1	1
1092	539	1	2
1093	540	1	1
1094	540	1	2
1095	541	1	1
1096	541	1	2
1097	542	1	1
1098	542	1	2
1099	543	1	1
1100	543	1	2
1101	544	1	1
1102	544	1	2
1103	545	1	1
1104	545	1	2
1105	546	1	1
1106	546	1	2
1107	547	1	1
1108	547	1	2
1109	548	1	1
1110	548	1	2
1111	549	1	1
1112	549	1	2
1113	550	1	1
1114	550	1	2
1115	551	1	1
1116	551	1	2
1117	552	1	1
1118	552	1	2
1119	553	1	1
1120	553	1	2
1121	554	1	1
1122	554	1	2
1123	555	1	1
1124	555	1	2
1125	556	1	1
1126	556	1	2
1127	557	1	1
1128	557	1	2
1129	558	1	1
1130	558	1	2
1131	559	1	1
1132	559	1	2
1133	560	1	1
1134	560	1	2
1135	561	1	1
1136	561	1	2
1137	562	1	1
1138	562	1	2
1139	563	1	1
1140	563	1	2
1141	564	1	1
1142	564	1	2
1143	565	1	1
1144	565	1	2
1145	566	1	1
1146	566	1	2
1147	567	1	1
1148	567	1	2
1149	568	1	1
1150	568	1	2
1151	569	1	1
1152	569	1	2
1153	570	1	1
1154	570	1	2
1155	571	1	1
1156	571	1	2
1157	572	1	1
1158	572	1	2
1159	573	1	1
1160	573	1	2
1161	574	1	1
1162	574	1	2
1163	575	1	1
1164	575	1	2
1165	576	1	1
1166	576	1	2
1167	577	1	1
1168	577	1	2
1169	578	1	1
1170	578	1	2
1171	579	1	1
1172	579	1	2
1173	580	1	1
1174	580	1	2
1175	581	1	1
1176	581	1	2
1177	582	1	1
1178	582	1	2
1179	583	1	1
1180	583	1	2
1181	584	1	1
1182	584	1	2
1183	585	1	1
1184	585	1	2
1185	586	1	1
1186	586	1	2
1187	587	1	1
1188	587	1	2
1189	588	1	1
1190	588	1	2
1191	589	1	1
1192	589	1	2
1193	590	1	1
1194	590	1	2
1195	591	1	1
1196	591	1	2
1197	592	1	1
1198	592	1	2
1199	593	1	1
1200	593	1	2
1201	594	1	1
1202	594	1	2
1203	595	1	1
1204	595	1	2
1205	596	1	1
1206	596	1	2
1207	597	1	1
1208	597	1	2
1209	598	1	1
1210	598	1	2
1211	599	1	1
1212	599	1	2
1213	600	1	1
1214	600	1	2
1215	601	1	1
1216	601	1	2
1217	602	1	1
1218	602	1	2
1219	603	1	1
1220	603	1	2
1221	604	1	1
1222	604	1	2
1223	605	1	1
1224	605	1	2
1225	606	1	1
1226	606	1	2
1227	607	1	1
1228	607	1	2
1229	608	1	1
1230	608	1	2
1231	609	1	1
1232	609	1	2
1233	610	1	1
1234	610	1	2
1235	611	1	1
1236	611	1	2
1237	612	1	1
1238	612	1	2
1239	613	1	1
1240	613	1	2
1241	614	1	1
1242	614	1	2
1243	615	1	1
1244	615	1	2
1245	616	1	1
1246	616	1	2
1247	617	1	1
1248	617	1	2
1249	618	1	1
1250	618	1	2
1251	619	1	1
1252	619	1	2
1253	620	1	1
1254	620	1	2
1255	621	1	1
1256	621	1	2
1257	622	1	1
1258	622	1	2
1259	623	1	1
1260	623	1	2
1261	624	1	1
1262	624	1	2
1263	625	1	1
1264	625	1	2
1265	626	1	1
1266	626	1	2
1267	627	1	1
1268	627	1	2
1269	628	1	1
1270	628	1	2
1271	629	1	1
1272	629	1	2
1273	630	1	1
1274	630	1	2
1275	631	1	1
1276	631	1	2
1277	632	1	1
1278	632	1	2
1279	633	1	1
1280	633	1	2
1281	634	1	1
1282	634	1	2
1283	635	1	1
1284	635	1	2
1285	636	1	1
1286	636	1	2
1287	637	1	1
1288	637	1	2
1289	638	1	1
1290	638	1	2
1291	639	1	1
1292	639	1	2
1293	640	1	1
1294	640	1	2
1295	641	1	1
1296	641	1	2
1297	642	1	1
1298	642	1	2
1299	643	1	1
1300	643	1	2
1301	644	1	1
1302	644	1	2
1303	645	1	1
1304	645	1	2
1305	646	1	1
1306	646	1	2
1307	647	1	1
1308	647	1	2
1309	648	1	1
1310	648	1	2
1311	649	1	1
1312	649	1	2
1313	650	1	1
1314	650	1	2
1315	651	1	1
1316	651	1	2
1317	652	1	1
1318	652	1	2
1319	653	1	1
1320	653	1	2
1321	654	1	1
1322	654	1	2
1323	655	1	1
1324	655	1	2
1325	656	1	1
1326	656	1	2
1327	657	1	1
1328	657	1	2
1329	658	1	1
1330	658	1	2
1331	659	1	1
1332	659	1	2
1333	660	1	1
1334	660	1	2
1335	661	1	1
1336	661	1	2
1337	662	1	1
1338	662	1	2
1339	663	1	1
1340	663	1	2
1341	664	1	1
1342	664	1	2
1343	665	1	1
1344	665	1	2
1345	666	1	1
1346	666	1	2
1347	667	1	1
1348	667	1	2
1349	668	1	1
1350	668	1	2
1351	669	1	1
1352	669	1	2
1353	670	1	1
1354	670	1	2
1355	671	1	1
1356	671	1	2
1357	672	1	1
1358	672	1	2
1359	673	1	1
1360	673	1	2
1361	674	1	1
1362	674	1	2
1363	675	1	1
1364	675	1	2
1365	676	1	1
1366	676	1	2
1367	677	1	1
1368	677	1	2
1369	678	1	1
1370	678	1	2
1371	679	1	1
1372	679	1	2
1373	680	1	1
1374	680	1	2
1375	681	1	1
1376	681	1	2
1377	682	1	1
1378	682	1	2
1379	683	1	1
1380	683	1	2
1381	684	1	1
1382	684	1	2
1383	685	1	1
1384	685	1	2
1385	686	1	1
1386	686	1	2
1387	687	1	1
1388	687	1	2
1389	688	1	1
1390	688	1	2
1391	689	1	1
1392	689	1	2
1393	690	1	1
1394	690	1	2
1395	691	1	1
1396	691	1	2
1397	692	1	1
1398	692	1	2
1399	693	1	1
1400	693	1	2
1401	694	1	1
1402	694	1	2
1403	695	1	1
1404	695	1	2
1405	696	1	1
1406	696	1	2
1407	697	1	1
1408	697	1	2
1409	698	1	1
1410	698	1	2
1411	699	1	1
1412	699	1	2
1413	700	1	1
1414	700	1	2
1415	701	1	1
1416	701	1	2
1417	702	1	1
1418	702	1	2
1419	703	1	1
1420	703	1	2
1421	704	1	1
1422	704	1	2
1423	704	2	3
1424	704	2	4
1425	704	3	5
1426	704	3	6
1427	704	4	7
1428	704	4	8
1429	705	1	1
1430	705	1	2
1431	705	2	3
1432	705	2	4
1433	705	3	5
1434	705	3	6
1435	705	4	7
1436	705	4	8
1437	706	1	1
1438	706	1	2
1439	706	2	3
1440	706	2	4
1441	706	3	5
1442	706	3	6
1443	706	4	7
1444	706	4	8
1445	707	1	1
1446	707	1	2
1447	708	1	1
1448	708	1	2
1449	709	1	1
1450	709	1	2
1451	710	1	1
1452	710	1	2
1453	711	1	1
1454	711	1	2
1455	712	1	1
1456	712	1	2
1457	713	1	1
1458	713	1	2
1459	714	1	1
1460	714	1	2
1461	715	1	1
1462	715	1	2
1463	716	1	1
1464	716	1	2
1465	717	1	1
1466	717	1	2
1467	718	1	1
1468	718	1	2
1469	719	1	1
1470	719	1	2
1471	720	1	1
1472	720	1	2
1473	721	1	1
1474	721	1	2
1475	722	1	1
1476	722	1	2
1477	723	1	1
1478	723	1	2
1479	724	1	1
1480	724	1	2
1481	725	1	1
1482	725	1	2
1483	726	1	1
1484	726	1	2
1485	727	1	1
1486	727	1	2
1487	728	1	1
1488	728	1	2
1489	729	1	1
1490	729	1	2
1491	730	1	1
1492	730	1	2
1493	731	1	1
1494	731	1	2
1495	732	1	1
1496	732	1	2
1497	733	1	1
1498	733	1	2
1499	734	1	1
1500	734	1	2
1501	735	1	1
1502	735	1	2
1503	736	1	1
1504	736	1	2
1505	737	1	1
1506	737	1	2
1507	737	2	3
1508	737	2	4
1509	737	3	5
1510	737	3	6
1511	737	4	7
1512	737	4	8
1513	738	1	1
1514	738	1	2
1515	739	1	1
1516	739	1	2
1517	740	1	1
1518	740	1	2
1519	741	1	1
1520	741	1	2
1521	742	1	1
1522	742	1	2
1523	743	1	1
1524	743	1	2
1525	744	1	1
1526	744	1	2
1527	745	1	1
1528	745	1	2
1529	746	1	1
1530	746	1	2
1531	747	1	1
1532	747	1	2
1533	748	1	1
1534	748	1	2
1535	749	1	1
1536	749	1	2
1537	750	1	1
1538	750	1	2
1539	751	1	1
1540	751	1	2
1541	752	1	1
1542	752	1	2
1543	753	1	1
1544	753	1	2
1545	754	1	1
1546	754	1	2
1547	755	1	1
1548	755	1	2
1549	756	1	1
1550	756	1	2
1551	757	1	1
1552	757	1	2
1553	758	1	1
1554	758	1	2
1555	759	1	1
1556	759	1	2
1557	760	1	1
1558	760	1	2
1559	761	1	1
1560	761	1	2
1561	762	1	1
1562	762	1	2
1563	762	2	3
1564	762	2	4
1565	762	3	5
1566	762	3	6
1567	762	4	7
1568	762	4	8
1569	763	1	1
1570	763	1	2
1571	764	1	1
1572	764	1	2
1573	765	1	1
1574	765	1	2
1575	766	1	1
1576	766	1	2
1577	767	1	1
1578	767	1	2
1579	768	1	1
1580	768	1	2
1581	769	1	1
1582	769	1	2
1583	770	1	1
1584	770	1	2
1585	771	1	1
1586	771	1	2
1587	772	1	1
1588	772	1	2
1589	773	1	1
1590	773	1	2
1591	774	1	1
1592	774	1	2
1593	775	1	1
1594	775	1	2
1595	776	1	1
1596	776	1	2
1597	777	1	1
1598	777	1	2
1599	778	1	1
1600	778	1	2
1601	779	1	1
1602	779	1	2
1603	780	1	1
1604	780	1	2
1605	781	1	1
1606	781	1	2
1607	782	1	1
1608	782	1	2
1609	783	1	1
1610	783	1	2
1611	784	1	1
1612	784	1	2
1613	785	1	1
1614	785	1	2
1615	786	1	1
1616	786	1	2
1617	787	1	1
1618	787	1	2
1619	788	1	1
1620	788	1	2
1621	789	1	1
1622	789	1	2
1623	790	1	1
1624	790	1	2
1625	791	1	1
1626	791	1	2
1627	792	1	1
1628	792	1	2
1629	793	1	1
1630	793	1	2
1631	794	1	1
1632	794	1	2
1633	795	1	1
1634	795	1	2
1635	796	1	1
1636	796	1	2
1637	797	1	1
1638	797	1	2
1639	798	1	1
1640	798	1	2
1641	799	1	1
1642	799	1	2
1643	800	1	1
1644	800	1	2
1645	801	1	1
1646	801	1	2
1647	802	1	1
1648	802	1	2
1649	803	1	1
1650	803	1	2
1651	804	1	1
1652	804	1	2
1653	805	1	1
1654	805	1	2
1655	806	1	1
1656	806	1	2
1657	807	1	1
1658	807	1	2
1659	808	1	1
1660	808	1	2
1661	809	1	1
1662	809	1	2
1663	810	1	1
1664	810	1	2
1665	811	1	1
1666	811	1	2
1667	812	1	1
1668	812	1	2
1669	813	1	1
1670	813	1	2
1671	814	1	1
1672	814	1	2
1673	815	1	1
1674	815	1	2
1675	816	1	1
1676	816	1	2
1677	817	1	1
1678	817	1	2
1679	818	1	1
1680	818	1	2
1681	819	1	1
1682	819	1	2
1683	820	1	1
1684	820	1	2
1685	821	1	1
1686	821	1	2
1687	822	1	1
1688	822	1	2
1689	823	1	1
1690	823	1	2
1691	824	1	1
1692	824	1	2
1693	825	1	1
1694	825	1	2
1695	826	1	1
1696	826	1	2
1697	827	1	1
1698	827	1	2
1699	828	1	1
1700	828	1	2
1701	829	1	1
1702	829	1	2
1703	830	1	1
1704	830	1	2
1705	831	1	1
1706	831	1	2
1707	832	1	1
1708	832	1	2
1709	833	1	1
1710	833	1	2
1711	834	1	1
1712	834	1	2
1713	835	1	1
1714	835	1	2
1715	836	1	1
1716	836	1	2
1717	837	1	1
1718	837	1	2
1719	838	1	1
1720	838	1	2
1721	839	1	1
1722	839	1	2
1723	840	1	1
1724	840	1	2
1725	841	1	1
1726	841	1	2
1727	842	1	1
1728	842	1	2
1729	843	1	1
1730	843	1	2
1731	844	1	1
1732	844	1	2
1733	845	1	1
1734	845	1	2
1735	846	1	1
1736	846	1	2
1737	847	1	1
1738	847	1	2
1739	848	1	1
1740	848	1	2
1741	849	1	1
1742	849	1	2
1743	850	1	1
1744	850	1	2
1745	851	1	1
1746	851	1	2
1747	852	1	1
1748	852	1	2
1749	853	1	1
1750	853	1	2
1751	854	1	1
1752	854	1	2
1753	855	1	1
1754	855	1	2
1755	856	1	1
1756	856	1	2
1757	857	1	1
1758	857	1	2
1759	858	1	1
1760	858	1	2
1761	859	1	1
1762	859	1	2
1763	860	1	1
1764	860	1	2
1765	861	1	1
1766	861	1	2
1767	862	1	1
1768	862	1	2
1769	863	1	1
1770	863	1	2
1771	864	1	1
1772	864	1	2
1773	865	1	1
1774	865	1	2
1775	866	1	1
1776	866	1	2
1777	867	1	1
1778	867	1	2
1779	868	1	1
1780	868	1	2
1781	869	1	1
1782	869	1	2
1783	870	1	1
1784	870	1	2
1785	871	1	1
1786	871	1	2
1787	872	1	1
1788	872	1	2
1789	873	1	1
1790	873	1	2
1791	874	1	1
1792	874	1	2
1793	875	1	1
1794	875	1	2
1795	876	1	1
1796	876	1	2
1797	877	1	1
1798	877	1	2
1799	878	1	1
1800	878	1	2
1801	879	1	1
1802	879	1	2
1803	880	1	1
1804	880	1	2
1805	881	1	1
1806	881	1	2
1807	882	1	1
1808	882	1	2
1809	883	1	1
1810	883	1	2
1811	884	1	1
1812	884	1	2
1813	885	1	1
1814	885	1	2
1815	886	1	1
1816	886	1	2
1817	887	1	1
1818	887	1	2
1819	888	1	1
1820	888	1	2
1821	889	1	1
1822	889	1	2
1823	890	1	1
1824	890	1	2
1825	891	1	1
1826	891	1	2
1827	892	1	1
1828	892	1	2
1829	893	1	1
1830	893	1	2
1831	894	1	1
1832	894	1	2
1833	895	1	1
1834	895	1	2
1835	896	1	1
1836	896	1	2
1837	897	1	1
1838	897	1	2
1839	898	1	1
1840	898	1	2
1841	899	1	1
1842	899	1	2
1843	900	1	1
1844	900	1	2
1845	901	1	1
1846	901	1	2
1847	902	1	1
1848	902	1	2
1849	903	1	1
1850	903	1	2
1851	904	1	1
1852	904	1	2
1853	905	1	1
1854	905	1	2
1855	906	1	1
1856	906	1	2
1857	907	1	1
1858	907	1	2
1859	908	1	1
1860	908	1	2
1861	909	1	1
1862	909	1	2
1863	910	1	1
1864	910	1	2
1865	911	1	1
1866	911	1	2
1867	912	1	1
1868	912	1	2
1869	913	1	1
1870	913	1	2
1871	914	1	1
1872	914	1	2
1873	915	1	1
1874	915	1	2
1875	916	1	1
1876	916	1	2
1877	917	1	1
1878	917	1	2
1879	918	1	1
1880	918	1	2
1881	919	1	1
1882	919	1	2
1883	920	1	1
1884	920	1	2
1885	921	1	1
1886	921	1	2
1887	922	1	1
1888	922	1	2
1889	923	1	1
1890	923	1	2
1891	924	1	1
1892	924	1	2
1893	925	1	1
1894	925	1	2
1895	926	1	1
1896	926	1	2
1897	927	1	1
1898	927	1	2
1899	928	1	1
1900	928	1	2
1901	929	1	1
1902	929	1	2
1903	930	1	1
1904	930	1	2
1905	931	1	1
1906	931	1	2
1907	932	1	1
1908	932	1	2
1909	933	1	1
1910	933	1	2
1911	934	1	1
1912	934	1	2
1913	935	1	1
1914	935	1	2
1915	936	1	1
1916	936	1	2
1917	937	1	1
1918	937	1	2
1919	938	1	1
1920	938	1	2
1921	939	1	1
1922	939	1	2
1923	940	1	1
1924	940	1	2
1925	941	1	1
1926	941	1	2
1927	942	1	1
1928	942	1	2
1929	943	1	1
1930	943	1	2
1931	944	1	1
1932	944	1	2
1933	945	1	1
1934	945	1	2
1935	946	1	1
1936	946	1	2
1937	947	1	1
1938	947	1	2
1939	948	1	1
1940	948	1	2
1941	949	1	1
1942	949	1	2
1943	949	2	3
1944	949	2	4
1945	949	3	5
1946	949	3	6
1947	949	4	7
1948	949	4	8
1949	950	1	1
1950	950	1	2
1951	951	1	1
1952	951	1	2
1953	952	1	1
1954	952	1	2
1955	953	1	1
1956	953	1	2
1957	954	1	1
1958	954	1	2
1959	955	1	1
1960	955	1	2
1961	956	1	1
1962	956	1	2
1963	957	1	1
1964	957	1	2
1965	958	1	1
1966	958	1	2
1967	959	1	1
1968	959	1	2
1969	960	1	1
1970	960	1	2
1971	961	1	1
1972	961	1	2
1973	962	1	1
1974	962	1	2
1975	963	1	1
1976	963	1	2
1977	964	1	1
1978	964	1	2
1979	965	1	1
1980	965	1	2
1981	966	1	1
1982	966	1	2
1983	967	1	1
1984	967	1	2
1985	968	1	1
1986	968	1	2
1987	969	1	1
1988	969	1	2
1989	970	1	1
1990	970	1	2
1991	971	1	1
1992	971	1	2
1993	972	1	1
1994	972	1	2
1995	973	1	1
1996	973	1	2
1997	974	1	1
1998	974	1	2
1999	975	1	1
2000	975	1	2
2001	976	1	1
2002	976	1	2
2003	977	1	1
2004	977	1	2
2005	978	1	1
2006	978	1	2
2007	979	1	1
2008	979	1	2
2009	980	1	1
2010	980	1	2
2011	981	1	1
2012	981	1	2
2013	982	1	1
2014	982	1	2
2015	983	1	1
2016	983	1	2
2017	984	1	1
2018	984	1	2
2019	985	1	1
2020	985	1	2
2021	986	1	1
2022	986	1	2
2023	987	1	1
2024	987	1	2
2025	988	1	1
2026	988	1	2
2027	989	1	1
2028	989	1	2
2029	990	1	1
2030	990	1	2
2031	991	1	1
2032	991	1	2
2033	992	1	1
2034	992	1	2
2035	993	1	1
2036	993	1	2
2037	994	1	1
2038	994	1	2
2039	995	1	1
2040	995	1	2
2041	996	1	1
2042	996	1	2
2043	997	1	1
2044	997	1	2
2045	998	1	1
2046	998	1	2
2047	998	2	3
2048	998	2	4
2049	998	3	5
2050	998	3	6
2051	998	4	7
2052	998	4	8
2053	999	1	1
2054	999	1	2
2055	1000	1	1
2056	1000	1	2
2057	1001	1	1
2058	1001	1	2
2059	1002	1	1
2060	1002	1	2
2061	1003	1	1
2062	1003	1	2
2063	1004	1	1
2064	1004	1	2
2065	1005	1	1
2066	1005	1	2
2067	1006	1	1
2068	1006	1	2
2069	1007	1	1
2070	1007	1	2
2071	1008	1	1
2072	1008	1	2
2073	1008	2	3
2074	1008	2	4
2075	1008	3	5
2076	1008	3	6
2077	1008	4	7
2078	1008	4	8
2079	1009	1	1
2080	1009	1	2
2081	1010	1	1
2082	1010	1	2
2083	1011	1	1
2084	1011	1	2
2085	1012	1	1
2086	1012	1	2
2087	1013	1	1
2088	1013	1	2
2089	1014	1	1
2090	1014	1	2
2091	1015	1	1
2092	1015	1	2
2093	1016	1	1
2094	1016	1	2
2095	1017	1	1
2096	1017	1	2
2097	1018	1	1
2098	1018	1	2
2099	1019	1	1
2100	1019	1	2
2101	1020	1	1
2102	1020	1	2
2103	1021	1	1
2104	1021	1	2
2105	1022	1	1
2106	1022	1	2
2107	1023	1	1
2108	1023	1	2
2109	1024	1	1
2110	1024	1	2
2111	1025	1	1
2112	1025	1	2
2113	1026	1	1
2114	1026	1	2
2115	1027	1	1
2116	1027	1	2
2117	1028	1	1
2118	1028	1	2
2119	1029	1	1
2120	1029	1	2
2121	1030	1	1
2122	1030	1	2
2123	1031	1	1
2124	1031	1	2
2125	1032	1	1
2126	1032	1	2
2127	1033	1	1
2128	1033	1	2
2129	1034	1	1
2130	1034	1	2
2131	1035	1	1
2132	1035	1	2
2133	1036	1	1
2134	1036	1	2
2135	1037	1	1
2136	1037	1	2
2137	1038	1	1
2138	1038	1	2
2139	1039	1	1
2140	1039	1	2
2141	1040	1	1
2142	1040	1	2
2143	1041	1	1
2144	1041	1	2
2145	1042	1	1
2146	1042	1	2
2147	1043	1	1
2148	1043	1	2
2149	1044	1	1
2150	1044	1	2
2151	1045	1	1
2152	1045	1	2
2153	1046	1	1
2154	1046	1	2
2155	1047	1	1
2156	1047	1	2
2157	1047	2	3
2158	1047	2	4
2159	1047	3	5
2160	1047	3	6
2161	1047	4	7
2162	1047	4	8
2163	1048	1	1
2164	1048	1	2
2165	1049	1	1
2166	1049	1	2
2167	1050	1	1
2168	1050	1	2
2169	1051	1	1
2170	1051	1	2
2171	1052	1	1
2172	1052	1	2
2173	1053	1	1
2174	1053	1	2
2175	1054	1	1
2176	1054	1	2
2177	1055	1	1
2178	1055	1	2
2179	1056	1	1
2180	1056	1	2
2181	1057	1	1
2182	1057	1	2
2183	1058	1	1
2184	1058	1	2
2185	1059	1	1
2186	1059	1	2
2187	1060	1	1
2188	1060	1	2
2189	1061	1	1
2190	1061	1	2
2191	1062	1	1
2192	1062	1	2
2193	1063	1	1
2194	1063	1	2
2195	1064	1	1
2196	1064	1	2
2197	1065	1	1
2198	1065	1	2
2199	1066	1	1
2200	1066	1	2
2201	1067	1	1
2202	1067	1	2
2203	1068	1	1
2204	1068	1	2
2205	1069	1	1
2206	1069	1	2
2207	1070	1	1
2208	1070	1	2
2209	1071	1	1
2210	1071	1	2
2211	1072	1	1
2212	1072	1	2
2213	1073	1	1
2214	1073	1	2
2215	1074	1	1
2216	1074	1	2
2217	1075	1	1
2218	1075	1	2
2219	1076	1	1
2220	1076	1	2
2221	1077	1	1
2222	1077	1	2
2223	1078	1	1
2224	1078	1	2
2225	1079	1	1
2226	1079	1	2
2227	1080	1	1
2228	1080	1	2
2229	1081	1	1
2230	1081	1	2
2231	1082	1	1
2232	1082	1	2
2233	1083	1	1
2234	1083	1	2
2235	1084	1	1
2236	1084	1	2
2237	1085	1	1
2238	1085	1	2
2239	1086	1	1
2240	1086	1	2
2241	1087	1	1
2242	1087	1	2
2243	1088	1	1
2244	1088	1	2
2245	1089	1	1
2246	1089	1	2
2247	1090	1	1
2248	1090	1	2
2249	1091	1	1
2250	1091	1	2
2251	1092	1	1
2252	1092	1	2
2253	1093	1	1
2254	1093	1	2
2255	1094	1	1
2256	1094	1	2
2257	1095	1	1
2258	1095	1	2
2259	1096	1	1
2260	1096	1	2
2261	1097	1	1
2262	1097	1	2
2263	1098	1	1
2264	1098	1	2
2265	1099	1	1
2266	1099	1	2
2267	1100	1	1
2268	1100	1	2
2269	1101	1	1
2270	1101	1	2
2271	1102	1	1
2272	1102	1	2
2273	1103	1	1
2274	1103	1	2
2275	1104	1	1
2276	1104	1	2
2277	1105	1	1
2278	1105	1	2
2279	1106	1	1
2280	1106	1	2
2281	1107	1	1
2282	1107	1	2
2283	1108	1	1
2284	1108	1	2
2285	1109	1	1
2286	1109	1	2
2287	1110	1	1
2288	1110	1	2
2289	1111	1	1
2290	1111	1	2
2291	1112	1	1
2292	1112	1	2
2293	1113	1	1
2294	1113	1	2
2295	1114	1	1
2296	1114	1	2
2297	1115	1	1
2298	1115	1	2
2299	1116	1	1
2300	1116	1	2
2301	1117	1	1
2302	1117	1	2
2303	1118	1	1
2304	1118	1	2
2305	1119	1	1
2306	1119	1	2
2307	1120	1	1
2308	1120	1	2
2309	1121	1	1
2310	1121	1	2
2311	1122	1	1
2312	1122	1	2
2313	1123	1	1
2314	1123	1	2
2315	1124	1	1
2316	1124	1	2
2317	1125	1	1
2318	1125	1	2
2319	1126	1	1
2320	1126	1	2
2321	1127	1	1
2322	1127	1	2
2323	1128	1	1
2324	1128	1	2
2325	1129	1	1
2326	1129	1	2
2327	1130	1	1
2328	1130	1	2
2329	1131	1	1
2330	1131	1	2
2331	1132	1	1
2332	1132	1	2
2333	1133	1	1
2334	1133	1	2
2335	1134	1	1
2336	1134	1	2
2337	1135	1	1
2338	1135	1	2
2339	1136	1	1
2340	1136	1	2
2341	1137	1	1
2342	1137	1	2
2343	1138	1	1
2344	1138	1	2
2345	1139	1	1
2346	1139	1	2
2347	1140	1	1
2348	1140	1	2
2349	1141	1	1
2350	1141	1	2
2351	1142	1	1
2352	1142	1	2
2353	1143	1	1
2354	1143	1	2
2355	1144	1	1
2356	1144	1	2
2357	1145	1	1
2358	1145	1	2
2359	1146	1	1
2360	1146	1	2
2361	1147	1	1
2362	1147	1	2
2363	1148	1	1
2364	1148	1	2
2365	1149	1	1
2366	1149	1	2
2367	1150	1	1
2368	1150	1	2
2369	1151	1	1
2370	1151	1	2
2371	1152	1	1
2372	1152	1	2
2373	1153	1	1
2374	1153	1	2
2375	1154	1	1
2376	1154	1	2
2377	1155	1	1
2378	1155	1	2
2379	1156	1	1
2380	1156	1	2
2381	1157	1	1
2382	1157	1	2
2383	1158	1	1
2384	1158	1	2
2385	1159	1	1
2386	1159	1	2
2387	1160	1	1
2388	1160	1	2
2389	1161	1	1
2390	1161	1	2
2391	1162	1	1
2392	1162	1	2
2393	1163	1	1
2394	1163	1	2
2395	1164	1	1
2396	1164	1	2
2397	1165	1	1
2398	1165	1	2
2399	1166	1	1
2400	1166	1	2
2401	1167	1	1
2402	1167	1	2
2403	1168	1	1
2404	1168	1	2
2405	1169	1	1
2406	1169	1	2
2407	1170	1	1
2408	1170	1	2
2409	1171	1	1
2410	1171	1	2
2411	1172	1	1
2412	1172	1	2
2413	1173	1	1
2414	1173	1	2
2415	1174	1	1
2416	1174	1	2
2417	1175	1	1
2418	1175	1	2
2419	1176	1	1
2420	1176	1	2
2421	1177	1	1
2422	1177	1	2
2423	1178	1	1
2424	1178	1	2
2425	1179	1	1
2426	1179	1	2
2427	1180	1	1
2428	1180	1	2
2429	1181	1	1
2430	1181	1	2
2431	1182	1	1
2432	1182	1	2
2433	1183	1	1
2434	1183	1	2
2435	1184	1	1
2436	1184	1	2
2437	1185	1	1
2438	1185	1	2
2439	1186	1	1
2440	1186	1	2
2441	1187	1	1
2442	1187	1	2
2443	1188	1	1
2444	1188	1	2
2445	1189	1	1
2446	1189	1	2
2447	1190	1	1
2448	1190	1	2
2449	1191	1	1
2450	1191	1	2
2451	1192	1	1
2452	1192	1	2
2453	1193	1	1
2454	1193	1	2
2455	1194	1	1
2456	1194	1	2
2457	1195	1	1
2458	1195	1	2
2459	1196	1	1
2460	1196	1	2
2461	1197	1	1
2462	1197	1	2
2463	1198	1	1
2464	1198	1	2
2465	1199	1	1
2466	1199	1	2
2467	1200	1	1
2468	1200	1	2
2469	1201	1	1
2470	1201	1	2
2471	1202	1	1
2472	1202	1	2
2473	1203	1	1
2474	1203	1	2
2475	1204	1	1
2476	1204	1	2
2477	1205	1	1
2478	1205	1	2
2479	1206	1	1
2480	1206	1	2
2481	1207	1	1
2482	1207	1	2
2483	1208	1	1
2484	1208	1	2
2485	1209	1	1
2486	1209	1	2
2487	1210	1	1
2488	1210	1	2
2489	1211	1	1
2490	1211	1	2
2491	1212	1	1
2492	1212	1	2
2493	1213	1	1
2494	1213	1	2
2495	1214	1	1
2496	1214	1	2
2497	1215	1	1
2498	1215	1	2
2499	1216	1	1
2500	1216	1	2
2501	1217	1	1
2502	1217	1	2
2503	1218	1	1
2504	1218	1	2
2505	1219	1	1
2506	1219	1	2
2507	1220	1	1
2508	1220	1	2
2509	1221	1	1
2510	1221	1	2
2511	1222	1	1
2512	1222	1	2
2513	1222	2	3
2514	1222	2	4
2515	1222	3	5
2516	1222	3	6
2517	1222	4	7
2518	1222	4	8
2519	1222	5	9
2520	1222	5	10
2521	1222	6	11
2522	1222	6	12
2523	1223	1	1
2524	1223	1	2
2525	1224	1	1
2526	1224	1	2
2527	1225	1	1
2528	1225	1	2
2529	1226	1	1
2530	1226	1	2
2531	1227	1	1
2532	1227	1	2
2533	1228	1	1
2534	1228	1	2
2535	1229	1	1
2536	1229	1	2
2537	1230	1	1
2538	1230	1	2
2539	1231	1	1
2540	1231	1	2
2541	1232	1	1
2542	1232	1	2
2543	1233	1	1
2544	1233	1	2
2545	1234	1	1
2546	1234	1	2
2547	1235	1	1
2548	1235	1	2
2549	1236	1	1
2550	1236	1	2
2551	1237	1	1
2552	1237	1	2
2553	1238	1	1
2554	1238	1	2
2555	1239	1	1
2556	1239	1	2
2557	1240	1	1
2558	1240	1	2
2559	1241	1	1
2560	1241	1	2
2561	1242	1	1
2562	1242	1	2
2563	1243	1	1
2564	1243	1	2
2565	1244	1	1
2566	1244	1	2
2567	1245	1	1
2568	1245	1	2
2569	1246	1	1
2570	1246	1	2
2571	1247	1	1
2572	1247	1	2
2573	1248	1	1
2574	1248	1	2
2575	1249	1	1
2576	1249	1	2
2577	1250	1	1
2578	1250	1	2
2579	1251	1	1
2580	1251	1	2
2581	1252	1	1
2582	1252	1	2
2583	1253	1	1
2584	1253	1	2
2585	1254	1	1
2586	1254	1	2
2587	1255	1	1
2588	1255	1	2
2589	1256	1	1
2590	1256	1	2
2591	1257	1	1
2592	1257	1	2
2593	1258	1	1
2594	1258	1	2
2595	1259	1	1
2596	1259	1	2
2597	1260	1	1
2598	1260	1	2
2599	1261	1	1
2600	1261	1	2
2601	1262	1	1
2602	1262	1	2
2603	1263	1	1
2604	1263	1	2
2605	1264	1	1
2606	1264	1	2
2607	1265	1	1
2608	1265	1	2
2609	1266	1	1
2610	1266	1	2
2611	1267	1	1
2612	1267	1	2
2613	1268	1	1
2614	1268	1	2
2615	1269	1	1
2616	1269	1	2
2617	1270	1	1
2618	1270	1	2
2619	1271	1	1
2620	1271	1	2
2621	1272	1	1
2622	1272	1	2
2623	1273	1	1
2624	1273	1	2
2625	1274	1	1
2626	1274	1	2
2627	1275	1	1
2628	1275	1	2
2629	1276	1	1
2630	1276	1	2
2631	1277	1	1
2632	1277	1	2
2633	1278	1	1
2634	1278	1	2
2635	1279	1	1
2636	1279	1	2
2637	1280	1	1
2638	1280	1	2
2639	1281	1	1
2640	1281	1	2
2641	1282	1	1
2642	1282	1	2
2643	1283	1	1
2644	1283	1	2
2645	1284	1	1
2646	1284	1	2
2647	1285	1	1
2648	1285	1	2
2649	1286	1	1
2650	1286	1	2
2651	1287	1	1
2652	1287	1	2
2653	1288	1	1
2654	1288	1	2
2655	1289	1	1
2656	1289	1	2
2657	1290	1	1
2658	1290	1	2
2659	1291	1	1
2660	1291	1	2
2661	1292	1	1
2662	1292	1	2
2663	1293	1	1
2664	1293	1	2
2665	1294	1	1
2666	1294	1	2
2667	1295	1	1
2668	1295	1	2
2669	1296	1	1
2670	1296	1	2
2671	1297	1	1
2672	1297	1	2
2673	1298	1	1
2674	1298	1	2
2675	1299	1	1
2676	1299	1	2
2677	1300	1	1
2678	1300	1	2
2679	1301	1	1
2680	1301	1	2
2681	1302	1	1
2682	1302	1	2
2683	1303	1	1
2684	1303	1	2
2685	1304	1	1
2686	1304	1	2
2687	1305	1	1
2688	1305	1	2
2689	1306	1	1
2690	1306	1	2
2691	1307	1	1
2692	1307	1	2
2693	1308	1	1
2694	1308	1	2
2695	1309	1	1
2696	1309	1	2
2697	1310	1	1
2698	1310	1	2
2699	1311	1	1
2700	1311	1	2
2701	1312	1	1
2702	1312	1	2
2703	1313	1	1
2704	1313	1	2
2705	1314	1	1
2706	1314	1	2
2707	1315	1	1
2708	1315	1	2
2709	1316	1	1
2710	1316	1	2
2711	1317	1	1
2712	1317	1	2
2713	1318	1	1
2714	1318	1	2
2715	1319	1	1
2716	1319	1	2
2717	1320	1	1
2718	1320	1	2
2719	1321	1	1
2720	1321	1	2
2721	1322	1	1
2722	1322	1	2
2723	1323	1	1
2724	1323	1	2
2725	1324	1	1
2726	1324	1	2
2727	1325	1	1
2728	1325	1	2
2729	1326	1	1
2730	1326	1	2
2731	1327	1	1
2732	1327	1	2
2733	1328	1	1
2734	1328	1	2
2735	1329	1	1
2736	1329	1	2
2737	1330	1	1
2738	1330	1	2
2739	1331	1	1
2740	1331	1	2
2741	1332	1	1
2742	1332	1	2
2743	1333	1	1
2744	1333	1	2
2745	1334	1	1
2746	1334	1	2
2747	1335	1	1
2748	1335	1	2
2749	1336	1	1
2750	1336	1	2
2751	1337	1	1
2752	1337	1	2
2753	1338	1	1
2754	1338	1	2
2755	1339	1	1
2756	1339	1	2
2757	1340	1	1
2758	1340	1	2
2759	1341	1	1
2760	1341	1	2
2761	1342	1	1
2762	1342	1	2
2763	1343	1	1
2764	1343	1	2
2765	1344	1	1
2766	1344	1	2
2767	1345	1	1
2768	1345	1	2
2769	1345	2	3
2770	1345	2	4
2771	1345	3	5
2772	1345	3	6
2773	1345	4	7
2774	1345	4	8
2775	1346	1	1
2776	1346	1	2
2777	1347	1	1
2778	1347	1	2
2779	1348	1	1
2780	1348	1	2
2781	1349	1	1
2782	1349	1	2
2783	1350	1	1
2784	1350	1	2
2785	1351	1	1
2786	1351	1	2
2787	1352	1	1
2788	1352	1	2
2789	1353	1	1
2790	1353	1	2
2791	1354	1	1
2792	1354	1	2
2793	1355	1	1
2794	1355	1	2
2795	1356	1	1
2796	1356	1	2
2797	1357	1	1
2798	1357	1	2
2799	1358	1	1
2800	1358	1	2
2801	1359	1	1
2802	1359	1	2
2803	1360	1	1
2804	1360	1	2
2805	1361	1	1
2806	1361	1	2
2807	1362	1	1
2808	1362	1	2
2809	1363	1	1
2810	1363	1	2
2811	1364	1	1
2812	1364	1	2
2813	1365	1	1
2814	1365	1	2
2815	1366	1	1
2816	1366	1	2
2817	1367	1	1
2818	1367	1	2
2819	1368	1	1
2820	1368	1	2
2821	1369	1	1
2822	1369	1	2
2823	1370	1	1
2824	1370	1	2
2825	1371	1	1
2826	1371	1	2
2827	1372	1	1
2828	1372	1	2
2829	1373	1	1
2830	1373	1	2
2831	1374	1	1
2832	1374	1	2
2833	1375	1	1
2834	1375	1	2
2835	1376	1	1
2836	1376	1	2
2837	1377	1	1
2838	1377	1	2
2839	1378	1	1
2840	1378	1	2
2841	1379	1	1
2842	1379	1	2
2843	1380	1	1
2844	1380	1	2
2845	1381	1	1
2846	1381	1	2
2847	1382	1	1
2848	1382	1	2
2849	1383	1	1
2850	1383	1	2
2851	1384	1	1
2852	1384	1	2
2853	1385	1	1
2854	1385	1	2
2855	1386	1	1
2856	1386	1	2
2857	1387	1	1
2858	1387	1	2
2859	1388	1	1
2860	1388	1	2
2861	1389	1	1
2862	1389	1	2
2863	1390	1	1
2864	1390	1	2
2865	1391	1	1
2866	1391	1	2
2867	1392	1	1
2868	1392	1	2
2869	1393	1	1
2870	1393	1	2
2871	1394	1	1
2872	1394	1	2
2873	1395	1	1
2874	1395	1	2
2875	1396	1	1
2876	1396	1	2
2877	1397	1	1
2878	1397	1	2
2879	1398	1	1
2880	1398	1	2
2881	1399	1	1
2882	1399	1	2
2883	1400	1	1
2884	1400	1	2
2885	1401	1	1
2886	1401	1	2
2887	1402	1	1
2888	1402	1	2
2889	1403	1	1
2890	1403	1	2
2891	1404	1	1
2892	1404	1	2
2893	1405	1	1
2894	1405	1	2
2895	1406	1	1
2896	1406	1	2
2897	1407	1	1
2898	1407	1	2
2899	1408	1	1
2900	1408	1	2
2901	1409	1	1
2902	1409	1	2
2903	1410	1	1
2904	1410	1	2
2905	1411	1	1
2906	1411	1	2
2907	1412	1	1
2908	1412	1	2
2909	1413	1	1
2910	1413	1	2
2911	1414	1	1
2912	1414	1	2
2913	1415	1	1
2914	1415	1	2
2915	1416	1	1
2916	1416	1	2
2917	1417	1	1
2918	1417	1	2
2919	1418	1	1
2920	1418	1	2
2921	1419	1	1
2922	1419	1	2
2923	1420	1	1
2924	1420	1	2
2925	1421	1	1
2926	1421	1	2
2927	1422	1	1
2928	1422	1	2
2929	1423	1	1
2930	1423	1	2
2931	1424	1	1
2932	1424	1	2
2933	1425	1	1
2934	1425	1	2
2935	1426	1	1
2936	1426	1	2
2937	1427	1	1
2938	1427	1	2
2939	1428	1	1
2940	1428	1	2
2941	1429	1	1
2942	1429	1	2
2943	1430	1	1
2944	1430	1	2
2945	1431	1	1
2946	1431	1	2
2947	1432	1	1
2948	1432	1	2
2949	1433	1	1
2950	1433	1	2
2951	1434	1	1
2952	1434	1	2
2953	1435	1	1
2954	1435	1	2
2955	1436	1	1
2956	1436	1	2
2957	1437	1	1
2958	1437	1	2
2959	1438	1	1
2960	1438	1	2
2961	1439	1	1
2962	1439	1	2
2963	1440	1	1
2964	1440	1	2
2965	1441	1	1
2966	1441	1	2
2967	1442	1	1
2968	1442	1	2
2969	1443	1	1
2970	1443	1	2
2971	1444	1	1
2972	1444	1	2
2973	1445	1	1
2974	1445	1	2
2975	1446	1	1
2976	1446	1	2
2977	1447	1	1
2978	1447	1	2
2979	1448	1	1
2980	1448	1	2
2981	1449	1	1
2982	1449	1	2
2983	1450	1	1
2984	1450	1	2
2985	1451	1	1
2986	1451	1	2
2987	1452	1	1
2988	1452	1	2
2989	1453	1	1
2990	1453	1	2
2991	1454	1	1
2992	1454	1	2
2993	1455	1	1
2994	1455	1	2
2995	1456	1	1
2996	1456	1	2
2997	1457	1	1
2998	1457	1	2
2999	1458	1	1
3000	1458	1	2
3001	1459	1	1
3002	1459	1	2
3003	1460	1	1
3004	1460	1	2
3005	1461	1	1
3006	1461	1	2
3007	1462	1	1
3008	1462	1	2
3009	1463	1	1
3010	1463	1	2
3011	1464	1	1
3012	1464	1	2
3013	1465	1	1
3014	1465	1	2
3015	1466	1	1
3016	1466	1	2
3017	1467	1	1
3018	1467	1	2
3019	1468	1	1
3020	1468	1	2
3021	1469	1	1
3022	1469	1	2
3023	1470	1	1
3024	1470	1	2
3025	1471	1	1
3026	1471	1	2
3027	1472	1	1
3028	1472	1	2
3029	1473	1	1
3030	1473	1	2
3031	1474	1	1
3032	1474	1	2
3033	1475	1	1
3034	1475	1	2
3035	1476	1	1
3036	1476	1	2
3037	1477	1	1
3038	1477	1	2
3039	1478	1	1
3040	1478	1	2
3041	1479	1	1
3042	1479	1	2
3043	1480	1	1
3044	1480	1	2
3045	1481	1	1
3046	1481	1	2
3047	1482	1	1
3048	1482	1	2
3049	1483	1	1
3050	1483	1	2
3051	1484	1	1
3052	1484	1	2
3053	1485	1	1
3054	1485	1	2
3055	1486	1	1
3056	1486	1	2
3057	1487	1	1
3058	1487	1	2
3059	1488	1	1
3060	1488	1	2
3061	1489	1	1
3062	1489	1	2
3063	1490	1	1
3064	1490	1	2
3065	1491	1	1
3066	1491	1	2
3067	1492	1	1
3068	1492	1	2
3069	1493	1	1
3070	1493	1	2
3071	1494	1	1
3072	1494	1	2
3073	1495	1	1
3074	1495	1	2
3075	1496	1	1
3076	1496	1	2
3077	1497	1	1
3078	1497	1	2
3079	1498	1	1
3080	1498	1	2
3081	1499	1	1
3082	1499	1	2
3083	1500	1	1
3084	1500	1	2
3085	1501	1	1
3086	1501	1	2
3087	1502	1	1
3088	1502	1	2
3089	1503	1	1
3090	1503	1	2
3091	1504	1	1
3092	1504	1	2
3093	1505	1	1
3094	1505	1	2
3095	1506	1	1
3096	1506	1	2
3097	1507	1	1
3098	1507	1	2
3099	1508	1	1
3100	1508	1	2
3101	1509	1	1
3102	1509	1	2
3103	1510	1	1
3104	1510	1	2
3105	1511	1	1
3106	1511	1	2
3107	1512	1	1
3108	1512	1	2
3109	1513	1	1
3110	1513	1	2
3111	1514	1	1
3112	1514	1	2
3113	1515	1	1
3114	1515	1	2
3115	1516	1	1
3116	1516	1	2
3117	1517	1	1
3118	1517	1	2
3119	1518	1	1
3120	1518	1	2
3121	1519	1	1
3122	1519	1	2
3123	1520	1	1
3124	1520	1	2
3125	1521	1	1
3126	1521	1	2
3127	1522	1	1
3128	1522	1	2
3129	1523	1	1
3130	1523	1	2
3131	1524	1	1
3132	1524	1	2
3133	1525	1	1
3134	1525	1	2
3135	1526	1	1
3136	1526	1	2
3137	1527	1	1
3138	1527	1	2
3139	1528	1	1
3140	1528	1	2
3141	1529	1	1
3142	1529	1	2
3143	1530	1	1
3144	1530	1	2
3145	1531	1	1
3146	1531	1	2
3147	1532	1	1
3148	1532	1	2
3149	1533	1	1
3150	1533	1	2
3151	1534	1	1
3152	1534	1	2
3153	1535	1	1
3154	1535	1	2
3155	1536	1	1
3156	1536	1	2
3157	1537	1	1
3158	1537	1	2
3159	1538	1	1
3160	1538	1	2
3161	1539	1	1
3162	1539	1	2
3163	1540	1	1
3164	1540	1	2
3165	1541	1	1
3166	1541	1	2
3167	1542	1	1
3168	1542	1	2
3169	1543	1	1
3170	1543	1	2
3171	1544	1	1
3172	1544	1	2
3173	1545	1	1
3174	1545	1	2
3175	1546	1	1
3176	1546	1	2
3177	1547	1	1
3178	1547	1	2
3179	1548	1	1
3180	1548	1	2
3181	1549	1	1
3182	1549	1	2
3183	1550	1	1
3184	1550	1	2
3185	1551	1	1
3186	1551	1	2
3187	1552	1	1
3188	1552	1	2
3189	1553	1	1
3190	1553	1	2
3191	1554	1	1
3192	1554	1	2
3193	1555	1	1
3194	1555	1	2
3195	1556	1	1
3196	1556	1	2
3197	1557	1	1
3198	1557	1	2
3199	1558	1	1
3200	1558	1	2
3201	1559	1	1
3202	1559	1	2
3203	1560	1	1
3204	1560	1	2
3205	1561	1	1
3206	1561	1	2
3207	1562	1	1
3208	1562	1	2
3209	1563	1	1
3210	1563	1	2
3211	1564	1	1
3212	1564	1	2
3213	1565	1	1
3214	1565	1	2
3215	1566	1	1
3216	1566	1	2
3217	1567	1	1
3218	1567	1	2
3219	1568	1	1
3220	1568	1	2
3221	1569	1	1
3222	1569	1	2
3223	1570	1	1
3224	1570	1	2
3225	1571	1	1
3226	1571	1	2
3227	1572	1	1
3228	1572	1	2
3229	1573	1	1
3230	1573	1	2
3231	1574	1	1
3232	1574	1	2
3233	1575	1	1
3234	1575	1	2
3235	1576	1	1
3236	1576	1	2
3237	1577	1	1
3238	1577	1	2
3239	1578	1	1
3240	1578	1	2
3241	1579	1	1
3242	1579	1	2
3243	1580	1	1
3244	1580	1	2
3245	1581	1	1
3246	1581	1	2
3247	1582	1	1
3248	1582	1	2
3249	1583	1	1
3250	1583	1	2
3251	1584	1	1
3252	1584	1	2
3253	1585	1	1
3254	1585	1	2
3255	1586	1	1
3256	1586	1	2
3257	1587	1	1
3258	1587	1	2
3259	1588	1	1
3260	1588	1	2
3261	1589	1	1
3262	1589	1	2
3263	1590	1	1
3264	1590	1	2
3265	1591	1	1
3266	1591	1	2
3267	1592	1	1
3268	1592	1	2
3269	1593	1	1
3270	1593	1	2
3271	1594	1	1
3272	1594	1	2
3273	1595	1	1
3274	1595	1	2
3275	1596	1	1
3276	1596	1	2
3277	1597	1	1
3278	1597	1	2
3279	1598	1	1
3280	1598	1	2
3281	1599	1	1
3282	1599	1	2
3283	1600	1	1
3284	1600	1	2
3285	1601	1	1
3286	1601	1	2
3287	1602	1	1
3288	1602	1	2
3289	1603	1	1
3290	1603	1	2
3291	1604	1	1
3292	1604	1	2
3293	1605	1	1
3294	1605	1	2
3295	1606	1	1
3296	1606	1	2
3297	1607	1	1
3298	1607	1	2
3299	1608	1	1
3300	1608	1	2
3301	1609	1	1
3302	1609	1	2
3303	1610	1	1
3304	1610	1	2
3305	1611	1	1
3306	1611	1	2
3307	1612	1	1
3308	1612	1	2
3309	1613	1	1
3310	1613	1	2
3311	1614	1	1
3312	1614	1	2
3313	1615	1	1
3314	1615	1	2
3315	1616	1	1
3316	1616	1	2
3317	1617	1	1
3318	1617	1	2
3319	1618	1	1
3320	1618	1	2
3321	1619	1	1
3322	1619	1	2
3323	1620	1	1
3324	1620	1	2
3325	1621	1	1
3326	1621	1	2
3327	1622	1	1
3328	1622	1	2
3329	1623	1	1
3330	1623	1	2
3331	1624	1	1
3332	1624	1	2
3333	1625	1	1
3334	1625	1	2
3335	1626	1	1
3336	1626	1	2
3337	1627	1	1
3338	1627	1	2
3339	1628	1	1
3340	1628	1	2
3341	1629	1	1
3342	1629	1	2
3343	1630	1	1
3344	1630	1	2
3345	1631	1	1
3346	1631	1	2
3347	1632	1	1
3348	1632	1	2
3349	1633	1	1
3350	1633	1	2
3351	1634	1	1
3352	1634	1	2
3353	1635	1	1
3354	1635	1	2
3355	1636	1	1
3356	1636	1	2
3357	1637	1	1
3358	1637	1	2
3359	1638	1	1
3360	1638	1	2
3361	1639	1	1
3362	1639	1	2
3363	1640	1	1
3364	1640	1	2
3365	1641	1	1
3366	1641	1	2
3367	1642	1	1
3368	1642	1	2
3369	1643	1	1
3370	1643	1	2
3371	1644	1	1
3372	1644	1	2
3373	1645	1	1
3374	1645	1	2
3375	1646	1	1
3376	1646	1	2
3377	1647	1	1
3378	1647	1	2
3379	1648	1	1
3380	1648	1	2
3381	1649	1	1
3382	1649	1	2
3383	1650	1	1
3384	1650	1	2
3385	1651	1	1
3386	1651	1	2
3387	1652	1	1
3388	1652	1	2
3389	1653	1	1
3390	1653	1	2
3391	1654	1	1
3392	1654	1	2
3393	1655	1	1
3394	1655	1	2
3395	1656	1	1
3396	1656	1	2
3397	1657	1	1
3398	1657	1	2
3399	1658	1	1
3400	1658	1	2
3401	1659	1	1
3402	1659	1	2
3403	1660	1	1
3404	1660	1	2
3405	1661	1	1
3406	1661	1	2
3407	1662	1	1
3408	1662	1	2
3409	1663	1	1
3410	1663	1	2
3411	1664	1	1
3412	1664	1	2
3413	1665	1	1
3414	1665	1	2
3415	1666	1	1
3416	1666	1	2
3417	1667	1	1
3418	1667	1	2
3419	1668	1	1
3420	1668	1	2
3421	1669	1	1
3422	1669	1	2
3423	1670	1	1
3424	1670	1	2
3425	1671	1	1
3426	1671	1	2
3427	1672	1	1
3428	1672	1	2
3429	1673	1	1
3430	1673	1	2
3431	1674	1	1
3432	1674	1	2
3433	1675	1	1
3434	1675	1	2
3435	1676	1	1
3436	1676	1	2
3437	1677	1	1
3438	1677	1	2
3439	1678	1	1
3440	1678	1	2
3441	1679	1	1
3442	1679	1	2
3443	1680	1	1
3444	1680	1	2
3445	1681	1	1
3446	1681	1	2
3447	1682	1	1
3448	1682	1	2
3449	1683	1	1
3450	1683	1	2
3451	1684	1	1
3452	1684	1	2
3453	1685	1	1
3454	1685	1	2
3455	1686	1	1
3456	1686	1	2
3457	1687	1	1
3458	1687	1	2
3459	1688	1	1
3460	1688	1	2
3461	1689	1	1
3462	1689	1	2
3463	1690	1	1
3464	1690	1	2
3465	1691	1	1
3466	1691	1	2
3467	1692	1	1
3468	1692	1	2
3469	1693	1	1
3470	1693	1	2
3471	1694	1	1
3472	1694	1	2
3473	1695	1	1
3474	1695	1	2
3475	1696	1	1
3476	1696	1	2
3477	1697	1	1
3478	1697	1	2
3479	1698	1	1
3480	1698	1	2
3481	1699	1	1
3482	1699	1	2
3483	1700	1	1
3484	1700	1	2
3485	1701	1	1
3486	1701	1	2
3487	1702	1	1
3488	1702	1	2
3489	1703	1	1
3490	1703	1	2
3491	1704	1	1
3492	1704	1	2
3493	1705	1	1
3494	1705	1	2
3495	1706	1	1
3496	1706	1	2
3497	1707	1	1
3498	1707	1	2
3499	1708	1	1
3500	1708	1	2
3501	1709	1	1
3502	1709	1	2
3503	1710	1	1
3504	1710	1	2
3505	1711	1	1
3506	1711	1	2
3507	1712	1	1
3508	1712	1	2
3509	1713	1	1
3510	1713	1	2
3511	1714	1	1
3512	1714	1	2
3513	1715	1	1
3514	1715	1	2
3515	1716	1	1
3516	1716	1	2
3517	1717	1	1
3518	1717	1	2
3519	1718	1	1
3520	1718	1	2
3521	1719	1	1
3522	1719	1	2
3523	1720	1	1
3524	1720	1	2
3525	1721	1	1
3526	1721	1	2
3527	1722	1	1
3528	1722	1	2
3529	1723	1	1
3530	1723	1	2
3531	1724	1	1
3532	1724	1	2
3533	1725	1	1
3534	1725	1	2
3535	1726	1	1
3536	1726	1	2
3537	1727	1	1
3538	1727	1	2
3539	1728	1	1
3540	1728	1	2
3541	1729	1	1
3542	1729	1	2
3543	1730	1	1
3544	1730	1	2
3545	1731	1	1
3546	1731	1	2
3547	1732	1	1
3548	1732	1	2
3549	1733	1	1
3550	1733	1	2
3551	1734	1	1
3552	1734	1	2
3553	1735	1	1
3554	1735	1	2
3555	1736	1	1
3556	1736	1	2
3557	1737	1	1
3558	1737	1	2
3559	1738	1	1
3560	1738	1	2
3561	1739	1	1
3562	1739	1	2
3563	1740	1	1
3564	1740	1	2
3565	1741	1	1
3566	1741	1	2
3567	1742	1	1
3568	1742	1	2
3569	1743	1	1
3570	1743	1	2
3571	1744	1	1
3572	1744	1	2
3573	1745	1	1
3574	1745	1	2
3575	1746	1	1
3576	1746	1	2
3577	1747	1	1
3578	1747	1	2
3579	1748	1	1
3580	1748	1	2
3581	1749	1	1
3582	1749	1	2
3583	1750	1	1
3584	1750	1	2
3585	1751	1	1
3586	1751	1	2
3587	1752	1	1
3588	1752	1	2
3589	1753	1	1
3590	1753	1	2
3591	1754	1	1
3592	1754	1	2
3593	1755	1	1
3594	1755	1	2
3595	1756	1	1
3596	1756	1	2
3597	1757	1	1
3598	1757	1	2
3599	1758	1	1
3600	1758	1	2
3601	1759	1	1
3602	1759	1	2
3603	1760	1	1
3604	1760	1	2
3605	1761	1	1
3606	1761	1	2
3607	1762	1	1
3608	1762	1	2
3609	1763	1	1
3610	1763	1	2
3611	1763	2	3
3612	1763	2	4
3613	1763	3	5
3614	1763	3	6
3615	1763	4	7
3616	1763	4	8
3617	1764	1	1
3618	1764	1	2
3619	1765	1	1
3620	1765	1	2
3621	1766	1	1
3622	1766	1	2
3623	1767	1	1
3624	1767	1	2
3625	1768	1	1
3626	1768	1	2
3627	1769	1	1
3628	1769	1	2
3629	1770	1	1
3630	1770	1	2
3631	1771	1	1
3632	1771	1	2
3633	1772	1	1
3634	1772	1	2
3635	1773	1	1
3636	1773	1	2
3637	1774	1	1
3638	1774	1	2
3639	1775	1	1
3640	1775	1	2
3641	1776	1	1
3642	1776	1	2
3643	1777	1	1
3644	1777	1	2
3645	1778	1	1
3646	1778	1	2
3647	1779	1	1
3648	1779	1	2
3649	1780	1	1
3650	1780	1	2
3651	1781	1	1
3652	1781	1	2
3653	1782	1	1
3654	1782	1	2
3655	1783	1	1
3656	1783	1	2
3657	1784	1	1
3658	1784	1	2
3659	1785	1	1
3660	1785	1	2
3661	1786	1	1
3662	1786	1	2
3663	1787	1	1
3664	1787	1	2
3665	1788	1	1
3666	1788	1	2
3667	1789	1	1
3668	1789	1	2
3669	1790	1	1
3670	1790	1	2
3671	1791	1	1
3672	1791	1	2
3673	1792	1	1
3674	1792	1	2
3675	1793	1	1
3676	1793	1	2
3677	1794	1	1
3678	1794	1	2
3679	1795	1	1
3680	1795	1	2
3681	1796	1	1
3682	1796	1	2
3683	1797	1	1
3684	1797	1	2
3685	1798	1	1
3686	1798	1	2
3687	1799	1	1
3688	1799	1	2
3689	1800	1	1
3690	1800	1	2
3691	1801	1	1
3692	1801	1	2
3693	1802	1	1
3694	1802	1	2
3695	1803	1	1
3696	1803	1	2
3697	1804	1	1
3698	1804	1	2
3699	1805	1	1
3700	1805	1	2
3701	1806	1	1
3702	1806	1	2
3703	1807	1	1
3704	1807	1	2
3705	1808	1	1
3706	1808	1	2
3707	1809	1	1
3708	1809	1	2
3709	1810	1	1
3710	1810	1	2
3711	1811	1	1
3712	1811	1	2
3713	1812	1	1
3714	1812	1	2
3715	1813	1	1
3716	1813	1	2
3717	1814	1	1
3718	1814	1	2
3719	1815	1	1
3720	1815	1	2
3721	1816	1	1
3722	1816	1	2
3723	1817	1	1
3724	1817	1	2
3725	1818	1	1
3726	1818	1	2
3727	1819	1	1
3728	1819	1	2
3729	1820	1	1
3730	1820	1	2
3731	1821	1	1
3732	1821	1	2
3733	1822	1	1
3734	1822	1	2
3735	1823	1	1
3736	1823	1	2
3737	1824	1	1
3738	1824	1	2
3739	1825	1	1
3740	1825	1	2
3741	1826	1	1
3742	1826	1	2
3743	1827	1	1
3744	1827	1	2
3745	1828	1	1
3746	1828	1	2
3747	1829	1	1
3748	1829	1	2
3749	1830	1	1
3750	1830	1	2
3751	1831	1	1
3752	1831	1	2
3753	1832	1	1
3754	1832	1	2
3755	1833	1	1
3756	1833	1	2
3757	1834	1	1
3758	1834	1	2
3759	1835	1	1
3760	1835	1	2
3761	1836	1	1
3762	1836	1	2
3763	1837	1	1
3764	1837	1	2
3765	1838	1	1
3766	1838	1	2
3767	1839	1	1
3768	1839	1	2
3769	1840	1	1
3770	1840	1	2
3771	1841	1	1
3772	1841	1	2
3773	1842	1	1
3774	1842	1	2
3775	1843	1	1
3776	1843	1	2
3777	1844	1	1
3778	1844	1	2
3779	1845	1	1
3780	1845	1	2
3781	1846	1	1
3782	1846	1	2
3783	1847	1	1
3784	1847	1	2
3785	1848	1	1
3786	1848	1	2
3787	1849	1	1
3788	1849	1	2
3789	1850	1	1
3790	1850	1	2
3791	1850	2	3
3792	1850	2	4
3793	1850	3	5
3794	1850	3	6
3795	1851	1	1
3796	1851	1	2
3797	1852	1	1
3798	1852	1	2
3799	1853	1	1
3800	1853	1	2
3801	1854	1	1
3802	1854	1	2
3803	1855	1	1
3804	1855	1	2
3805	1856	1	1
3806	1856	1	2
3807	1857	1	1
3808	1857	1	2
3809	1858	1	1
3810	1858	1	2
3811	1859	1	1
3812	1859	1	2
3813	1860	1	1
3814	1860	1	2
3815	1861	1	1
3816	1861	1	2
3817	1862	1	1
3818	1862	1	2
3819	1863	1	1
3820	1863	1	2
3821	1864	1	1
3822	1864	1	2
3823	1865	1	1
3824	1865	1	2
3825	1866	1	1
3826	1866	1	2
3827	1867	1	1
3828	1867	1	2
3829	1868	1	1
3830	1868	1	2
3831	1869	1	1
3832	1869	1	2
3833	1870	1	1
3834	1870	1	2
3835	1871	1	1
3836	1871	1	2
3837	1872	1	1
3838	1872	1	2
3839	1873	1	1
3840	1873	1	2
3841	1874	1	1
3842	1874	1	2
3843	1875	1	1
3844	1875	1	2
3845	1876	1	1
3846	1876	1	2
3847	1877	1	1
3848	1877	1	2
3849	1878	1	1
3850	1878	1	2
3851	1879	1	1
3852	1879	1	2
3853	1880	1	1
3854	1880	1	2
3855	1881	1	1
3856	1881	1	2
3857	1882	1	1
3858	1882	1	2
3859	1883	1	1
3860	1883	1	2
3861	1884	1	1
3862	1884	1	2
3863	1885	1	1
3864	1885	1	2
3865	1886	1	1
3866	1886	1	2
3867	1887	1	1
3868	1887	1	2
3869	1888	1	1
3870	1888	1	2
3871	1889	1	1
3872	1889	1	2
3873	1890	1	1
3874	1890	1	2
3875	1891	1	1
3876	1891	1	2
3877	1892	1	1
3878	1892	1	2
3879	1893	1	1
3880	1893	1	2
3881	1894	1	1
3882	1894	1	2
3883	1895	1	1
3884	1895	1	2
3885	1896	1	1
3886	1896	1	2
3887	1897	1	1
3888	1897	1	2
3889	1898	1	1
3890	1898	1	2
3891	1899	1	1
3892	1899	1	2
3893	1900	1	1
3894	1900	1	2
3895	1901	1	1
3896	1901	1	2
3897	1902	1	1
3898	1902	1	2
3899	1903	1	1
3900	1903	1	2
3901	1904	1	1
3902	1904	1	2
3903	1905	1	1
3904	1905	1	2
3905	1906	1	1
3906	1906	1	2
3907	1907	1	1
3908	1907	1	2
3909	1908	1	1
3910	1908	1	2
3911	1909	1	1
3912	1909	1	2
3913	1910	1	1
3914	1910	1	2
3915	1911	1	1
3916	1911	1	2
3917	1912	1	1
3918	1912	1	2
3919	1913	1	1
3920	1913	1	2
3921	1914	1	1
3922	1914	1	2
3923	1915	1	1
3924	1915	1	2
3925	1916	1	1
3926	1916	1	2
3927	1917	1	1
3928	1917	1	2
3929	1918	1	1
3930	1918	1	2
3931	1919	1	1
3932	1919	1	2
3933	1920	1	1
3934	1920	1	2
3935	1921	1	1
3936	1921	1	2
3937	1922	1	1
3938	1922	1	2
3939	1923	1	1
3940	1923	1	2
3941	1924	1	1
3942	1924	1	2
3943	1925	1	1
3944	1925	1	2
3945	1926	1	1
3946	1926	1	2
3947	1927	1	1
3948	1927	1	2
3949	1928	1	1
3950	1928	1	2
3951	1929	1	1
3952	1929	1	2
3953	1930	1	1
3954	1930	1	2
3955	1931	1	1
3956	1931	1	2
3957	1932	1	1
3958	1932	1	2
3959	1933	1	1
3960	1933	1	2
3961	1934	1	1
3962	1934	1	2
3963	1935	1	1
3964	1935	1	2
3965	1936	1	1
3966	1936	1	2
3967	1937	1	1
3968	1937	1	2
3969	1938	1	1
3970	1938	1	2
3971	1939	1	1
3972	1939	1	2
3973	1940	1	1
3974	1940	1	2
3975	1941	1	1
3976	1941	1	2
3977	1942	1	1
3978	1942	1	2
3979	1943	1	1
3980	1943	1	2
3981	1944	1	1
3982	1944	1	2
3983	1945	1	1
3984	1945	1	2
3985	1946	1	1
3986	1946	1	2
3987	1947	1	1
3988	1947	1	2
3989	1948	1	1
3990	1948	1	2
3991	1949	1	1
3992	1949	1	2
3993	1950	1	1
3994	1950	1	2
3995	1951	1	1
3996	1951	1	2
3997	1952	1	1
3998	1952	1	2
3999	1953	1	1
4000	1953	1	2
4001	1954	1	1
4002	1954	1	2
4003	1955	1	1
4004	1955	1	2
4005	1956	1	1
4006	1956	1	2
4007	1957	1	1
4008	1957	1	2
4009	1958	1	1
4010	1958	1	2
4011	1959	1	1
4012	1959	1	2
4013	1959	2	3
4014	1959	2	4
4015	1959	3	5
4016	1959	3	6
4017	1960	1	1
4018	1960	1	2
4019	1961	1	1
4020	1961	1	2
4021	1962	1	1
4022	1962	1	2
4023	1963	1	1
4024	1963	1	2
4025	1964	1	1
4026	1964	1	2
4027	1965	1	1
4028	1965	1	2
4029	1966	1	1
4030	1966	1	2
4031	1967	1	1
4032	1967	1	2
4033	1968	1	1
4034	1968	1	2
4035	1969	1	1
4036	1969	1	2
4037	1970	1	1
4038	1970	1	2
4039	1971	1	1
4040	1971	1	2
4041	1972	1	1
4042	1972	1	2
4043	1973	1	1
4044	1973	1	2
4045	1974	1	1
4046	1974	1	2
4047	1975	1	1
4048	1975	1	2
4049	1976	1	1
4050	1976	1	2
4051	1977	1	1
4052	1977	1	2
4053	1978	1	1
4054	1978	1	2
4055	1979	1	1
4056	1979	1	2
4057	1980	1	1
4058	1980	1	2
4059	1981	1	1
4060	1981	1	2
4061	1982	1	1
4062	1982	1	2
4063	1983	1	1
4064	1983	1	2
4065	1984	1	1
4066	1984	1	2
4067	1985	1	1
4068	1985	1	2
4069	1986	1	1
4070	1986	1	2
4071	1987	1	1
4072	1987	1	2
4073	1988	1	1
4074	1988	1	2
4075	1989	1	1
4076	1989	1	2
4077	1990	1	1
4078	1990	1	2
4079	1991	1	1
4080	1991	1	2
4081	1992	1	1
4082	1992	1	2
4083	1993	1	1
4084	1993	1	2
4085	1994	1	1
4086	1994	1	2
4087	1995	1	1
4088	1995	1	2
4089	1996	1	1
4090	1996	1	2
4091	1997	1	1
4092	1997	1	2
4093	1998	1	1
4094	1998	1	2
4095	1999	1	1
4096	1999	1	2
4097	2000	1	1
4098	2000	1	2
4099	2001	1	1
4100	2001	1	2
4101	2002	1	1
4102	2002	1	2
4103	2003	1	1
4104	2003	1	2
4105	2004	1	1
4106	2004	1	2
4107	2005	1	1
4108	2005	1	2
4109	2006	1	1
4110	2006	1	2
4111	2007	1	1
4112	2007	1	2
4113	2008	1	1
4114	2008	1	2
4115	2009	1	1
4116	2009	1	2
4117	2010	1	1
4118	2010	1	2
4119	2011	1	1
4120	2011	1	2
4121	2012	1	1
4122	2012	1	2
4123	2013	1	1
4124	2013	1	2
4125	2014	1	1
4126	2014	1	2
4127	2015	1	1
4128	2015	1	2
4129	2016	1	1
4130	2016	1	2
4131	2017	1	1
4132	2017	1	2
4133	2018	1	1
4134	2018	1	2
4135	2019	1	1
4136	2019	1	2
4137	2020	1	1
4138	2020	1	2
4139	2021	1	1
4140	2021	1	2
4141	2022	1	1
4142	2022	1	2
4143	2023	1	1
4144	2023	1	2
4145	2024	1	1
4146	2024	1	2
4147	2025	1	1
4148	2025	1	2
4149	2026	1	1
4150	2026	1	2
4151	2027	1	1
4152	2027	1	2
4153	2028	1	1
4154	2028	1	2
4155	2029	1	1
4156	2029	1	2
4157	2030	1	1
4158	2030	1	2
4159	2031	1	1
4160	2031	1	2
4161	2032	1	1
4162	2032	1	2
4163	2033	1	1
4164	2033	1	2
4165	2034	1	1
4166	2034	1	2
4167	2035	1	1
4168	2035	1	2
4169	2036	1	1
4170	2036	1	2
4171	2037	1	1
4172	2037	1	2
4173	2038	1	1
4174	2038	1	2
4175	2039	1	1
4176	2039	1	2
4177	2040	1	1
4178	2040	1	2
4179	2041	1	1
4180	2041	1	2
4181	2042	1	1
4182	2042	1	2
4183	2043	1	1
4184	2043	1	2
4185	2044	1	1
4186	2044	1	2
4187	2045	1	1
4188	2045	1	2
4189	2046	1	1
4190	2046	1	2
4191	2047	1	1
4192	2047	1	2
4193	2048	1	1
4194	2048	1	2
4195	2049	1	1
4196	2049	1	2
4197	2050	1	1
4198	2050	1	2
4199	2051	1	1
4200	2051	1	2
4201	2052	1	1
4202	2052	1	2
4203	2053	1	1
4204	2053	1	2
4205	2054	1	1
4206	2054	1	2
4207	2055	1	1
4208	2055	1	2
4209	2056	1	1
4210	2056	1	2
4211	2057	1	1
4212	2057	1	2
4213	2058	1	1
4214	2058	1	2
4215	2059	1	1
4216	2059	1	2
4217	2060	1	1
4218	2060	1	2
4219	2061	1	1
4220	2061	1	2
4221	2062	1	1
4222	2062	1	2
4223	2063	1	1
4224	2063	1	2
4225	2064	1	1
4226	2064	1	2
4227	2065	1	1
4228	2065	1	2
4229	2066	1	1
4230	2066	1	2
4231	2067	1	1
4232	2067	1	2
4233	2068	1	1
4234	2068	1	2
4235	2069	1	1
4236	2069	1	2
4237	2070	1	1
4238	2070	1	2
4239	2071	1	1
4240	2071	1	2
4241	2072	1	1
4242	2072	1	2
4243	2073	1	1
4244	2073	1	2
4245	2074	1	1
4246	2074	1	2
4247	2075	1	1
4248	2075	1	2
4249	2076	1	1
4250	2076	1	2
4251	2077	1	1
4252	2077	1	2
4253	2078	1	1
4254	2078	1	2
4255	2079	1	1
4256	2079	1	2
4257	2080	1	1
4258	2080	1	2
4259	2081	1	1
4260	2081	1	2
4261	2082	1	1
4262	2082	1	2
4263	2083	1	1
4264	2083	1	2
4265	2084	1	1
4266	2084	1	2
4267	2085	1	1
4268	2085	1	2
4269	2086	1	1
4270	2086	1	2
4271	2087	1	1
4272	2087	1	2
4273	2088	1	1
4274	2088	1	2
4275	2089	1	1
4276	2089	1	2
4277	2090	1	1
4278	2090	1	2
4279	2091	1	1
4280	2091	1	2
4281	2092	1	1
4282	2092	1	2
4283	2093	1	1
4284	2093	1	2
4285	2094	1	1
4286	2094	1	2
4287	2095	1	1
4288	2095	1	2
4289	2096	1	1
4290	2096	1	2
4291	2097	1	1
4292	2097	1	2
4293	2098	1	1
4294	2098	1	2
4295	2099	1	1
4296	2099	1	2
4297	2100	1	1
4298	2100	1	2
4299	2101	1	1
4300	2101	1	2
4301	2102	1	1
4302	2102	1	2
4303	2103	1	1
4304	2103	1	2
4305	2104	1	1
4306	2104	1	2
4307	2105	1	1
4308	2105	1	2
4309	2106	1	1
4310	2106	1	2
4311	2107	1	1
4312	2107	1	2
4313	2108	1	1
4314	2108	1	2
4315	2109	1	1
4316	2109	1	2
4317	2110	1	1
4318	2110	1	2
4319	2111	1	1
4320	2111	1	2
4321	2112	1	1
4322	2112	1	2
4323	2113	1	1
4324	2113	1	2
4325	2114	1	1
4326	2114	1	2
4327	2115	1	1
4328	2115	1	2
4329	2116	1	1
4330	2116	1	2
4331	2117	1	1
4332	2117	1	2
4333	2118	1	1
4334	2118	1	2
4335	2119	1	1
4336	2119	1	2
4337	2120	1	1
4338	2120	1	2
4339	2121	1	1
4340	2121	1	2
4341	2122	1	1
4342	2122	1	2
4343	2123	1	1
4344	2123	1	2
4345	2124	1	1
4346	2124	1	2
4347	2125	1	1
4348	2125	1	2
4349	2126	1	1
4350	2126	1	2
4351	2127	1	1
4352	2127	1	2
4353	2128	1	1
4354	2128	1	2
4355	2129	1	1
4356	2129	1	2
4357	2130	1	1
4358	2130	1	2
4359	2131	1	1
4360	2131	1	2
4361	2132	1	1
4362	2132	1	2
4363	2133	1	1
4364	2133	1	2
4365	2134	1	1
4366	2134	1	2
4367	2135	1	1
4368	2135	1	2
4369	2136	1	1
4370	2136	1	2
4371	2137	1	1
4372	2137	1	2
4373	2138	1	1
4374	2138	1	2
4375	2139	1	1
4376	2139	1	2
4377	2140	1	1
4378	2140	1	2
4379	2141	1	1
4380	2141	1	2
4381	2142	1	1
4382	2142	1	2
4383	2143	1	1
4384	2143	1	2
4385	2144	1	1
4386	2144	1	2
4387	2145	1	1
4388	2145	1	2
4389	2146	1	1
4390	2146	1	2
4391	2147	1	1
4392	2147	1	2
4393	2148	1	1
4394	2148	1	2
4395	2149	1	1
4396	2149	1	2
4397	2150	1	1
4398	2150	1	2
4399	2151	1	1
4400	2151	1	2
4401	2152	1	1
4402	2152	1	2
4403	2153	1	1
4404	2153	1	2
4405	2154	1	1
4406	2154	1	2
4407	2155	1	1
4408	2155	1	2
4409	2156	1	1
4410	2156	1	2
4411	2157	1	1
4412	2157	1	2
4413	2158	1	1
4414	2158	1	2
4415	2159	1	1
4416	2159	1	2
4417	2160	1	1
4418	2160	1	2
4419	2161	1	1
4420	2161	1	2
4421	2162	1	1
4422	2162	1	2
4423	2163	1	1
4424	2163	1	2
4425	2164	1	1
4426	2164	1	2
4427	2165	1	1
4428	2165	1	2
4429	2166	1	1
4430	2166	1	2
4431	2167	1	1
4432	2167	1	2
4433	2168	1	1
4434	2168	1	2
4435	2169	1	1
4436	2169	1	2
4437	2170	1	1
4438	2170	1	2
4439	2171	1	1
4440	2171	1	2
4441	2172	1	1
4442	2172	1	2
4443	2173	1	1
4444	2173	1	2
4445	2174	1	1
4446	2174	1	2
4447	2175	1	1
4448	2175	1	2
4449	2176	1	1
4450	2176	1	2
4451	2177	1	1
4452	2177	1	2
4453	2178	1	1
4454	2178	1	2
4455	2179	1	1
4456	2179	1	2
4457	2180	1	1
4458	2180	1	2
4459	2181	1	1
4460	2181	1	2
4461	2182	1	1
4462	2182	1	2
4463	2183	1	1
4464	2183	1	2
4465	2184	1	1
4466	2184	1	2
4467	2185	1	1
4468	2185	1	2
4469	2186	1	1
4470	2186	1	2
4471	2187	1	1
4472	2187	1	2
4473	2188	1	1
4474	2188	1	2
4475	2189	1	1
4476	2189	1	2
4477	2190	1	1
4478	2190	1	2
4479	2191	1	1
4480	2191	1	2
4481	2192	1	1
4482	2192	1	2
4483	2193	1	1
4484	2193	1	2
4485	2194	1	1
4486	2194	1	2
4487	2195	1	1
4488	2195	1	2
4489	2196	1	1
4490	2196	1	2
4491	2197	1	1
4492	2197	1	2
4493	2198	1	1
4494	2198	1	2
4495	2199	1	1
4496	2199	1	2
4497	2200	1	1
4498	2200	1	2
4499	2201	1	1
4500	2201	1	2
4501	2202	1	1
4502	2202	1	2
4503	2203	1	1
4504	2203	1	2
4505	2204	1	1
4506	2204	1	2
4507	2205	1	1
4508	2205	1	2
4509	2206	1	1
4510	2206	1	2
4511	2207	1	1
4512	2207	1	2
4513	2208	1	1
4514	2208	1	2
4515	2209	1	1
4516	2209	1	2
4517	2210	1	1
4518	2210	1	2
4519	2211	1	1
4520	2211	1	2
4521	2212	1	1
4522	2212	1	2
4523	2213	1	1
4524	2213	1	2
4525	2214	1	1
4526	2214	1	2
4527	2215	1	1
4528	2215	1	2
4529	2216	1	1
4530	2216	1	2
4531	2217	1	1
4532	2217	1	2
4533	2218	1	1
4534	2218	1	2
4535	2219	1	1
4536	2219	1	2
4537	2220	1	1
4538	2220	1	2
4539	2221	1	1
4540	2221	1	2
4541	2222	1	1
4542	2222	1	2
4543	2223	1	1
4544	2223	1	2
4545	2224	1	1
4546	2224	1	2
4547	2225	1	1
4548	2225	1	2
4549	2226	1	1
4550	2226	1	2
4551	2227	1	1
4552	2227	1	2
4553	2228	1	1
4554	2228	1	2
4555	2229	1	1
4556	2229	1	2
4557	2230	1	1
4558	2230	1	2
4559	2231	1	1
4560	2231	1	2
4561	2232	1	1
4562	2232	1	2
4563	2233	1	1
4564	2233	1	2
4565	2234	1	1
4566	2234	1	2
4567	2235	1	1
4568	2235	1	2
4569	2236	1	1
4570	2236	1	2
4571	2237	1	1
4572	2237	1	2
4573	2238	1	1
4574	2238	1	2
4575	2239	1	1
4576	2239	1	2
4577	2240	1	1
4578	2240	1	2
4579	2241	1	1
4580	2241	1	2
4581	2242	1	1
4582	2242	1	2
4583	2242	2	3
4584	2242	2	4
4585	2242	3	5
4586	2242	3	6
4587	2242	4	7
4588	2242	4	8
4589	2242	5	9
4590	2242	5	10
4591	2243	1	1
4592	2243	1	2
4593	2244	1	1
4594	2244	1	2
4595	2245	1	1
4596	2245	1	2
4597	2246	1	1
4598	2246	1	2
4599	2247	1	1
4600	2247	1	2
4601	2248	1	1
4602	2248	1	2
4603	2249	1	1
4604	2249	1	2
4605	2250	1	1
4606	2250	1	2
4607	2251	1	1
4608	2251	1	2
4609	2252	1	1
4610	2252	1	2
4611	2253	1	1
4612	2253	1	2
4613	2254	1	1
4614	2254	1	2
4615	2255	1	1
4616	2255	1	2
4617	2256	1	1
4618	2256	1	2
4619	2257	1	1
4620	2257	1	2
4621	2258	1	1
4622	2258	1	2
4623	2259	1	1
4624	2259	1	2
4625	2260	1	1
4626	2260	1	2
4627	2261	1	1
4628	2261	1	2
4629	2262	1	1
4630	2262	1	2
4631	2263	1	1
4632	2263	1	2
4633	2264	1	1
4634	2264	1	2
4635	2265	1	1
4636	2265	1	2
4637	2266	1	1
4638	2266	1	2
4639	2267	1	1
4640	2267	1	2
4641	2268	1	1
4642	2268	1	2
4643	2269	1	1
4644	2269	1	2
4645	2270	1	1
4646	2270	1	2
4647	2271	1	1
4648	2271	1	2
4649	2272	1	1
4650	2272	1	2
4651	2273	1	1
4652	2273	1	2
4653	2274	1	1
4654	2274	1	2
4655	2275	1	1
4656	2275	1	2
4657	2276	1	1
4658	2276	1	2
4659	2277	1	1
4660	2277	1	2
4661	2278	1	1
4662	2278	1	2
4663	2279	1	1
4664	2279	1	2
4665	2280	1	1
4666	2280	1	2
4667	2281	1	1
4668	2281	1	2
4669	2282	1	1
4670	2282	1	2
4671	2283	1	1
4672	2283	1	2
4673	2284	1	1
4674	2284	1	2
4675	2285	1	1
4676	2285	1	2
4677	2286	1	1
4678	2286	1	2
4679	2287	1	1
4680	2287	1	2
4681	2287	2	3
4682	2287	2	4
4683	2287	3	5
4684	2287	3	6
4685	2287	4	7
4686	2287	4	8
4687	2287	5	9
4688	2287	5	10
4689	2287	6	11
4690	2287	6	12
4691	2288	1	1
4692	2288	1	2
4693	2289	1	1
4694	2289	1	2
4695	2290	1	1
4696	2290	1	2
4697	2291	1	1
4698	2291	1	2
4699	2292	1	1
4700	2292	1	2
4701	2293	1	1
4702	2293	1	2
4703	2294	1	1
4704	2294	1	2
4705	2295	1	1
4706	2295	1	2
4707	2296	1	1
4708	2296	1	2
4709	2297	1	1
4710	2297	1	2
4711	2298	1	1
4712	2298	1	2
4713	2299	1	1
4714	2299	1	2
4715	2300	1	1
4716	2300	1	2
4717	2301	1	1
4718	2301	1	2
4719	2302	1	1
4720	2302	1	2
4721	2303	1	1
4722	2303	1	2
4723	2304	1	1
4724	2304	1	2
4725	2305	1	1
4726	2305	1	2
4727	2306	1	1
4728	2306	1	2
4729	2307	1	1
4730	2307	1	2
4731	2308	1	1
4732	2308	1	2
4733	2309	1	1
4734	2309	1	2
4735	2310	1	1
4736	2310	1	2
4737	2311	1	1
4738	2311	1	2
4739	2312	1	1
4740	2312	1	2
4741	2313	1	1
4742	2313	1	2
4743	2314	1	1
4744	2314	1	2
4745	2315	1	1
4746	2315	1	2
4747	2316	1	1
4748	2316	1	2
4749	2317	1	1
4750	2317	1	2
4751	2318	1	1
4752	2318	1	2
4753	2319	1	1
4754	2319	1	2
4755	2320	1	1
4756	2320	1	2
4757	2321	1	1
4758	2321	1	2
4759	2322	1	1
4760	2322	1	2
4761	2323	1	1
4762	2323	1	2
4763	2324	1	1
4764	2324	1	2
4765	2325	1	1
4766	2325	1	2
4767	2326	1	1
4768	2326	1	2
4769	2327	1	1
4770	2327	1	2
4771	2328	1	1
4772	2328	1	2
4773	2329	1	1
4774	2329	1	2
4775	2330	1	1
4776	2330	1	2
4777	2331	1	1
4778	2331	1	2
4779	2332	1	1
4780	2332	1	2
4781	2333	1	1
4782	2333	1	2
4783	2334	1	1
4784	2334	1	2
4785	2335	1	1
4786	2335	1	2
4787	2336	1	1
4788	2336	1	2
4789	2337	1	1
4790	2337	1	2
4791	2338	1	1
4792	2338	1	2
4793	2339	1	1
4794	2339	1	2
4795	2340	1	1
4796	2340	1	2
4797	2341	1	1
4798	2341	1	2
4799	2342	1	1
4800	2342	1	2
4801	2343	1	1
4802	2343	1	2
4803	2344	1	1
4804	2344	1	2
4805	2345	1	1
4806	2345	1	2
4807	2346	1	1
4808	2346	1	2
4809	2347	1	1
4810	2347	1	2
4811	2348	1	1
4812	2348	1	2
4813	2349	1	1
4814	2349	1	2
4815	2350	1	1
4816	2350	1	2
4817	2351	1	1
4818	2351	1	2
4819	2352	1	1
4820	2352	1	2
4821	2353	1	1
4822	2353	1	2
4823	2354	1	1
4824	2354	1	2
4825	2355	1	1
4826	2355	1	2
4827	2356	1	1
4828	2356	1	2
4829	2357	1	1
4830	2357	1	2
4831	2358	1	1
4832	2358	1	2
4833	2359	1	1
4834	2359	1	2
4835	2360	1	1
4836	2360	1	2
4837	2361	1	1
4838	2361	1	2
4839	2362	1	1
4840	2362	1	2
4841	2363	1	1
4842	2363	1	2
4843	2364	1	1
4844	2364	1	2
4845	2365	1	1
4846	2365	1	2
4847	2366	1	1
4848	2366	1	2
4849	2367	1	1
4850	2367	1	2
4851	2368	1	1
4852	2368	1	2
4853	2369	1	1
4854	2369	1	2
4855	2370	1	1
4856	2370	1	2
4857	2371	1	1
4858	2371	1	2
4859	2372	1	1
4860	2372	1	2
4861	2373	1	1
4862	2373	1	2
4863	2374	1	1
4864	2374	1	2
4865	2375	1	1
4866	2375	1	2
4867	2376	1	1
4868	2376	1	2
4869	2377	1	1
4870	2377	1	2
4871	2378	1	1
4872	2378	1	2
4873	2379	1	1
4874	2379	1	2
4875	2380	1	1
4876	2380	1	2
4877	2381	1	1
4878	2381	1	2
4879	2382	1	1
4880	2382	1	2
4881	2383	1	1
4882	2383	1	2
4883	2383	2	3
4884	2383	2	4
4885	2383	3	5
4886	2383	3	6
4887	2383	4	7
4888	2383	4	8
4889	2384	1	1
4890	2384	1	2
4891	2384	2	3
4892	2384	2	4
4893	2384	3	5
4894	2384	3	6
4895	2384	4	7
4896	2384	4	8
4897	2385	1	1
4898	2385	1	2
4899	2386	1	1
4900	2386	1	2
4901	2387	1	1
4902	2387	1	2
4903	2388	1	1
4904	2388	1	2
4905	2388	2	3
4906	2388	2	4
4907	2388	3	5
4908	2388	3	6
4909	2388	4	7
4910	2388	4	8
4911	2389	1	1
4912	2389	1	2
4913	2390	1	1
4914	2390	1	2
4915	2391	1	1
4916	2391	1	2
4917	2392	1	1
4918	2392	1	2
4919	2393	1	1
4920	2393	1	2
4921	2394	1	1
4922	2394	1	2
4923	2395	1	1
4924	2395	1	2
4925	2396	1	1
4926	2396	1	2
4927	2397	1	1
4928	2397	1	2
4929	2398	1	1
4930	2398	1	2
4931	2398	2	3
4932	2398	2	4
4933	2398	3	5
4934	2398	3	6
4935	2398	4	7
4936	2398	4	8
4937	2399	1	1
4938	2399	1	2
4939	2400	1	1
4940	2400	1	2
4941	2401	1	1
4942	2401	1	2
4943	2402	1	1
4944	2402	1	2
4945	2403	1	1
4946	2403	1	2
4947	2404	1	1
4948	2404	1	2
4949	2405	1	1
4950	2405	1	2
4951	2406	1	1
4952	2406	1	2
4953	2407	1	1
4954	2407	1	2
4955	2408	1	1
4956	2408	1	2
4957	2409	1	1
4958	2409	1	2
4959	2410	1	1
4960	2410	1	2
4961	2411	1	1
4962	2411	1	2
4963	2412	1	1
4964	2412	1	2
4965	2413	1	1
4966	2413	1	2
4967	2414	1	1
4968	2414	1	2
4969	2415	1	1
4970	2415	1	2
4971	2415	2	3
4972	2415	2	4
4973	2415	3	5
4974	2415	3	6
4975	2416	1	1
4976	2416	1	2
4977	2417	1	1
4978	2417	1	2
4979	2418	1	1
4980	2418	1	2
4981	2419	1	1
4982	2419	1	2
4983	2420	1	1
4984	2420	1	2
4985	2421	1	1
4986	2421	1	2
4987	2422	1	1
4988	2422	1	2
4989	2423	1	1
4990	2423	1	2
4991	2424	1	1
4992	2424	1	2
4993	2425	1	1
4994	2425	1	2
4995	2426	1	1
4996	2426	1	2
4997	2427	1	1
4998	2427	1	2
4999	2428	1	1
5000	2428	1	2
5001	2429	1	1
5002	2429	1	2
5003	2430	1	1
5004	2430	1	2
5005	2431	1	1
5006	2431	1	2
5007	2432	1	1
5008	2432	1	2
5009	2433	1	1
5010	2433	1	2
5011	2434	1	1
5012	2434	1	2
5013	2435	1	1
5014	2435	1	2
5015	2436	1	1
5016	2436	1	2
5017	2437	1	1
5018	2437	1	2
5019	2438	1	1
5020	2438	1	2
5021	2439	1	1
5022	2439	1	2
5023	2440	1	1
5024	2440	1	2
5025	2441	1	1
5026	2441	1	2
5027	2442	1	1
5028	2442	1	2
5029	2443	1	1
5030	2443	1	2
5031	2444	1	1
5032	2444	1	2
5033	2445	1	1
5034	2445	1	2
5035	2446	1	1
5036	2446	1	2
5037	2447	1	1
5038	2447	1	2
5039	2448	1	1
5040	2448	1	2
5041	2449	1	1
5042	2449	1	2
5043	2450	1	1
5044	2450	1	2
5045	2451	1	1
5046	2451	1	2
5047	2452	1	1
5048	2452	1	2
5049	2453	1	1
5050	2453	1	2
5051	2454	1	1
5052	2454	1	2
5053	2455	1	1
5054	2455	1	2
5055	2456	1	1
5056	2456	1	2
5057	2457	1	1
5058	2457	1	2
5059	2458	1	1
5060	2458	1	2
5061	2459	1	1
5062	2459	1	2
5063	2460	1	1
5064	2460	1	2
5065	2461	1	1
5066	2461	1	2
5067	2462	1	1
5068	2462	1	2
5069	2463	1	1
5070	2463	1	2
5071	2464	1	1
5072	2464	1	2
5073	2465	1	1
5074	2465	1	2
5075	2466	1	1
5076	2466	1	2
5077	2467	1	1
5078	2467	1	2
5079	2468	1	1
5080	2468	1	2
5081	2469	1	1
5082	2469	1	2
5083	2470	1	1
5084	2470	1	2
5085	2471	1	1
5086	2471	1	2
5087	2472	1	1
5088	2472	1	2
5089	2473	1	1
5090	2473	1	2
5091	2474	1	1
5092	2474	1	2
5093	2475	1	1
5094	2475	1	2
5095	2476	1	1
5096	2476	1	2
5097	2477	1	1
5098	2477	1	2
5099	2478	1	1
5100	2478	1	2
5101	2479	1	1
5102	2479	1	2
5103	2480	1	1
5104	2480	1	2
5105	2481	1	1
5106	2481	1	2
5107	2482	1	1
5108	2482	1	2
5109	2483	1	1
5110	2483	1	2
5111	2484	1	1
5112	2484	1	2
5113	2485	1	1
5114	2485	1	2
5115	2486	1	1
5116	2486	1	2
5117	2487	1	1
5118	2487	1	2
5119	2488	1	1
5120	2488	1	2
5121	2489	1	1
5122	2489	1	2
5123	2490	1	1
5124	2490	1	2
5125	2491	1	1
5126	2491	1	2
5127	2492	1	1
5128	2492	1	2
5129	2493	1	1
5130	2493	1	2
5131	2494	1	1
5132	2494	1	2
5133	2495	1	1
5134	2495	1	2
5135	2496	1	1
5136	2496	1	2
5137	2497	1	1
5138	2497	1	2
5139	2498	1	1
5140	2498	1	2
5141	2499	1	1
5142	2499	1	2
5143	2500	1	1
5144	2500	1	2
5145	2501	1	1
5146	2501	1	2
5147	2502	1	1
5148	2502	1	2
5149	2503	1	1
5150	2503	1	2
5151	2504	1	1
5152	2504	1	2
5153	2505	1	1
5154	2505	1	2
5155	2506	1	1
5156	2506	1	2
5157	2507	1	1
5158	2507	1	2
5159	2508	1	1
5160	2508	1	2
5161	2509	1	1
5162	2509	1	2
5163	2510	1	1
5164	2510	1	2
5165	2511	1	1
5166	2511	1	2
5167	2512	1	1
5168	2512	1	2
5169	2513	1	1
5170	2513	1	2
5171	2514	1	1
5172	2514	1	2
5173	2515	1	1
5174	2515	1	2
5175	2516	1	1
5176	2516	1	2
5177	2517	1	1
5178	2517	1	2
5179	2518	1	1
5180	2518	1	2
5181	2519	1	1
5182	2519	1	2
5183	2520	1	1
5184	2520	1	2
5185	2521	1	1
5186	2521	1	2
5187	2522	1	1
5188	2522	1	2
5189	2523	1	1
5190	2523	1	2
5191	2524	1	1
5192	2524	1	2
5193	2525	1	1
5194	2525	1	2
5195	2526	1	1
5196	2526	1	2
5197	2527	1	1
5198	2527	1	2
5199	2528	1	1
5200	2528	1	2
5201	2529	1	1
5202	2529	1	2
5203	2530	1	1
5204	2530	1	2
5205	2531	1	1
5206	2531	1	2
5207	2532	1	1
5208	2532	1	2
5209	2533	1	1
5210	2533	1	2
5211	2534	1	1
5212	2534	1	2
5213	2535	1	1
5214	2535	1	2
5215	2536	1	1
5216	2536	1	2
5217	2537	1	1
5218	2537	1	2
5219	2538	1	1
5220	2538	1	2
5221	2539	1	1
5222	2539	1	2
5223	2540	1	1
5224	2540	1	2
5225	2541	1	1
5226	2541	1	2
5227	2542	1	1
5228	2542	1	2
5229	2543	1	1
5230	2543	1	2
5231	2544	1	1
5232	2544	1	2
5233	2545	1	1
5234	2545	1	2
5235	2546	1	1
5236	2546	1	2
5237	2547	1	1
5238	2547	1	2
5239	2548	1	1
5240	2548	1	2
5241	2549	1	1
5242	2549	1	2
5243	2550	1	1
5244	2550	1	2
5245	2551	1	1
5246	2551	1	2
5247	2552	1	1
5248	2552	1	2
5249	2553	1	1
5250	2553	1	2
5251	2554	1	1
5252	2554	1	2
5253	2555	1	1
5254	2555	1	2
5255	2556	1	1
5256	2556	1	2
5257	2557	1	1
5258	2557	1	2
5259	2558	1	1
5260	2558	1	2
5261	2559	1	1
5262	2559	1	2
5263	2560	1	1
5264	2560	1	2
5265	2561	1	1
5266	2561	1	2
5267	2562	1	1
5268	2562	1	2
5269	2563	1	1
5270	2563	1	2
5271	2564	1	1
5272	2564	1	2
5273	2565	1	1
5274	2565	1	2
5275	2566	1	1
5276	2566	1	2
5277	2567	1	1
5278	2567	1	2
5279	2568	1	1
5280	2568	1	2
5281	2569	1	1
5282	2569	1	2
5283	2570	1	1
5284	2570	1	2
5285	2571	1	1
5286	2571	1	2
5287	2572	1	1
5288	2572	1	2
5289	2573	1	1
5290	2573	1	2
5291	2574	1	1
5292	2574	1	2
5293	2575	1	1
5294	2575	1	2
5295	2576	1	1
5296	2576	1	2
5297	2577	1	1
5298	2577	1	2
5299	2578	1	1
5300	2578	1	2
5301	2579	1	1
5302	2579	1	2
5303	2579	2	3
5304	2579	2	4
5305	2579	3	5
5306	2579	3	6
5307	2579	4	7
5308	2579	4	8
5309	2580	1	1
5310	2580	1	2
5311	2581	1	1
5312	2581	1	2
5313	2582	1	1
5314	2582	1	2
5315	2583	1	1
5316	2583	1	2
5317	2584	1	1
5318	2584	1	2
5319	2584	2	3
5320	2584	2	4
5321	2584	3	5
5322	2584	3	6
5323	2584	4	7
5324	2584	4	8
5325	2585	1	1
5326	2585	1	2
5327	2585	2	3
5328	2585	2	4
5329	2585	3	5
5330	2585	3	6
5331	2585	4	7
5332	2585	4	8
5333	2586	1	1
5334	2586	1	2
5335	2587	1	1
5336	2587	1	2
5337	2588	1	1
5338	2588	1	2
5339	2589	1	1
5340	2589	1	2
5341	2590	1	1
5342	2590	1	2
5343	2591	1	1
5344	2591	1	2
5345	2592	1	1
5346	2592	1	2
5347	2593	1	1
5348	2593	1	2
5349	2594	1	1
5350	2594	1	2
5351	2595	1	1
5352	2595	1	2
5353	2596	1	1
5354	2596	1	2
5355	2597	1	1
5356	2597	1	2
5357	2598	1	1
5358	2598	1	2
5359	2599	1	1
5360	2599	1	2
5361	2600	1	1
5362	2600	1	2
5363	2601	1	1
5364	2601	1	2
5365	2602	1	1
5366	2602	1	2
5367	2603	1	1
5368	2603	1	2
5369	2604	1	1
5370	2604	1	2
5371	2605	1	1
5372	2605	1	2
5373	2606	1	1
5374	2606	1	2
5375	2607	1	1
5376	2607	1	2
5377	2608	1	1
5378	2608	1	2
5379	2609	1	1
5380	2609	1	2
5381	2610	1	1
5382	2610	1	2
5383	2611	1	1
5384	2611	1	2
5385	2612	1	1
5386	2612	1	2
5387	2613	1	1
5388	2613	1	2
5389	2614	1	1
5390	2614	1	2
5391	2615	1	1
5392	2615	1	2
5393	2616	1	1
5394	2616	1	2
5395	2617	1	1
5396	2617	1	2
5397	2618	1	1
5398	2618	1	2
5399	2619	1	1
5400	2619	1	2
5401	2620	1	1
5402	2620	1	2
5403	2621	1	1
5404	2621	1	2
5405	2622	1	1
5406	2622	1	2
5407	2623	1	1
5408	2623	1	2
5409	2624	1	1
5410	2624	1	2
5411	2625	1	1
5412	2625	1	2
5413	2626	1	1
5414	2626	1	2
5415	2627	1	1
5416	2627	1	2
5417	2628	1	1
5418	2628	1	2
5419	2629	1	1
5420	2629	1	2
5421	2630	1	1
5422	2630	1	2
5423	2631	1	1
5424	2631	1	2
5425	2632	1	1
5426	2632	1	2
5427	2633	1	1
5428	2633	1	2
5429	2634	1	1
5430	2634	1	2
5431	2635	1	1
5432	2635	1	2
5433	2636	1	1
5434	2636	1	2
5435	2637	1	1
5436	2637	1	2
5437	2638	1	1
5438	2638	1	2
5439	2639	1	1
5440	2639	1	2
5441	2640	1	1
5442	2640	1	2
5443	2641	1	1
5444	2641	1	2
5445	2641	2	3
5446	2641	2	4
5447	2641	3	5
5448	2641	3	6
5449	2641	4	7
5450	2641	4	8
5451	2642	1	1
5452	2642	1	2
5453	2642	2	3
5454	2642	2	4
5455	2642	3	5
5456	2642	3	6
5457	2642	4	7
5458	2642	4	8
5459	2643	1	1
5460	2643	1	2
5461	2643	2	3
5462	2643	2	4
5463	2643	3	5
5464	2643	3	6
5465	2643	4	7
5466	2643	4	8
5467	2644	1	1
5468	2644	1	2
5469	2645	1	1
5470	2645	1	2
5471	2646	1	1
5472	2646	1	2
5473	2647	1	1
5474	2647	1	2
5475	2648	1	1
5476	2648	1	2
5477	2648	2	3
5478	2648	2	4
5479	2648	3	5
5480	2648	3	6
5481	2648	4	7
5482	2648	4	8
5483	2649	1	1
5484	2649	1	2
5485	2649	2	3
5486	2649	2	4
5487	2649	3	5
5488	2649	3	6
5489	2649	4	7
5490	2649	4	8
5491	2650	1	1
5492	2650	1	2
5493	2651	1	1
5494	2651	1	2
5495	2652	1	1
5496	2652	1	2
5497	2653	1	1
5498	2653	1	2
5499	2653	2	3
5500	2653	2	4
5501	2653	3	5
5502	2653	3	6
5503	2653	4	7
5504	2653	4	8
5505	2654	1	1
5506	2654	1	2
5507	2654	2	3
5508	2654	2	4
5509	2654	3	5
5510	2654	3	6
5511	2654	4	7
5512	2654	4	8
5513	2655	1	1
5514	2655	1	2
5515	2656	1	1
5516	2656	1	2
5517	2657	1	1
5518	2657	1	2
5519	2658	1	1
5520	2658	1	2
5521	2659	1	1
5522	2659	1	2
5523	2660	1	1
5524	2660	1	2
5525	2661	1	1
5526	2661	1	2
5527	2662	1	1
5528	2662	1	2
5529	2663	1	1
5530	2663	1	2
5531	2664	1	1
5532	2664	1	2
5533	2665	1	1
5534	2665	1	2
5535	2666	1	1
5536	2666	1	2
5537	2667	1	1
5538	2667	1	2
5539	2668	1	1
5540	2668	1	2
5541	2669	1	1
5542	2669	1	2
5543	2670	1	1
5544	2670	1	2
5545	2671	1	1
5546	2671	1	2
5547	2672	1	1
5548	2672	1	2
5549	2673	1	1
5550	2673	1	2
5551	2674	1	1
5552	2674	1	2
5553	2675	1	1
5554	2675	1	2
5555	2676	1	1
5556	2676	1	2
5557	2677	1	1
5558	2677	1	2
5559	2678	1	1
5560	2678	1	2
5561	2679	1	1
5562	2679	1	2
5563	2679	2	3
5564	2679	2	4
5565	2680	1	1
5566	2680	1	2
5567	2681	1	1
5568	2681	1	2
5569	2682	1	1
5570	2682	1	2
5571	2683	1	1
5572	2683	1	2
5573	2683	2	3
5574	2683	2	4
5575	2683	3	5
5576	2683	3	6
5577	2683	4	7
5578	2683	4	8
5579	2683	5	9
5580	2683	5	10
5581	2684	1	1
5582	2684	1	2
5583	2685	1	1
5584	2685	1	2
5585	2686	1	1
5586	2686	1	2
5587	2687	1	1
5588	2687	1	2
5589	2688	1	1
5590	2688	1	2
5591	2689	1	1
5592	2689	1	2
5593	2690	1	1
5594	2690	1	2
5595	2691	1	1
5596	2691	1	2
5597	2692	1	1
5598	2692	1	2
5599	2693	1	1
5600	2693	1	2
5601	2694	1	1
5602	2694	1	2
5603	2695	1	1
5604	2695	1	2
5605	2696	1	1
5606	2696	1	2
5607	2697	1	1
5608	2697	1	2
5609	2698	1	1
5610	2698	1	2
5611	2699	1	1
5612	2699	1	2
5613	2700	1	1
5614	2700	1	2
5615	2701	1	1
5616	2701	1	2
5617	2702	1	1
5618	2702	1	2
5619	2703	1	1
5620	2703	1	2
5621	2704	1	1
5622	2704	1	2
5623	2705	1	1
5624	2705	1	2
5625	2706	1	1
5626	2706	1	2
5627	2707	1	1
5628	2707	1	2
5629	2708	1	1
5630	2708	1	2
5631	2709	1	1
5632	2709	1	2
5633	2710	1	1
5634	2710	1	2
5635	2711	1	1
5636	2711	1	2
5637	2712	1	1
5638	2712	1	2
5639	2713	1	1
5640	2713	1	2
5641	2714	1	1
5642	2714	1	2
5643	2715	1	1
5644	2715	1	2
5645	2716	1	1
5646	2716	1	2
5647	2717	1	1
5648	2717	1	2
5649	2718	1	1
5650	2718	1	2
5651	2719	1	1
5652	2719	1	2
5653	2720	1	1
5654	2720	1	2
5655	2721	1	1
5656	2721	1	2
5657	2722	1	1
5658	2722	1	2
5659	2723	1	1
5660	2723	1	2
5661	2724	1	1
5662	2724	1	2
5663	2725	1	1
5664	2725	1	2
5665	2726	1	1
5666	2726	1	2
5667	2727	1	1
5668	2727	1	2
5669	2728	1	1
5670	2728	1	2
5671	2729	1	1
5672	2729	1	2
5673	2730	1	1
5674	2730	1	2
5675	2731	1	1
5676	2731	1	2
5677	2732	1	1
5678	2732	1	2
5679	2733	1	1
5680	2733	1	2
5681	2734	1	1
5682	2734	1	2
5683	2735	1	1
5684	2735	1	2
5685	2736	1	1
5686	2736	1	2
5687	2737	1	1
5688	2737	1	2
5689	2738	1	1
5690	2738	1	2
5691	2739	1	1
5692	2739	1	2
5693	2740	1	1
5694	2740	1	2
5695	2741	1	1
5696	2741	1	2
5697	2742	1	1
5698	2742	1	2
5699	2743	1	1
5700	2743	1	2
5701	2744	1	1
5702	2744	1	2
5703	2745	1	1
5704	2745	1	2
5705	2746	1	1
5706	2746	1	2
5707	2747	1	1
5708	2747	1	2
5709	2748	1	1
5710	2748	1	2
5711	2749	1	1
5712	2749	1	2
5713	2750	1	1
5714	2750	1	2
5715	2751	1	1
5716	2751	1	2
5717	2752	1	1
5718	2752	1	2
5719	2753	1	1
5720	2753	1	2
5721	2754	1	1
5722	2754	1	2
5723	2755	1	1
5724	2755	1	2
5725	2756	1	1
5726	2756	1	2
5727	2757	1	1
5728	2757	1	2
5729	2758	1	1
5730	2758	1	2
5731	2759	1	1
5732	2759	1	2
5733	2760	1	1
5734	2760	1	2
5735	2761	1	1
5736	2761	1	2
5737	2762	1	1
5738	2762	1	2
5739	2763	1	1
5740	2763	1	2
5741	2764	1	1
5742	2764	1	2
5743	2765	1	1
5744	2765	1	2
5745	2766	1	1
5746	2766	1	2
5747	2767	1	1
5748	2767	1	2
5749	2768	1	1
5750	2768	1	2
5751	2769	1	1
5752	2769	1	2
5753	2770	1	1
5754	2770	1	2
5755	2771	1	1
5756	2771	1	2
5757	2772	1	1
5758	2772	1	2
5759	2773	1	1
5760	2773	1	2
5761	2774	1	1
5762	2774	1	2
5763	2775	1	1
5764	2775	1	2
5765	2776	1	1
5766	2776	1	2
5767	2777	1	1
5768	2777	1	2
5769	2778	1	1
5770	2778	1	2
5771	2779	1	1
5772	2779	1	2
5773	2780	1	1
5774	2780	1	2
5775	2781	1	1
5776	2781	1	2
5777	2782	1	1
5778	2782	1	2
5779	2783	1	1
5780	2783	1	2
5781	2784	1	1
5782	2784	1	2
5783	2785	1	1
5784	2785	1	2
5785	2786	1	1
5786	2786	1	2
5787	2787	1	1
5788	2787	1	2
5789	2788	1	1
5790	2788	1	2
5791	2789	1	1
5792	2789	1	2
5793	2790	1	1
5794	2790	1	2
5795	2791	1	1
5796	2791	1	2
5797	2792	1	1
5798	2792	1	2
5799	2793	1	1
5800	2793	1	2
5801	2794	1	1
5802	2794	1	2
5803	2795	1	1
5804	2795	1	2
5805	2796	1	1
5806	2796	1	2
5807	2797	1	1
5808	2797	1	2
5809	2798	1	1
5810	2798	1	2
5811	2799	1	1
5812	2799	1	2
5813	2800	1	1
5814	2800	1	2
5815	2801	1	1
5816	2801	1	2
5817	2802	1	1
5818	2802	1	2
5819	2803	1	1
5820	2803	1	2
5821	2804	1	1
5822	2804	1	2
5823	2805	1	1
5824	2805	1	2
5825	2806	1	1
5826	2806	1	2
5827	2807	1	1
5828	2807	1	2
5829	2808	1	1
5830	2808	1	2
5831	2809	1	1
5832	2809	1	2
5833	2810	1	1
5834	2810	1	2
5835	2811	1	1
5836	2811	1	2
5837	2812	1	1
5838	2812	1	2
5839	2813	1	1
5840	2813	1	2
5841	2814	1	1
5842	2814	1	2
5843	2815	1	1
5844	2815	1	2
5845	2816	1	1
5846	2816	1	2
5847	2817	1	1
5848	2817	1	2
5849	2818	1	1
5850	2818	1	2
5851	2819	1	1
5852	2819	1	2
5853	2820	1	1
5854	2820	1	2
5855	2821	1	1
5856	2821	1	2
5857	2822	1	1
5858	2822	1	2
5859	2823	1	1
5860	2823	1	2
5861	2824	1	1
5862	2824	1	2
5863	2825	1	1
5864	2825	1	2
5865	2826	1	1
5866	2826	1	2
5867	2827	1	1
5868	2827	1	2
5869	2828	1	1
5870	2828	1	2
5871	2829	1	1
5872	2829	1	2
5873	2830	1	1
5874	2830	1	2
5875	2831	1	1
5876	2831	1	2
5877	2832	1	1
5878	2832	1	2
5879	2833	1	1
5880	2833	1	2
5881	2834	1	1
5882	2834	1	2
5883	2835	1	1
5884	2835	1	2
5885	2836	1	1
5886	2836	1	2
5887	2837	1	1
5888	2837	1	2
5889	2838	1	1
5890	2838	1	2
5891	2839	1	1
5892	2839	1	2
5893	2840	1	1
5894	2840	1	2
5895	2841	1	1
5896	2841	1	2
5897	2842	1	1
5898	2842	1	2
5899	2843	1	1
5900	2843	1	2
5901	2844	1	1
5902	2844	1	2
5903	2845	1	1
5904	2845	1	2
5905	2846	1	1
5906	2846	1	2
5907	2847	1	1
5908	2847	1	2
5909	2848	1	1
5910	2848	1	2
5911	2849	1	1
5912	2849	1	2
5913	2850	1	1
5914	2850	1	2
5915	2851	1	1
5916	2851	1	2
5917	2852	1	1
5918	2852	1	2
5919	2853	1	1
5920	2853	1	2
5921	2854	1	1
5922	2854	1	2
5923	2855	1	1
5924	2855	1	2
5925	2856	1	1
5926	2856	1	2
5927	2857	1	1
5928	2857	1	2
5929	2858	1	1
5930	2858	1	2
5931	2859	1	1
5932	2859	1	2
5933	2860	1	1
5934	2860	1	2
5935	2861	1	1
5936	2861	1	2
5937	2862	1	1
5938	2862	1	2
5939	2863	1	1
5940	2863	1	2
5941	2864	1	1
5942	2864	1	2
5943	2865	1	1
5944	2865	1	2
5945	2866	1	1
5946	2866	1	2
5947	2867	1	1
5948	2867	1	2
5949	2868	1	1
5950	2868	1	2
5951	2869	1	1
5952	2869	1	2
5953	2870	1	1
5954	2870	1	2
5955	2871	1	1
5956	2871	1	2
5957	2872	1	1
5958	2872	1	2
5959	2873	1	1
5960	2873	1	2
5961	2874	1	1
5962	2874	1	2
5963	2875	1	1
5964	2875	1	2
5965	2876	1	1
5966	2876	1	2
5967	2877	1	1
5968	2877	1	2
5969	2878	1	1
5970	2878	1	2
5971	2879	1	1
5972	2879	1	2
5973	2880	1	1
5974	2880	1	2
5975	2881	1	1
5976	2881	1	2
5977	2882	1	1
5978	2882	1	2
5979	2883	1	1
5980	2883	1	2
5981	2884	1	1
5982	2884	1	2
5983	2885	1	1
5984	2885	1	2
5985	2886	1	1
5986	2886	1	2
5987	2887	1	1
5988	2887	1	2
5989	2888	1	1
5990	2888	1	2
5991	2889	1	1
5992	2889	1	2
5993	2890	1	1
5994	2890	1	2
5995	2891	1	1
5996	2891	1	2
5997	2892	1	1
5998	2892	1	2
5999	2893	1	1
6000	2893	1	2
6001	2894	1	1
6002	2894	1	2
6003	2895	1	1
6004	2895	1	2
6005	2896	1	1
6006	2896	1	2
6007	2897	1	1
6008	2897	1	2
6009	2898	1	1
6010	2898	1	2
6011	2899	1	1
6012	2899	1	2
6013	2900	1	1
6014	2900	1	2
6015	2901	1	1
6016	2901	1	2
6017	2902	1	1
6018	2902	1	2
6019	2903	1	1
6020	2903	1	2
6021	2904	1	1
6022	2904	1	2
6023	2905	1	1
6024	2905	1	2
6025	2905	2	3
6026	2905	2	4
6027	2905	3	5
6028	2905	3	6
6029	2905	4	7
6030	2905	4	8
6031	2905	5	9
6032	2905	5	10
6033	2906	1	1
6034	2906	1	2
6035	2907	1	1
6036	2907	1	2
6037	2908	1	1
6038	2908	1	2
6039	2909	1	1
6040	2909	1	2
6041	2910	1	1
6042	2910	1	2
6043	2911	1	1
6044	2911	1	2
6045	2912	1	1
6046	2912	1	2
6047	2913	1	1
6048	2913	1	2
6049	2914	1	1
6050	2914	1	2
6051	2915	1	1
6052	2915	1	2
6053	2916	1	1
6054	2916	1	2
6055	2917	1	1
6056	2917	1	2
6057	2918	1	1
6058	2918	1	2
6059	2919	1	1
6060	2919	1	2
6061	2920	1	1
6062	2920	1	2
6063	2921	1	1
6064	2921	1	2
6065	2922	1	1
6066	2922	1	2
6067	2923	1	1
6068	2923	1	2
6069	2924	1	1
6070	2924	1	2
6071	2925	1	1
6072	2925	1	2
6073	2926	1	1
6074	2926	1	2
6075	2927	1	1
6076	2927	1	2
6077	2928	1	1
6078	2928	1	2
6079	2929	1	1
6080	2929	1	2
6081	2930	1	1
6082	2930	1	2
6083	2931	1	1
6084	2931	1	2
6085	2932	1	1
6086	2932	1	2
6087	2933	1	1
6088	2933	1	2
6089	2934	1	1
6090	2934	1	2
6091	2935	1	1
6092	2935	1	2
6093	2936	1	1
6094	2936	1	2
6095	2937	1	1
6096	2937	1	2
6097	2938	1	1
6098	2938	1	2
6099	2939	1	1
6100	2939	1	2
6101	2940	1	1
6102	2940	1	2
6103	2941	1	1
6104	2941	1	2
6105	2942	1	1
6106	2942	1	2
6107	2943	1	1
6108	2943	1	2
6109	2944	1	1
6110	2944	1	2
6111	2945	1	1
6112	2945	1	2
6113	2946	1	1
6114	2946	1	2
6115	2947	1	1
6116	2947	1	2
6117	2948	1	1
6118	2948	1	2
6119	2949	1	1
6120	2949	1	2
6121	2950	1	1
6122	2950	1	2
6123	2951	1	1
6124	2951	1	2
6125	2952	1	1
6126	2952	1	2
6127	2953	1	1
6128	2953	1	2
6129	2954	1	1
6130	2954	1	2
6131	2955	1	1
6132	2955	1	2
6133	2956	1	1
6134	2956	1	2
6135	2957	1	1
6136	2957	1	2
6137	2958	1	1
6138	2958	1	2
6139	2959	1	1
6140	2959	1	2
6141	2960	1	1
6142	2960	1	2
6143	2961	1	1
6144	2961	1	2
6145	2962	1	1
6146	2962	1	2
6147	2963	1	1
6148	2963	1	2
6149	2964	1	1
6150	2964	1	2
6151	2965	1	1
6152	2965	1	2
6153	2966	1	1
6154	2966	1	2
6155	2967	1	1
6156	2967	1	2
6157	2968	1	1
6158	2968	1	2
6159	2969	1	1
6160	2969	1	2
6161	2970	1	1
6162	2970	1	2
6163	2971	1	1
6164	2971	1	2
6165	2972	1	1
6166	2972	1	2
6167	2973	1	1
6168	2973	1	2
6169	2974	1	1
6170	2974	1	2
6171	2975	1	1
6172	2975	1	2
6173	2976	1	1
6174	2976	1	2
6175	2977	1	1
6176	2977	1	2
6177	2978	1	1
6178	2978	1	2
6179	2979	1	1
6180	2979	1	2
6181	2980	1	1
6182	2980	1	2
6183	2981	1	1
6184	2981	1	2
6185	2982	1	1
6186	2982	1	2
6187	2983	1	1
6188	2983	1	2
6189	2984	1	1
6190	2984	1	2
6191	2985	1	1
6192	2985	1	2
6193	2986	1	1
6194	2986	1	2
6195	2987	1	1
6196	2987	1	2
6197	2988	1	1
6198	2988	1	2
6199	2989	1	1
6200	2989	1	2
6201	2990	1	1
6202	2990	1	2
6203	2991	1	1
6204	2991	1	2
6205	2992	1	1
6206	2992	1	2
6207	2993	1	1
6208	2993	1	2
6209	2994	1	1
6210	2994	1	2
6211	2995	1	1
6212	2995	1	2
6213	2995	2	3
6214	2995	2	4
6215	2995	3	5
6216	2995	3	6
6217	2996	1	1
6218	2996	1	2
6219	2997	1	1
6220	2997	1	2
6221	2998	1	1
6222	2998	1	2
6223	2999	1	1
6224	2999	1	2
6225	3000	1	1
6226	3000	1	2
6227	3001	1	1
6228	3001	1	2
6229	3002	1	1
6230	3002	1	2
6231	3003	1	1
6232	3003	1	2
6233	3004	1	1
6234	3004	1	2
6235	3005	1	1
6236	3005	1	2
6237	3006	1	1
6238	3006	1	2
6239	3007	1	1
6240	3007	1	2
6241	3008	1	1
6242	3008	1	2
6243	3009	1	1
6244	3009	1	2
6245	3010	1	1
6246	3010	1	2
6247	3011	1	1
6248	3011	1	2
6249	3012	1	1
6250	3012	1	2
6251	3013	1	1
6252	3013	1	2
6253	3014	1	1
6254	3014	1	2
6255	3015	1	1
6256	3015	1	2
6257	3016	1	1
6258	3016	1	2
6259	3017	1	1
6260	3017	1	2
6261	3018	1	1
6262	3018	1	2
6263	3019	1	1
6264	3019	1	2
6265	3020	1	1
6266	3020	1	2
6267	3021	1	1
6268	3021	1	2
6269	3022	1	1
6270	3022	1	2
6271	3023	1	1
6272	3023	1	2
6273	3024	1	1
6274	3024	1	2
6275	3025	1	1
6276	3025	1	2
6277	3026	1	1
6278	3026	1	2
6279	3027	1	1
6280	3027	1	2
6281	3028	1	1
6282	3028	1	2
6283	3029	1	1
6284	3029	1	2
6285	3030	1	1
6286	3030	1	2
6287	3031	1	1
6288	3031	1	2
6289	3032	1	1
6290	3032	1	2
6291	3033	1	1
6292	3033	1	2
6293	3034	1	1
6294	3034	1	2
6295	3035	1	1
6296	3035	1	2
6297	3036	1	1
6298	3036	1	2
6299	3037	1	1
6300	3037	1	2
6301	3038	1	1
6302	3038	1	2
6303	3039	1	1
6304	3039	1	2
6305	3040	1	1
6306	3040	1	2
6307	3041	1	1
6308	3041	1	2
6309	3042	1	1
6310	3042	1	2
6311	3043	1	1
6312	3043	1	2
6313	3044	1	1
6314	3044	1	2
6315	3045	1	1
6316	3045	1	2
6317	3046	1	1
6318	3046	1	2
6319	3047	1	1
6320	3047	1	2
6321	3048	1	1
6322	3048	1	2
6323	3049	1	1
6324	3049	1	2
6325	3050	1	1
6326	3050	1	2
6327	3051	1	1
6328	3051	1	2
6329	3052	1	1
6330	3052	1	2
6331	3053	1	1
6332	3053	1	2
6333	3054	1	1
6334	3054	1	2
6335	3055	1	1
6336	3055	1	2
6337	3056	1	1
6338	3056	1	2
6339	3057	1	1
6340	3057	1	2
6341	3058	1	1
6342	3058	1	2
6343	3059	1	1
6344	3059	1	2
6345	3060	1	1
6346	3060	1	2
6347	3061	1	1
6348	3061	1	2
6349	3062	1	1
6350	3062	1	2
6351	3063	1	1
6352	3063	1	2
6353	3064	1	1
6354	3064	1	2
6355	3065	1	1
6356	3065	1	2
6357	3066	1	1
6358	3066	1	2
6359	3067	1	1
6360	3067	1	2
6361	3068	1	1
6362	3068	1	2
6363	3069	1	1
6364	3069	1	2
6365	3070	1	1
6366	3070	1	2
6367	3071	1	1
6368	3071	1	2
6369	3072	1	1
6370	3072	1	2
6371	3073	1	1
6372	3073	1	2
6373	3074	1	1
6374	3074	1	2
6375	3075	1	1
6376	3075	1	2
6377	3076	1	1
6378	3076	1	2
6379	3077	1	1
6380	3077	1	2
6381	3078	1	1
6382	3078	1	2
6383	3079	1	1
6384	3079	1	2
6385	3080	1	1
6386	3080	1	2
6387	3081	1	1
6388	3081	1	2
6389	3082	1	1
6390	3082	1	2
6391	3083	1	1
6392	3083	1	2
6393	3084	1	1
6394	3084	1	2
6395	3085	1	1
6396	3085	1	2
6397	3086	1	1
6398	3086	1	2
6399	3087	1	1
6400	3087	1	2
6401	3088	1	1
6402	3088	1	2
6403	3089	1	1
6404	3089	1	2
6405	3090	1	1
6406	3090	1	2
6407	3091	1	1
6408	3091	1	2
6409	3092	1	1
6410	3092	1	2
6411	3093	1	1
6412	3093	1	2
6413	3094	1	1
6414	3094	1	2
6415	3095	1	1
6416	3095	1	2
6417	3096	1	1
6418	3096	1	2
6419	3097	1	1
6420	3097	1	2
6421	3098	1	1
6422	3098	1	2
6423	3099	1	1
6424	3099	1	2
6425	3100	1	1
6426	3100	1	2
6427	3101	1	1
6428	3101	1	2
6429	3101	2	3
6430	3101	2	4
6431	3101	3	5
6432	3101	3	6
6433	3101	4	7
6434	3101	4	8
6435	3102	1	1
6436	3102	1	2
6437	3103	1	1
6438	3103	1	2
6439	3104	1	1
6440	3104	1	2
6441	3105	1	1
6442	3105	1	2
6443	3106	1	1
6444	3106	1	2
6445	3107	1	1
6446	3107	1	2
6447	3108	1	1
6448	3108	1	2
6449	3109	1	1
6450	3109	1	2
6451	3110	1	1
6452	3110	1	2
6453	3111	1	1
6454	3111	1	2
6455	3112	1	1
6456	3112	1	2
6457	3113	1	1
6458	3113	1	2
6459	3114	1	1
6460	3114	1	2
6461	3115	1	1
6462	3115	1	2
6463	3116	1	1
6464	3116	1	2
6465	3117	1	1
6466	3117	1	2
6467	3118	1	1
6468	3118	1	2
6469	3119	1	1
6470	3119	1	2
6471	3120	1	1
6472	3120	1	2
6473	3121	1	1
6474	3121	1	2
6475	3122	1	1
6476	3122	1	2
6477	3123	1	1
6478	3123	1	2
6479	3124	1	1
6480	3124	1	2
6481	3125	1	1
6482	3125	1	2
6483	3126	1	1
6484	3126	1	2
6485	3127	1	1
6486	3127	1	2
6487	3128	1	1
6488	3128	1	2
6489	3129	1	1
6490	3129	1	2
6491	3130	1	1
6492	3130	1	2
6493	3131	1	1
6494	3131	1	2
6495	3132	1	1
6496	3132	1	2
\.

COPY typy_wagonow (id_typu, nazwa, liczba_rzedow, liczba_kolumn, czy_przedzialowy) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	Bezprzedziałowy 2 kl. (standard)	15	5	f
2	Bezprzedziałowy 1 kl. (komfort)	12	4	f
3	Przedziałowy 2 kl. (klasyczny)	18	5	t
4	Przedziałowy 1 kl. (biznes)	14	4	t
5	Wagon restauracyjny (WARS)	14	5	f
6	Bezprzedziałowy 2 kl. + rowery	15	5	f
7	Strefa ciszy	16	5	f
8	Wagon PRM	12	5	f
9	Przedziałowy premium (1 kl.)	10	4	t
10	Strefa rodzinna	16	5	f
11	Kuszetka 4-os.	12	5	t
12	Sypialny 1-os.	10	4	t
13	Bezprzedziałowy 1 kl. + minibar	13	5	f
14	Kuszetka 6-os.	14	5	t
15	Bezprzedziałowy 2 kl. (klimatyzacja)	15	5	f
16	1 kl. open space	11	4	f
17	EIP – 1 kl.	12	4	f
18	EIP – 2 kl.	15	5	f
20	TLK – przedziałowy 2 kl.	18	5	t
21	TLK – bezprzedziałowy 2 kl.	16	5	f
22	Wagon barowy (siedzący)	12	5	f
23	Kombinowany rowerowy	14	5	f
24	Nocny siedzący IC	16	5	t
25	EuroCity – 1 kl.	12	4	f
\.

COPY elementy_stale (id_elementu, id_typu, nazwa_elementu, rzad_od, rzad_do, kolumna_od, kolumna_do) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	1	toaleta	1	1	1	2
2	1	bagaż	14	15	1	2
3	2	toaleta	1	1	1	1
4	2	bagaż	12	12	4	4
5	3	toaleta	1	1	1	1
6	3	toaleta	18	18	5	5
7	3	korytarz	2	17	1	2
8	4	toaleta	1	1	1	1
9	4	korytarz	2	13	1	2
10	5	kuchnia	1	5	1	5
11	5	bar	6	7	1	5
12	6	toaleta	1	1	1	2
13	6	rowery	12	15	1	5
14	7	toaleta	1	1	1	2
15	8	toaleta_PRM	1	3	1	5
16	8	strefa_PRM	10	12	1	5
17	9	toaleta	1	1	1	1
18	9	lounge	10	10	1	4
19	9	korytarz	2	9	1	2
20	10	strefa_dzieci	1	3	1	5
21	11	toaleta	1	1	1	5
22	11	korytarz	2	11	1	3
23	12	prysznic	1	2	1	4
24	12	korytarz	3	10	1	2
25	13	minibar	1	2	1	5
26	13	toaleta	13	13	1	2
27	14	toaleta	1	1	1	1
28	14	korytarz	2	13	1	2
29	15	toaleta	1	1	1	2
30	15	bagaż	8	8	1	2
31	15	bagaż	8	8	4	5
32	16	toaleta	1	1	1	1
33	17	toaleta	1	1	1	1
34	17	przedział menedżerski	2	4	1	4
35	18	toaleta	1	1	1	2
36	18	bagaż	14	15	1	5
37	20	toaleta	1	1	1	1
38	20	bagaż	17	18	1	5
39	20	korytarz	2	16	1	2
40	21	toaleta	1	1	1	2
41	22	bar	1	8	1	5
42	23	rowery	10	14	1	5
43	23	toaleta	1	1	4	5
44	24	toaleta	1	1	1	2
45	24	korytarz	2	15	1	2
46	25	toaleta	1	1	1	1
47	25	kompartiment	12	12	1	4
\.

COPY miejsca (id_miejsca, id_typu, numer_miejsca, rzad, kolumna, numer_przedzialu, lokalizacja, czy_przy_stoliku, czy_dla_niepelnosprawnych, czy_dla_rowerzystow, czy_przodem) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	1	15	2	1		okno	f	f	f	t
2	1	11	2	2		korytarz	f	f	f	t
3	1	12	2	4		korytarz	f	f	f	t
4	1	16	2	5		okno	f	f	f	t
5	1	17	3	1		okno	f	f	f	f
6	1	13	3	2		korytarz	f	f	f	f
7	1	14	3	4		korytarz	f	f	f	f
8	1	18	3	5		okno	f	f	f	f
9	1	25	4	1		okno	f	f	f	t
10	1	21	4	2		korytarz	f	f	f	t
11	1	22	4	4		korytarz	f	f	f	t
12	1	26	4	5		okno	f	f	f	t
13	1	27	5	1		okno	f	f	f	f
14	1	23	5	2		korytarz	f	f	f	f
15	1	24	5	4		korytarz	f	f	f	f
16	1	28	5	5		okno	f	f	f	f
17	1	35	6	1		okno	t	f	f	t
18	1	31	6	2		korytarz	t	f	f	t
19	1	32	6	4		korytarz	t	f	f	t
20	1	36	6	5		okno	t	f	f	t
21	1	37	7	1		okno	t	f	f	f
22	1	33	7	2		korytarz	t	f	f	f
23	1	34	7	4		korytarz	t	f	f	f
24	1	38	7	5		okno	t	f	f	f
25	1	45	8	1		okno	t	f	f	t
26	1	41	8	2		korytarz	t	f	f	t
27	1	42	8	4		korytarz	t	f	f	t
28	1	46	8	5		okno	t	f	f	t
29	1	47	9	1		okno	t	f	f	f
30	1	43	9	2		korytarz	t	f	f	f
31	1	44	9	4		korytarz	t	f	f	f
32	1	48	9	5		okno	t	f	f	f
33	1	55	10	1		okno	f	f	f	t
34	1	51	10	2		korytarz	f	f	f	t
35	1	52	10	4		korytarz	f	f	f	t
36	1	56	10	5		okno	f	f	f	t
37	1	57	11	1		okno	f	f	f	f
38	1	53	11	2		korytarz	f	f	f	f
39	1	54	11	4		korytarz	f	f	f	f
40	1	58	11	5		okno	f	f	f	f
41	1	65	12	1		okno	f	f	f	t
42	1	61	12	2		korytarz	f	f	f	t
43	1	62	12	4		korytarz	f	f	f	t
44	1	66	12	5		okno	f	f	f	t
45	1	67	13	1		okno	f	f	f	f
46	1	63	13	2		korytarz	f	f	f	f
47	1	64	13	4		korytarz	f	f	f	f
48	1	68	13	5		okno	f	f	f	f
49	2	15	2	1		okno	f	f	f	t
50	2	11	2	2		korytarz	f	f	f	t
51	2	13	2	4		środek	f	f	f	t
52	2	17	3	1		okno	f	f	f	f
53	2	12	3	2		korytarz	f	f	f	f
54	2	14	3	4		środek	f	f	f	f
55	2	25	4	1		okno	f	f	f	t
56	2	21	4	2		korytarz	f	f	f	t
57	2	23	4	4		środek	f	f	f	t
58	2	27	5	1		okno	f	f	f	f
59	2	22	5	2		korytarz	f	f	f	f
60	2	24	5	4		środek	f	f	f	f
61	2	35	6	1		okno	t	f	f	t
62	2	31	6	2		korytarz	t	f	f	t
63	2	33	6	4		środek	t	f	f	t
64	2	37	7	1		okno	t	f	f	f
65	2	32	7	2		korytarz	t	f	f	f
66	2	34	7	4		środek	t	f	f	f
67	2	45	8	1		okno	f	f	f	t
68	2	41	8	2		korytarz	f	f	f	t
69	2	43	8	4		środek	f	f	f	t
70	2	47	9	1		okno	f	f	f	f
71	2	42	9	2		korytarz	f	f	f	f
72	2	44	9	4		środek	f	f	f	f
73	2	55	10	1		okno	f	f	f	t
74	2	51	10	2		korytarz	f	f	f	t
75	2	53	10	4		środek	f	f	f	t
76	2	57	11	1		okno	f	f	f	f
77	2	52	11	2		korytarz	f	f	f	f
78	2	54	11	4		środek	f	f	f	f
79	3	11	2	3	1	korytarz	f	f	f	t
80	3	13	2	4	1	środek	f	f	f	t
81	3	15	2	5	1	okno	f	f	f	t
82	3	12	3	3	1	korytarz	f	f	f	f
83	3	14	3	4	1	środek	f	f	f	f
84	3	16	3	5	1	okno	f	f	f	f
85	3	21	4	3	2	korytarz	f	f	f	t
86	3	23	4	4	2	środek	f	f	f	t
87	3	25	4	5	2	okno	f	f	f	t
88	3	22	5	3	2	korytarz	f	f	f	f
89	3	24	5	4	2	środek	f	f	f	f
90	3	26	5	5	2	okno	f	f	f	f
91	3	31	6	3	3	korytarz	f	f	f	t
92	3	33	6	4	3	środek	f	f	f	t
93	3	35	6	5	3	okno	f	f	f	t
94	3	32	7	3	3	korytarz	f	f	f	f
95	3	34	7	4	3	środek	f	f	f	f
96	3	36	7	5	3	okno	f	f	f	f
97	3	41	8	3	4	korytarz	f	f	f	t
98	3	43	8	4	4	środek	f	f	f	t
99	3	45	8	5	4	okno	f	f	f	t
100	3	42	9	3	4	korytarz	f	f	f	f
101	3	44	9	4	4	środek	f	f	f	f
102	3	46	9	5	4	okno	f	f	f	f
103	3	51	10	3	5	korytarz	f	f	f	t
104	3	53	10	4	5	środek	f	f	f	t
105	3	55	10	5	5	okno	f	f	f	t
106	3	52	11	3	5	korytarz	f	f	f	f
107	3	54	11	4	5	środek	f	f	f	f
108	3	56	11	5	5	okno	f	f	f	f
109	3	61	12	3	6	korytarz	f	f	f	t
110	3	63	12	4	6	środek	f	f	f	t
111	3	65	12	5	6	okno	f	f	f	t
112	3	62	13	3	6	korytarz	f	f	f	f
113	3	64	13	4	6	środek	f	f	f	f
114	3	66	13	5	6	okno	f	f	f	f
115	3	71	14	3	7	korytarz	f	f	f	t
116	3	73	14	4	7	środek	f	f	f	t
117	3	75	14	5	7	okno	f	f	f	t
118	3	72	15	3	7	korytarz	f	f	f	f
119	3	74	15	4	7	środek	f	f	f	f
120	3	76	15	5	7	okno	f	f	f	f
121	3	81	16	3	8	korytarz	f	f	f	t
122	3	83	16	4	8	środek	f	f	f	t
123	3	85	16	5	8	okno	f	f	f	t
124	3	82	17	3	8	korytarz	f	f	f	f
125	3	84	17	4	8	środek	f	f	f	f
126	3	86	17	5	8	okno	f	f	f	f
127	4	11	2	3	1	korytarz	t	f	f	t
128	4	13	2	4	1	okno	t	f	f	t
129	4	12	3	3	1	korytarz	t	f	f	f
130	4	14	3	4	1	okno	t	f	f	f
131	4	21	4	3	2	korytarz	t	f	f	t
132	4	23	4	4	2	okno	t	f	f	t
133	4	22	5	3	2	korytarz	t	f	f	f
134	4	24	5	4	2	okno	t	f	f	f
135	4	31	6	3	3	korytarz	t	f	f	t
136	4	33	6	4	3	okno	t	f	f	t
137	4	32	7	3	3	korytarz	t	f	f	f
138	4	34	7	4	3	okno	t	f	f	f
139	4	41	8	3	4	korytarz	t	f	f	t
140	4	43	8	4	4	okno	t	f	f	t
141	4	42	9	3	4	korytarz	t	f	f	f
142	4	44	9	4	4	okno	t	f	f	f
143	4	51	10	3	5	korytarz	t	f	f	t
144	4	53	10	4	5	okno	t	f	f	t
145	4	52	11	3	5	korytarz	t	f	f	f
146	4	54	11	4	5	okno	t	f	f	f
147	4	61	12	3	6	korytarz	t	f	f	t
148	4	63	12	4	6	okno	t	f	f	t
149	4	62	13	3	6	korytarz	t	f	f	f
150	4	64	13	4	6	okno	t	f	f	f
151	5	15	8	1		stolik_wars	t	f	f	
152	5	11	8	2		stolik_wars	t	f	f	
153	5	12	8	4		stolik_wars	t	f	f	
154	5	16	8	5		stolik_wars	t	f	f	
155	5	17	9	1		stolik_wars	t	f	f	
156	5	13	9	2		stolik_wars	t	f	f	
157	5	14	9	4		stolik_wars	t	f	f	
158	5	18	9	5		stolik_wars	t	f	f	
159	5	25	10	1		stolik_wars	t	f	f	
160	5	21	10	2		stolik_wars	t	f	f	
161	5	22	10	4		stolik_wars	t	f	f	
162	5	26	10	5		stolik_wars	t	f	f	
163	5	27	11	1		stolik_wars	t	f	f	
164	5	23	11	2		stolik_wars	t	f	f	
165	5	24	11	4		stolik_wars	t	f	f	
166	5	28	11	5		stolik_wars	t	f	f	
167	5	35	12	1		stolik_wars	t	f	f	
168	5	31	12	2		stolik_wars	t	f	f	
169	5	32	12	4		stolik_wars	t	f	f	
170	5	36	12	5		stolik_wars	t	f	f	
171	5	37	13	1		stolik_wars	t	f	f	
172	5	33	13	2		stolik_wars	t	f	f	
173	5	34	13	4		stolik_wars	t	f	f	
174	5	38	13	5		stolik_wars	t	f	f	
175	6	15	2	1		okno	f	f	t	t
176	6	11	2	2		korytarz	f	f	f	t
177	6	12	2	4		korytarz	f	f	f	t
178	6	16	2	5		okno	f	f	t	t
179	6	17	3	1		okno	f	f	t	f
180	6	13	3	2		korytarz	f	f	f	f
181	6	14	3	4		korytarz	f	f	f	f
182	6	18	3	5		okno	f	f	t	f
183	6	25	4	1		okno	f	f	t	t
184	6	21	4	2		korytarz	f	f	f	t
185	6	22	4	4		korytarz	f	f	f	t
186	6	26	4	5		okno	f	f	t	t
187	6	27	5	1		okno	f	f	t	f
188	6	23	5	2		korytarz	f	f	f	f
189	6	24	5	4		korytarz	f	f	f	f
190	6	28	5	5		okno	f	f	t	f
191	6	35	6	1		okno	f	f	t	t
192	6	31	6	2		korytarz	f	f	f	t
193	6	32	6	4		korytarz	f	f	f	t
194	6	36	6	5		okno	f	f	t	t
195	6	37	7	1		okno	f	f	t	f
196	6	33	7	2		korytarz	f	f	f	f
197	6	34	7	4		korytarz	f	f	f	f
198	6	38	7	5		okno	f	f	t	f
199	6	45	8	1		okno	f	f	t	t
200	6	41	8	2		korytarz	f	f	f	t
201	6	42	8	4		korytarz	f	f	f	t
202	6	46	8	5		okno	f	f	t	t
203	6	47	9	1		okno	f	f	t	f
204	6	43	9	2		korytarz	f	f	f	f
205	6	44	9	4		korytarz	f	f	f	f
206	6	48	9	5		okno	f	f	t	f
207	6	55	10	1		okno	f	f	t	t
208	6	51	10	2		korytarz	f	f	f	t
209	6	52	10	4		korytarz	f	f	f	t
210	6	56	10	5		okno	f	f	t	t
211	6	57	11	1		okno	f	f	t	f
212	6	53	11	2		korytarz	f	f	f	f
213	6	54	11	4		korytarz	f	f	f	f
214	6	58	11	5		okno	f	f	t	f
215	7	15	2	1		okno	f	f	f	
216	7	11	2	2		korytarz	f	f	f	
217	7	12	2	4		korytarz	f	f	f	
218	7	16	2	5		okno	f	f	f	
219	7	17	3	1		okno	f	f	f	
220	7	13	3	2		korytarz	f	f	f	
221	7	14	3	4		korytarz	f	f	f	
222	7	18	3	5		okno	f	f	f	
223	7	25	4	1		okno	f	f	f	
224	7	21	4	2		korytarz	f	f	f	
225	7	22	4	4		korytarz	f	f	f	
226	7	26	4	5		okno	f	f	f	
227	7	27	5	1		okno	f	f	f	
228	7	23	5	2		korytarz	f	f	f	
229	7	24	5	4		korytarz	f	f	f	
230	7	28	5	5		okno	f	f	f	
231	7	35	6	1		okno	f	f	f	
232	7	31	6	2		korytarz	f	f	f	
233	7	32	6	4		korytarz	f	f	f	
234	7	36	6	5		okno	f	f	f	
235	7	37	7	1		okno	f	f	f	
236	7	33	7	2		korytarz	f	f	f	
237	7	34	7	4		korytarz	f	f	f	
238	7	38	7	5		okno	f	f	f	
239	7	45	8	1		okno	f	f	f	
240	7	41	8	2		korytarz	f	f	f	
241	7	42	8	4		korytarz	f	f	f	
242	7	46	8	5		okno	f	f	f	
243	7	47	9	1		okno	f	f	f	
244	7	43	9	2		korytarz	f	f	f	
245	7	44	9	4		korytarz	f	f	f	
246	7	48	9	5		okno	f	f	f	
247	7	55	10	1		okno	f	f	f	
248	7	51	10	2		korytarz	f	f	f	
249	7	52	10	4		korytarz	f	f	f	
250	7	56	10	5		okno	f	f	f	
251	7	57	11	1		okno	f	f	f	
252	7	53	11	2		korytarz	f	f	f	
253	7	54	11	4		korytarz	f	f	f	
254	7	58	11	5		okno	f	f	f	
255	7	65	12	1		okno	f	f	f	
256	7	61	12	2		korytarz	f	f	f	
257	7	62	12	4		korytarz	f	f	f	
258	7	66	12	5		okno	f	f	f	
259	7	67	13	1		okno	f	f	f	
260	7	63	13	2		korytarz	f	f	f	
261	7	64	13	4		korytarz	f	f	f	
262	7	68	13	5		okno	f	f	f	
263	7	75	14	1		okno	f	f	f	
264	7	71	14	2		korytarz	f	f	f	
265	7	72	14	4		korytarz	f	f	f	
266	7	76	14	5		okno	f	f	f	
267	7	77	15	1		okno	f	f	f	
268	7	73	15	2		korytarz	f	f	f	
269	7	74	15	4		korytarz	f	f	f	
270	7	78	15	5		okno	f	f	f	
271	8	15	4	1		prm	f	t	f	t
272	8	11	4	2		prm	f	t	f	t
273	8	12	4	4		prm	f	t	f	t
274	8	16	4	5		prm	f	t	f	t
275	8	17	5	1		prm	f	t	f	f
276	8	13	5	2		prm	f	t	f	f
277	8	14	5	4		prm	f	t	f	f
278	8	18	5	5		prm	f	t	f	f
279	8	25	6	1		prm	f	t	f	t
280	8	21	6	2		prm	f	t	f	t
281	8	22	6	4		prm	f	t	f	t
282	8	26	6	5		prm	f	t	f	t
283	8	27	7	1		prm	f	t	f	f
284	8	23	7	2		prm	f	t	f	f
285	8	24	7	4		prm	f	t	f	f
286	8	28	7	5		prm	f	t	f	f
287	8	35	8	1		prm	f	t	f	t
288	8	31	8	2		prm	f	t	f	t
289	8	32	8	4		prm	f	t	f	t
290	8	36	8	5		prm	f	t	f	t
291	8	37	9	1		prm	f	t	f	f
292	8	33	9	2		prm	f	t	f	f
293	8	34	9	4		prm	f	t	f	f
294	8	38	9	5		prm	f	t	f	f
295	9	11	2	3	1	vip	t	f	f	t
296	9	13	2	4	1	vip	t	f	f	t
297	9	12	3	3	1	vip	t	f	f	f
298	9	14	3	4	1	vip	t	f	f	f
299	9	21	4	3	2	vip	t	f	f	t
300	9	23	4	4	2	vip	t	f	f	t
301	9	22	5	3	2	vip	t	f	f	f
302	9	24	5	4	2	vip	t	f	f	f
303	9	31	6	3	3	vip	t	f	f	t
304	9	33	6	4	3	vip	t	f	f	t
305	9	32	7	3	3	vip	t	f	f	f
306	9	34	7	4	3	vip	t	f	f	f
307	9	41	8	3	4	vip	t	f	f	t
308	9	43	8	4	4	vip	t	f	f	t
309	9	42	9	3	4	vip	t	f	f	f
310	9	44	9	4	4	vip	t	f	f	f
311	10	15	4	1		rodzinne	t	f	f	t
312	10	11	4	2		rodzinne	t	f	f	t
313	10	12	4	4		rodzinne	t	f	f	t
314	10	16	4	5		rodzinne	t	f	f	t
315	10	17	5	1		rodzinne	t	f	f	f
316	10	13	5	2		rodzinne	t	f	f	f
317	10	14	5	4		rodzinne	t	f	f	f
318	10	18	5	5		rodzinne	t	f	f	f
319	10	25	6	1		rodzinne	t	f	f	t
320	10	21	6	2		rodzinne	t	f	f	t
321	10	22	6	4		rodzinne	t	f	f	t
322	10	26	6	5		rodzinne	t	f	f	t
323	10	27	7	1		rodzinne	t	f	f	f
324	10	23	7	2		rodzinne	t	f	f	f
325	10	24	7	4		rodzinne	t	f	f	f
326	10	28	7	5		rodzinne	t	f	f	f
327	10	35	8	1		rodzinne	t	f	f	t
328	10	31	8	2		rodzinne	t	f	f	t
329	10	32	8	4		rodzinne	t	f	f	t
330	10	36	8	5		rodzinne	t	f	f	t
331	10	37	9	1		rodzinne	t	f	f	f
332	10	33	9	2		rodzinne	t	f	f	f
333	10	34	9	4		rodzinne	t	f	f	f
334	10	38	9	5		rodzinne	t	f	f	f
335	10	45	10	1		rodzinne	t	f	f	t
336	10	41	10	2		rodzinne	t	f	f	t
337	10	42	10	4		rodzinne	t	f	f	t
338	10	46	10	5		rodzinne	t	f	f	t
339	10	47	11	1		rodzinne	t	f	f	f
340	10	43	11	2		rodzinne	t	f	f	f
341	10	44	11	4		rodzinne	t	f	f	f
342	10	48	11	5		rodzinne	t	f	f	f
343	10	55	12	1		rodzinne	t	f	f	t
344	10	51	12	2		rodzinne	t	f	f	t
345	10	52	12	4		rodzinne	t	f	f	t
346	10	56	12	5		rodzinne	t	f	f	t
347	10	57	13	1		rodzinne	t	f	f	f
348	10	53	13	2		rodzinne	t	f	f	f
349	10	54	13	4		rodzinne	t	f	f	f
350	10	58	13	5		rodzinne	t	f	f	f
351	10	65	14	1		rodzinne	t	f	f	t
352	10	61	14	2		rodzinne	t	f	f	t
353	10	62	14	4		rodzinne	t	f	f	t
354	10	66	14	5		rodzinne	t	f	f	t
355	10	67	15	1		rodzinne	t	f	f	f
356	10	63	15	2		rodzinne	t	f	f	f
357	10	64	15	4		rodzinne	t	f	f	f
358	10	68	15	5		rodzinne	t	f	f	f
359	11	11	2	4	1	kuszetka	f	f	f	t
360	11	13	2	5	1	kuszetka	f	f	f	t
361	11	12	3	4	1	kuszetka	f	f	f	f
362	11	14	3	5	1	kuszetka	f	f	f	f
363	11	21	4	4	2	kuszetka	f	f	f	t
364	11	23	4	5	2	kuszetka	f	f	f	t
365	11	22	5	4	2	kuszetka	f	f	f	f
366	11	24	5	5	2	kuszetka	f	f	f	f
367	11	31	6	4	3	kuszetka	f	f	f	t
368	11	33	6	5	3	kuszetka	f	f	f	t
369	11	32	7	4	3	kuszetka	f	f	f	f
370	11	34	7	5	3	kuszetka	f	f	f	f
371	11	41	8	4	4	kuszetka	f	f	f	t
372	11	43	8	5	4	kuszetka	f	f	f	t
373	11	42	9	4	4	kuszetka	f	f	f	f
374	11	44	9	5	4	kuszetka	f	f	f	f
375	11	51	10	4	5	kuszetka	f	f	f	t
376	11	53	10	5	5	kuszetka	f	f	f	t
377	11	52	11	4	5	kuszetka	f	f	f	f
378	11	54	11	5	5	kuszetka	f	f	f	f
379	12	11	3	3	1	sypialny	f	f	f	t
380	12	12	4	3	1	sypialny	f	f	f	f
381	12	21	5	3	2	sypialny	f	f	f	t
382	12	22	6	3	2	sypialny	f	f	f	f
383	12	31	7	3	3	sypialny	f	f	f	t
384	12	32	8	3	3	sypialny	f	f	f	f
385	12	41	9	3	4	sypialny	f	f	f	t
386	12	42	10	3	4	sypialny	f	f	f	f
387	13	15	3	1		okno	f	f	f	t
388	13	11	3	2		korytarz	f	f	f	t
389	13	12	3	4		korytarz	f	f	f	t
390	13	16	3	5		okno	f	f	f	t
391	13	17	4	1		okno	f	f	f	f
392	13	13	4	2		korytarz	f	f	f	f
393	13	14	4	4		korytarz	f	f	f	f
394	13	18	4	5		okno	f	f	f	f
395	13	25	5	1		okno	f	f	f	t
396	13	21	5	2		korytarz	f	f	f	t
397	13	22	5	4		korytarz	f	f	f	t
398	13	26	5	5		okno	f	f	f	t
399	13	27	6	1		okno	f	f	f	f
400	13	23	6	2		korytarz	f	f	f	f
401	13	24	6	4		korytarz	f	f	f	f
402	13	28	6	5		okno	f	f	f	f
403	13	35	7	1		okno	t	f	f	t
404	13	31	7	2		korytarz	t	f	f	t
405	13	32	7	4		korytarz	t	f	f	t
406	13	36	7	5		okno	t	f	f	t
407	13	37	8	1		okno	t	f	f	f
408	13	33	8	2		korytarz	t	f	f	f
409	13	34	8	4		korytarz	t	f	f	f
410	13	38	8	5		okno	t	f	f	f
411	13	45	9	1		okno	f	f	f	t
412	13	41	9	2		korytarz	f	f	f	t
413	13	42	9	4		korytarz	f	f	f	t
414	13	46	9	5		okno	f	f	f	t
415	13	47	10	1		okno	f	f	f	f
416	13	43	10	2		korytarz	f	f	f	f
417	13	44	10	4		korytarz	f	f	f	f
418	13	48	10	5		okno	f	f	f	f
419	13	55	11	1		okno	f	f	f	t
420	13	51	11	2		korytarz	f	f	f	t
421	13	52	11	4		korytarz	f	f	f	t
422	13	56	11	5		okno	f	f	f	t
423	13	57	12	1		okno	f	f	f	f
424	13	53	12	2		korytarz	f	f	f	f
425	13	54	12	4		korytarz	f	f	f	f
426	13	58	12	5		okno	f	f	f	f
427	14	11	2	3	1	kuszetka	f	f	f	t
428	14	13	2	4	1	kuszetka	f	f	f	t
429	14	15	2	5	1	kuszetka	f	f	f	t
430	14	12	3	3	1	kuszetka	f	f	f	f
431	14	14	3	4	1	kuszetka	f	f	f	f
432	14	16	3	5	1	kuszetka	f	f	f	f
433	14	21	4	3	2	kuszetka	f	f	f	t
434	14	23	4	4	2	kuszetka	f	f	f	t
435	14	25	4	5	2	kuszetka	f	f	f	t
436	14	22	5	3	2	kuszetka	f	f	f	f
437	14	24	5	4	2	kuszetka	f	f	f	f
438	14	26	5	5	2	kuszetka	f	f	f	f
439	14	31	6	3	3	kuszetka	f	f	f	t
440	14	33	6	4	3	kuszetka	f	f	f	t
441	14	35	6	5	3	kuszetka	f	f	f	t
442	14	32	7	3	3	kuszetka	f	f	f	f
443	14	34	7	4	3	kuszetka	f	f	f	f
444	14	36	7	5	3	kuszetka	f	f	f	f
445	14	41	8	3	4	kuszetka	f	f	f	t
446	14	43	8	4	4	kuszetka	f	f	f	t
447	14	45	8	5	4	kuszetka	f	f	f	t
448	14	42	9	3	4	kuszetka	f	f	f	f
449	14	44	9	4	4	kuszetka	f	f	f	f
450	14	46	9	5	4	kuszetka	f	f	f	f
451	14	51	10	3	5	kuszetka	f	f	f	t
452	14	53	10	4	5	kuszetka	f	f	f	t
453	14	55	10	5	5	kuszetka	f	f	f	t
454	14	52	11	3	5	kuszetka	f	f	f	f
455	14	54	11	4	5	kuszetka	f	f	f	f
456	14	56	11	5	5	kuszetka	f	f	f	f
457	14	61	12	3	6	kuszetka	f	f	f	t
458	14	63	12	4	6	kuszetka	f	f	f	t
459	14	65	12	5	6	kuszetka	f	f	f	t
460	14	62	13	3	6	kuszetka	f	f	f	f
461	14	64	13	4	6	kuszetka	f	f	f	f
462	14	66	13	5	6	kuszetka	f	f	f	f
463	15	15	2	1		okno	f	f	f	t
464	15	11	2	2		korytarz	f	f	f	t
465	15	12	2	4		korytarz	f	f	f	t
466	15	16	2	5		okno	f	f	f	t
467	15	17	3	1		okno	f	f	f	f
468	15	13	3	2		korytarz	f	f	f	f
469	15	14	3	4		korytarz	f	f	f	f
470	15	18	3	5		okno	f	f	f	f
471	15	25	4	1		okno	f	f	f	t
472	15	21	4	2		korytarz	f	f	f	t
473	15	22	4	4		korytarz	f	f	f	t
474	15	26	4	5		okno	f	f	f	t
475	15	27	5	1		okno	f	f	f	f
476	15	23	5	2		korytarz	f	f	f	f
477	15	24	5	4		korytarz	f	f	f	f
478	15	28	5	5		okno	f	f	f	f
479	15	35	6	1		okno	t	f	f	t
480	15	31	6	2		korytarz	t	f	f	t
481	15	32	6	4		korytarz	t	f	f	t
482	15	36	6	5		okno	t	f	f	t
483	15	37	7	1		okno	t	f	f	f
484	15	33	7	2		korytarz	t	f	f	f
485	15	34	7	4		korytarz	t	f	f	f
486	15	38	7	5		okno	t	f	f	f
487	15	45	9	1		okno	t	f	f	t
488	15	41	9	2		korytarz	t	f	f	t
489	15	42	9	4		korytarz	t	f	f	t
490	15	46	9	5		okno	t	f	f	t
491	15	47	10	1		okno	t	f	f	f
492	15	43	10	2		korytarz	t	f	f	f
493	15	44	10	4		korytarz	t	f	f	f
494	15	48	10	5		okno	t	f	f	f
495	15	55	11	1		okno	f	f	f	t
496	15	51	11	2		korytarz	f	f	f	t
497	15	52	11	4		korytarz	f	f	f	t
498	15	56	11	5		okno	f	f	f	t
499	15	57	12	1		okno	f	f	f	f
500	15	53	12	2		korytarz	f	f	f	f
501	15	54	12	4		korytarz	f	f	f	f
502	15	58	12	5		okno	f	f	f	f
503	15	65	13	1		okno	f	f	f	t
504	15	61	13	2		korytarz	f	f	f	t
505	15	62	13	4		korytarz	f	f	f	t
506	15	66	13	5		okno	f	f	f	t
507	15	67	14	1		okno	f	f	f	f
508	15	63	14	2		korytarz	f	f	f	f
509	15	64	14	4		korytarz	f	f	f	f
510	15	68	14	5		okno	f	f	f	f
511	16	15	2	1		okno	f	f	f	t
512	16	11	2	2		korytarz	f	f	f	t
513	16	13	2	4		środek	f	f	f	t
514	16	17	3	1		okno	f	f	f	f
515	16	12	3	2		korytarz	f	f	f	f
516	16	14	3	4		środek	f	f	f	f
517	16	25	4	1		okno	f	f	f	t
518	16	21	4	2		korytarz	f	f	f	t
519	16	23	4	4		środek	f	f	f	t
520	16	27	5	1		okno	f	f	f	f
521	16	22	5	2		korytarz	f	f	f	f
522	16	24	5	4		środek	f	f	f	f
523	16	35	6	1		okno	f	f	f	t
524	16	31	6	2		korytarz	f	f	f	t
525	16	33	6	4		środek	f	f	f	t
526	16	37	7	1		okno	f	f	f	f
527	16	32	7	2		korytarz	f	f	f	f
528	16	34	7	4		środek	f	f	f	f
529	16	45	8	1		okno	f	f	f	t
530	16	41	8	2		korytarz	f	f	f	t
531	16	43	8	4		środek	f	f	f	t
532	16	47	9	1		okno	f	f	f	f
533	16	42	9	2		korytarz	f	f	f	f
534	16	44	9	4		środek	f	f	f	f
535	16	55	10	1		okno	f	f	f	t
536	16	51	10	2		korytarz	f	f	f	t
537	16	53	10	4		środek	f	f	f	t
538	16	57	11	1		okno	f	f	f	f
539	16	52	11	2		korytarz	f	f	f	f
540	16	54	11	4		środek	f	f	f	f
541	17	35	5	1		okno	t	f	f	t
542	17	31	5	2		korytarz	t	f	f	t
543	17	33	5	4		środek	t	f	f	t
544	17	37	6	1		okno	t	f	f	f
545	17	32	6	2		korytarz	t	f	f	f
546	17	34	6	4		środek	t	f	f	f
547	17	45	7	1		okno	t	f	f	t
548	17	41	7	2		korytarz	t	f	f	t
549	17	43	7	4		środek	t	f	f	t
550	17	47	8	1		okno	t	f	f	f
551	17	42	8	2		korytarz	t	f	f	f
552	17	44	8	4		środek	t	f	f	f
553	17	55	9	1		okno	f	f	f	t
554	17	51	9	2		korytarz	f	f	f	t
555	17	53	9	4		środek	f	f	f	t
556	17	57	10	1		okno	f	f	f	f
557	17	52	10	2		korytarz	f	f	f	f
558	17	54	10	4		środek	f	f	f	f
559	17	65	11	1		okno	f	f	f	t
560	17	61	11	2		korytarz	f	f	f	t
561	17	63	11	4		środek	f	f	f	t
562	17	67	12	1		okno	f	f	f	f
563	17	62	12	2		korytarz	f	f	f	f
564	17	64	12	4		środek	f	f	f	f
565	18	15	2	1		okno	f	f	f	t
566	18	11	2	2		korytarz	f	f	f	t
567	18	12	2	4		korytarz	f	f	f	t
568	18	16	2	5		okno	f	f	f	t
569	18	17	3	1		okno	f	f	f	f
570	18	13	3	2		korytarz	f	f	f	f
571	18	14	3	4		korytarz	f	f	f	f
572	18	18	3	5		okno	f	f	f	f
573	18	25	4	1		okno	f	f	f	t
574	18	21	4	2		korytarz	f	f	f	t
575	18	22	4	4		korytarz	f	f	f	t
576	18	26	4	5		okno	f	f	f	t
577	18	27	5	1		okno	f	f	f	f
578	18	23	5	2		korytarz	f	f	f	f
579	18	24	5	4		korytarz	f	f	f	f
580	18	28	5	5		okno	f	f	f	f
581	18	35	6	1		okno	f	f	f	t
582	18	31	6	2		korytarz	f	f	f	t
583	18	32	6	4		korytarz	f	f	f	t
584	18	36	6	5		okno	f	f	f	t
585	18	37	7	1		okno	f	f	f	f
586	18	33	7	2		korytarz	f	f	f	f
587	18	34	7	4		korytarz	f	f	f	f
588	18	38	7	5		okno	f	f	f	f
589	18	45	8	1		okno	f	f	f	t
590	18	41	8	2		korytarz	f	f	f	t
591	18	42	8	4		korytarz	f	f	f	t
592	18	46	8	5		okno	f	f	f	t
593	18	47	9	1		okno	f	f	f	f
594	18	43	9	2		korytarz	f	f	f	f
595	18	44	9	4		korytarz	f	f	f	f
596	18	48	9	5		okno	f	f	f	f
597	18	55	10	1		okno	f	f	f	t
598	18	51	10	2		korytarz	f	f	f	t
599	18	52	10	4		korytarz	f	f	f	t
600	18	56	10	5		okno	f	f	f	t
601	18	57	11	1		okno	f	f	f	f
602	18	53	11	2		korytarz	f	f	f	f
603	18	54	11	4		korytarz	f	f	f	f
604	18	58	11	5		okno	f	f	f	f
605	18	65	12	1		okno	f	f	f	t
606	18	61	12	2		korytarz	f	f	f	t
607	18	62	12	4		korytarz	f	f	f	t
608	18	66	12	5		okno	f	f	f	t
609	18	67	13	1		okno	f	f	f	f
610	18	63	13	2		korytarz	f	f	f	f
611	18	64	13	4		korytarz	f	f	f	f
612	18	68	13	5		okno	f	f	f	f
613	20	11	2	3	1	korytarz	f	f	f	t
614	20	13	2	4	1	środek	f	f	f	t
615	20	15	2	5	1	okno	f	f	f	t
616	20	12	3	3	1	korytarz	f	f	f	f
617	20	14	3	4	1	środek	f	f	f	f
618	20	16	3	5	1	okno	f	f	f	f
619	20	21	4	3	2	korytarz	f	f	f	t
620	20	23	4	4	2	środek	f	f	f	t
621	20	25	4	5	2	okno	f	f	f	t
622	20	22	5	3	2	korytarz	f	f	f	f
623	20	24	5	4	2	środek	f	f	f	f
624	20	26	5	5	2	okno	f	f	f	f
625	20	31	6	3	3	korytarz	f	f	f	t
626	20	33	6	4	3	środek	f	f	f	t
627	20	35	6	5	3	okno	f	f	f	t
628	20	32	7	3	3	korytarz	f	f	f	f
629	20	34	7	4	3	środek	f	f	f	f
630	20	36	7	5	3	okno	f	f	f	f
631	20	41	8	3	4	korytarz	f	f	f	t
632	20	43	8	4	4	środek	f	f	f	t
633	20	45	8	5	4	okno	f	f	f	t
634	20	42	9	3	4	korytarz	f	f	f	f
635	20	44	9	4	4	środek	f	f	f	f
636	20	46	9	5	4	okno	f	f	f	f
637	20	51	10	3	5	korytarz	f	f	f	t
638	20	53	10	4	5	środek	f	f	f	t
639	20	55	10	5	5	okno	f	f	f	t
640	20	52	11	3	5	korytarz	f	f	f	f
641	20	54	11	4	5	środek	f	f	f	f
642	20	56	11	5	5	okno	f	f	f	f
643	20	61	12	3	6	korytarz	f	f	f	t
644	20	63	12	4	6	środek	f	f	f	t
645	20	65	12	5	6	okno	f	f	f	t
646	20	62	13	3	6	korytarz	f	f	f	f
647	20	64	13	4	6	środek	f	f	f	f
648	20	66	13	5	6	okno	f	f	f	f
649	20	71	14	3	7	korytarz	f	f	f	t
650	20	73	14	4	7	środek	f	f	f	t
651	20	75	14	5	7	okno	f	f	f	t
652	20	72	15	3	7	korytarz	f	f	f	f
653	20	74	15	4	7	środek	f	f	f	f
654	20	76	15	5	7	okno	f	f	f	f
655	21	15	2	1		okno	f	f	f	t
656	21	11	2	2		korytarz	f	f	f	t
657	21	12	2	4		korytarz	f	f	f	t
658	21	16	2	5		okno	f	f	f	t
659	21	17	3	1		okno	f	f	f	f
660	21	13	3	2		korytarz	f	f	f	f
661	21	14	3	4		korytarz	f	f	f	f
662	21	18	3	5		okno	f	f	f	f
663	21	25	4	1		okno	f	f	f	t
664	21	21	4	2		korytarz	f	f	f	t
665	21	22	4	4		korytarz	f	f	f	t
666	21	26	4	5		okno	f	f	f	t
667	21	27	5	1		okno	f	f	f	f
668	21	23	5	2		korytarz	f	f	f	f
669	21	24	5	4		korytarz	f	f	f	f
670	21	28	5	5		okno	f	f	f	f
671	21	35	6	1		okno	f	f	f	t
672	21	31	6	2		korytarz	f	f	f	t
673	21	32	6	4		korytarz	f	f	f	t
674	21	36	6	5		okno	f	f	f	t
675	21	37	7	1		okno	f	f	f	f
676	21	33	7	2		korytarz	f	f	f	f
677	21	34	7	4		korytarz	f	f	f	f
678	21	38	7	5		okno	f	f	f	f
679	21	45	8	1		okno	f	f	f	t
680	21	41	8	2		korytarz	f	f	f	t
681	21	42	8	4		korytarz	f	f	f	t
682	21	46	8	5		okno	f	f	f	t
683	21	47	9	1		okno	f	f	f	f
684	21	43	9	2		korytarz	f	f	f	f
685	21	44	9	4		korytarz	f	f	f	f
686	21	48	9	5		okno	f	f	f	f
687	21	55	10	1		okno	f	f	f	t
688	21	51	10	2		korytarz	f	f	f	t
689	21	52	10	4		korytarz	f	f	f	t
690	21	56	10	5		okno	f	f	f	t
691	21	57	11	1		okno	f	f	f	f
692	21	53	11	2		korytarz	f	f	f	f
693	21	54	11	4		korytarz	f	f	f	f
694	21	58	11	5		okno	f	f	f	f
695	21	65	12	1		okno	f	f	f	t
696	21	61	12	2		korytarz	f	f	f	t
697	21	62	12	4		korytarz	f	f	f	t
698	21	66	12	5		okno	f	f	f	t
699	21	67	13	1		okno	f	f	f	f
700	21	63	13	2		korytarz	f	f	f	f
701	21	64	13	4		korytarz	f	f	f	f
702	21	68	13	5		okno	f	f	f	f
703	21	75	14	1		okno	f	f	f	t
704	21	71	14	2		korytarz	f	f	f	t
705	21	72	14	4		korytarz	f	f	f	t
706	21	76	14	5		okno	f	f	f	t
707	21	77	15	1		okno	f	f	f	f
708	21	73	15	2		korytarz	f	f	f	f
709	21	74	15	4		korytarz	f	f	f	f
710	21	78	15	5		okno	f	f	f	f
711	22	55	9	1		bar	f	f	f	
712	22	51	9	2		bar	f	f	f	
713	22	52	9	4		bar	f	f	f	
714	22	56	9	5		bar	f	f	f	
715	22	57	10	1		bar	f	f	f	
716	22	53	10	2		bar	f	f	f	
717	22	54	10	4		bar	f	f	f	
718	22	58	10	5		bar	f	f	f	
719	22	65	11	1		bar	f	f	f	
720	22	61	11	2		bar	f	f	f	
721	22	62	11	4		bar	f	f	f	
722	22	66	11	5		bar	f	f	f	
723	22	67	12	1		bar	f	f	f	
724	22	63	12	2		bar	f	f	f	
725	22	64	12	4		bar	f	f	f	
726	22	68	12	5		bar	f	f	f	
727	23	15	2	1		okno	f	f	t	t
728	23	11	2	2		korytarz	f	f	f	t
729	23	12	2	4		korytarz	f	f	f	t
730	23	16	2	5		okno	f	f	f	t
731	23	17	3	1		okno	f	f	t	f
732	23	13	3	2		korytarz	f	f	f	f
733	23	14	3	4		korytarz	f	f	f	f
734	23	18	3	5		okno	f	f	f	f
735	23	25	4	1		okno	f	f	t	t
736	23	21	4	2		korytarz	f	f	f	t
737	23	22	4	4		korytarz	f	f	f	t
738	23	26	4	5		okno	f	f	f	t
739	23	27	5	1		okno	f	f	t	f
740	23	23	5	2		korytarz	f	f	f	f
741	23	24	5	4		korytarz	f	f	f	f
742	23	28	5	5		okno	f	f	f	f
743	23	35	6	1		okno	f	f	t	t
744	23	31	6	2		korytarz	f	f	f	t
745	23	32	6	4		korytarz	f	f	f	t
746	23	36	6	5		okno	f	f	f	t
747	23	37	7	1		okno	f	f	t	f
748	23	33	7	2		korytarz	f	f	f	f
749	23	34	7	4		korytarz	f	f	f	f
750	23	38	7	5		okno	f	f	f	f
751	23	45	8	1		okno	f	f	t	t
752	23	41	8	2		korytarz	f	f	f	t
753	23	42	8	4		korytarz	f	f	f	t
754	23	46	8	5		okno	f	f	f	t
755	23	47	9	1		okno	f	f	t	f
756	23	43	9	2		korytarz	f	f	f	f
757	23	44	9	4		korytarz	f	f	f	f
758	23	48	9	5		okno	f	f	f	f
759	24	11	2	3	1	siedzący_nocny	f	f	f	t
760	24	13	2	4	1	siedzący_nocny	f	f	f	t
761	24	15	2	5	1	siedzący_nocny	f	f	f	t
762	24	12	3	3	1	siedzący_nocny	f	f	f	f
763	24	14	3	4	1	siedzący_nocny	f	f	f	f
764	24	16	3	5	1	siedzący_nocny	f	f	f	f
765	24	21	4	3	2	siedzący_nocny	f	f	f	t
766	24	23	4	4	2	siedzący_nocny	f	f	f	t
767	24	25	4	5	2	siedzący_nocny	f	f	f	t
768	24	22	5	3	2	siedzący_nocny	f	f	f	f
769	24	24	5	4	2	siedzący_nocny	f	f	f	f
770	24	26	5	5	2	siedzący_nocny	f	f	f	f
771	24	31	6	3	3	siedzący_nocny	f	f	f	t
772	24	33	6	4	3	siedzący_nocny	f	f	f	t
773	24	35	6	5	3	siedzący_nocny	f	f	f	t
774	24	32	7	3	3	siedzący_nocny	f	f	f	f
775	24	34	7	4	3	siedzący_nocny	f	f	f	f
776	24	36	7	5	3	siedzący_nocny	f	f	f	f
777	24	41	8	3	4	siedzący_nocny	f	f	f	t
778	24	43	8	4	4	siedzący_nocny	f	f	f	t
779	24	45	8	5	4	siedzący_nocny	f	f	f	t
780	24	42	9	3	4	siedzący_nocny	f	f	f	f
781	24	44	9	4	4	siedzący_nocny	f	f	f	f
782	24	46	9	5	4	siedzący_nocny	f	f	f	f
783	24	51	10	3	5	siedzący_nocny	f	f	f	t
784	24	53	10	4	5	siedzący_nocny	f	f	f	t
785	24	55	10	5	5	siedzący_nocny	f	f	f	t
786	24	52	11	3	5	siedzący_nocny	f	f	f	f
787	24	54	11	4	5	siedzący_nocny	f	f	f	f
788	24	56	11	5	5	siedzący_nocny	f	f	f	f
789	24	61	12	3	6	siedzący_nocny	f	f	f	t
790	24	63	12	4	6	siedzący_nocny	f	f	f	t
791	24	65	12	5	6	siedzący_nocny	f	f	f	t
792	24	62	13	3	6	siedzący_nocny	f	f	f	f
793	24	64	13	4	6	siedzący_nocny	f	f	f	f
794	24	66	13	5	6	siedzący_nocny	f	f	f	f
795	24	71	14	3	7	siedzący_nocny	f	f	f	t
796	24	73	14	4	7	siedzący_nocny	f	f	f	t
797	24	75	14	5	7	siedzący_nocny	f	f	f	t
798	24	72	15	3	7	siedzący_nocny	f	f	f	f
799	24	74	15	4	7	siedzący_nocny	f	f	f	f
800	24	76	15	5	7	siedzący_nocny	f	f	f	f
801	25	15	2	1		okno	f	f	f	t
802	25	11	2	2		korytarz	f	f	f	t
803	25	13	2	4		środek	f	f	f	t
804	25	17	3	1		okno	f	f	f	f
805	25	12	3	2		korytarz	f	f	f	f
806	25	14	3	4		środek	f	f	f	f
807	25	25	4	1		okno	f	f	f	t
808	25	21	4	2		korytarz	f	f	f	t
809	25	23	4	4		środek	f	f	f	t
810	25	27	5	1		okno	f	f	f	f
811	25	22	5	2		korytarz	f	f	f	f
812	25	24	5	4		środek	f	f	f	f
813	25	35	6	1		okno	f	f	f	t
814	25	31	6	2		korytarz	f	f	f	t
815	25	33	6	4		środek	f	f	f	t
816	25	37	7	1		okno	f	f	f	f
817	25	32	7	2		korytarz	f	f	f	f
818	25	34	7	4		środek	f	f	f	f
819	25	45	8	1		okno	f	f	f	t
820	25	41	8	2		korytarz	f	f	f	t
821	25	43	8	4		środek	f	f	f	t
822	25	47	9	1		okno	f	f	f	f
823	25	42	9	2		korytarz	f	f	f	f
824	25	44	9	4		środek	f	f	f	f
825	25	55	10	1		okno	f	f	f	t
826	25	51	10	2		korytarz	f	f	f	t
827	25	53	10	4		środek	f	f	f	t
828	25	57	11	1		okno	f	f	f	f
829	25	52	11	2		korytarz	f	f	f	f
830	25	54	11	4		środek	f	f	f	f
\.

COPY pociagi (id_pociagu, nazwa, kategoria) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	KONOPNICKA_6146_7	IC
2	GEDANIA_57000_1	EC/IC
3	SMOK_WAWELSKI_23108_9	IC
4	SZTYGAR_2306_7	IC
5	BATORY_14004_5	EC/IC
6	PRZEMYŚLANIN_33172	IC
7	POJEZIERZE_5710_1	IC
8	PLANTY_63100_1	TLK
9	EIC_3504_5	EIC
10	SILESIA_41006_7	EC/IC
11	SILESIA_14008_9	IC
12	SUKIENNICE_8322_3	IC
13	ŚNIEŻKA_6150_1	IC
14	USZATEK_1908_9	IC
15	ŁYSICA_2621	IC
16	KOPERNIK_5220_1	IC
17	ONDRASZEK_4110_1	EIC
18	WISŁOK_3138_9	IC
19	KOZIOŁEK_2820_1	IC
20	NIEGOCIN_5606	IC
21	OLEŃKA_6148_9	IC
22	HETMAN_23112_3	IC
23	WAWEL_37002_3	EC/IC
24	BERLINWARSZAWAEXPRESS_71004_5	EC/EIC
25	KONOPNICKA_1646_7	IC
26	FREDRO_6142_3	IC
27	KORCZAK_19132_3	IC
28	MATEJKO_8314_5	IC
29	EIP_3104_5	EIP
30	JEZIORAK_5708_9	IC
31	TELIMENA_1904_5	IC
32	WYCZÓŁKOWSKI_135_VIA_REGIA_830	IC
33	KAZIMIERZ_5334_5	IC
34	NIEGOCIN_6506_7	IC
35	SMOK_WAWELSKI_32108_9	IC
36	SAN_1330_1	IC
37	DOKER_4522_3	IC
38	GÓRSKI_2802_3	IC
39	CHEŁMOŃSKI_133_SAXONIA_8302_3	IC
40	PORAZIŃSKA_1652_3	IC
41	ZOSIA_9100_1	IC
42	ZIELONOGÓRZANIN_7204_5	IC
43	PANORAMA_6100_1	EIC
44	INKA_1216_7	IC
45	SZKUNER_3812_3	IC
46	BERLINWARSZAWAEXPRESS_17012_3	EC/EIC
47	ŁEMPICKA_2600_1	IC
48	MORAVIA_40001	EC/IC
49	POBRZEŻE_1814_5	IC
50	SUDETY_63102_3	TLK
51	ODRA_73004_5	EC/IC
52	CHEŁMOŃSKI_132_SAXONIA_3802_3	IC
53	HUTNIK_4520_1	IC
54	GWAREK_8316_7	IC
55	SILESIA_41000_1	EC/IC
56	GÓRSKI_7702_3	IC
57	NIDA_3522_3	IC
58	ARTUS_4512_3	IC
59	GÓRSKI_7700_1	IC
60	ZAMOYSKI_8334_5	IC
61	CHOPIN_41010_1	EN/IC
62	GROTTGER_6304_5	IC
63	BOSMAN_8612	IC
64	PORAZIŃSKA_6152_3	IC
65	CHEMIK_4124_5	IC
66	EIP_4502_3	EIP
67	LUBOMIRSKI_3828_9	TLK
68	MEHOFFER_3718_9	IC
69	UKIEL_7506_7	IC
70	ŻEGLARZ_5114_5	IC
71	NIDA_5322_3	IC
72	POWIŚLE_5503	TLK
73	KATAMARAN_5118_9	IC
74	LUBOMIRSKI_8328_9	TLK
75	HUTNIK_5420_1	IC
76	PLANTY_36100_1	TLK
77	MAŁOPOLSKA_30105	TLK
78	MALCZEWSKI_8304_5	IC
79	KORMORAN_3530_1	IC
80	MORCINEK_4204_5	IC
81	JADWIGA_4202	IC
82	ŻEROMSKI_3524_5	IC
83	KYIV_EXPRESS_21010_1	IC/MP
84	SPODEK_37100_1	TLK
85	LUBUSZANIN_78103	IC
86	USTRONIE_38170_1	TLK
87	HAŃCZA_13000_1	IC
88	WETLINA_30111	IC
89	KINGA_3122_3	IC
90	ZIELONOGÓRZANIN_2704_5	IC
91	CEGIELSKI_3720_1	IC
92	HEWELIUSZ_60101	IC
93	HEWELIUSZ_66100	IC
94	POLONIA_14002_3	EC/IC
95	ŁUŻYCE_1644_5	IC
96	WITOS_3136_7	IC
97	EIC_4504_5	EIC
98	SZKUNER_8312_3	IC
99	MALINOWSKI_1312_3	IC
100	EIP_4500_1	EIP
101	LEDNICA_5600	IC
102	MERKURY_8610	IC
103	LUBUSZANIN_1710_1	IC
104	KATAMARAN_1518_9	IC
105	CRACOVIA_43008_9	EC/IC
106	CEGIELSKI_7320_1	IC
107	ORŁOWICZ_3532_3	IC
108	DRWĘCA_7502_3	IC
109	WARMIA_5320_1	IC
110	SZKUNER_8312_3_2	IC
111	IC+_33027	IC+
112	TATRY_1350_1	EIC
113	MEDUZA_1546_7	IC
114	SUDETY_36102_3	TLK
115	OLEŃKA_1648_9	IC
116	ASNYK_6120_1	IC
117	BACHUS_7504_5	IC
118	EIP_5402_3	EIP
119	SOBIESKI_41012_3	EC/IC
120	GALICJA_37000_1	EC/IC
121	IC_78109	IC
122	GWAREK_3816_7	IC
123	USTRONIE_83170_1	TLK
124	EIC_1302_3	EIC
125	KOLBERG_3528_9	IC
126	JADWIGA_2302_3	IC
127	SŁOWINIEC_5112_3	IC
128	SŁOWINIEC_1512_3	IC
129	WYBICKI_3724_5	IC
130	BATORY_41004_5	EC/IC
131	KILIŃSKI_1712_3	IC
132	UZNAM_82170_1	IC
133	PARSĘTA_1856_7	IC
134	BOLKO_6202_3	IC
135	BYSTRZYCA_5338_9	IC
136	ŚLĘŻA_6102_3	EIC
137	ORŁOWICZ_5332_3	IC
138	ŁEMPICKA_6200_1	IC
139	SAXONIA_66002	EC/IC
140	FLISAK_45102_3	TLK
141	NOTEĆ_3836_7	IC
142	WIGRY_18000_1	IC
143	GRYF_58106_7	IC
144	BOCIAN_1112_3	TLK
145	ORZESZKOWA_6138_9	IC
146	DĄBROWSKA_1632_3	IC
147	ODRA_37004_5	EC/IC
148	SILESIA_14000_1	EC/IC
149	KOZIOŁEK_8220_1	IC
150	BERLINWARSZAWAEXPRESS_17006_7	EC/EIC
151	NIEMCEWICZ_1037	IC
152	HALNY_73150_1	IC
153	USZATEK_9108_9	IC
154	PRZEMYŚLANIN_87172_3	IC
155	PUŁASKI_37102_3	TLK
156	SWAROŻYC_86102	IC
157	WYSPIAŃSKI_3602_3	IC
158	DRWĘCA_5702_3	IC
159	KOSSAK_8310_1	IC
160	POLONIA_41002_3	EC/IC
161	POMORZANIN_5608_9	IC
162	POMORZANIN_6508_9	IC
163	ZEFIR_3806_7	IC
164	POWIŚLE_5500	TLK
165	KOLBERG_5328_9	IC
166	COMENIUS_43004_5	EC/IC
167	MORAVIA_44000	EC
168	MATEJKO_3814_5	IC
169	MEHOFFER_7318_9	IC
170	BALTIC_EXPRESS_65070_1	EC/IC
171	ZAMOYSKI_8034_5	IC
172	SILESIA_14006_7	EC/IC
173	WARMIA_5320_1_2	IC
174	STOCZNIOWIEC_5712_3	IC
175	BERLINWARSZAWAEXPRESS_71000_1	EC/EIC
176	BERLINWARSZAWAEXPRESS_71008_9	EC/EIC
177	LUBUSZANIN_7110_1	IC
178	MALINOWSKI_3112_3	IC
179	KOCIEWIE_1528_9	IC
180	CHROBRY_1800_1	EIC
181	BALTIC_EXPRESS_56000_1	EC/IC
182	FAŁAT_7316_7	IC
183	KRASIŃSKI_6124_5	IC
184	BERLINWARSZAWAEXPRESS_17008_9	EC/EIC
185	BALTIC_EXPRESS_56070_1	EC/IC
186	DOKER_5422_3	IC
187	BALTIC_EXPRESS_56002_3	EC/IC
188	KUTER_1539	IC
189	ŚNIEŻKA_6140_1	IC
190	FREDRO_1642_3	IC
191	CARPATIA_43014_5	EN/IC
192	REYMONT_3128_9	IC
193	WITKACY_3560_1	IC
194	MICKIEWICZ_1628_9	IC
195	IC_87110	IC
196	SZTYGAR_2406_7	IC
197	WŁÓKNIARZ_1820_1	IC
198	NIDA_5322_3_2	IC
199	HEWELIUSZ_5410_1	IC
200	PRZEMYŚLANIN_78172_3	IC
201	EIP_4506_7	EIP
202	VIADRINA_6110_1	EIC
203	KARPATY_53170_1	TLK
204	BRYZA_58104_5	IC
205	GALICJA_73000_1	EC/IC
206	UZNAM_440_URSA_28170_1	IC
207	SWAROŻYC_68102_3	IC
208	PRATER_43010_1	EC/IC
209	BERLINWARSZAWAEXPRESS_71012_3	EC/EIC
210	LEŚMIAN_1626_7	IC
211	URSA_73010_1	EC/IC
212	WARMIA_1521	IC
213	MAŁOPOLSKA_53104_5	TLK
214	KORFANTY_1422_3	IC
215	BOLESŁAW_PRUS_8104_5	EIC
216	STRYJEŃSKA_2606_7	IC
217	SZCZELINIEC_36106_7	TLK
218	GAŁCZYŃSKI_1810_1	IC
219	GROTTGER_3604_5	IC
220	JANTAR_1541	EIC
221	BESKIDY_1460_1	IC
222	WYSPIAŃSKI_6302_3	IC
223	KINGA_1322_3	IC
224	REYMONT_1329	IC
225	HAŃCZA_31000_1	IC
226	STRZELECKI_7200_1	IC
227	ŁUŻYCE_6144_5	IC
228	BOCIAN_1012_3	TLK
229	EIP_5300_1	EIP
230	BALTIC_EXPRESS_65070_1_2	EC/IC/ICN
231	PILECKI_1428_9	IC
232	EIP_5406_7	EIP
233	HALNY_37150_1	IC
234	WITKACY_5360_1	IC
235	BOSMAN_6813	IC
236	KARPATY_35170_1	TLK
237	UKIEL_5706_7	IC
238	SZTYGAR_4206_7	IC
239	STARZYŃSKI_1033	IC
240	ŻYLICA_3401	IC
241	SPODEK_73100_1	TLK
242	KOCHANOWSKI_5226_7	IC
243	ŚNIEŻKA_1640_1	IC
244	WARTA_2706_7	IC
245	MAMRY_5602	IC
246	VIA_REGIA_60009	EC/IC
247	STASZIC_1830_1	IC
248	KOSSAK_3810_1	IC
249	WYCZÓŁKOWSKI_134_VIA_REGIA_380	IC
250	BALTIC_EXPRESS_65004_5	EC/IC
251	WAWEL_73002_3	EC/IC
252	BRYZA_85104_5	IC
253	CHEMIK_1424_5	IC
254	KINGA_1322_3_2	IC
255	PODLASIAK_1812_3	IC
256	KARPATY_35170_1_2	TLK
257	SILESIA_41008_9	IC
258	URSA_37010_1	EC/IC
259	STRZELECKI_2700_1	IC
260	WITOS_1336_7	IC
261	ŻUBR_1016_7	IC
262	SZTYGAR_3206_7	IC
263	IC_78115	IC
264	EIC_5100_1	EIC
265	CZECHOWICZ_1212_3	IC
266	SOBIESKI_14012_3	EC/IC
267	SIEMIRADZKI_6300_1	IC
268	DANUBIUS_43006	EC/IC
269	NOTEĆ_8336_7	IC
270	SZPIGLASOWY_WIERCH_31160_1	TLK
271	KASZTELAN_23110_1	IC
272	ZATOKA_5132	IC
273	CZECHOWICZ_2112_3	IC
274	SUKIENNICE_3822_3	IC
275	WYSOCKI_4550_1	EIC
276	BACZYŃSKI_6122_3	IC
277	DANUBIUS_47000_1	EC/IC
278	BAŁTYK_5700_1	IC
279	JAGNA_1902_3	IC
280	ŁOKIETEK_3124_5	IC
281	JADWIGA_2403	IC
282	MAMRY_6502_3	IC
283	PRZĄŚNICZKA_1906_7	IC
284	PRZEMYŚLANIN_30173	IC
285	ORZESZKOWA_1638_9	IC
286	ŻEGLARZ_1514_5	IC
287	WYBICKI_7324_5	IC
288	PUŁASKI_73102_3	TLK
289	BALTAZAR_3405	IC
290	SAXONIA_60003	EC/IC
291	KOSSAK_3810_1_2	IC
292	WYBRZEŻE_5116_7	IC
293	PORTA_MORAVICA_34002_3	EC/IC
294	KARKONOSZE_16170_1	IC
295	NAŁKOWSKA_1630_1	IC
296	EIP_5302_3	EIP
297	SAXONIA_66002_2	EC/IC
298	ZEFIR_8306_7	IC
299	FAŁAT_3716_7	IC
300	PILECKI_4128_9	IC
301	STASZIC_8130_1	IC
302	BACHUS_5704_5	IC
303	KAZIMIERZ_3534_5	IC
304	DASZYŃSKI_1420_1	IC
305	WARTA_7206_7	IC
306	STARZYŃSKI_1734_5	IC
307	BERLINWARSZAWAEXPRESS_17000_1	EC/EIC
308	BERLINWARSZAWAEXPRESS_17004_5	EC/EIC
309	KARŁOWICZ_3120_1	IC
310	NAŁKOWSKA_6130_1	IC
311	MALTA_17141	ICN
312	SZCZELINIEC_63106_7	TLK
313	STRYJEŃSKA_6206_7	IC
314	WŁÓKNIARZ_8120_1	IC
315	PARSĘTA_8156_7	IC
316	DASZYŃSKI_4120_1	IC
317	JAGIEŁŁO_2300_1	IC
318	KUJAWIAK_2524_5	IC
319	SŁOWACKI_5620_1	IC
320	LAZUR_1510_1	IC
321	PILECKI_1428_9_2	IC
322	ŻUŁAWY_58102_3	IC
323	DANUBIUS_34006_7	EC/IC
324	EIC_3106_7	EIC
325	SIENKIEWICZ_3526_7	IC
326	KRASZEWSKI_1051	IC
327	EIC_1400_1	EIC
328	DANUBIUS_74000_1	EC/IC
329	BŁATNIA_3407	IC
330	EIP_5400_1	EIP
331	ARTUS_5412_3	IC
332	POJEZIERZE_7510_1	IC
333	BORY_TUCHOLSKIE_85110_1	TLK
334	EIP_3100_1	EIP
335	STRZELECKI_78101	IC
336	BIESZCZADY_30113	IC
337	ZOSIA_1900_1	IC
338	STAŃCZYK_50108_9	IC
339	SŁOWACKI_6520_1	IC
340	NIEMCEWICZ_1136	IC
341	EIP_3800_1	EIP
342	MALINOWSKI_33100	IC
343	KUJAWIAK_5224_5	IC
344	STAŃCZYK_55108_9	IC
345	ŚLĘŻA_1602_3	EIC
346	CARPATIA_34014_5	EN/IC
347	JAĆWING_19000	IC
348	KORFANTY_4122_3	IC
349	JAGNA_9102_3	IC
350	BALTIC_EXPRESS_56004_5	EC/IC
351	KRZYWOUSTY_1704_5	EIC
352	CHOPIN_14010_1	EN/IC
353	BIEBRZA_51110_1	TLK
354	KARKONOSZE_61170_1	IC
355	SKARBEK_5424_5	IC
356	LATARNIK_8152_3	IC
357	HETMAN_32112_3	IC
358	GWAREK_3816_7_2	IC
359	SAXONIA_60003_2	EC/IC
360	STOCZNIOWIEC_7512_3	IC
361	KASZUB_5350_1	EIC
362	MORCINEK_3204_5	IC
363	EIP_8300_1	EIP
364	BALTIC_EXPRESS_65000_1	EC/IC
365	JEZIORAK_7508_9	IC
366	MALCZEWSKI_3804_5	IC
367	IC+_33015	IC+
368	KRASIŃSKI_1624_5	IC
369	BIEBRZA_15110_1	TLK
370	EIP_3552_3	EIP
371	CHEMIK_1424_5_2	IC
372	RADZIWIŁŁ_1130_1	IC
373	MORCINEK_2404_5	IC
374	PODHALANIN_83172_3	IC
375	ŚNIEŻKA_66150	IC
376	SIENKIEWICZ_5326_7	IC
377	MICKIEWICZ_6128_9	IC
378	JADWIGA_3202_3	IC
379	GÓRSKI_8202_3	IC
380	ŚLĄZAK_8330_1	IC
381	BOLESŁAW_PRUS_1804_5	EIC
382	JAGIEŁŁO_3200_1	IC
383	COMENIUS_34004_5	EC/IC
384	BERLINWARSZAWAEXPRESS_71002_3	EC/EIC
385	EIP_5404_5	EIP
386	PODLASIAK_8112_3	IC
387	ŻYLICA_4300_1	IC
388	BRDA_1530_1	IC
389	BARBAKAN_3820_1	IC
390	SIEMIRADZKI_3600_1	IC
391	IC_87106	IC
392	FLISAK_54102_3	TLK
393	ZAMOYSKI_8834_5	IC
394	BARBAKAN_8320_1	IC
395	KARPATY_33170	TLK
396	KOZICA_37104_5	TLK
397	TUWIM_1910_1	IC
398	EIP_3108_9	EIP
399	PORTA_MORAVICA_43002_3	EC/IC
400	KSIĄŻĘ_18141	ICN
401	ŚLĄZAK_3830_1	IC
402	OSTERWA_83106_7	TLK
403	HEWELIUSZ_4510_1	IC
404	BRDA_5130_1	IC
405	CHEMIK_1424_5_3	IC
406	BERLINWARSZAWAEXPRESS_17002_3	EC/EIC
407	LAZUR_5110_1	IC
408	BALTIC_EXPRESS_65002_3	EC/IC
409	KILIŃSKI_1712_3_2	IC
410	NAREW_1000_1	IC
411	RYBAK_1806_7	IC
412	GAŁCZYŃSKI_8110_1	IC
413	LEŚMIAN_6126_7	IC
414	PODLASIE_1027	IC
415	ZAMOYSKI_3834_5	IC
416	ŻUŁAWY_85102_3	IC
417	MAŁOPOLSKA_35104_5	TLK
418	GRYF_85106_7	IC
419	EIP_5310_1	EIP
420	MARSZAŁEK_PIŁSUDSKI_31102_3	TLK
421	ONDRASZEK_1410_1	EIC
422	KOCHANOWSKI_2526_7	IC
423	EIP_3102_3	EIP
424	EIP_3506_7	EIP
425	KRAJNA_58112_3	TLK
426	MEDUZA_5146_7	IC
427	PODHALANIN_38172_3	IC
428	BORYNA_9112_3	IC
429	KOPERNIK_2520_1	IC
430	KOZICA_73104_5	TLK
431	EIP_1304_5	EIP
432	REJEWSKI_2522_3	IC
433	WIGRY_81000_1	IC
434	LUBUSZANIN_87102	IC
435	BATORY_14004_5_2	EC/IC
436	ŁYSICA_6220	IC
437	INKA_2116_7	IC
438	MIESZKO_5604	IC
439	EIP_6104_5	EIP
440	KASZTELAN_32110_1	IC
441	KASZUB_3550_1	EIC
442	REJEWSKI_5222_3	IC
443	BOLKO_2602_3	IC
444	BŁATNIA_4306_7	IC
445	BIESZCZADY_30113_2	IC
446	MALINOWSKI_30101	IC
447	SANDACZ_1549	IC
448	MALCZEWSKI_3804_5_2	IC
449	DĄBROWSKA_6132_3	IC
450	NAREW_1100_1	IC
451	MAZURY_5122_3	IC
452	WISŁOK_1338_9	IC
453	JAĆWING_91001	IC
454	IC_78105	IC
455	CRACOVIA_34008_9	EC/IC
456	ZEFIR_3806_7_2	IC
457	SZKUNER_3812_3_2	IC
458	KRAJNA_85112_3	TLK
459	LAGUNA_1552_3	IC
460	SKARYNA_1023	IC
461	KORSARZ_78110_1	ICN
462	TUWIM_9110_1	IC
463	KOCIEWIE_5128_9	IC
464	BERLINWARSZAWAEXPRESS_71006_7	EC/EIC
465	ZAMENHOF_1102	IC
466	OSTERWA_38106_7	TLK
467	SAN_3130_1	IC
468	EIP_1802_3	EIP
469	KRZYWOUSTY_7104_5	EIC
470	PANORAMA_1600_1	EIC
471	POBRZEŻE_8114_5	IC
472	SYRENA_81142_3	ICN
473	ŻUBR_1116_7	IC
474	MORCINEK_2304_5	IC
475	ŻEROMSKI_5324_5	IC
476	KARPATY_30171	TLK
477	MARSZAŁEK_PIŁSUDSKI_13102_3	TLK
478	BESKIDY_4160_1	IC
479	PRATER_34010_1	EC/IC
480	KOSSAK_8310_1_2	IC
481	WYSPIAŃSKI_6302_3_2	IC
482	MAZURY_1522_3	IC
483	MERKURY_6810_1	IC
484	TATRY_3150_1	EIC
485	KARPATY_53170_1_2	TLK
486	ZAMENHOF_1003	IC
487	RYBAK_8106_7	IC
488	MIESZKO_6504_5	IC
489	KORCZAK_91132_3	IC
490	KARŁOWICZ_1320_1	IC
491	VIADRINA_1610_1	EIC
492	KRASZEWSKI_1150_1	IC
493	MEDUZA_5146_7_2	IC
494	CHEMIK_4124_5_2	IC
495	WYSOCKI_5450_1	EIC
496	SKARBEK_4524_5	IC
497	SIELAWA_1563	IC
498	MALCZEWSKI_8304_5_2	IC
499	VIA_REGIA_60009_2	EC/IC
500	EIP_3508_9	EIP
501	KORMORAN_5330_1	IC
502	BYSTRZYCA_22100	IC
503	FLISAK_54102_3_2	TLK
504	EIP_5308_9	EIP
505	EIC_1308_9	EIC
506	KUTER_5138_9	IC
507	LEDNICA_6500_1	IC
508	BORY_TUCHOLSKIE_58110_1	TLK
509	SZPIGLASOWY_WIERCH_13160_1	TLK
510	BERLINWARSZAWAEXPRESS_71010_1	EC/EIC
511	IC+_33012	IC+
512	DĘBOWIEC_4302_3	IC
513	SANDACZ_5148	IC
514	PRZĄŚNICZKA_9107	IC
515	BRDA_5130_1_2	IC
516	CHROBRY_8100_1	EIC
517	BATORY_41004_5_2	EC/IC
518	BACZYŃSKI_1622_3	IC
519	EIC_5102_3	EIC
520	WISŁOK_22020	TLK
521	IC_87116	IC
522	PORTA_MORAVICA_43002_3_2	EC/IC
523	PORTA_MORAVICA_46004_5	EC/IC
524	SPICHLERZ_1508_9	IC
525	IC_78107	IC
526	DĘBOWIEC_3403	IC
527	GEDANIA_75000_1	EC/IC
528	BYSTRZYCA_3538_9	IC
529	WETLINA_33110_1	IC
530	JANTAR_5140_1	EIC
531	KILIŃSKI_7112_3	IC
532	PRZEMYŚLANIN_78172_3_2	IC
533	EIP_3502_3	EIP
534	PRATER_43010	EC/IC
535	STARZYŃSKI_1134_5	IC
536	PODLASIE_1126_7	IC
537	STARZYŃSKI_7132_3	IC
538	EIP_5352_3	EIP
539	WETLINA_33110_1_2	IC
540	ŚNIEŻKA_1650_1	IC
541	KRASNOLUD_73160_1	TLK
542	PAPRYKARZ_88142_3	ICN
543	ALBATROS_85100_1	IC
544	SKARYNA_1122	IC
545	EIP_4508_9	EIP
546	BERLINWARSZAWAEXPRESS_17010_1	EC/EIC
547	EIP_5306_7	EIP
548	LECH_1612_3	EIC
549	BALTAZAR_4304	IC
550	BAŁTYK_7500_1	IC
551	ZEFIR_8306_7_2	IC
552	PODLASIE_1126	IC
553	SPICHLERZ_5108_9	IC
554	BOSMAN_6812_3	IC
555	STOŁECZNY_81140	ICN
556	WYBRZEŻE_1516_7	IC
557	MAŁOPOLSKA_33104	TLK
558	STRZELECKI_87100	IC
559	VIA_REGIA_66008	EC/IC
560	FLISAK_45102_3_2	TLK
561	ASNYK_1620_1	IC
562	RADZIWIŁŁ_1031	IC
563	CHEMIK_4124_5_3	IC
564	EIP_5304_5	EIP
565	PRZEMYŚLANIN_87172_3_2	IC
566	EIP_8102_3	EIP
567	WETLINA_30111_2	IC
568	BERLINWARSZAWAEXPRESS_17012__2	EC/EIC
569	EIP_1501	EIP
570	BIESZCZADY_33112_3	IC
571	LATARNIK_1852_3	IC
572	PORTA_MORAVICA_64004_5	EC/IC
573	IC+_33000	IC+
574	EIP_1604_5	EIP
575	KYIV_EXPRESS_12011	IC/MP
576	ALBATROS_58100_1	IC
577	BOSMAN_8612_3	IC
578	PAPRYKARZ_88140_1	ICN
579	PORTA_MORAVICA_43002_3_3	EC
580	LECH_6112_3	EIC
581	BIESZCZADY_33112_3_2	IC
582	PORTA_MORAVICA_34002_3_2	EC/IC
583	EIP_1306_7	EIP
584	IC_78117	IC
585	IC_87104	IC
586	ŚNIEŻKA_60151	IC
587	KRASNOLUD_37160_1	TLK
588	BYSTRZYCA_20101	IC
589	IC_87108	IC
590	WISŁOK_22019	TLK
591	GWAREK_8316_7_2	IC
592	VIA_REGIA_66008_2	EC/IC
593	EIP_3510_1	EIP
594	EIP_1503	EIP
\.

COPY wagony (id_wagonu, id_typu) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	2
2	7
3	5
4	6
5	6
6	1
7	10
8	4
9	5
10	3
11	3
12	1
13	2
14	7
15	5
16	6
17	6
18	1
19	10
20	2
21	7
22	5
23	6
24	6
25	1
26	10
27	25
28	4
29	5
30	3
31	1
32	8
33	2
34	8
35	13
36	5
37	1
38	2
39	8
40	5
41	6
42	1
43	10
44	21
45	20
46	3
47	3
48	3
49	20
50	25
51	4
52	5
53	3
54	3
55	2
56	4
57	5
58	3
59	3
60	1
61	2
62	8
63	13
64	5
65	1
66	2
67	8
68	5
69	6
70	1
71	10
72	2
73	8
74	5
75	6
76	1
77	10
78	2
79	8
80	13
81	5
82	1
83	2
84	7
85	5
86	6
87	6
88	1
89	10
90	2
91	8
92	5
93	6
94	1
95	10
96	4
97	5
98	3
99	3
100	2
101	9
102	2
103	7
104	5
105	6
106	6
107	1
108	10
109	2
110	7
111	5
112	6
113	6
114	1
115	10
116	2
117	8
118	13
119	5
120	1
121	2
122	8
123	13
124	5
125	1
126	2
127	8
128	13
129	5
130	1
131	25
132	4
133	5
134	3
135	1
136	8
137	25
138	4
139	5
140	3
141	3
142	2
143	2
144	8
145	13
146	5
147	1
148	2
149	7
150	5
151	6
152	6
153	1
154	10
155	2
156	7
157	5
158	6
159	6
160	1
161	10
162	2
163	8
164	13
165	5
166	1
167	18
168	18
169	17
170	7
171	5
172	18
173	17
174	2
175	7
176	5
177	6
178	6
179	1
180	10
181	15
182	8
183	5
184	6
185	3
186	1
187	2
188	8
189	13
190	5
191	1
192	2
193	8
194	13
195	5
196	1
197	2
198	8
199	13
200	5
201	1
202	15
203	8
204	5
205	6
206	3
207	1
208	2
209	8
210	13
211	5
212	1
213	2
214	7
215	5
216	6
217	6
218	1
219	10
220	2
221	8
222	13
223	5
224	1
225	2
226	8
227	13
228	5
229	1
230	2
231	8
232	13
233	5
234	1
235	15
236	8
237	5
238	6
239	3
240	1
241	15
242	8
243	5
244	6
245	3
246	1
247	25
248	4
249	5
250	7
251	3
252	2
253	1
254	2
255	7
256	5
257	6
258	6
259	1
260	10
261	2
262	7
263	5
264	6
265	6
266	1
267	10
268	25
269	4
270	5
271	7
272	3
273	2
274	2
275	8
276	5
277	6
278	1
279	10
280	4
281	5
282	3
283	3
284	1
285	15
286	8
287	5
288	6
289	3
290	1
291	21
292	20
293	3
294	3
295	3
296	20
297	4
298	5
299	3
300	3
301	1
302	2
303	8
304	13
305	5
306	1
307	15
308	8
309	5
310	6
311	3
312	1
313	15
314	8
315	5
316	6
317	3
318	1
319	4
320	5
321	3
322	3
323	1
324	2
325	7
326	5
327	6
328	6
329	1
330	10
331	2
332	8
333	13
334	5
335	1
336	2
337	7
338	5
339	6
340	6
341	1
342	10
343	2
344	7
345	5
346	6
347	6
348	1
349	10
350	2
351	8
352	5
353	6
354	1
355	10
356	4
357	3
358	3
359	11
360	3
361	2
362	8
363	13
364	5
365	1
366	2
367	8
368	5
369	6
370	1
371	10
372	2
373	8
374	13
375	5
376	1
377	15
378	8
379	5
380	6
381	3
382	1
383	18
384	18
385	17
386	7
387	5
388	18
389	17
390	20
391	20
392	3
393	3
394	21
395	2
396	8
397	5
398	6
399	1
400	10
401	2
402	8
403	13
404	5
405	1
406	15
407	8
408	5
409	6
410	3
411	1
412	15
413	8
414	5
415	6
416	3
417	1
418	20
419	3
420	3
421	3
422	21
423	6
424	15
425	8
426	5
427	6
428	3
429	1
430	21
431	20
432	3
433	3
434	3
435	20
436	15
437	8
438	5
439	6
440	3
441	1
442	20
443	3
444	3
445	3
446	21
447	6
448	21
449	20
450	3
451	3
452	3
453	20
454	2
455	8
456	13
457	5
458	1
459	2
460	8
461	13
462	5
463	1
464	15
465	8
466	5
467	6
468	3
469	1
470	2
471	7
472	5
473	6
474	6
475	1
476	10
477	2
478	7
479	5
480	6
481	6
482	1
483	10
484	4
485	5
486	3
487	3
488	1
489	8
490	21
491	20
492	3
493	3
494	3
495	20
496	2
497	8
498	13
499	5
500	1
501	20
502	20
503	3
504	3
505	21
506	15
507	8
508	5
509	6
510	3
511	1
512	15
513	8
514	5
515	6
516	3
517	1
518	15
519	8
520	5
521	6
522	3
523	1
524	2
525	7
526	5
527	6
528	6
529	1
530	10
531	15
532	8
533	5
534	6
535	3
536	1
537	2
538	7
539	5
540	6
541	6
542	1
543	10
544	2
545	7
546	5
547	6
548	6
549	1
550	10
551	4
552	5
553	3
554	3
555	1
556	2
557	8
558	5
559	6
560	1
561	10
562	15
563	8
564	5
565	6
566	3
567	1
568	25
569	4
570	5
571	3
572	3
573	2
574	2
575	7
576	5
577	6
578	6
579	1
580	10
581	2
582	8
583	5
584	6
585	1
586	10
587	18
588	18
589	17
590	7
591	5
592	18
593	17
594	2
595	7
596	5
597	6
598	6
599	1
600	10
601	2
602	7
603	5
604	6
605	6
606	1
607	10
608	2
609	7
610	5
611	6
612	6
613	1
614	10
615	2
616	8
617	13
618	5
619	1
620	25
621	4
622	5
623	3
624	1
625	8
626	2
627	8
628	13
629	5
630	1
631	2
632	8
633	13
634	5
635	1
636	15
637	8
638	5
639	6
640	3
641	1
642	15
643	8
644	5
645	6
646	3
647	1
648	15
649	8
650	5
651	6
652	3
653	1
654	17
655	5
656	1
657	1
658	18
659	25
660	4
661	5
662	7
663	3
664	2
665	1
666	2
667	8
668	13
669	5
670	1
671	20
672	3
673	3
674	3
675	21
676	6
677	2
678	7
679	5
680	6
681	6
682	1
683	10
684	2
685	7
686	5
687	6
688	6
689	1
690	10
691	2
692	8
693	13
694	5
695	1
696	18
697	18
698	17
699	17
700	5
701	18
702	25
703	4
704	5
705	3
706	1
707	8
708	25
709	4
710	5
711	3
712	1
713	8
714	2
715	8
716	13
717	5
718	1
719	15
720	8
721	5
722	6
723	3
724	1
725	21
726	20
727	3
728	3
729	3
730	20
731	25
732	4
733	5
734	7
735	3
736	2
737	1
738	2
739	7
740	5
741	6
742	6
743	1
744	10
745	2
746	8
747	5
748	6
749	1
750	10
751	15
752	8
753	5
754	6
755	3
756	1
757	2
758	8
759	13
760	5
761	1
762	2
763	8
764	5
765	6
766	1
767	10
768	4
769	5
770	3
771	3
772	1
773	2
774	7
775	5
776	6
777	6
778	1
779	10
780	2
781	8
782	13
783	5
784	1
785	2
786	8
787	13
788	5
789	1
790	2
791	8
792	13
793	5
794	1
795	2
796	8
797	5
798	6
799	1
800	10
801	4
802	5
803	3
804	3
805	2
806	9
807	15
808	8
809	5
810	6
811	3
812	1
813	2
814	8
815	5
816	6
817	1
818	10
819	4
820	5
821	3
822	3
823	1
824	20
825	20
826	3
827	3
828	21
829	15
830	8
831	5
832	6
833	3
834	1
835	2
836	8
837	13
838	5
839	1
840	2
841	8
842	5
843	6
844	1
845	10
846	20
847	3
848	3
849	3
850	21
851	6
852	2
853	7
854	5
855	6
856	6
857	1
858	10
859	2
860	7
861	5
862	6
863	6
864	1
865	10
866	4
867	5
868	3
869	3
870	1
871	25
872	4
873	5
874	3
875	1
876	8
877	2
878	8
879	13
880	5
881	1
882	25
883	4
884	5
885	3
886	3
887	2
888	2
889	8
890	5
891	6
892	1
893	10
894	2
895	8
896	13
897	5
898	1
899	2
900	8
901	13
902	5
903	1
904	15
905	8
906	5
907	6
908	3
909	1
910	20
911	3
912	3
913	3
914	21
915	6
916	15
917	8
918	5
919	6
920	3
921	1
922	2
923	7
924	5
925	6
926	6
927	1
928	10
929	2
930	8
931	13
932	5
933	1
934	2
935	7
936	5
937	6
938	6
939	1
940	10
941	4
942	5
943	3
944	3
945	1
946	2
947	8
948	13
949	5
950	1
951	2
952	7
953	5
954	6
955	6
956	1
957	10
958	2
959	7
960	5
961	6
962	6
963	1
964	10
965	21
966	20
967	3
968	3
969	3
970	20
971	2
972	8
973	13
974	5
975	1
976	25
977	4
978	5
979	3
980	1
981	8
982	25
983	4
984	5
985	6
986	1
987	1
988	2
989	7
990	5
991	6
992	6
993	1
994	10
995	2
996	7
997	5
998	6
999	6
1000	1
1001	10
1002	25
1003	4
1004	5
1005	3
1006	1
1007	8
1008	2
1009	7
1010	5
1011	6
1012	6
1013	1
1014	10
1015	25
1016	4
1017	5
1018	3
1019	1
1020	8
1021	15
1022	8
1023	5
1024	6
1025	3
1026	1
1027	2
1028	7
1029	5
1030	6
1031	6
1032	1
1033	10
1034	25
1035	4
1036	5
1037	3
1038	3
1039	2
1040	25
1041	4
1042	5
1043	7
1044	3
1045	2
1046	2
1047	8
1048	5
1049	6
1050	1
1051	10
1052	2
1053	7
1054	5
1055	6
1056	6
1057	1
1058	10
1059	15
1060	8
1061	5
1062	6
1063	3
1064	1
1065	25
1066	4
1067	5
1068	3
1069	3
1070	2
1071	4
1072	5
1073	3
1074	3
1075	1
1076	2
1077	7
1078	5
1079	6
1080	6
1081	1
1082	10
1083	2
1084	8
1085	13
1086	5
1087	1
1088	25
1089	4
1090	5
1091	7
1092	3
1093	2
1094	4
1095	5
1096	3
1097	3
1098	1
1099	2
1100	8
1101	5
1102	6
1103	1
1104	10
1105	25
1106	4
1107	5
1108	3
1109	1
1110	8
1111	2
1112	8
1113	5
1114	6
1115	1
1116	10
1117	2
1118	7
1119	5
1120	6
1121	6
1122	1
1123	10
1124	2
1125	8
1126	13
1127	5
1128	1
1129	4
1130	3
1131	3
1132	11
1133	3
1134	2
1135	8
1136	13
1137	5
1138	1
1139	2
1140	8
1141	13
1142	5
1143	1
1144	2
1145	7
1146	5
1147	6
1148	6
1149	1
1150	10
1151	15
1152	8
1153	5
1154	6
1155	3
1156	1
1157	2
1158	7
1159	5
1160	6
1161	6
1162	1
1163	10
1164	15
1165	8
1166	5
1167	6
1168	3
1169	1
1170	15
1171	8
1172	5
1173	6
1174	3
1175	1
1176	2
1177	7
1178	5
1179	6
1180	6
1181	1
1182	10
1183	2
1184	8
1185	5
1186	6
1187	1
1188	10
1189	18
1190	18
1191	17
1192	17
1193	5
1194	18
1195	4
1196	5
1197	3
1198	3
1199	2
1200	9
1201	20
1202	20
1203	3
1204	3
1205	21
1206	15
1207	8
1208	5
1209	6
1210	3
1211	1
1212	4
1213	5
1214	3
1215	3
1216	1
1217	2
1218	8
1219	13
1220	5
1221	1
1222	2
1223	8
1224	5
1225	6
1226	1
1227	10
1228	4
1229	5
1230	3
1231	3
1232	1
1233	25
1234	4
1235	5
1236	3
1237	3
1238	2
1239	15
1240	8
1241	5
1242	6
1243	3
1244	1
1245	25
1246	4
1247	5
1248	3
1249	1
1250	8
1251	2
1252	8
1253	13
1254	5
1255	1
1256	21
1257	20
1258	3
1259	3
1260	3
1261	20
1262	15
1263	8
1264	5
1265	6
1266	3
1267	1
1268	25
1269	4
1270	5
1271	7
1272	3
1273	2
1274	1
1275	15
1276	8
1277	5
1278	6
1279	3
1280	1
1281	20
1282	3
1283	3
1284	3
1285	21
1286	6
1287	15
1288	8
1289	5
1290	6
1291	3
1292	1
1293	2
1294	7
1295	5
1296	6
1297	6
1298	1
1299	10
1300	25
1301	4
1302	5
1303	7
1304	3
1305	2
1306	1
1307	2
1308	8
1309	5
1310	6
1311	1
1312	10
1313	2
1314	7
1315	5
1316	6
1317	6
1318	1
1319	10
1320	15
1321	8
1322	5
1323	6
1324	3
1325	1
1326	15
1327	8
1328	5
1329	6
1330	3
1331	1
1332	15
1333	8
1334	5
1335	6
1336	3
1337	1
1338	2
1339	8
1340	5
1341	6
1342	1
1343	10
1344	15
1345	8
1346	5
1347	6
1348	3
1349	1
1350	20
1351	20
1352	3
1353	3
1354	21
1355	18
1356	18
1357	17
1358	7
1359	5
1360	18
1361	17
1362	25
1363	4
1364	5
1365	3
1366	3
1367	1
1368	2
1369	8
1370	13
1371	5
1372	1
1373	18
1374	18
1375	17
1376	7
1377	5
1378	18
1379	17
1380	15
1381	8
1382	5
1383	6
1384	3
1385	1
1386	2
1387	8
1388	5
1389	6
1390	1
1391	10
1392	2
1393	8
1394	5
1395	6
1396	1
1397	10
1398	21
1399	20
1400	3
1401	3
1402	3
1403	20
1404	15
1405	8
1406	5
1407	6
1408	3
1409	1
1410	2
1411	7
1412	5
1413	6
1414	6
1415	1
1416	10
1417	2
1418	8
1419	13
1420	5
1421	1
1422	2
1423	8
1424	5
1425	6
1426	1
1427	10
1428	20
1429	20
1430	3
1431	3
1432	21
1433	15
1434	8
1435	5
1436	6
1437	3
1438	1
1439	2
1440	7
1441	5
1442	6
1443	6
1444	1
1445	10
1446	2
1447	8
1448	5
1449	6
1450	1
1451	10
1452	2
1453	8
1454	13
1455	5
1456	1
1457	25
1458	4
1459	5
1460	3
1461	1
1462	8
1463	15
1464	8
1465	5
1466	6
1467	3
1468	1
1469	2
1470	8
1471	5
1472	6
1473	1
1474	10
1475	2
1476	8
1477	13
1478	5
1479	1
1480	25
1481	4
1482	5
1483	3
1484	1
1485	8
1486	4
1487	5
1488	3
1489	3
1490	1
1491	2
1492	8
1493	5
1494	6
1495	1
1496	10
1497	15
1498	8
1499	5
1500	6
1501	3
1502	1
1503	2
1504	7
1505	5
1506	6
1507	6
1508	1
1509	10
1510	2
1511	7
1512	5
1513	6
1514	6
1515	1
1516	10
1517	21
1518	20
1519	3
1520	3
1521	3
1522	20
1523	2
1524	8
1525	13
1526	5
1527	1
1528	4
1529	5
1530	3
1531	3
1532	1
1533	2
1534	8
1535	13
1536	5
1537	1
1538	2
1539	8
1540	5
1541	6
1542	1
1543	10
1544	2
1545	7
1546	5
1547	6
1548	6
1549	1
1550	10
1551	15
1552	8
1553	5
1554	6
1555	3
1556	1
1557	2
1558	8
1559	13
1560	5
1561	1
1562	25
1563	4
1564	5
1565	3
1566	3
1567	2
1568	2
1569	7
1570	5
1571	6
1572	6
1573	1
1574	10
1575	25
1576	4
1577	5
1578	3
1579	1
1580	8
1581	15
1582	8
1583	5
1584	6
1585	3
1586	1
1587	4
1588	5
1589	3
1590	3
1591	1
1592	2
1593	8
1594	13
1595	5
1596	1
1597	20
1598	20
1599	3
1600	3
1601	21
1602	2
1603	8
1604	5
1605	6
1606	1
1607	10
1608	15
1609	8
1610	5
1611	6
1612	3
1613	1
1614	15
1615	8
1616	5
1617	6
1618	3
1619	1
1620	15
1621	8
1622	5
1623	6
1624	3
1625	1
1626	4
1627	5
1628	3
1629	3
1630	2
1631	9
1632	15
1633	8
1634	5
1635	6
1636	3
1637	1
1638	25
1639	4
1640	5
1641	3
1642	1
1643	8
1644	15
1645	8
1646	5
1647	6
1648	3
1649	1
1650	15
1651	8
1652	5
1653	6
1654	3
1655	1
1656	2
1657	7
1658	5
1659	6
1660	6
1661	1
1662	10
1663	2
1664	8
1665	13
1666	5
1667	1
1668	15
1669	8
1670	5
1671	6
1672	3
1673	1
1674	2
1675	7
1676	5
1677	6
1678	6
1679	1
1680	10
1681	2
1682	8
1683	5
1684	6
1685	1
1686	10
1687	2
1688	7
1689	5
1690	6
1691	6
1692	1
1693	10
1694	2
1695	8
1696	13
1697	5
1698	1
1699	15
1700	8
1701	5
1702	6
1703	3
1704	1
1705	20
1706	3
1707	3
1708	3
1709	21
1710	6
1711	15
1712	8
1713	5
1714	6
1715	3
1716	1
1717	4
1718	5
1719	3
1720	3
1721	1
1722	2
1723	7
1724	5
1725	6
1726	6
1727	1
1728	10
1729	15
1730	8
1731	5
1732	6
1733	3
1734	1
1735	25
1736	4
1737	5
1738	3
1739	1
1740	8
1741	2
1742	7
1743	5
1744	6
1745	6
1746	1
1747	10
1748	2
1749	7
1750	5
1751	6
1752	6
1753	1
1754	10
1755	18
1756	18
1757	17
1758	7
1759	5
1760	18
1761	17
1762	25
1763	4
1764	5
1765	3
1766	1
1767	8
1768	2
1769	7
1770	5
1771	6
1772	6
1773	1
1774	10
1775	15
1776	8
1777	5
1778	6
1779	3
1780	1
1781	15
1782	8
1783	5
1784	6
1785	3
1786	1
1787	2
1788	7
1789	5
1790	6
1791	6
1792	1
1793	10
1794	15
1795	8
1796	5
1797	6
1798	3
1799	1
1800	2
1801	7
1802	5
1803	6
1804	6
1805	1
1806	10
1807	2
1808	8
1809	5
1810	6
1811	1
1812	10
1813	2
1814	8
1815	5
1816	6
1817	1
1818	10
1819	2
1820	8
1821	5
1822	6
1823	1
1824	10
1825	25
1826	4
1827	5
1828	7
1829	3
1830	2
1831	25
1832	4
1833	5
1834	3
1835	3
1836	2
1837	15
1838	8
1839	5
1840	6
1841	3
1842	1
1843	2
1844	8
1845	5
1846	6
1847	1
1848	10
1849	24
1850	11
1851	3
1852	3
1853	1
1854	20
1855	20
1856	3
1857	3
1858	21
1859	2
1860	7
1861	5
1862	6
1863	6
1864	1
1865	10
1866	15
1867	8
1868	5
1869	6
1870	3
1871	1
1872	2
1873	7
1874	5
1875	6
1876	6
1877	1
1878	10
1879	2
1880	8
1881	5
1882	6
1883	1
1884	10
1885	2
1886	7
1887	5
1888	6
1889	6
1890	1
1891	10
1892	2
1893	8
1894	13
1895	5
1896	1
1897	15
1898	8
1899	5
1900	6
1901	3
1902	1
1903	2
1904	7
1905	5
1906	6
1907	6
1908	1
1909	10
1910	2
1911	7
1912	5
1913	6
1914	6
1915	1
1916	10
1917	15
1918	8
1919	5
1920	6
1921	3
1922	1
1923	4
1924	5
1925	3
1926	3
1927	1
1928	4
1929	5
1930	3
1931	3
1932	2
1933	9
1934	2
1935	7
1936	5
1937	6
1938	6
1939	1
1940	10
1941	2
1942	7
1943	5
1944	6
1945	6
1946	1
1947	10
1948	4
1949	5
1950	3
1951	3
1952	2
1953	9
1954	4
1955	5
1956	3
1957	3
1958	1
1959	2
1960	8
1961	5
1962	6
1963	1
1964	10
1965	18
1966	18
1967	17
1968	7
1969	5
1970	18
1971	17
1972	15
1973	8
1974	5
1975	6
1976	3
1977	1
1978	2
1979	7
1980	5
1981	6
1982	6
1983	1
1984	10
1985	20
1986	3
1987	3
1988	3
1989	21
1990	6
1991	18
1992	18
1993	17
1994	17
1995	5
1996	18
1997	2
1998	8
1999	13
2000	5
2001	1
2002	2
2003	8
2004	5
2005	6
2006	1
2007	10
2008	2
2009	8
2010	13
2011	5
2012	1
2013	2
2014	8
2015	5
2016	6
2017	1
2018	10
2019	2
2020	8
2021	5
2022	6
2023	1
2024	10
2025	15
2026	8
2027	5
2028	6
2029	3
2030	1
2031	18
2032	18
2033	17
2034	17
2035	5
2036	18
2037	2
2038	8
2039	5
2040	6
2041	1
2042	10
2043	2
2044	8
2045	13
2046	5
2047	1
2048	2
2049	7
2050	5
2051	6
2052	6
2053	1
2054	10
2055	25
2056	4
2057	5
2058	3
2059	3
2060	2
2061	11
2062	3
2063	3
2064	4
2065	2
2066	8
2067	5
2068	6
2069	1
2070	10
2071	2
2072	7
2073	5
2074	6
2075	6
2076	1
2077	10
2078	2
2079	8
2080	13
2081	5
2082	1
2083	25
2084	4
2085	5
2086	3
2087	1
2088	8
2089	25
2090	4
2091	5
2092	3
2093	3
2094	2
2095	11
2096	3
2097	3
2098	4
2099	21
2100	20
2101	3
2102	3
2103	3
2104	20
2105	2
2106	8
2107	13
2108	5
2109	1
2110	2
2111	8
2112	13
2113	5
2114	1
2115	2
2116	8
2117	5
2118	6
2119	1
2120	10
2121	15
2122	8
2123	5
2124	6
2125	3
2126	1
2127	2
2128	8
2129	13
2130	5
2131	1
2132	25
2133	4
2134	5
2135	3
2136	1
2137	8
2138	2
2139	8
2140	5
2141	6
2142	1
2143	10
2144	4
2145	5
2146	3
2147	3
2148	2
2149	9
2150	2
2151	7
2152	5
2153	6
2154	6
2155	1
2156	10
2157	18
2158	18
2159	17
2160	7
2161	5
2162	18
2163	17
2164	25
2165	4
2166	5
2167	3
2168	1
2169	8
2170	2
2171	7
2172	5
2173	6
2174	6
2175	1
2176	10
2177	15
2178	8
2179	5
2180	6
2181	3
2182	1
2183	17
2184	5
2185	1
2186	1
2187	18
2188	2
2189	8
2190	5
2191	6
2192	1
2193	10
2194	20
2195	20
2196	3
2197	3
2198	21
2199	18
2200	18
2201	17
2202	17
2203	5
2204	18
2205	2
2206	7
2207	5
2208	6
2209	6
2210	1
2211	10
2212	2
2213	8
2214	5
2215	6
2216	1
2217	10
2218	15
2219	8
2220	5
2221	6
2222	3
2223	1
2224	2
2225	7
2226	5
2227	6
2228	6
2229	1
2230	10
2231	2
2232	8
2233	13
2234	5
2235	1
2236	2
2237	8
2238	13
2239	5
2240	1
2241	2
2242	7
2243	5
2244	6
2245	6
2246	1
2247	10
2248	2
2249	8
2250	5
2251	6
2252	1
2253	10
2254	2
2255	8
2256	5
2257	6
2258	1
2259	10
2260	2
2261	7
2262	5
2263	6
2264	6
2265	1
2266	10
2267	25
2268	4
2269	5
2270	7
2271	3
2272	2
2273	1
2274	2
2275	7
2276	5
2277	6
2278	6
2279	1
2280	10
2281	25
2282	4
2283	5
2284	3
2285	1
2286	8
2287	25
2288	4
2289	5
2290	3
2291	3
2292	2
2293	18
2294	18
2295	17
2296	17
2297	5
2298	18
2299	2
2300	7
2301	5
2302	6
2303	6
2304	1
2305	10
2306	2
2307	8
2308	5
2309	6
2310	1
2311	10
2312	2
2313	8
2314	13
2315	5
2316	1
2317	2
2318	7
2319	5
2320	6
2321	6
2322	1
2323	10
2324	2
2325	8
2326	13
2327	5
2328	1
2329	2
2330	7
2331	5
2332	6
2333	6
2334	1
2335	10
2336	21
2337	20
2338	3
2339	3
2340	3
2341	20
2342	2
2343	8
2344	13
2345	5
2346	1
2347	2
2348	8
2349	5
2350	6
2351	1
2352	10
2353	20
2354	20
2355	3
2356	3
2357	21
2358	20
2359	3
2360	3
2361	3
2362	21
2363	6
2364	2
2365	8
2366	5
2367	6
2368	1
2369	10
2370	18
2371	17
2372	5
2373	7
2374	18
2375	18
2376	4
2377	5
2378	3
2379	3
2380	1
2381	24
2382	11
2383	3
2384	3
2385	1
2386	2
2387	7
2388	5
2389	6
2390	6
2391	1
2392	10
2393	20
2394	3
2395	3
2396	3
2397	21
2398	6
2399	15
2400	8
2401	5
2402	6
2403	3
2404	1
2405	2
2406	8
2407	5
2408	6
2409	1
2410	10
2411	2
2412	8
2413	5
2414	6
2415	1
2416	10
2417	25
2418	4
2419	5
2420	3
2421	3
2422	2
2423	15
2424	8
2425	5
2426	6
2427	3
2428	1
2429	25
2430	4
2431	5
2432	3
2433	1
2434	8
2435	2
2436	8
2437	5
2438	6
2439	1
2440	10
2441	2
2442	8
2443	13
2444	5
2445	1
2446	2
2447	8
2448	5
2449	6
2450	1
2451	10
2452	15
2453	8
2454	5
2455	6
2456	3
2457	1
2458	15
2459	8
2460	5
2461	6
2462	3
2463	1
2464	15
2465	8
2466	5
2467	6
2468	3
2469	1
2470	2
2471	8
2472	13
2473	5
2474	1
2475	2
2476	8
2477	5
2478	6
2479	1
2480	10
2481	20
2482	20
2483	3
2484	3
2485	21
2486	2
2487	8
2488	13
2489	5
2490	1
2491	18
2492	18
2493	17
2494	7
2495	5
2496	18
2497	17
2498	20
2499	20
2500	3
2501	3
2502	21
2503	25
2504	4
2505	5
2506	3
2507	3
2508	2
2509	2
2510	8
2511	13
2512	5
2513	1
2514	18
2515	18
2516	17
2517	17
2518	5
2519	18
2520	18
2521	17
2522	5
2523	7
2524	18
2525	18
2526	20
2527	3
2528	3
2529	3
2530	21
2531	6
2532	15
2533	8
2534	5
2535	6
2536	3
2537	1
2538	2
2539	8
2540	13
2541	5
2542	1
2543	2
2544	8
2545	13
2546	5
2547	1
2548	2
2549	7
2550	5
2551	6
2552	6
2553	1
2554	10
2555	21
2556	20
2557	3
2558	3
2559	3
2560	20
2561	18
2562	17
2563	5
2564	7
2565	18
2566	18
2567	15
2568	8
2569	5
2570	6
2571	3
2572	1
2573	2
2574	7
2575	5
2576	6
2577	6
2578	1
2579	10
2580	2
2581	8
2582	5
2583	6
2584	1
2585	10
2586	4
2587	5
2588	3
2589	3
2590	1
2591	2
2592	8
2593	13
2594	5
2595	1
2596	2
2597	8
2598	13
2599	5
2600	1
2601	2
2602	8
2603	13
2604	5
2605	1
2606	18
2607	17
2608	5
2609	7
2610	18
2611	18
2612	2
2613	7
2614	5
2615	6
2616	6
2617	1
2618	10
2619	4
2620	5
2621	3
2622	3
2623	2
2624	9
2625	2
2626	7
2627	5
2628	6
2629	6
2630	1
2631	10
2632	2
2633	8
2634	13
2635	5
2636	1
2637	2
2638	7
2639	5
2640	6
2641	6
2642	1
2643	10
2644	15
2645	8
2646	5
2647	6
2648	3
2649	1
2650	2
2651	8
2652	5
2653	6
2654	1
2655	10
2656	2
2657	8
2658	5
2659	6
2660	1
2661	10
2662	2
2663	8
2664	13
2665	5
2666	1
2667	15
2668	8
2669	5
2670	6
2671	3
2672	1
2673	2
2674	8
2675	13
2676	5
2677	1
2678	15
2679	8
2680	5
2681	6
2682	3
2683	1
2684	2
2685	8
2686	5
2687	6
2688	1
2689	10
2690	2
2691	8
2692	13
2693	5
2694	1
2695	2
2696	7
2697	5
2698	6
2699	6
2700	1
2701	10
2702	25
2703	4
2704	5
2705	3
2706	1
2707	8
2708	2
2709	7
2710	5
2711	6
2712	6
2713	1
2714	10
2715	2
2716	8
2717	5
2718	6
2719	1
2720	10
2721	20
2722	3
2723	3
2724	3
2725	21
2726	6
2727	2
2728	8
2729	13
2730	5
2731	1
2732	2
2733	8
2734	13
2735	5
2736	1
2737	24
2738	11
2739	3
2740	3
2741	1
2742	2
2743	7
2744	5
2745	6
2746	6
2747	1
2748	10
2749	2
2750	8
2751	5
2752	6
2753	1
2754	10
2755	25
2756	4
2757	5
2758	7
2759	3
2760	2
2761	2
2762	7
2763	5
2764	6
2765	6
2766	1
2767	10
2768	20
2769	20
2770	3
2771	3
2772	21
2773	2
2774	8
2775	5
2776	6
2777	1
2778	10
2779	18
2780	18
2781	17
2782	7
2783	5
2784	18
2785	17
2786	25
2787	4
2788	5
2789	7
2790	3
2791	2
2792	1
2793	25
2794	4
2795	5
2796	7
2797	3
2798	2
2799	1
2800	2
2801	8
2802	5
2803	6
2804	1
2805	10
2806	24
2807	11
2808	3
2809	3
2810	1
2811	2
2812	8
2813	13
2814	5
2815	1
2816	2
2817	8
2818	5
2819	6
2820	1
2821	10
2822	2
2823	7
2824	5
2825	6
2826	6
2827	1
2828	10
2829	21
2830	20
2831	3
2832	3
2833	3
2834	20
2835	21
2836	20
2837	3
2838	3
2839	3
2840	20
2841	2
2842	7
2843	5
2844	6
2845	6
2846	1
2847	10
2848	25
2849	4
2850	5
2851	3
2852	1
2853	8
2854	15
2855	8
2856	5
2857	6
2858	3
2859	1
2860	15
2861	8
2862	5
2863	6
2864	3
2865	1
2866	2
2867	8
2868	5
2869	6
2870	1
2871	10
2872	2
2873	8
2874	5
2875	6
2876	1
2877	10
2878	25
2879	4
2880	5
2881	7
2882	3
2883	2
2884	1
2885	21
2886	20
2887	3
2888	3
2889	3
2890	20
2891	2
2892	8
2893	13
2894	5
2895	1
2896	15
2897	8
2898	5
2899	6
2900	3
2901	1
2902	2
2903	8
2904	13
2905	5
2906	1
2907	15
2908	8
2909	5
2910	6
2911	3
2912	1
2913	2
2914	7
2915	5
2916	6
2917	6
2918	1
2919	10
2920	25
2921	4
2922	5
2923	7
2924	3
2925	2
2926	1
2927	2
2928	8
2929	13
2930	5
2931	1
2932	2
2933	8
2934	13
2935	5
2936	1
2937	2
2938	8
2939	13
2940	5
2941	1
2942	4
2943	5
2944	3
2945	3
2946	2
2947	9
2948	2
2949	7
2950	5
2951	6
2952	6
2953	1
2954	10
2955	2
2956	8
2957	13
2958	5
2959	1
2960	15
2961	8
2962	5
2963	6
2964	3
2965	1
2966	4
2967	5
2968	3
2969	3
2970	1
2971	18
2972	18
2973	17
2974	7
2975	5
2976	18
2977	17
2978	2
2979	8
2980	5
2981	6
2982	1
2983	10
2984	2
2985	8
2986	13
2987	5
2988	1
2989	20
2990	20
2991	3
2992	3
2993	21
2994	18
2995	18
2996	17
2997	7
2998	5
2999	18
3000	17
3001	25
3002	4
3003	5
3004	7
3005	3
3006	2
3007	1
3008	2
3009	8
3010	5
3011	6
3012	1
3013	10
3014	15
3015	8
3016	5
3017	6
3018	3
3019	1
3020	21
3021	20
3022	3
3023	3
3024	3
3025	20
3026	21
3027	20
3028	3
3029	3
3030	3
3031	20
3032	25
3033	4
3034	5
3035	3
3036	3
3037	2
3038	2
3039	5
3040	17
3041	1
3042	1
3043	2
3044	7
3045	5
3046	6
3047	6
3048	1
3049	10
3050	2
3051	7
3052	5
3053	6
3054	6
3055	1
3056	10
3057	15
3058	8
3059	5
3060	6
3061	3
3062	1
3063	2
3064	8
3065	13
3066	5
3067	1
3068	25
3069	4
3070	5
3071	7
3072	3
3073	2
3074	1
3075	25
3076	4
3077	5
3078	3
3079	1
3080	8
3081	2
3082	7
3083	5
3084	6
3085	6
3086	1
3087	10
3088	25
3089	4
3090	5
3091	7
3092	3
3093	2
3094	1
3095	21
3096	20
3097	3
3098	3
3099	3
3100	20
3101	2
3102	8
3103	13
3104	5
3105	1
3106	4
3107	5
3108	3
3109	3
3110	1
3111	4
3112	5
3113	3
3114	3
3115	1
3116	2
3117	7
3118	5
3119	6
3120	6
3121	1
3122	10
3123	2
3124	7
3125	5
3126	6
3127	6
3128	1
3129	10
3130	2
3131	8
3132	5
3133	6
3134	1
3135	10
3136	25
3137	4
3138	5
3139	3
3140	1
3141	8
3142	15
3143	8
3144	5
3145	6
3146	3
3147	1
3148	15
3149	8
3150	5
3151	6
3152	3
3153	1
3154	25
3155	4
3156	5
3157	3
3158	3
3159	2
3160	2
3161	8
3162	13
3163	5
3164	1
3165	2
3166	8
3167	13
3168	5
3169	1
3170	18
3171	18
3172	17
3173	17
3174	5
3175	18
3176	25
3177	4
3178	5
3179	3
3180	1
3181	8
3182	2
3183	8
3184	5
3185	6
3186	1
3187	10
3188	15
3189	8
3190	5
3191	6
3192	3
3193	1
3194	15
3195	8
3196	5
3197	6
3198	3
3199	1
3200	18
3201	18
3202	17
3203	7
3204	5
3205	18
3206	17
3207	2
3208	7
3209	5
3210	6
3211	6
3212	1
3213	10
3214	2
3215	7
3216	5
3217	6
3218	6
3219	1
3220	10
3221	20
3222	3
3223	3
3224	3
3225	21
3226	6
3227	24
3228	11
3229	3
3230	3
3231	1
3232	2
3233	7
3234	5
3235	6
3236	6
3237	1
3238	10
3239	2
3240	7
3241	5
3242	6
3243	6
3244	1
3245	10
3246	18
3247	18
3248	17
3249	17
3250	5
3251	18
3252	25
3253	4
3254	5
3255	3
3256	3
3257	2
3258	18
3259	18
3260	17
3261	17
3262	5
3263	18
3264	4
3265	5
3266	3
3267	3
3268	2
3269	9
3270	2
3271	8
3272	5
3273	6
3274	1
3275	10
3276	2
3277	8
3278	5
3279	6
3280	1
3281	10
3282	15
3283	8
3284	5
3285	6
3286	3
3287	1
3288	15
3289	8
3290	5
3291	6
3292	3
3293	1
3294	2
3295	8
3296	5
3297	6
3298	1
3299	10
3300	15
3301	8
3302	5
3303	6
3304	3
3305	1
3306	24
3307	11
3308	3
3309	3
3310	1
3311	15
3312	8
3313	5
3314	6
3315	3
3316	1
3317	21
3318	20
3319	3
3320	3
3321	3
3322	20
3323	15
3324	8
3325	5
3326	6
3327	3
3328	1
3329	25
3330	4
3331	5
3332	3
3333	1
3334	8
3335	20
3336	3
3337	3
3338	3
3339	21
3340	6
3341	15
3342	8
3343	5
3344	6
3345	3
3346	1
3347	2
3348	8
3349	13
3350	5
3351	1
3352	2
3353	7
3354	5
3355	6
3356	6
3357	1
3358	10
3359	18
3360	17
3361	5
3362	7
3363	18
3364	18
3365	2
3366	7
3367	5
3368	6
3369	6
3370	1
3371	10
3372	18
3373	18
3374	17
3375	17
3376	5
3377	18
3378	2
3379	8
3380	13
3381	5
3382	1
3383	25
3384	4
3385	5
3386	7
3387	3
3388	2
3389	18
3390	17
3391	5
3392	7
3393	18
3394	18
3395	2
3396	8
3397	5
3398	6
3399	1
3400	10
3401	2
3402	8
3403	13
3404	5
3405	1
3406	25
3407	4
3408	5
3409	3
3410	1
3411	8
3412	17
3413	5
3414	1
3415	1
3416	18
3417	18
3418	17
3419	5
3420	7
3421	18
3422	18
3423	4
3424	5
3425	3
3426	3
3427	1
3428	8
3429	2
3430	8
3431	13
3432	5
3433	1
3434	2
3435	7
3436	5
3437	6
3438	6
3439	1
3440	10
3441	24
3442	11
3443	3
3444	3
3445	1
3446	25
3447	4
3448	5
3449	6
3450	1
3451	1
3452	25
3453	4
3454	5
3455	3
3456	3
3457	2
3458	2
3459	8
3460	5
3461	6
3462	1
3463	10
3464	4
3465	5
3466	3
3467	3
3468	1
3469	18
3470	18
3471	17
3472	17
3473	5
3474	18
3475	2
3476	8
3477	13
3478	5
3479	1
3480	2
3481	8
3482	5
3483	6
3484	1
3485	10
3486	2
3487	8
3488	5
3489	6
3490	1
3491	10
3492	20
3493	3
3494	3
3495	3
3496	21
3497	6
3498	15
3499	8
3500	5
3501	6
3502	3
3503	1
3504	2
3505	7
3506	5
3507	6
3508	6
3509	1
3510	10
3511	20
3512	3
3513	3
3514	3
3515	21
3516	6
3517	2
3518	7
3519	5
3520	6
3521	6
3522	1
3523	10
3524	4
3525	5
3526	3
3527	3
3528	1
3529	18
3530	18
3531	17
3532	7
3533	5
3534	18
3535	17
3536	18
3537	18
3538	17
3539	7
3540	5
3541	18
3542	17
\.

COPY sklady (id_pociagu, id_wagonu, numer_kolejnosci) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	1	1
1	2	2
1	3	3
1	4	4
1	5	5
1	6	6
1	7	7
2	8	1
2	9	2
2	10	3
2	11	4
2	12	5
3	13	1
3	14	2
3	15	3
3	16	4
3	17	5
3	18	6
3	19	7
4	20	1
4	21	2
4	22	3
4	23	4
4	24	5
4	25	6
4	26	7
5	27	1
5	28	2
5	29	3
5	30	4
5	31	5
5	32	6
6	33	1
6	34	2
6	35	3
6	36	4
6	37	5
7	38	1
7	39	2
7	40	3
7	41	4
7	42	5
7	43	6
8	44	1
8	45	2
8	46	3
8	47	4
8	48	5
8	49	6
9	50	1
9	51	2
9	52	3
9	53	4
9	54	5
9	55	6
10	56	1
10	57	2
10	58	3
10	59	4
10	60	5
11	61	1
11	62	2
11	63	3
11	64	4
11	65	5
12	66	1
12	67	2
12	68	3
12	69	4
12	70	5
12	71	6
13	72	1
13	73	2
13	74	3
13	75	4
13	76	5
13	77	6
14	78	1
14	79	2
14	80	3
14	81	4
14	82	5
15	83	1
15	84	2
15	85	3
15	86	4
15	87	5
15	88	6
15	89	7
16	90	1
16	91	2
16	92	3
16	93	4
16	94	5
16	95	6
17	96	1
17	97	2
17	98	3
17	99	4
17	100	5
17	101	6
18	102	1
18	103	2
18	104	3
18	105	4
18	106	5
18	107	6
18	108	7
19	109	1
19	110	2
19	111	3
19	112	4
19	113	5
19	114	6
19	115	7
20	116	1
20	117	2
20	118	3
20	119	4
20	120	5
21	121	1
21	122	2
21	123	3
21	124	4
21	125	5
22	126	1
22	127	2
22	128	3
22	129	4
22	130	5
23	131	1
23	132	2
23	133	3
23	134	4
23	135	5
23	136	6
24	137	1
24	138	2
24	139	3
24	140	4
24	141	5
24	142	6
25	143	1
25	144	2
25	145	3
25	146	4
25	147	5
26	148	1
26	149	2
26	150	3
26	151	4
26	152	5
26	153	6
26	154	7
27	155	1
27	156	2
27	157	3
27	158	4
27	159	5
27	160	6
27	161	7
28	162	1
28	163	2
28	164	3
28	165	4
28	166	5
29	167	1
29	168	2
29	169	3
29	170	4
29	171	5
29	172	6
29	173	7
30	174	1
30	175	2
30	176	3
30	177	4
30	178	5
30	179	6
30	180	7
31	181	1
31	182	2
31	183	3
31	184	4
31	185	5
31	186	6
32	187	1
32	188	2
32	189	3
32	190	4
32	191	5
33	192	1
33	193	2
33	194	3
33	195	4
33	196	5
34	197	1
34	198	2
34	199	3
34	200	4
34	201	5
35	202	1
35	203	2
35	204	3
35	205	4
35	206	5
35	207	6
36	208	1
36	209	2
36	210	3
36	211	4
36	212	5
37	213	1
37	214	2
37	215	3
37	216	4
37	217	5
37	218	6
37	219	7
38	220	1
38	221	2
38	222	3
38	223	4
38	224	5
39	225	1
39	226	2
39	227	3
39	228	4
39	229	5
40	230	1
40	231	2
40	232	3
40	233	4
40	234	5
41	235	1
41	236	2
41	237	3
41	238	4
41	239	5
41	240	6
42	241	1
42	242	2
42	243	3
42	244	4
42	245	5
42	246	6
43	247	1
43	248	2
43	249	3
43	250	4
43	251	5
43	252	6
43	253	7
44	254	1
44	255	2
44	256	3
44	257	4
44	258	5
44	259	6
44	260	7
45	261	1
45	262	2
45	263	3
45	264	4
45	265	5
45	266	6
45	267	7
46	268	1
46	269	2
46	270	3
46	271	4
46	272	5
46	273	6
47	274	1
47	275	2
47	276	3
47	277	4
47	278	5
47	279	6
48	280	1
48	281	2
48	282	3
48	283	4
48	284	5
49	285	1
49	286	2
49	287	3
49	288	4
49	289	5
49	290	6
50	291	1
50	292	2
50	293	3
50	294	4
50	295	5
50	296	6
51	297	1
51	298	2
51	299	3
51	300	4
51	301	5
52	302	1
52	303	2
52	304	3
52	305	4
52	306	5
53	307	1
53	308	2
53	309	3
53	310	4
53	311	5
53	312	6
54	313	1
54	314	2
54	315	3
54	316	4
54	317	5
54	318	6
55	319	1
55	320	2
55	321	3
55	322	4
55	323	5
56	324	1
56	325	2
56	326	3
56	327	4
56	328	5
56	329	6
56	330	7
57	331	1
57	332	2
57	333	3
57	334	4
57	335	5
58	336	1
58	337	2
58	338	3
58	339	4
58	340	5
58	341	6
58	342	7
59	343	1
59	344	2
59	345	3
59	346	4
59	347	5
59	348	6
59	349	7
60	350	1
60	351	2
60	352	3
60	353	4
60	354	5
60	355	6
61	356	1
61	357	2
61	358	3
61	359	4
61	360	5
62	361	1
62	362	2
62	363	3
62	364	4
62	365	5
63	366	1
63	367	2
63	368	3
63	369	4
63	370	5
63	371	6
64	372	1
64	373	2
64	374	3
64	375	4
64	376	5
65	377	1
65	378	2
65	379	3
65	380	4
65	381	5
65	382	6
66	383	1
66	384	2
66	385	3
66	386	4
66	387	5
66	388	6
66	389	7
67	390	1
67	391	2
67	392	3
67	393	4
67	394	5
68	395	1
68	396	2
68	397	3
68	398	4
68	399	5
68	400	6
69	401	1
69	402	2
69	403	3
69	404	4
69	405	5
70	406	1
70	407	2
70	408	3
70	409	4
70	410	5
70	411	6
71	412	1
71	413	2
71	414	3
71	415	4
71	416	5
71	417	6
72	418	1
72	419	2
72	420	3
72	421	4
72	422	5
72	423	6
73	424	1
73	425	2
73	426	3
73	427	4
73	428	5
73	429	6
74	430	1
74	431	2
74	432	3
74	433	4
74	434	5
74	435	6
75	436	1
75	437	2
75	438	3
75	439	4
75	440	5
75	441	6
76	442	1
76	443	2
76	444	3
76	445	4
76	446	5
76	447	6
77	448	1
77	449	2
77	450	3
77	451	4
77	452	5
77	453	6
78	454	1
78	455	2
78	456	3
78	457	4
78	458	5
79	459	1
79	460	2
79	461	3
79	462	4
79	463	5
80	464	1
80	465	2
80	466	3
80	467	4
80	468	5
80	469	6
81	470	1
81	471	2
81	472	3
81	473	4
81	474	5
81	475	6
81	476	7
82	477	1
82	478	2
82	479	3
82	480	4
82	481	5
82	482	6
82	483	7
83	484	1
83	485	2
83	486	3
83	487	4
83	488	5
83	489	6
84	490	1
84	491	2
84	492	3
84	493	4
84	494	5
84	495	6
85	496	1
85	497	2
85	498	3
85	499	4
85	500	5
86	501	1
86	502	2
86	503	3
86	504	4
86	505	5
87	506	1
87	507	2
87	508	3
87	509	4
87	510	5
87	511	6
88	512	1
88	513	2
88	514	3
88	515	4
88	516	5
88	517	6
89	518	1
89	519	2
89	520	3
89	521	4
89	522	5
89	523	6
90	524	1
90	525	2
90	526	3
90	527	4
90	528	5
90	529	6
90	530	7
91	531	1
91	532	2
91	533	3
91	534	4
91	535	5
91	536	6
92	537	1
92	538	2
92	539	3
92	540	4
92	541	5
92	542	6
92	543	7
93	544	1
93	545	2
93	546	3
93	547	4
93	548	5
93	549	6
93	550	7
94	551	1
94	552	2
94	553	3
94	554	4
94	555	5
95	556	1
95	557	2
95	558	3
95	559	4
95	560	5
95	561	6
96	562	1
96	563	2
96	564	3
96	565	4
96	566	5
96	567	6
97	568	1
97	569	2
97	570	3
97	571	4
97	572	5
97	573	6
98	574	1
98	575	2
98	576	3
98	577	4
98	578	5
98	579	6
98	580	7
99	581	1
99	582	2
99	583	3
99	584	4
99	585	5
99	586	6
100	587	1
100	588	2
100	589	3
100	590	4
100	591	5
100	592	6
100	593	7
101	594	1
101	595	2
101	596	3
101	597	4
101	598	5
101	599	6
101	600	7
102	601	1
102	602	2
102	603	3
102	604	4
102	605	5
102	606	6
102	607	7
103	608	1
103	609	2
103	610	3
103	611	4
103	612	5
103	613	6
103	614	7
104	615	1
104	616	2
104	617	3
104	618	4
104	619	5
105	620	1
105	621	2
105	622	3
105	623	4
105	624	5
105	625	6
106	626	1
106	627	2
106	628	3
106	629	4
106	630	5
107	631	1
107	632	2
107	633	3
107	634	4
107	635	5
108	636	1
108	637	2
108	638	3
108	639	4
108	640	5
108	641	6
109	642	1
109	643	2
109	644	3
109	645	4
109	646	5
109	647	6
110	648	1
110	649	2
110	650	3
110	651	4
110	652	5
110	653	6
111	654	1
111	655	2
111	656	3
111	657	4
111	658	5
112	659	1
112	660	2
112	661	3
112	662	4
112	663	5
112	664	6
112	665	7
113	666	1
113	667	2
113	668	3
113	669	4
113	670	5
114	671	1
114	672	2
114	673	3
114	674	4
114	675	5
114	676	6
115	677	1
115	678	2
115	679	3
115	680	4
115	681	5
115	682	6
115	683	7
116	684	1
116	685	2
116	686	3
116	687	4
116	688	5
116	689	6
116	690	7
117	691	1
117	692	2
117	693	3
117	694	4
117	695	5
118	696	1
118	697	2
118	698	3
118	699	4
118	700	5
118	701	6
119	702	1
119	703	2
119	704	3
119	705	4
119	706	5
119	707	6
120	708	1
120	709	2
120	710	3
120	711	4
120	712	5
120	713	6
121	714	1
121	715	2
121	716	3
121	717	4
121	718	5
122	719	1
122	720	2
122	721	3
122	722	4
122	723	5
122	724	6
123	725	1
123	726	2
123	727	3
123	728	4
123	729	5
123	730	6
124	731	1
124	732	2
124	733	3
124	734	4
124	735	5
124	736	6
124	737	7
125	738	1
125	739	2
125	740	3
125	741	4
125	742	5
125	743	6
125	744	7
126	745	1
126	746	2
126	747	3
126	748	4
126	749	5
126	750	6
127	751	1
127	752	2
127	753	3
127	754	4
127	755	5
127	756	6
128	757	1
128	758	2
128	759	3
128	760	4
128	761	5
129	762	1
129	763	2
129	764	3
129	765	4
129	766	5
129	767	6
130	768	1
130	769	2
130	770	3
130	771	4
130	772	5
131	773	1
131	774	2
131	775	3
131	776	4
131	777	5
131	778	6
131	779	7
132	780	1
132	781	2
132	782	3
132	783	4
132	784	5
133	785	1
133	786	2
133	787	3
133	788	4
133	789	5
134	790	1
134	791	2
134	792	3
134	793	4
134	794	5
135	795	1
135	796	2
135	797	3
135	798	4
135	799	5
135	800	6
136	801	1
136	802	2
136	803	3
136	804	4
136	805	5
136	806	6
137	807	1
137	808	2
137	809	3
137	810	4
137	811	5
137	812	6
138	813	1
138	814	2
138	815	3
138	816	4
138	817	5
138	818	6
139	819	1
139	820	2
139	821	3
139	822	4
139	823	5
140	824	1
140	825	2
140	826	3
140	827	4
140	828	5
141	829	1
141	830	2
141	831	3
141	832	4
141	833	5
141	834	6
142	835	1
142	836	2
142	837	3
142	838	4
142	839	5
143	840	1
143	841	2
143	842	3
143	843	4
143	844	5
143	845	6
144	846	1
144	847	2
144	848	3
144	849	4
144	850	5
144	851	6
145	852	1
145	853	2
145	854	3
145	855	4
145	856	5
145	857	6
145	858	7
146	859	1
146	860	2
146	861	3
146	862	4
146	863	5
146	864	6
146	865	7
147	866	1
147	867	2
147	868	3
147	869	4
147	870	5
148	871	1
148	872	2
148	873	3
148	874	4
148	875	5
148	876	6
149	877	1
149	878	2
149	879	3
149	880	4
149	881	5
150	882	1
150	883	2
150	884	3
150	885	4
150	886	5
150	887	6
151	888	1
151	889	2
151	890	3
151	891	4
151	892	5
151	893	6
152	894	1
152	895	2
152	896	3
152	897	4
152	898	5
153	899	1
153	900	2
153	901	3
153	902	4
153	903	5
154	904	1
154	905	2
154	906	3
154	907	4
154	908	5
154	909	6
155	910	1
155	911	2
155	912	3
155	913	4
155	914	5
155	915	6
156	916	1
156	917	2
156	918	3
156	919	4
156	920	5
156	921	6
157	922	1
157	923	2
157	924	3
157	925	4
157	926	5
157	927	6
157	928	7
158	929	1
158	930	2
158	931	3
158	932	4
158	933	5
159	934	1
159	935	2
159	936	3
159	937	4
159	938	5
159	939	6
159	940	7
160	941	1
160	942	2
160	943	3
160	944	4
160	945	5
161	946	1
161	947	2
161	948	3
161	949	4
161	950	5
162	951	1
162	952	2
162	953	3
162	954	4
162	955	5
162	956	6
162	957	7
163	958	1
163	959	2
163	960	3
163	961	4
163	962	5
163	963	6
163	964	7
164	965	1
164	966	2
164	967	3
164	968	4
164	969	5
164	970	6
165	971	1
165	972	2
165	973	3
165	974	4
165	975	5
166	976	1
166	977	2
166	978	3
166	979	4
166	980	5
166	981	6
167	982	1
167	983	2
167	984	3
167	985	4
167	986	5
167	987	6
168	988	1
168	989	2
168	990	3
168	991	4
168	992	5
168	993	6
168	994	7
169	995	1
169	996	2
169	997	3
169	998	4
169	999	5
169	1000	6
169	1001	7
170	1002	1
170	1003	2
170	1004	3
170	1005	4
170	1006	5
170	1007	6
171	1008	1
171	1009	2
171	1010	3
171	1011	4
171	1012	5
171	1013	6
171	1014	7
172	1015	1
172	1016	2
172	1017	3
172	1018	4
172	1019	5
172	1020	6
173	1021	1
173	1022	2
173	1023	3
173	1024	4
173	1025	5
173	1026	6
174	1027	1
174	1028	2
174	1029	3
174	1030	4
174	1031	5
174	1032	6
174	1033	7
175	1034	1
175	1035	2
175	1036	3
175	1037	4
175	1038	5
175	1039	6
176	1040	1
176	1041	2
176	1042	3
176	1043	4
176	1044	5
176	1045	6
177	1046	1
177	1047	2
177	1048	3
177	1049	4
177	1050	5
177	1051	6
178	1052	1
178	1053	2
178	1054	3
178	1055	4
178	1056	5
178	1057	6
178	1058	7
179	1059	1
179	1060	2
179	1061	3
179	1062	4
179	1063	5
179	1064	6
180	1065	1
180	1066	2
180	1067	3
180	1068	4
180	1069	5
180	1070	6
181	1071	1
181	1072	2
181	1073	3
181	1074	4
181	1075	5
182	1076	1
182	1077	2
182	1078	3
182	1079	4
182	1080	5
182	1081	6
182	1082	7
183	1083	1
183	1084	2
183	1085	3
183	1086	4
183	1087	5
184	1088	1
184	1089	2
184	1090	3
184	1091	4
184	1092	5
184	1093	6
185	1094	1
185	1095	2
185	1096	3
185	1097	4
185	1098	5
186	1099	1
186	1100	2
186	1101	3
186	1102	4
186	1103	5
186	1104	6
187	1105	1
187	1106	2
187	1107	3
187	1108	4
187	1109	5
187	1110	6
188	1111	1
188	1112	2
188	1113	3
188	1114	4
188	1115	5
188	1116	6
189	1117	1
189	1118	2
189	1119	3
189	1120	4
189	1121	5
189	1122	6
189	1123	7
190	1124	1
190	1125	2
190	1126	3
190	1127	4
190	1128	5
191	1129	1
191	1130	2
191	1131	3
191	1132	4
191	1133	5
192	1134	1
192	1135	2
192	1136	3
192	1137	4
192	1138	5
193	1139	1
193	1140	2
193	1141	3
193	1142	4
193	1143	5
194	1144	1
194	1145	2
194	1146	3
194	1147	4
194	1148	5
194	1149	6
194	1150	7
195	1151	1
195	1152	2
195	1153	3
195	1154	4
195	1155	5
195	1156	6
196	1157	1
196	1158	2
196	1159	3
196	1160	4
196	1161	5
196	1162	6
196	1163	7
197	1164	1
197	1165	2
197	1166	3
197	1167	4
197	1168	5
197	1169	6
198	1170	1
198	1171	2
198	1172	3
198	1173	4
198	1174	5
198	1175	6
199	1176	1
199	1177	2
199	1178	3
199	1179	4
199	1180	5
199	1181	6
199	1182	7
200	1183	1
200	1184	2
200	1185	3
200	1186	4
200	1187	5
200	1188	6
201	1189	1
201	1190	2
201	1191	3
201	1192	4
201	1193	5
201	1194	6
202	1195	1
202	1196	2
202	1197	3
202	1198	4
202	1199	5
202	1200	6
203	1201	1
203	1202	2
203	1203	3
203	1204	4
203	1205	5
204	1206	1
204	1207	2
204	1208	3
204	1209	4
204	1210	5
204	1211	6
205	1212	1
205	1213	2
205	1214	3
205	1215	4
205	1216	5
206	1217	1
206	1218	2
206	1219	3
206	1220	4
206	1221	5
207	1222	1
207	1223	2
207	1224	3
207	1225	4
207	1226	5
207	1227	6
208	1228	1
208	1229	2
208	1230	3
208	1231	4
208	1232	5
209	1233	1
209	1234	2
209	1235	3
209	1236	4
209	1237	5
209	1238	6
210	1239	1
210	1240	2
210	1241	3
210	1242	4
210	1243	5
210	1244	6
211	1245	1
211	1246	2
211	1247	3
211	1248	4
211	1249	5
211	1250	6
212	1251	1
212	1252	2
212	1253	3
212	1254	4
212	1255	5
213	1256	1
213	1257	2
213	1258	3
213	1259	4
213	1260	5
213	1261	6
214	1262	1
214	1263	2
214	1264	3
214	1265	4
214	1266	5
214	1267	6
215	1268	1
215	1269	2
215	1270	3
215	1271	4
215	1272	5
215	1273	6
215	1274	7
216	1275	1
216	1276	2
216	1277	3
216	1278	4
216	1279	5
216	1280	6
217	1281	1
217	1282	2
217	1283	3
217	1284	4
217	1285	5
217	1286	6
218	1287	1
218	1288	2
218	1289	3
218	1290	4
218	1291	5
218	1292	6
219	1293	1
219	1294	2
219	1295	3
219	1296	4
219	1297	5
219	1298	6
219	1299	7
220	1300	1
220	1301	2
220	1302	3
220	1303	4
220	1304	5
220	1305	6
220	1306	7
221	1307	1
221	1308	2
221	1309	3
221	1310	4
221	1311	5
221	1312	6
222	1313	1
222	1314	2
222	1315	3
222	1316	4
222	1317	5
222	1318	6
222	1319	7
223	1320	1
223	1321	2
223	1322	3
223	1323	4
223	1324	5
223	1325	6
224	1326	1
224	1327	2
224	1328	3
224	1329	4
224	1330	5
224	1331	6
225	1332	1
225	1333	2
225	1334	3
225	1335	4
225	1336	5
225	1337	6
226	1338	1
226	1339	2
226	1340	3
226	1341	4
226	1342	5
226	1343	6
227	1344	1
227	1345	2
227	1346	3
227	1347	4
227	1348	5
227	1349	6
228	1350	1
228	1351	2
228	1352	3
228	1353	4
228	1354	5
229	1355	1
229	1356	2
229	1357	3
229	1358	4
229	1359	5
229	1360	6
229	1361	7
230	1362	1
230	1363	2
230	1364	3
230	1365	4
230	1366	5
230	1367	6
231	1368	1
231	1369	2
231	1370	3
231	1371	4
231	1372	5
232	1373	1
232	1374	2
232	1375	3
232	1376	4
232	1377	5
232	1378	6
232	1379	7
233	1380	1
233	1381	2
233	1382	3
233	1383	4
233	1384	5
233	1385	6
234	1386	1
234	1387	2
234	1388	3
234	1389	4
234	1390	5
234	1391	6
235	1392	1
235	1393	2
235	1394	3
235	1395	4
235	1396	5
235	1397	6
236	1398	1
236	1399	2
236	1400	3
236	1401	4
236	1402	5
236	1403	6
237	1404	1
237	1405	2
237	1406	3
237	1407	4
237	1408	5
237	1409	6
238	1410	1
238	1411	2
238	1412	3
238	1413	4
238	1414	5
238	1415	6
238	1416	7
239	1417	1
239	1418	2
239	1419	3
239	1420	4
239	1421	5
240	1422	1
240	1423	2
240	1424	3
240	1425	4
240	1426	5
240	1427	6
241	1428	1
241	1429	2
241	1430	3
241	1431	4
241	1432	5
242	1433	1
242	1434	2
242	1435	3
242	1436	4
242	1437	5
242	1438	6
243	1439	1
243	1440	2
243	1441	3
243	1442	4
243	1443	5
243	1444	6
243	1445	7
244	1446	1
244	1447	2
244	1448	3
244	1449	4
244	1450	5
244	1451	6
245	1452	1
245	1453	2
245	1454	3
245	1455	4
245	1456	5
246	1457	1
246	1458	2
246	1459	3
246	1460	4
246	1461	5
246	1462	6
247	1463	1
247	1464	2
247	1465	3
247	1466	4
247	1467	5
247	1468	6
248	1469	1
248	1470	2
248	1471	3
248	1472	4
248	1473	5
248	1474	6
249	1475	1
249	1476	2
249	1477	3
249	1478	4
249	1479	5
250	1480	1
250	1481	2
250	1482	3
250	1483	4
250	1484	5
250	1485	6
251	1486	1
251	1487	2
251	1488	3
251	1489	4
251	1490	5
252	1491	1
252	1492	2
252	1493	3
252	1494	4
252	1495	5
252	1496	6
253	1497	1
253	1498	2
253	1499	3
253	1500	4
253	1501	5
253	1502	6
254	1503	1
254	1504	2
254	1505	3
254	1506	4
254	1507	5
254	1508	6
254	1509	7
255	1510	1
255	1511	2
255	1512	3
255	1513	4
255	1514	5
255	1515	6
255	1516	7
256	1517	1
256	1518	2
256	1519	3
256	1520	4
256	1521	5
256	1522	6
257	1523	1
257	1524	2
257	1525	3
257	1526	4
257	1527	5
258	1528	1
258	1529	2
258	1530	3
258	1531	4
258	1532	5
259	1533	1
259	1534	2
259	1535	3
259	1536	4
259	1537	5
260	1538	1
260	1539	2
260	1540	3
260	1541	4
260	1542	5
260	1543	6
261	1544	1
261	1545	2
261	1546	3
261	1547	4
261	1548	5
261	1549	6
261	1550	7
262	1551	1
262	1552	2
262	1553	3
262	1554	4
262	1555	5
262	1556	6
263	1557	1
263	1558	2
263	1559	3
263	1560	4
263	1561	5
264	1562	1
264	1563	2
264	1564	3
264	1565	4
264	1566	5
264	1567	6
265	1568	1
265	1569	2
265	1570	3
265	1571	4
265	1572	5
265	1573	6
265	1574	7
266	1575	1
266	1576	2
266	1577	3
266	1578	4
266	1579	5
266	1580	6
267	1581	1
267	1582	2
267	1583	3
267	1584	4
267	1585	5
267	1586	6
268	1587	1
268	1588	2
268	1589	3
268	1590	4
268	1591	5
269	1592	1
269	1593	2
269	1594	3
269	1595	4
269	1596	5
270	1597	1
270	1598	2
270	1599	3
270	1600	4
270	1601	5
271	1602	1
271	1603	2
271	1604	3
271	1605	4
271	1606	5
271	1607	6
272	1608	1
272	1609	2
272	1610	3
272	1611	4
272	1612	5
272	1613	6
273	1614	1
273	1615	2
273	1616	3
273	1617	4
273	1618	5
273	1619	6
274	1620	1
274	1621	2
274	1622	3
274	1623	4
274	1624	5
274	1625	6
275	1626	1
275	1627	2
275	1628	3
275	1629	4
275	1630	5
275	1631	6
276	1632	1
276	1633	2
276	1634	3
276	1635	4
276	1636	5
276	1637	6
277	1638	1
277	1639	2
277	1640	3
277	1641	4
277	1642	5
277	1643	6
278	1644	1
278	1645	2
278	1646	3
278	1647	4
278	1648	5
278	1649	6
279	1650	1
279	1651	2
279	1652	3
279	1653	4
279	1654	5
279	1655	6
280	1656	1
280	1657	2
280	1658	3
280	1659	4
280	1660	5
280	1661	6
280	1662	7
281	1663	1
281	1664	2
281	1665	3
281	1666	4
281	1667	5
282	1668	1
282	1669	2
282	1670	3
282	1671	4
282	1672	5
282	1673	6
283	1674	1
283	1675	2
283	1676	3
283	1677	4
283	1678	5
283	1679	6
283	1680	7
284	1681	1
284	1682	2
284	1683	3
284	1684	4
284	1685	5
284	1686	6
285	1687	1
285	1688	2
285	1689	3
285	1690	4
285	1691	5
285	1692	6
285	1693	7
286	1694	1
286	1695	2
286	1696	3
286	1697	4
286	1698	5
287	1699	1
287	1700	2
287	1701	3
287	1702	4
287	1703	5
287	1704	6
288	1705	1
288	1706	2
288	1707	3
288	1708	4
288	1709	5
288	1710	6
289	1711	1
289	1712	2
289	1713	3
289	1714	4
289	1715	5
289	1716	6
290	1717	1
290	1718	2
290	1719	3
290	1720	4
290	1721	5
291	1722	1
291	1723	2
291	1724	3
291	1725	4
291	1726	5
291	1727	6
291	1728	7
292	1729	1
292	1730	2
292	1731	3
292	1732	4
292	1733	5
292	1734	6
293	1735	1
293	1736	2
293	1737	3
293	1738	4
293	1739	5
293	1740	6
294	1741	1
294	1742	2
294	1743	3
294	1744	4
294	1745	5
294	1746	6
294	1747	7
295	1748	1
295	1749	2
295	1750	3
295	1751	4
295	1752	5
295	1753	6
295	1754	7
296	1755	1
296	1756	2
296	1757	3
296	1758	4
296	1759	5
296	1760	6
296	1761	7
297	1762	1
297	1763	2
297	1764	3
297	1765	4
297	1766	5
297	1767	6
298	1768	1
298	1769	2
298	1770	3
298	1771	4
298	1772	5
298	1773	6
298	1774	7
299	1775	1
299	1776	2
299	1777	3
299	1778	4
299	1779	5
299	1780	6
300	1781	1
300	1782	2
300	1783	3
300	1784	4
300	1785	5
300	1786	6
301	1787	1
301	1788	2
301	1789	3
301	1790	4
301	1791	5
301	1792	6
301	1793	7
302	1794	1
302	1795	2
302	1796	3
302	1797	4
302	1798	5
302	1799	6
303	1800	1
303	1801	2
303	1802	3
303	1803	4
303	1804	5
303	1805	6
303	1806	7
304	1807	1
304	1808	2
304	1809	3
304	1810	4
304	1811	5
304	1812	6
305	1813	1
305	1814	2
305	1815	3
305	1816	4
305	1817	5
305	1818	6
306	1819	1
306	1820	2
306	1821	3
306	1822	4
306	1823	5
306	1824	6
307	1825	1
307	1826	2
307	1827	3
307	1828	4
307	1829	5
307	1830	6
308	1831	1
308	1832	2
308	1833	3
308	1834	4
308	1835	5
308	1836	6
309	1837	1
309	1838	2
309	1839	3
309	1840	4
309	1841	5
309	1842	6
310	1843	1
310	1844	2
310	1845	3
310	1846	4
310	1847	5
310	1848	6
311	1849	1
311	1850	2
311	1851	3
311	1852	4
311	1853	5
312	1854	1
312	1855	2
312	1856	3
312	1857	4
312	1858	5
313	1859	1
313	1860	2
313	1861	3
313	1862	4
313	1863	5
313	1864	6
313	1865	7
314	1866	1
314	1867	2
314	1868	3
314	1869	4
314	1870	5
314	1871	6
315	1872	1
315	1873	2
315	1874	3
315	1875	4
315	1876	5
315	1877	6
315	1878	7
316	1879	1
316	1880	2
316	1881	3
316	1882	4
316	1883	5
316	1884	6
317	1885	1
317	1886	2
317	1887	3
317	1888	4
317	1889	5
317	1890	6
317	1891	7
318	1892	1
318	1893	2
318	1894	3
318	1895	4
318	1896	5
319	1897	1
319	1898	2
319	1899	3
319	1900	4
319	1901	5
319	1902	6
320	1903	1
320	1904	2
320	1905	3
320	1906	4
320	1907	5
320	1908	6
320	1909	7
321	1910	1
321	1911	2
321	1912	3
321	1913	4
321	1914	5
321	1915	6
321	1916	7
322	1917	1
322	1918	2
322	1919	3
322	1920	4
322	1921	5
322	1922	6
323	1923	1
323	1924	2
323	1925	3
323	1926	4
323	1927	5
324	1928	1
324	1929	2
324	1930	3
324	1931	4
324	1932	5
324	1933	6
325	1934	1
325	1935	2
325	1936	3
325	1937	4
325	1938	5
325	1939	6
325	1940	7
326	1941	1
326	1942	2
326	1943	3
326	1944	4
326	1945	5
326	1946	6
326	1947	7
327	1948	1
327	1949	2
327	1950	3
327	1951	4
327	1952	5
327	1953	6
328	1954	1
328	1955	2
328	1956	3
328	1957	4
328	1958	5
329	1959	1
329	1960	2
329	1961	3
329	1962	4
329	1963	5
329	1964	6
330	1965	1
330	1966	2
330	1967	3
330	1968	4
330	1969	5
330	1970	6
330	1971	7
331	1972	1
331	1973	2
331	1974	3
331	1975	4
331	1976	5
331	1977	6
332	1978	1
332	1979	2
332	1980	3
332	1981	4
332	1982	5
332	1983	6
332	1984	7
333	1985	1
333	1986	2
333	1987	3
333	1988	4
333	1989	5
333	1990	6
334	1991	1
334	1992	2
334	1993	3
334	1994	4
334	1995	5
334	1996	6
335	1997	1
335	1998	2
335	1999	3
335	2000	4
335	2001	5
336	2002	1
336	2003	2
336	2004	3
336	2005	4
336	2006	5
336	2007	6
337	2008	1
337	2009	2
337	2010	3
337	2011	4
337	2012	5
338	2013	1
338	2014	2
338	2015	3
338	2016	4
338	2017	5
338	2018	6
339	2019	1
339	2020	2
339	2021	3
339	2022	4
339	2023	5
339	2024	6
340	2025	1
340	2026	2
340	2027	3
340	2028	4
340	2029	5
340	2030	6
341	2031	1
341	2032	2
341	2033	3
341	2034	4
341	2035	5
341	2036	6
342	2037	1
342	2038	2
342	2039	3
342	2040	4
342	2041	5
342	2042	6
343	2043	1
343	2044	2
343	2045	3
343	2046	4
343	2047	5
344	2048	1
344	2049	2
344	2050	3
344	2051	4
344	2052	5
344	2053	6
344	2054	7
345	2055	1
345	2056	2
345	2057	3
345	2058	4
345	2059	5
345	2060	6
346	2061	1
346	2062	2
346	2063	3
346	2064	4
347	2065	1
347	2066	2
347	2067	3
347	2068	4
347	2069	5
347	2070	6
348	2071	1
348	2072	2
348	2073	3
348	2074	4
348	2075	5
348	2076	6
348	2077	7
349	2078	1
349	2079	2
349	2080	3
349	2081	4
349	2082	5
350	2083	1
350	2084	2
350	2085	3
350	2086	4
350	2087	5
350	2088	6
351	2089	1
351	2090	2
351	2091	3
351	2092	4
351	2093	5
351	2094	6
352	2095	1
352	2096	2
352	2097	3
352	2098	4
353	2099	1
353	2100	2
353	2101	3
353	2102	4
353	2103	5
353	2104	6
354	2105	1
354	2106	2
354	2107	3
354	2108	4
354	2109	5
355	2110	1
355	2111	2
355	2112	3
355	2113	4
355	2114	5
356	2115	1
356	2116	2
356	2117	3
356	2118	4
356	2119	5
356	2120	6
357	2121	1
357	2122	2
357	2123	3
357	2124	4
357	2125	5
357	2126	6
358	2127	1
358	2128	2
358	2129	3
358	2130	4
358	2131	5
359	2132	1
359	2133	2
359	2134	3
359	2135	4
359	2136	5
359	2137	6
360	2138	1
360	2139	2
360	2140	3
360	2141	4
360	2142	5
360	2143	6
361	2144	1
361	2145	2
361	2146	3
361	2147	4
361	2148	5
361	2149	6
362	2150	1
362	2151	2
362	2152	3
362	2153	4
362	2154	5
362	2155	6
362	2156	7
363	2157	1
363	2158	2
363	2159	3
363	2160	4
363	2161	5
363	2162	6
363	2163	7
364	2164	1
364	2165	2
364	2166	3
364	2167	4
364	2168	5
364	2169	6
365	2170	1
365	2171	2
365	2172	3
365	2173	4
365	2174	5
365	2175	6
365	2176	7
366	2177	1
366	2178	2
366	2179	3
366	2180	4
366	2181	5
366	2182	6
367	2183	1
367	2184	2
367	2185	3
367	2186	4
367	2187	5
368	2188	1
368	2189	2
368	2190	3
368	2191	4
368	2192	5
368	2193	6
369	2194	1
369	2195	2
369	2196	3
369	2197	4
369	2198	5
370	2199	1
370	2200	2
370	2201	3
370	2202	4
370	2203	5
370	2204	6
371	2205	1
371	2206	2
371	2207	3
371	2208	4
371	2209	5
371	2210	6
371	2211	7
372	2212	1
372	2213	2
372	2214	3
372	2215	4
372	2216	5
372	2217	6
373	2218	1
373	2219	2
373	2220	3
373	2221	4
373	2222	5
373	2223	6
374	2224	1
374	2225	2
374	2226	3
374	2227	4
374	2228	5
374	2229	6
374	2230	7
375	2231	1
375	2232	2
375	2233	3
375	2234	4
375	2235	5
376	2236	1
376	2237	2
376	2238	3
376	2239	4
376	2240	5
377	2241	1
377	2242	2
377	2243	3
377	2244	4
377	2245	5
377	2246	6
377	2247	7
378	2248	1
378	2249	2
378	2250	3
378	2251	4
378	2252	5
378	2253	6
379	2254	1
379	2255	2
379	2256	3
379	2257	4
379	2258	5
379	2259	6
380	2260	1
380	2261	2
380	2262	3
380	2263	4
380	2264	5
380	2265	6
380	2266	7
381	2267	1
381	2268	2
381	2269	3
381	2270	4
381	2271	5
381	2272	6
381	2273	7
382	2274	1
382	2275	2
382	2276	3
382	2277	4
382	2278	5
382	2279	6
382	2280	7
383	2281	1
383	2282	2
383	2283	3
383	2284	4
383	2285	5
383	2286	6
384	2287	1
384	2288	2
384	2289	3
384	2290	4
384	2291	5
384	2292	6
385	2293	1
385	2294	2
385	2295	3
385	2296	4
385	2297	5
385	2298	6
386	2299	1
386	2300	2
386	2301	3
386	2302	4
386	2303	5
386	2304	6
386	2305	7
387	2306	1
387	2307	2
387	2308	3
387	2309	4
387	2310	5
387	2311	6
388	2312	1
388	2313	2
388	2314	3
388	2315	4
388	2316	5
389	2317	1
389	2318	2
389	2319	3
389	2320	4
389	2321	5
389	2322	6
389	2323	7
390	2324	1
390	2325	2
390	2326	3
390	2327	4
390	2328	5
391	2329	1
391	2330	2
391	2331	3
391	2332	4
391	2333	5
391	2334	6
391	2335	7
392	2336	1
392	2337	2
392	2338	3
392	2339	4
392	2340	5
392	2341	6
393	2342	1
393	2343	2
393	2344	3
393	2345	4
393	2346	5
394	2347	1
394	2348	2
394	2349	3
394	2350	4
394	2351	5
394	2352	6
395	2353	1
395	2354	2
395	2355	3
395	2356	4
395	2357	5
396	2358	1
396	2359	2
396	2360	3
396	2361	4
396	2362	5
396	2363	6
397	2364	1
397	2365	2
397	2366	3
397	2367	4
397	2368	5
397	2369	6
398	2370	1
398	2371	2
398	2372	3
398	2373	4
398	2374	5
398	2375	6
399	2376	1
399	2377	2
399	2378	3
399	2379	4
399	2380	5
400	2381	1
400	2382	2
400	2383	3
400	2384	4
400	2385	5
401	2386	1
401	2387	2
401	2388	3
401	2389	4
401	2390	5
401	2391	6
401	2392	7
402	2393	1
402	2394	2
402	2395	3
402	2396	4
402	2397	5
402	2398	6
403	2399	1
403	2400	2
403	2401	3
403	2402	4
403	2403	5
403	2404	6
404	2405	1
404	2406	2
404	2407	3
404	2408	4
404	2409	5
404	2410	6
405	2411	1
405	2412	2
405	2413	3
405	2414	4
405	2415	5
405	2416	6
406	2417	1
406	2418	2
406	2419	3
406	2420	4
406	2421	5
406	2422	6
407	2423	1
407	2424	2
407	2425	3
407	2426	4
407	2427	5
407	2428	6
408	2429	1
408	2430	2
408	2431	3
408	2432	4
408	2433	5
408	2434	6
409	2435	1
409	2436	2
409	2437	3
409	2438	4
409	2439	5
409	2440	6
410	2441	1
410	2442	2
410	2443	3
410	2444	4
410	2445	5
411	2446	1
411	2447	2
411	2448	3
411	2449	4
411	2450	5
411	2451	6
412	2452	1
412	2453	2
412	2454	3
412	2455	4
412	2456	5
412	2457	6
413	2458	1
413	2459	2
413	2460	3
413	2461	4
413	2462	5
413	2463	6
414	2464	1
414	2465	2
414	2466	3
414	2467	4
414	2468	5
414	2469	6
415	2470	1
415	2471	2
415	2472	3
415	2473	4
415	2474	5
416	2475	1
416	2476	2
416	2477	3
416	2478	4
416	2479	5
416	2480	6
417	2481	1
417	2482	2
417	2483	3
417	2484	4
417	2485	5
418	2486	1
418	2487	2
418	2488	3
418	2489	4
418	2490	5
419	2491	1
419	2492	2
419	2493	3
419	2494	4
419	2495	5
419	2496	6
419	2497	7
420	2498	1
420	2499	2
420	2500	3
420	2501	4
420	2502	5
421	2503	1
421	2504	2
421	2505	3
421	2506	4
421	2507	5
421	2508	6
422	2509	1
422	2510	2
422	2511	3
422	2512	4
422	2513	5
423	2514	1
423	2515	2
423	2516	3
423	2517	4
423	2518	5
423	2519	6
424	2520	1
424	2521	2
424	2522	3
424	2523	4
424	2524	5
424	2525	6
425	2526	1
425	2527	2
425	2528	3
425	2529	4
425	2530	5
425	2531	6
426	2532	1
426	2533	2
426	2534	3
426	2535	4
426	2536	5
426	2537	6
427	2538	1
427	2539	2
427	2540	3
427	2541	4
427	2542	5
428	2543	1
428	2544	2
428	2545	3
428	2546	4
428	2547	5
429	2548	1
429	2549	2
429	2550	3
429	2551	4
429	2552	5
429	2553	6
429	2554	7
430	2555	1
430	2556	2
430	2557	3
430	2558	4
430	2559	5
430	2560	6
431	2561	1
431	2562	2
431	2563	3
431	2564	4
431	2565	5
431	2566	6
432	2567	1
432	2568	2
432	2569	3
432	2570	4
432	2571	5
432	2572	6
433	2573	1
433	2574	2
433	2575	3
433	2576	4
433	2577	5
433	2578	6
433	2579	7
434	2580	1
434	2581	2
434	2582	3
434	2583	4
434	2584	5
434	2585	6
435	2586	1
435	2587	2
435	2588	3
435	2589	4
435	2590	5
436	2591	1
436	2592	2
436	2593	3
436	2594	4
436	2595	5
437	2596	1
437	2597	2
437	2598	3
437	2599	4
437	2600	5
438	2601	1
438	2602	2
438	2603	3
438	2604	4
438	2605	5
439	2606	1
439	2607	2
439	2608	3
439	2609	4
439	2610	5
439	2611	6
440	2612	1
440	2613	2
440	2614	3
440	2615	4
440	2616	5
440	2617	6
440	2618	7
441	2619	1
441	2620	2
441	2621	3
441	2622	4
441	2623	5
441	2624	6
442	2625	1
442	2626	2
442	2627	3
442	2628	4
442	2629	5
442	2630	6
442	2631	7
443	2632	1
443	2633	2
443	2634	3
443	2635	4
443	2636	5
444	2637	1
444	2638	2
444	2639	3
444	2640	4
444	2641	5
444	2642	6
444	2643	7
445	2644	1
445	2645	2
445	2646	3
445	2647	4
445	2648	5
445	2649	6
446	2650	1
446	2651	2
446	2652	3
446	2653	4
446	2654	5
446	2655	6
447	2656	1
447	2657	2
447	2658	3
447	2659	4
447	2660	5
447	2661	6
448	2662	1
448	2663	2
448	2664	3
448	2665	4
448	2666	5
449	2667	1
449	2668	2
449	2669	3
449	2670	4
449	2671	5
449	2672	6
450	2673	1
450	2674	2
450	2675	3
450	2676	4
450	2677	5
451	2678	1
451	2679	2
451	2680	3
451	2681	4
451	2682	5
451	2683	6
452	2684	1
452	2685	2
452	2686	3
452	2687	4
452	2688	5
452	2689	6
453	2690	1
453	2691	2
453	2692	3
453	2693	4
453	2694	5
454	2695	1
454	2696	2
454	2697	3
454	2698	4
454	2699	5
454	2700	6
454	2701	7
455	2702	1
455	2703	2
455	2704	3
455	2705	4
455	2706	5
455	2707	6
456	2708	1
456	2709	2
456	2710	3
456	2711	4
456	2712	5
456	2713	6
456	2714	7
457	2715	1
457	2716	2
457	2717	3
457	2718	4
457	2719	5
457	2720	6
458	2721	1
458	2722	2
458	2723	3
458	2724	4
458	2725	5
458	2726	6
459	2727	1
459	2728	2
459	2729	3
459	2730	4
459	2731	5
460	2732	1
460	2733	2
460	2734	3
460	2735	4
460	2736	5
461	2737	1
461	2738	2
461	2739	3
461	2740	4
461	2741	5
462	2742	1
462	2743	2
462	2744	3
462	2745	4
462	2746	5
462	2747	6
462	2748	7
463	2749	1
463	2750	2
463	2751	3
463	2752	4
463	2753	5
463	2754	6
464	2755	1
464	2756	2
464	2757	3
464	2758	4
464	2759	5
464	2760	6
465	2761	1
465	2762	2
465	2763	3
465	2764	4
465	2765	5
465	2766	6
465	2767	7
466	2768	1
466	2769	2
466	2770	3
466	2771	4
466	2772	5
467	2773	1
467	2774	2
467	2775	3
467	2776	4
467	2777	5
467	2778	6
468	2779	1
468	2780	2
468	2781	3
468	2782	4
468	2783	5
468	2784	6
468	2785	7
469	2786	1
469	2787	2
469	2788	3
469	2789	4
469	2790	5
469	2791	6
469	2792	7
470	2793	1
470	2794	2
470	2795	3
470	2796	4
470	2797	5
470	2798	6
470	2799	7
471	2800	1
471	2801	2
471	2802	3
471	2803	4
471	2804	5
471	2805	6
472	2806	1
472	2807	2
472	2808	3
472	2809	4
472	2810	5
473	2811	1
473	2812	2
473	2813	3
473	2814	4
473	2815	5
474	2816	1
474	2817	2
474	2818	3
474	2819	4
474	2820	5
474	2821	6
475	2822	1
475	2823	2
475	2824	3
475	2825	4
475	2826	5
475	2827	6
475	2828	7
476	2829	1
476	2830	2
476	2831	3
476	2832	4
476	2833	5
476	2834	6
477	2835	1
477	2836	2
477	2837	3
477	2838	4
477	2839	5
477	2840	6
478	2841	1
478	2842	2
478	2843	3
478	2844	4
478	2845	5
478	2846	6
478	2847	7
479	2848	1
479	2849	2
479	2850	3
479	2851	4
479	2852	5
479	2853	6
480	2854	1
480	2855	2
480	2856	3
480	2857	4
480	2858	5
480	2859	6
481	2860	1
481	2861	2
481	2862	3
481	2863	4
481	2864	5
481	2865	6
482	2866	1
482	2867	2
482	2868	3
482	2869	4
482	2870	5
482	2871	6
483	2872	1
483	2873	2
483	2874	3
483	2875	4
483	2876	5
483	2877	6
484	2878	1
484	2879	2
484	2880	3
484	2881	4
484	2882	5
484	2883	6
484	2884	7
485	2885	1
485	2886	2
485	2887	3
485	2888	4
485	2889	5
485	2890	6
486	2891	1
486	2892	2
486	2893	3
486	2894	4
486	2895	5
487	2896	1
487	2897	2
487	2898	3
487	2899	4
487	2900	5
487	2901	6
488	2902	1
488	2903	2
488	2904	3
488	2905	4
488	2906	5
489	2907	1
489	2908	2
489	2909	3
489	2910	4
489	2911	5
489	2912	6
490	2913	1
490	2914	2
490	2915	3
490	2916	4
490	2917	5
490	2918	6
490	2919	7
491	2920	1
491	2921	2
491	2922	3
491	2923	4
491	2924	5
491	2925	6
491	2926	7
492	2927	1
492	2928	2
492	2929	3
492	2930	4
492	2931	5
493	2932	1
493	2933	2
493	2934	3
493	2935	4
493	2936	5
494	2937	1
494	2938	2
494	2939	3
494	2940	4
494	2941	5
495	2942	1
495	2943	2
495	2944	3
495	2945	4
495	2946	5
495	2947	6
496	2948	1
496	2949	2
496	2950	3
496	2951	4
496	2952	5
496	2953	6
496	2954	7
497	2955	1
497	2956	2
497	2957	3
497	2958	4
497	2959	5
498	2960	1
498	2961	2
498	2962	3
498	2963	4
498	2964	5
498	2965	6
499	2966	1
499	2967	2
499	2968	3
499	2969	4
499	2970	5
500	2971	1
500	2972	2
500	2973	3
500	2974	4
500	2975	5
500	2976	6
500	2977	7
501	2978	1
501	2979	2
501	2980	3
501	2981	4
501	2982	5
501	2983	6
502	2984	1
502	2985	2
502	2986	3
502	2987	4
502	2988	5
503	2989	1
503	2990	2
503	2991	3
503	2992	4
503	2993	5
504	2994	1
504	2995	2
504	2996	3
504	2997	4
504	2998	5
504	2999	6
504	3000	7
505	3001	1
505	3002	2
505	3003	3
505	3004	4
505	3005	5
505	3006	6
505	3007	7
506	3008	1
506	3009	2
506	3010	3
506	3011	4
506	3012	5
506	3013	6
507	3014	1
507	3015	2
507	3016	3
507	3017	4
507	3018	5
507	3019	6
508	3020	1
508	3021	2
508	3022	3
508	3023	4
508	3024	5
508	3025	6
509	3026	1
509	3027	2
509	3028	3
509	3029	4
509	3030	5
509	3031	6
510	3032	1
510	3033	2
510	3034	3
510	3035	4
510	3036	5
510	3037	6
511	3038	1
511	3039	2
511	3040	3
511	3041	4
511	3042	5
512	3043	1
512	3044	2
512	3045	3
512	3046	4
512	3047	5
512	3048	6
512	3049	7
513	3050	1
513	3051	2
513	3052	3
513	3053	4
513	3054	5
513	3055	6
513	3056	7
514	3057	1
514	3058	2
514	3059	3
514	3060	4
514	3061	5
514	3062	6
515	3063	1
515	3064	2
515	3065	3
515	3066	4
515	3067	5
516	3068	1
516	3069	2
516	3070	3
516	3071	4
516	3072	5
516	3073	6
516	3074	7
517	3075	1
517	3076	2
517	3077	3
517	3078	4
517	3079	5
517	3080	6
518	3081	1
518	3082	2
518	3083	3
518	3084	4
518	3085	5
518	3086	6
518	3087	7
519	3088	1
519	3089	2
519	3090	3
519	3091	4
519	3092	5
519	3093	6
519	3094	7
520	3095	1
520	3096	2
520	3097	3
520	3098	4
520	3099	5
520	3100	6
521	3101	1
521	3102	2
521	3103	3
521	3104	4
521	3105	5
522	3106	1
522	3107	2
522	3108	3
522	3109	4
522	3110	5
523	3111	1
523	3112	2
523	3113	3
523	3114	4
523	3115	5
524	3116	1
524	3117	2
524	3118	3
524	3119	4
524	3120	5
524	3121	6
524	3122	7
525	3123	1
525	3124	2
525	3125	3
525	3126	4
525	3127	5
525	3128	6
525	3129	7
526	3130	1
526	3131	2
526	3132	3
526	3133	4
526	3134	5
526	3135	6
527	3136	1
527	3137	2
527	3138	3
527	3139	4
527	3140	5
527	3141	6
528	3142	1
528	3143	2
528	3144	3
528	3145	4
528	3146	5
528	3147	6
529	3148	1
529	3149	2
529	3150	3
529	3151	4
529	3152	5
529	3153	6
530	3154	1
530	3155	2
530	3156	3
530	3157	4
530	3158	5
530	3159	6
531	3160	1
531	3161	2
531	3162	3
531	3163	4
531	3164	5
532	3165	1
532	3166	2
532	3167	3
532	3168	4
532	3169	5
533	3170	1
533	3171	2
533	3172	3
533	3173	4
533	3174	5
533	3175	6
534	3176	1
534	3177	2
534	3178	3
534	3179	4
534	3180	5
534	3181	6
535	3182	1
535	3183	2
535	3184	3
535	3185	4
535	3186	5
535	3187	6
536	3188	1
536	3189	2
536	3190	3
536	3191	4
536	3192	5
536	3193	6
537	3194	1
537	3195	2
537	3196	3
537	3197	4
537	3198	5
537	3199	6
538	3200	1
538	3201	2
538	3202	3
538	3203	4
538	3204	5
538	3205	6
538	3206	7
539	3207	1
539	3208	2
539	3209	3
539	3210	4
539	3211	5
539	3212	6
539	3213	7
540	3214	1
540	3215	2
540	3216	3
540	3217	4
540	3218	5
540	3219	6
540	3220	7
541	3221	1
541	3222	2
541	3223	3
541	3224	4
541	3225	5
541	3226	6
542	3227	1
542	3228	2
542	3229	3
542	3230	4
542	3231	5
543	3232	1
543	3233	2
543	3234	3
543	3235	4
543	3236	5
543	3237	6
543	3238	7
544	3239	1
544	3240	2
544	3241	3
544	3242	4
544	3243	5
544	3244	6
544	3245	7
545	3246	1
545	3247	2
545	3248	3
545	3249	4
545	3250	5
545	3251	6
546	3252	1
546	3253	2
546	3254	3
546	3255	4
546	3256	5
546	3257	6
547	3258	1
547	3259	2
547	3260	3
547	3261	4
547	3262	5
547	3263	6
548	3264	1
548	3265	2
548	3266	3
548	3267	4
548	3268	5
548	3269	6
549	3270	1
549	3271	2
549	3272	3
549	3273	4
549	3274	5
549	3275	6
550	3276	1
550	3277	2
550	3278	3
550	3279	4
550	3280	5
550	3281	6
551	3282	1
551	3283	2
551	3284	3
551	3285	4
551	3286	5
551	3287	6
552	3288	1
552	3289	2
552	3290	3
552	3291	4
552	3292	5
552	3293	6
553	3294	1
553	3295	2
553	3296	3
553	3297	4
553	3298	5
553	3299	6
554	3300	1
554	3301	2
554	3302	3
554	3303	4
554	3304	5
554	3305	6
555	3306	1
555	3307	2
555	3308	3
555	3309	4
555	3310	5
556	3311	1
556	3312	2
556	3313	3
556	3314	4
556	3315	5
556	3316	6
557	3317	1
557	3318	2
557	3319	3
557	3320	4
557	3321	5
557	3322	6
558	3323	1
558	3324	2
558	3325	3
558	3326	4
558	3327	5
558	3328	6
559	3329	1
559	3330	2
559	3331	3
559	3332	4
559	3333	5
559	3334	6
560	3335	1
560	3336	2
560	3337	3
560	3338	4
560	3339	5
560	3340	6
561	3341	1
561	3342	2
561	3343	3
561	3344	4
561	3345	5
561	3346	6
562	3347	1
562	3348	2
562	3349	3
562	3350	4
562	3351	5
563	3352	1
563	3353	2
563	3354	3
563	3355	4
563	3356	5
563	3357	6
563	3358	7
564	3359	1
564	3360	2
564	3361	3
564	3362	4
564	3363	5
564	3364	6
565	3365	1
565	3366	2
565	3367	3
565	3368	4
565	3369	5
565	3370	6
565	3371	7
566	3372	1
566	3373	2
566	3374	3
566	3375	4
566	3376	5
566	3377	6
567	3378	1
567	3379	2
567	3380	3
567	3381	4
567	3382	5
568	3383	1
568	3384	2
568	3385	3
568	3386	4
568	3387	5
568	3388	6
569	3389	1
569	3390	2
569	3391	3
569	3392	4
569	3393	5
569	3394	6
570	3395	1
570	3396	2
570	3397	3
570	3398	4
570	3399	5
570	3400	6
571	3401	1
571	3402	2
571	3403	3
571	3404	4
571	3405	5
572	3406	1
572	3407	2
572	3408	3
572	3409	4
572	3410	5
572	3411	6
573	3412	1
573	3413	2
573	3414	3
573	3415	4
573	3416	5
574	3417	1
574	3418	2
574	3419	3
574	3420	4
574	3421	5
574	3422	6
575	3423	1
575	3424	2
575	3425	3
575	3426	4
575	3427	5
575	3428	6
576	3429	1
576	3430	2
576	3431	3
576	3432	4
576	3433	5
577	3434	1
577	3435	2
577	3436	3
577	3437	4
577	3438	5
577	3439	6
577	3440	7
578	3441	1
578	3442	2
578	3443	3
578	3444	4
578	3445	5
579	3446	1
579	3447	2
579	3448	3
579	3449	4
579	3450	5
579	3451	6
580	3452	1
580	3453	2
580	3454	3
580	3455	4
580	3456	5
580	3457	6
581	3458	1
581	3459	2
581	3460	3
581	3461	4
581	3462	5
581	3463	6
582	3464	1
582	3465	2
582	3466	3
582	3467	4
582	3468	5
583	3469	1
583	3470	2
583	3471	3
583	3472	4
583	3473	5
583	3474	6
584	3475	1
584	3476	2
584	3477	3
584	3478	4
584	3479	5
585	3480	1
585	3481	2
585	3482	3
585	3483	4
585	3484	5
585	3485	6
586	3486	1
586	3487	2
586	3488	3
586	3489	4
586	3490	5
586	3491	6
587	3492	1
587	3493	2
587	3494	3
587	3495	4
587	3496	5
587	3497	6
588	3498	1
588	3499	2
588	3500	3
588	3501	4
588	3502	5
588	3503	6
589	3504	1
589	3505	2
589	3506	3
589	3507	4
589	3508	5
589	3509	6
589	3510	7
590	3511	1
590	3512	2
590	3513	3
590	3514	4
590	3515	5
590	3516	6
591	3517	1
591	3518	2
591	3519	3
591	3520	4
591	3521	5
591	3522	6
591	3523	7
592	3524	1
592	3525	2
592	3526	3
592	3527	4
592	3528	5
593	3529	1
593	3530	2
593	3531	3
593	3532	4
593	3533	5
593	3534	6
593	3535	7
594	3536	1
594	3537	2
594	3538	3
594	3539	4
594	3540	5
594	3541	6
594	3542	7
\.

COPY trasy (id_trasy, nazwa_trasy, id_pociagu) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	Trasa:_KONOPNICKA_6146_7_(Jelenia_Góra->Warszawa_Wsc)	1
2	Trasa:_GEDANIA_57000_1_(Gdynia_Główn->Berlin_Haupt)	2
3	Trasa:_SMOK_WAWELSKI_23108_9_(Lublin_Główn->Kraków_Główn)	3
4	Trasa:_SZTYGAR_2306_7_(Lublin_Główn->Kraków_Główn)	4
5	Trasa:_BATORY_14004_5_(Warszawa_Wsc->Budapest-Nyu)	5
6	Trasa:_PRZEMYŚLANIN_33172_(Przemyśl_Głó->Kraków_Główn)	6
7	Trasa:_POJEZIERZE_5710_1_(Olsztyn_Głów->Poznań_Główn)	7
8	Trasa:_PLANTY_63100_1_(Wrocław_Głów->Kraków_Płasz)	8
9	Trasa:_EIC_3504_5_(Kraków_Główn->Gdynia_Główn)	9
10	Trasa:_SILESIA_41006_7_(Praha_hlavní->Warszawa_Wsc)	10
11	Trasa:_SILESIA_14008_9_(Warszawa_Wsc->Bohumín)	11
12	Trasa:_SUKIENNICE_8322_3_(Szczecin_Głó->Kraków_Główn)	12
13	Trasa:_ŚNIEŻKA_6150_1_(Jelenia_Góra->Warszawa_Wsc)	13
14	Trasa:_USZATEK_1908_9_(Warszawa_Wsc->Łódź_Fabrycz)	14
15	Trasa:_ŁYSICA_2621_(Kielce_Główn->Wrocław_Głów)	15
16	Trasa:_KOPERNIK_5220_1_(Bydgoszcz_Gł->Lublin_Główn)	16
17	Trasa:_ONDRASZEK_4110_1_(Bielsko-Biał->Warszawa_Wsc)	17
18	Trasa:_WISŁOK_3138_9_(Rzeszów_Głów->Warszawa_Zac)	18
19	Trasa:_KOZIOŁEK_2820_1_(Lublin_Główn->Szczecin_Głó)	19
20	Trasa:_NIEGOCIN_5606_(Olsztyn_Głów->Wrocław_Głów)	20
21	Trasa:_OLEŃKA_6148_9_(Wrocław_Głów->Warszawa_Wsc)	21
22	Trasa:_HETMAN_23112_3_(Hrubieszów_M->Kraków_Główn)	22
23	Trasa:_WAWEL_37002_3_(Przemyśl_Głó->Berlin_Haupt)	23
24	Trasa:_BERLINWARSZAWAEXPRESS_71004_5_(Berlin_Haupt->Warszawa_Wsc)	24
25	Trasa:_KONOPNICKA_1646_7_(Warszawa_Wsc->Jelenia_Góra)	25
26	Trasa:_FREDRO_6142_3_(Jelenia_Góra->Warszawa_Wsc)	26
27	Trasa:_KORCZAK_19132_3_(Warszawa_Wsc->Łódź_Fabrycz)	27
28	Trasa:_MATEJKO_8314_5_(Szczecin_Głó->Przemyśl_Głó)	28
29	Trasa:_EIP_3104_5_(Kraków_Główn->Warszawa_Wsc)	29
30	Trasa:_JEZIORAK_5708_9_(Olsztyn_Głów->Poznań_Główn)	30
31	Trasa:_TELIMENA_1904_5_(Warszawa_Wsc->Łódź_Fabrycz)	31
32	Trasa:_WYCZÓŁKOWSKI_135_VIA_REGIA_830_(Świnoujście->Przemyśl_Głó)	32
33	Trasa:_KAZIMIERZ_5334_5_(Bydgoszcz_Gł->Zakopane)	33
34	Trasa:_NIEGOCIN_6506_7_(Wrocław_Głów->Olsztyn_Głów)	34
35	Trasa:_SMOK_WAWELSKI_32108_9_(Kraków_Główn->Lublin_Główn)	35
36	Trasa:_SAN_1330_1_(Warszawa_Wsc->Przemyśl_Głó)	36
37	Trasa:_DOKER_4522_3_(Katowice->Gdynia_Główn)	37
38	Trasa:_GÓRSKI_2802_3_(Chełm->Szczecin_Głó)	38
39	Trasa:_CHEŁMOŃSKI_133_SAXONIA_8302_3_(Świnoujście->Kraków_Główn)	39
40	Trasa:_PORAZIŃSKA_1652_3_(Warszawa_Cen->Wrocław_Głów)	40
41	Trasa:_ZOSIA_9100_1_(Łódź_Fabrycz->Warszawa_Wsc)	41
42	Trasa:_ZIELONOGÓRZANIN_7204_5_(Zielona_Góra->Chełm)	42
43	Trasa:_PANORAMA_6100_1_(Wrocław_Głów->Warszawa_Wsc)	43
44	Trasa:_INKA_1216_7_(Warszawa_Wsc->Lublin_Główn)	44
45	Trasa:_SZKUNER_3812_3_(Przemyśl_Głó->Sławno)	45
46	Trasa:_BERLINWARSZAWAEXPRESS_17012_3_(Warszawa_Wsc->Berlin-Charl)	46
47	Trasa:_ŁEMPICKA_2600_1_(Lublin_Główn->Wrocław_Głów)	47
48	Trasa:_MORAVIA_40001_(Katowice->Wien_Westbah)	48
49	Trasa:_POBRZEŻE_1814_5_(Łódź_Fabrycz->Kołobrzeg)	49
50	Trasa:_SUDETY_63102_3_(Jelenia_Góra->Kraków_Płasz)	50
51	Trasa:_ODRA_73004_5_(Berlin_Haupt->Kraków_Główn)	51
52	Trasa:_CHEŁMOŃSKI_132_SAXONIA_3802_3_(Kraków_Główn->Świnoujście)	52
53	Trasa:_HUTNIK_4520_1_(Bielsko-Biał->Gdynia_Główn)	53
54	Trasa:_GWAREK_8316_7_(Sławno->Kraków_Główn)	54
55	Trasa:_SILESIA_41000_1_(Praha_hlavní->Warszawa_Wsc)	55
56	Trasa:_GÓRSKI_7702_3_(Poznań_Główn->Zielona_Góra)	56
57	Trasa:_NIDA_3522_3_(Kraków_Główn->Giżycko)	57
58	Trasa:_ARTUS_4512_3_(Bielsko-Biał->Gdynia_Główn)	58
59	Trasa:_GÓRSKI_7700_1_(Zielona_Góra->Poznań_Główn)	59
60	Trasa:_ZAMOYSKI_8334_5_(Szczecin_Głó->Rzeszów_Głów)	60
61	Trasa:_CHOPIN_41010_1_(München_Haup->Warszawa_Wsc)	61
62	Trasa:_GROTTGER_6304_5_(Wrocław_Głów->Przemyśl_Głó)	62
63	Trasa:_BOSMAN_8612_(Białogard->Wrocław_Głów)	63
64	Trasa:_PORAZIŃSKA_6152_3_(Wrocław_Głów->Warszawa_Wsc)	64
65	Trasa:_CHEMIK_4124_5_(Katowice->Płock)	65
66	Trasa:_EIP_4502_3_(Gliwice->Gdynia_Główn)	66
67	Trasa:_LUBOMIRSKI_3828_9_(Kraków_Główn->Szczecin_Głó)	67
68	Trasa:_MEHOFFER_3718_9_(Przemyśl_Głó->Zielona_Góra)	68
69	Trasa:_UKIEL_7506_7_(Poznań_Główn->Olsztyn_Głów)	69
70	Trasa:_ŻEGLARZ_5114_5_(Gdynia_Główn->Łódź_Fabrycz)	70
71	Trasa:_NIDA_5322_3_(Giżycko->Kraków_Główn)	71
72	Trasa:_POWIŚLE_5503_(Bydgoszcz_Gł->Gdynia_Główn)	72
73	Trasa:_KATAMARAN_5118_9_(Gdynia_Główn->Łódź_Fabrycz)	73
74	Trasa:_LUBOMIRSKI_8328_9_(Szczecin_Głó->Kraków_Główn)	74
75	Trasa:_HUTNIK_5420_1_(Gdynia_Główn->Bielsko-Biał)	75
76	Trasa:_PLANTY_36100_1_(Kraków_Płasz->Wrocław_Głów)	76
77	Trasa:_MAŁOPOLSKA_30105_(Kraków_Główn->Krynica-Zdró)	77
78	Trasa:_MALCZEWSKI_8304_5_(Białogard->Kraków_Główn)	78
79	Trasa:_KORMORAN_3530_1_(Kraków_Główn->Olsztyn_Głów)	79
80	Trasa:_MORCINEK_4204_5_(Katowice->Kielce_Główn)	80
81	Trasa:_JADWIGA_4202_(Gliwice->Kielce_Główn)	81
82	Trasa:_ŻEROMSKI_3524_5_(Kraków_Główn->Olsztyn_Głów)	82
83	Trasa:_KYIV_EXPRESS_21010_1_(Київ-Пасажир->Warszawa_Zac)	83
84	Trasa:_SPODEK_37100_1_(Kraków_Główn->Poznań_Główn)	84
85	Trasa:_LUBUSZANIN_78103_(Zbąszynek->Gorzów_Wielk)	85
86	Trasa:_USTRONIE_38170_1_(Kraków_Główn->Kołobrzeg)	86
87	Trasa:_HAŃCZA_13000_1_(Mockava->Kraków_Główn)	87
88	Trasa:_WETLINA_30111_(Kraków_Główn->Jasło)	88
89	Trasa:_KINGA_3122_3_(Kraków_Główn->Warszawa_Wsc)	89
90	Trasa:_ZIELONOGÓRZANIN_2704_5_(Chełm->Zielona_Góra)	90
91	Trasa:_CEGIELSKI_3720_1_(Kraków_Główn->Poznań_Główn)	91
92	Trasa:_HEWELIUSZ_60101_(Wrocław_Głów->Jelenia_Góra)	92
93	Trasa:_HEWELIUSZ_66100_(Jelenia_Góra->Wrocław_Głów)	93
94	Trasa:_POLONIA_14002_3_(Warszawa_Wsc->Wien_Westbah)	94
95	Trasa:_ŁUŻYCE_1644_5_(Warszawa_Wsc->Zgorzelec)	95
96	Trasa:_WITOS_3136_7_(Przemyśl_Głó->Warszawa_Wsc)	96
97	Trasa:_EIC_4504_5_(Bielsko-Biał->Gdynia_Główn)	97
98	Trasa:_SZKUNER_8312_3_(Sławno->Przemyśl_Głó)	98
99	Trasa:_MALINOWSKI_1312_3_(Warszawa_Wsc->Zakopane)	99
100	Trasa:_EIP_4500_1_(Bielsko-Biał->Gdynia_Główn)	100
101	Trasa:_LEDNICA_5600_(Gdynia_Główn->Wrocław_Głów)	101
102	Trasa:_MERKURY_8610_(Szczecin_Głó->Wrocław_Głów)	102
103	Trasa:_LUBUSZANIN_1710_1_(Warszawa_Wsc->Zielona_Góra)	103
104	Trasa:_KATAMARAN_1518_9_(Łódź_Fabrycz->Gdynia_Główn)	104
105	Trasa:_CRACOVIA_43008_9_(Praha_hlavní->Przemyśl_Głó)	105
106	Trasa:_CEGIELSKI_7320_1_(Poznań_Główn->Kraków_Główn)	106
107	Trasa:_ORŁOWICZ_3532_3_(Kraków_Główn->Olsztyn_Głów)	107
108	Trasa:_DRWĘCA_7502_3_(Poznań_Główn->Olsztyn_Głów)	108
109	Trasa:_WARMIA_5320_1_(Olsztyn_Głów->Kraków_Główn)	109
110	Trasa:_SZKUNER_8312_3_(Sławno->Przemyśl_Głó)_2	110
111	Trasa:_IC+_33027_(Przemyśl_Głó->Київ-Пасажир)	111
112	Trasa:_TATRY_1350_1_(Warszawa_Wsc->Zakopane)	112
113	Trasa:_MEDUZA_1546_7_(Łódź_Fabrycz->Gdynia_Główn)	113
114	Trasa:_SUDETY_36102_3_(Kraków_Główn->Jelenia_Góra)	114
115	Trasa:_OLEŃKA_1648_9_(Warszawa_Wsc->Wrocław_Głów)	115
116	Trasa:_ASNYK_6120_1_(Wrocław_Głów->Warszawa_Wsc)	116
117	Trasa:_BACHUS_7504_5_(Zielona_Góra->Gdynia_Główn)	117
118	Trasa:_EIP_5402_3_(Gdynia_Główn->Bielsko-Biał)	118
119	Trasa:_SOBIESKI_41012_3_(Wien_Westbah->Warszawa_Wsc)	119
120	Trasa:_GALICJA_37000_1_(Przemyśl_Głó->Berlin_Haupt)	120
121	Trasa:_IC_78109_(Poznań_Główn->Gorzów_Wielk)	121
122	Trasa:_GWAREK_3816_7_(Kraków_Główn->Sławno)	122
123	Trasa:_USTRONIE_83170_1_(Kołobrzeg->Kraków_Główn)	123
124	Trasa:_EIC_1302_3_(Warszawa_Wsc->Kraków_Główn)	124
125	Trasa:_KOLBERG_3528_9_(Kraków_Główn->Olsztyn_Głów)	125
126	Trasa:_JADWIGA_2302_3_(Lublin_Główn->Kraków_Główn)	126
127	Trasa:_SŁOWINIEC_5112_3_(Gdynia_Główn->Łódź_Fabrycz)	127
128	Trasa:_SŁOWINIEC_1512_3_(Łódź_Fabrycz->Gdynia_Główn)	128
129	Trasa:_WYBICKI_3724_5_(Kraków_Główn->Poznań_Główn)	129
130	Trasa:_BATORY_41004_5_(Budapest-Nyu->Warszawa_Wsc)	130
131	Trasa:_KILIŃSKI_1712_3_(Terespol->Poznań_Główn)	131
132	Trasa:_UZNAM_82170_1_(Świnoujście->Chełm)	132
133	Trasa:_PARSĘTA_1856_7_(Łódź_Fabrycz->Słupsk)	133
134	Trasa:_BOLKO_6202_3_(Wrocław_Głów->Lublin_Główn)	134
135	Trasa:_BYSTRZYCA_5338_9_(Bydgoszcz_Gł->Rzeszów_Głów)	135
136	Trasa:_ŚLĘŻA_6102_3_(Wrocław_Głów->Warszawa_Wsc)	136
137	Trasa:_ORŁOWICZ_5332_3_(Olsztyn_Głów->Kraków_Główn)	137
138	Trasa:_ŁEMPICKA_6200_1_(Wrocław_Głów->Lublin_Główn)	138
139	Trasa:_SAXONIA_66002_(Leipzig_Haup->Wrocław_Głów)	139
140	Trasa:_FLISAK_45102_3_(Katowice->Gdynia_Główn)	140
141	Trasa:_NOTEĆ_3836_7_(Rzeszów_Głów->Piła_Główna)	141
142	Trasa:_WIGRY_18000_1_(Mockava->Szczecin_Głó)	142
143	Trasa:_GRYF_58106_7_(Olsztyn_Głów->Szczecin_Głó)	143
144	Trasa:_BOCIAN_1112_3_(Białystok->Warszawa_Wsc)	144
145	Trasa:_ORZESZKOWA_6138_9_(Jelenia_Góra->Warszawa_Wsc)	145
146	Trasa:_DĄBROWSKA_1632_3_(Białystok->Wrocław_Głów)	146
147	Trasa:_ODRA_37004_5_(Kraków_Główn->Berlin_Haupt)	147
148	Trasa:_SILESIA_14000_1_(Warszawa_Wsc->Praha_hlavní)	148
149	Trasa:_KOZIOŁEK_8220_1_(Szczecin_Głó->Lublin_Główn)	149
150	Trasa:_BERLINWARSZAWAEXPRESS_17006_7_(Warszawa_Wsc->Berlin_Haupt)	150
151	Trasa:_NIEMCEWICZ_1037_(Warszawa_Zac->Terespol)	151
152	Trasa:_HALNY_73150_1_(Poznań_Główn->Zakopane)	152
153	Trasa:_USZATEK_9108_9_(Łódź_Fabrycz->Warszawa_Wsc)	153
154	Trasa:_PRZEMYŚLANIN_87172_3_(Sławno->Poznań_Główn)	154
155	Trasa:_PUŁASKI_37102_3_(Kraków_Główn->Poznań_Główn)	155
156	Trasa:_SWAROŻYC_86102_(Szczecin_Głó->Wrocław_Głów)	156
157	Trasa:_WYSPIAŃSKI_3602_3_(Przemyśl_Głó->Wrocław_Głów)	157
158	Trasa:_DRWĘCA_5702_3_(Olsztyn_Głów->Poznań_Główn)	158
159	Trasa:_KOSSAK_8310_1_(Kołobrzeg->Przemyśl_Głó)	159
160	Trasa:_POLONIA_41002_3_(Wien_Westbah->Warszawa_Wsc)	160
161	Trasa:_POMORZANIN_5608_9_(Gdynia_Główn->Jelenia_Góra)	161
162	Trasa:_POMORZANIN_6508_9_(Jelenia_Góra->Gdynia_Główn)	162
163	Trasa:_ZEFIR_3806_7_(Przemyśl_Głó->Sławno)	163
164	Trasa:_POWIŚLE_5500_(Gdynia_Główn->Bydgoszcz_Gł)	164
165	Trasa:_KOLBERG_5328_9_(Olsztyn_Głów->Kraków_Główn)	165
166	Trasa:_COMENIUS_43004_5_(Praha_hlavní->Kraków_Główn)	166
167	Trasa:_MORAVIA_44000_(Wien_Westbah->Katowice)	167
168	Trasa:_MATEJKO_3814_5_(Przemyśl_Głó->Szczecin_Głó)	168
169	Trasa:_MEHOFFER_7318_9_(Zielona_Góra->Przemyśl_Głó)	169
170	Trasa:_BALTIC_EXPRESS_65070_1_(Praha_hlavní->Gdynia_Główn)	170
171	Trasa:_ZAMOYSKI_8034_5_(Kołobrzeg->Piła_Główna)	171
172	Trasa:_SILESIA_14006_7_(Warszawa_Wsc->Praha_hlavní)	172
173	Trasa:_WARMIA_5320_1_(Olsztyn_Głów->Kraków_Główn)_2	173
174	Trasa:_STOCZNIOWIEC_5712_3_(Gdynia_Główn->Zielona_Góra)	174
175	Trasa:_BERLINWARSZAWAEXPRESS_71000_1_(Berlin_Haupt->Warszawa_Wsc)	175
176	Trasa:_BERLINWARSZAWAEXPRESS_71008_9_(Berlin_Haupt->Warszawa_Wsc)	176
177	Trasa:_LUBUSZANIN_7110_1_(Zielona_Góra->Warszawa_Wsc)	177
178	Trasa:_MALINOWSKI_3112_3_(Zakopane->Warszawa_Wsc)	178
179	Trasa:_KOCIEWIE_1528_9_(Łódź_Fabrycz->Gdynia_Główn)	179
180	Trasa:_CHROBRY_1800_1_(Warszawa_Wsc->Szczecin_Głó)	180
181	Trasa:_BALTIC_EXPRESS_56000_1_(Gdynia_Główn->Praha_hlavní)	181
182	Trasa:_FAŁAT_7316_7_(Poznań_Główn->Przemyśl_Głó)	182
183	Trasa:_KRASIŃSKI_6124_5_(Wrocław_Głów->Białystok)	183
184	Trasa:_BERLINWARSZAWAEXPRESS_17008_9_(Warszawa_Wsc->Berlin_Haupt)	184
185	Trasa:_BALTIC_EXPRESS_56070_1_(Gdynia_Główn->Praha_hlavní)	185
186	Trasa:_DOKER_5422_3_(Gdynia_Główn->Katowice)	186
187	Trasa:_BALTIC_EXPRESS_56002_3_(Gdynia_Główn->Praha_hlavní)	187
188	Trasa:_KUTER_1539_(Warszawa_Zac->Gdynia_Główn)	188
189	Trasa:_ŚNIEŻKA_6140_1_(Wrocław_Głów->Warszawa_Wsc)	189
190	Trasa:_FREDRO_1642_3_(Warszawa_Wsc->Jelenia_Góra)	190
191	Trasa:_CARPATIA_43014_5_(München_Haup->Przemyśl_Głó)	191
192	Trasa:_REYMONT_3128_9_(Kraków_Główn->Łódź_Fabrycz)	192
193	Trasa:_WITKACY_3560_1_(Zakopane->Gdynia_Główn)	193
194	Trasa:_MICKIEWICZ_1628_9_(Białystok->Wrocław_Głów)	194
195	Trasa:_IC_87110_(Gorzów_Wielk->Poznań_Główn)	195
196	Trasa:_SZTYGAR_2406_7_(Kielce_Główn->Katowice)	196
197	Trasa:_WŁÓKNIARZ_1820_1_(Łódź_Fabrycz->Szczecin_Głó)	197
198	Trasa:_NIDA_5322_3_(Giżycko->Kraków_Główn)_2	198
199	Trasa:_HEWELIUSZ_5410_1_(Gdynia_Główn->Żory)	199
200	Trasa:_PRZEMYŚLANIN_78172_3_(Poznań_Główn->Sławno)	200
201	Trasa:_EIP_4506_7_(Bielsko-Biał->Gdynia_Główn)	201
202	Trasa:_VIADRINA_6110_1_(Wrocław_Głów->Warszawa_Wsc)	202
203	Trasa:_KARPATY_53170_1_(Gdynia_Główn->Zakopane)	203
204	Trasa:_BRYZA_58104_5_(Olsztyn_Głów->Szczecin_Głó)	204
205	Trasa:_GALICJA_73000_1_(Berlin_Haupt->Przemyśl_Głó)	205
206	Trasa:_UZNAM_440_URSA_28170_1_(Chełm->Świnoujście)	206
207	Trasa:_SWAROŻYC_68102_3_(Wrocław_Głów->Szczecin_Głó)	207
208	Trasa:_PRATER_43010_1_(Wien_Westbah->Kraków_Główn)	208
209	Trasa:_BERLINWARSZAWAEXPRESS_71012_3_(Berlin_Haupt->Warszawa_Wsc)	209
210	Trasa:_LEŚMIAN_1626_7_(Białystok->Wrocław_Głów)	210
211	Trasa:_URSA_73010_1_(Berlin_Gesun->Przemyśl_Głó)	211
212	Trasa:_WARMIA_1521_(Warszawa_Zac->Olsztyn_Głów)	212
213	Trasa:_MAŁOPOLSKA_53104_5_(Gdynia_Główn->Zakopane)	213
214	Trasa:_KORFANTY_1422_3_(Białystok->Gliwice)	214
215	Trasa:_BOLESŁAW_PRUS_8104_5_(Szczecin_Głó->Warszawa_Wsc)	215
216	Trasa:_STRYJEŃSKA_2606_7_(Lublin_Główn->Wrocław_Głów)	216
217	Trasa:_SZCZELINIEC_36106_7_(Kraków_Główn->Jelenia_Góra)	217
218	Trasa:_GAŁCZYŃSKI_1810_1_(Warszawa_Wsc->Szczecin_Głó)	218
219	Trasa:_GROTTGER_3604_5_(Przemyśl_Głó->Wrocław_Głów)	219
220	Trasa:_JANTAR_1541_(Warszawa_Zac->Hel)	220
221	Trasa:_BESKIDY_1460_1_(Warszawa_Wsc->Wisła_Uzdrow)	221
222	Trasa:_WYSPIAŃSKI_6302_3_(Wrocław_Głów->Przemyśl_Głó)	222
223	Trasa:_KINGA_1322_3_(Warszawa_Wsc->Kraków_Główn)	223
224	Trasa:_REYMONT_1329_(Łódź_Fabrycz->Kraków_Główn)	224
225	Trasa:_HAŃCZA_31000_1_(Kraków_Główn->Mockava)	225
226	Trasa:_STRZELECKI_7200_1_(Zielona_Góra->Lublin_Główn)	226
227	Trasa:_ŁUŻYCE_6144_5_(Zgorzelec->Warszawa_Wsc)	227
228	Trasa:_BOCIAN_1012_3_(Warszawa_Wsc->Białystok)	228
229	Trasa:_EIP_5300_1_(Gdynia_Główn->Kraków_Główn)	229
230	Trasa:_BALTIC_EXPRESS_65070_1_(Praha_hlavní->Gdynia_Główn)_2	230
231	Trasa:_PILECKI_1428_9_(Warszawa_Wsc->Żywiec)	231
232	Trasa:_EIP_5406_7_(Gdynia_Główn->Bielsko-Biał)	232
233	Trasa:_HALNY_37150_1_(Zakopane->Poznań_Główn)	233
234	Trasa:_WITKACY_5360_1_(Gdynia_Główn->Zakopane)	234
235	Trasa:_BOSMAN_6813_(Wrocław_Głów->Białogard)	235
236	Trasa:_KARPATY_35170_1_(Zakopane->Gdynia_Główn)	236
237	Trasa:_UKIEL_5706_7_(Olsztyn_Głów->Poznań_Główn)	237
238	Trasa:_SZTYGAR_4206_7_(Katowice->Kielce_Główn)	238
239	Trasa:_STARZYŃSKI_1033_(Warszawa_Zac->Terespol)	239
240	Trasa:_ŻYLICA_3401_(Kraków_Główn->Bielsko-Biał)	240
241	Trasa:_SPODEK_73100_1_(Poznań_Główn->Kraków_Główn)	241
242	Trasa:_KOCHANOWSKI_5226_7_(Bydgoszcz_Gł->Lublin_Główn)	242
243	Trasa:_ŚNIEŻKA_1640_1_(Warszawa_Wsc->Wrocław_Głów)	243
244	Trasa:_WARTA_2706_7_(Chełm->Poznań_Główn)	244
245	Trasa:_MAMRY_5602_(Olsztyn_Głów->Wrocław_Głów)	245
246	Trasa:_VIA_REGIA_60009_(Wrocław_Głów->Leipzig_Haup)	246
247	Trasa:_STASZIC_1830_1_(Warszawa_Wsc->Białogard)	247
248	Trasa:_KOSSAK_3810_1_(Przemyśl_Głó->Kołobrzeg)	248
249	Trasa:_WYCZÓŁKOWSKI_134_VIA_REGIA_380_(Przemyśl_Głó->Świnoujście)	249
250	Trasa:_BALTIC_EXPRESS_65004_5_(Praha_hlavní->Gdynia_Główn)	250
251	Trasa:_WAWEL_73002_3_(Berlin_Haupt->Przemyśl_Głó)	251
252	Trasa:_BRYZA_85104_5_(Szczecin_Głó->Olsztyn_Głów)	252
253	Trasa:_CHEMIK_1424_5_(Płock->Katowice)	253
254	Trasa:_KINGA_1322_3_(Warszawa_Cen->Kraków_Główn)	254
255	Trasa:_PODLASIAK_1812_3_(Suwałki->Świnoujście)	255
256	Trasa:_KARPATY_35170_1_(Zakopane->Gdynia_Główn)_2	256
257	Trasa:_SILESIA_41008_9_(Bohumín->Warszawa_Wsc)	257
258	Trasa:_URSA_37010_1_(Przemyśl_Głó->Berlin-Charl)	258
259	Trasa:_STRZELECKI_2700_1_(Lublin_Główn->Zielona_Góra)	259
260	Trasa:_WITOS_1336_7_(Warszawa_Wsc->Przemyśl_Głó)	260
261	Trasa:_ŻUBR_1016_7_(Warszawa_Wsc->Białystok)	261
262	Trasa:_SZTYGAR_3206_7_(Kraków_Główn->Lublin_Główn)	262
263	Trasa:_IC_78115_(Jarocin->Gorzów_Wielk)	263
264	Trasa:_EIC_5100_1_(Gdynia_Główn->Warszawa_Zac)	264
265	Trasa:_CZECHOWICZ_1212_3_(Warszawa_Wsc->Lublin_Główn)	265
266	Trasa:_SOBIESKI_14012_3_(Warszawa_Wsc->Wien_Westbah)	266
267	Trasa:_SIEMIRADZKI_6300_1_(Wrocław_Głów->Przemyśl_Głó)	267
268	Trasa:_DANUBIUS_43006_(Wien_Westbah->Kraków_Płasz)	268
269	Trasa:_NOTEĆ_8336_7_(Piła_Główna->Rzeszów_Głów)	269
270	Trasa:_SZPIGLASOWY_WIERCH_31160_1_(Zakopane->Warszawa_Wsc)	270
271	Trasa:_KASZTELAN_23110_1_(Hrubieszów_M->Kraków_Główn)	271
272	Trasa:_ZATOKA_5132_(Gdynia_Główn->Wrocław_Głów)	272
273	Trasa:_CZECHOWICZ_2112_3_(Lublin_Główn->Warszawa_Wsc)	273
274	Trasa:_SUKIENNICE_3822_3_(Kozłów->Szczecin_Głó)	274
275	Trasa:_WYSOCKI_4550_1_(Bielsko-Biał->Gdynia_Główn)	275
276	Trasa:_BACZYŃSKI_6122_3_(Wrocław_Głów->Warszawa_Wsc)	276
277	Trasa:_DANUBIUS_47000_1_(Wien_Westbah->Poznań_Główn)	277
278	Trasa:_BAŁTYK_5700_1_(Gdynia_Główn->Poznań_Główn)	278
279	Trasa:_JAGNA_1902_3_(Warszawa_Wsc->Łódź_Fabrycz)	279
280	Trasa:_ŁOKIETEK_3124_5_(Kraków_Główn->Warszawa_Wsc)	280
281	Trasa:_JADWIGA_2403_(Kielce_Główn->Gliwice)	281
282	Trasa:_MAMRY_6502_3_(Wrocław_Głów->Olsztyn_Głów)	282
283	Trasa:_PRZĄŚNICZKA_1906_7_(Warszawa_Wsc->Łódź_Fabrycz)	283
284	Trasa:_PRZEMYŚLANIN_30173_(Kraków_Główn->Przemyśl_Głó)	284
285	Trasa:_ORZESZKOWA_1638_9_(Warszawa_Wsc->Szklarska_Po)	285
286	Trasa:_ŻEGLARZ_1514_5_(Łódź_Fabrycz->Gdynia_Główn)	286
287	Trasa:_WYBICKI_7324_5_(Poznań_Główn->Kraków_Główn)	287
288	Trasa:_PUŁASKI_73102_3_(Poznań_Główn->Kraków_Główn)	288
289	Trasa:_BALTAZAR_3405_(Kraków_Główn->Bielsko-Biał)	289
290	Trasa:_SAXONIA_60003_(Wrocław_Głów->Leipzig_Haup)	290
291	Trasa:_KOSSAK_3810_1_(Przemyśl_Głó->Kołobrzeg)_2	291
292	Trasa:_WYBRZEŻE_5116_7_(Gdynia_Główn->Łódź_Fabrycz)	292
293	Trasa:_PORTA_MORAVICA_34002_3_(Kraków_Główn->Graz_Hauptba)	293
294	Trasa:_KARKONOSZE_16170_1_(Warszawa_Wsc->Szklarska_Po)	294
295	Trasa:_NAŁKOWSKA_1630_1_(Białystok->Wrocław_Głów)	295
296	Trasa:_EIP_5302_3_(Gdynia_Główn->Kraków_Główn)	296
297	Trasa:_SAXONIA_66002_(Leipzig_Haup->Wrocław_Głów)_2	297
298	Trasa:_ZEFIR_8306_7_(Sławno->Przemyśl_Głó)	298
299	Trasa:_FAŁAT_3716_7_(Przemyśl_Głó->Poznań_Główn)	299
300	Trasa:_PILECKI_4128_9_(Żywiec->Warszawa_Wsc)	300
301	Trasa:_STASZIC_8130_1_(Białogard->Warszawa_Wsc)	301
302	Trasa:_BACHUS_5704_5_(Gdynia_Główn->Zielona_Góra)	302
303	Trasa:_KAZIMIERZ_3534_5_(Zakopane->Bydgoszcz_Gł)	303
304	Trasa:_DASZYŃSKI_1420_1_(Białystok->Gliwice)	304
305	Trasa:_WARTA_7206_7_(Poznań_Główn->Chełm)	305
306	Trasa:_STARZYŃSKI_1734_5_(Terespol->Poznań_Główn)	306
307	Trasa:_BERLINWARSZAWAEXPRESS_17000_1_(Warszawa_Wsc->Berlin_Haupt)	307
308	Trasa:_BERLINWARSZAWAEXPRESS_17004_5_(Warszawa_Wsc->Berlin_Haupt)	308
309	Trasa:_KARŁOWICZ_3120_1_(Kraków_Główn->Warszawa_Wsc)	309
310	Trasa:_NAŁKOWSKA_6130_1_(Wrocław_Głów->Białystok)	310
311	Trasa:_MALTA_17141_(Warszawa_Głó->Poznań_Główn)	311
312	Trasa:_SZCZELINIEC_63106_7_(Jelenia_Góra->Kraków_Główn)	312
313	Trasa:_STRYJEŃSKA_6206_7_(Wrocław_Głów->Lublin_Główn)	313
314	Trasa:_WŁÓKNIARZ_8120_1_(Szczecin_Głó->Łódź_Fabrycz)	314
315	Trasa:_PARSĘTA_8156_7_(Słupsk->Łódź_Fabrycz)	315
316	Trasa:_DASZYŃSKI_4120_1_(Gliwice->Białystok)	316
317	Trasa:_JAGIEŁŁO_2300_1_(Lublin_Główn->Kraków_Główn)	317
318	Trasa:_KUJAWIAK_2524_5_(Lublin_Główn->Bydgoszcz_Gł)	318
319	Trasa:_SŁOWACKI_5620_1_(Giżycko->Wrocław_Głów)	319
320	Trasa:_LAZUR_1510_1_(Łódź_Fabrycz->Gdynia_Główn)	320
321	Trasa:_PILECKI_1428_9_(Warszawa_Wsc->Żywiec)_2	321
322	Trasa:_ŻUŁAWY_58102_3_(Olsztyn_Głów->Szczecin_Głó)	322
323	Trasa:_DANUBIUS_34006_7_(Kraków_Główn->Wien_Westbah)	323
324	Trasa:_EIC_3106_7_(Kraków_Główn->Warszawa_Wsc)	324
325	Trasa:_SIENKIEWICZ_3526_7_(Kozłów->Olsztyn_Głów)	325
326	Trasa:_KRASZEWSKI_1051_(Warszawa_Zac->Terespol)	326
327	Trasa:_EIC_1400_1_(Warszawa_Wsc->Bielsko-Biał)	327
328	Trasa:_DANUBIUS_74000_1_(Poznań_Główn->Wien_Westbah)	328
329	Trasa:_BŁATNIA_3407_(Kraków_Główn->Bielsko-Biał)	329
330	Trasa:_EIP_5400_1_(Gdynia_Główn->Gliwice)	330
331	Trasa:_ARTUS_5412_3_(Gdynia_Główn->Bielsko-Biał)	331
332	Trasa:_POJEZIERZE_7510_1_(Poznań_Główn->Olsztyn_Głów)	332
333	Trasa:_BORY_TUCHOLSKIE_85110_1_(Kostrzyn->Gdynia_Główn)	333
334	Trasa:_EIP_3100_1_(Kraków_Główn->Warszawa_Wsc)	334
335	Trasa:_STRZELECKI_78101_(Zbąszynek->Gorzów_Wielk)	335
336	Trasa:_BIESZCZADY_30113_(Kraków_Główn->Krosno)	336
337	Trasa:_ZOSIA_1900_1_(Warszawa_Wsc->Łódź_Fabrycz)	337
338	Trasa:_STAŃCZYK_50108_9_(Olsztyn_Głów->Gdynia_Główn)	338
339	Trasa:_SŁOWACKI_6520_1_(Wrocław_Głów->Giżycko)	339
340	Trasa:_NIEMCEWICZ_1136_(Terespol->Warszawa_Zac)	340
341	Trasa:_EIP_3800_1_(Kraków_Główn->Słupsk)	341
342	Trasa:_MALINOWSKI_33100_(Krynica-Zdró->Kraków_Główn)	342
343	Trasa:_KUJAWIAK_5224_5_(Bydgoszcz_Gł->Lublin_Główn)	343
344	Trasa:_STAŃCZYK_55108_9_(Gdynia_Główn->Olsztyn_Głów)	344
345	Trasa:_ŚLĘŻA_1602_3_(Warszawa_Wsc->Wrocław_Głów)	345
346	Trasa:_CARPATIA_34014_5_(Przemyśl_Głó->München_Haup)	346
347	Trasa:_JAĆWING_19000_(Mockava->Suwałki)	347
348	Trasa:_KORFANTY_4122_3_(Gliwice->Białystok)	348
349	Trasa:_JAGNA_9102_3_(Łódź_Fabrycz->Warszawa_Wsc)	349
350	Trasa:_BALTIC_EXPRESS_56004_5_(Gdynia_Główn->Praha_hlavní)	350
351	Trasa:_KRZYWOUSTY_1704_5_(Warszawa_Wsc->Poznań_Główn)	351
352	Trasa:_CHOPIN_14010_1_(Warszawa_Wsc->München_Haup)	352
353	Trasa:_BIEBRZA_51110_1_(Gdynia_Główn->Białystok)	353
354	Trasa:_KARKONOSZE_61170_1_(Jelenia_Góra->Warszawa_Wsc)	354
355	Trasa:_SKARBEK_5424_5_(Olsztyn_Głów->Racibórz)	355
356	Trasa:_LATARNIK_8152_3_(Świnoujście->Warszawa_Wsc)	356
357	Trasa:_HETMAN_32112_3_(Kraków_Główn->Hrubieszów_M)	357
358	Trasa:_GWAREK_3816_7_(Kraków_Główn->Sławno)_2	358
359	Trasa:_SAXONIA_60003_(Wrocław_Głów->Leipzig_Haup)_2	359
360	Trasa:_STOCZNIOWIEC_7512_3_(Zielona_Góra->Gdynia_Główn)	360
361	Trasa:_KASZUB_5350_1_(Gdynia_Główn->Zakopane)	361
362	Trasa:_MORCINEK_3204_5_(Kraków_Główn->Lublin_Główn)	362
363	Trasa:_EIP_8300_1_(Słupsk->Kraków_Główn)	363
364	Trasa:_BALTIC_EXPRESS_65000_1_(Praha_hlavní->Gdynia_Główn)	364
365	Trasa:_JEZIORAK_7508_9_(Poznań_Główn->Olsztyn_Głów)	365
366	Trasa:_MALCZEWSKI_3804_5_(Kraków_Główn->Białogard)	366
367	Trasa:_IC+_33015_(Przemyśl_Głó->Київ-Пасажир)	367
368	Trasa:_KRASIŃSKI_1624_5_(Białystok->Wrocław_Głów)	368
369	Trasa:_BIEBRZA_15110_1_(Białystok->Gdynia_Główn)	369
370	Trasa:_EIP_3552_3_(Zakopane->Gdynia_Główn)	370
371	Trasa:_CHEMIK_1424_5_(Płock_Radziw->Katowice)	371
372	Trasa:_RADZIWIŁŁ_1130_1_(Terespol->Warszawa_Zac)	372
373	Trasa:_MORCINEK_2404_5_(Kielce_Główn->Katowice)	373
374	Trasa:_PODHALANIN_83172_3_(Świnoujście->Zakopane)	374
375	Trasa:_ŚNIEŻKA_66150_(Polanica_Zdr->Wrocław_Głów)	375
376	Trasa:_SIENKIEWICZ_5326_7_(Olsztyn_Głów->Kraków_Główn)	376
377	Trasa:_MICKIEWICZ_6128_9_(Wrocław_Głów->Białystok)	377
378	Trasa:_JADWIGA_3202_3_(Kraków_Główn->Lublin_Główn)	378
379	Trasa:_GÓRSKI_8202_3_(Szczecin_Głó->Chełm)	379
380	Trasa:_ŚLĄZAK_8330_1_(Szczecin_Głó->Przemyśl_Głó)	380
381	Trasa:_BOLESŁAW_PRUS_1804_5_(Warszawa_Wsc->Szczecin_Głó)	381
382	Trasa:_JAGIEŁŁO_3200_1_(Kraków_Główn->Lublin_Główn)	382
383	Trasa:_COMENIUS_34004_5_(Kraków_Główn->Praha_hlavní)	383
384	Trasa:_BERLINWARSZAWAEXPRESS_71002_3_(Berlin_Haupt->Warszawa_Wsc)	384
385	Trasa:_EIP_5404_5_(Gdynia_Główn->Gliwice)	385
386	Trasa:_PODLASIAK_8112_3_(Świnoujście->Suwałki)	386
387	Trasa:_ŻYLICA_4300_1_(Bielsko-Biał->Kraków_Główn)	387
388	Trasa:_BRDA_1530_1_(Warszawa_Wsc->Bydgoszcz_Gł)	388
389	Trasa:_BARBAKAN_3820_1_(Kozłów->Szczecin_Głó)	389
390	Trasa:_SIEMIRADZKI_3600_1_(Przemyśl_Głó->Wrocław_Głów)	390
391	Trasa:_IC_87106_(Gorzów_Wielk->Poznań_Główn)	391
392	Trasa:_FLISAK_54102_3_(Gdynia_Główn->Katowice)	392
393	Trasa:_ZAMOYSKI_8834_5_(Piła_Główna->Kołobrzeg)	393
394	Trasa:_BARBAKAN_8320_1_(Szczecin_Głó->Kraków_Główn)	394
395	Trasa:_KARPATY_33170_(Krynica-Zdró->Kraków_Główn)	395
396	Trasa:_KOZICA_37104_5_(Kraków_Główn->Poznań_Główn)	396
397	Trasa:_TUWIM_1910_1_(Warszawa_Wsc->Łódź_Fabrycz)	397
398	Trasa:_EIP_3108_9_(Kraków_Główn->Warszawa_Wsc)	398
399	Trasa:_PORTA_MORAVICA_43002_3_(Graz_Hauptba->Kraków_Główn)	399
400	Trasa:_KSIĄŻĘ_18141_(Warszawa_Głó->Szczecin_Głó)	400
401	Trasa:_ŚLĄZAK_3830_1_(Przemyśl_Głó->Szczecin_Głó)	401
402	Trasa:_OSTERWA_83106_7_(Szczecin_Głó->Zakopane)	402
403	Trasa:_HEWELIUSZ_4510_1_(Bielsko-Biał->Gdynia_Główn)	403
404	Trasa:_BRDA_5130_1_(Bydgoszcz_Gł->Warszawa_Wsc)	404
405	Trasa:_CHEMIK_1424_5_(Kutno->Katowice)	405
406	Trasa:_BERLINWARSZAWAEXPRESS_17002_3_(Warszawa_Wsc->Berlin_Haupt)	406
407	Trasa:_LAZUR_5110_1_(Gdynia_Główn->Łódź_Fabrycz)	407
408	Trasa:_BALTIC_EXPRESS_65002_3_(Praha_hlavní->Gdynia_Główn)	408
409	Trasa:_KILIŃSKI_1712_3_(Warszawa_Wsc->Poznań_Główn)	409
410	Trasa:_NAREW_1000_1_(Łódź_Fabrycz->Białystok)	410
411	Trasa:_RYBAK_1806_7_(Białystok->Szczecin_Głó)	411
412	Trasa:_GAŁCZYŃSKI_8110_1_(Szczecin_Głó->Warszawa_Wsc)	412
413	Trasa:_LEŚMIAN_6126_7_(Wrocław_Głów->Białystok)	413
414	Trasa:_PODLASIE_1027_(Warszawa_Wsc->Terespol)	414
415	Trasa:_ZAMOYSKI_3834_5_(Rzeszów_Głów->Szczecin_Głó)	415
416	Trasa:_ŻUŁAWY_85102_3_(Szczecin_Głó->Olsztyn_Głów)	416
417	Trasa:_MAŁOPOLSKA_35104_5_(Zakopane->Gdynia_Główn)	417
418	Trasa:_GRYF_85106_7_(Szczecin_Głó->Olsztyn_Głów)	418
419	Trasa:_EIP_5310_1_(Gdynia_Główn->Kraków_Główn)	419
420	Trasa:_MARSZAŁEK_PIŁSUDSKI_31102_3_(Kraków_Główn->Warszawa_Wsc)	420
421	Trasa:_ONDRASZEK_1410_1_(Warszawa_Wsc->Bielsko-Biał)	421
422	Trasa:_KOCHANOWSKI_2526_7_(Lublin_Główn->Bydgoszcz_Gł)	422
423	Trasa:_EIP_3102_3_(Kraków_Główn->Warszawa_Wsc)	423
424	Trasa:_EIP_3506_7_(Kraków_Główn->Gdynia_Główn)	424
425	Trasa:_KRAJNA_58112_3_(Gdynia_Główn->Gorzów_Wielk)	425
426	Trasa:_MEDUZA_5146_7_(Gdynia_Główn->Łódź_Fabrycz)	426
427	Trasa:_PODHALANIN_38172_3_(Zakopane->Świnoujście)	427
428	Trasa:_BORYNA_9112_3_(Łódź_Fabrycz->Warszawa_Głó)	428
429	Trasa:_KOPERNIK_2520_1_(Lublin_Główn->Bydgoszcz_Gł)	429
430	Trasa:_KOZICA_73104_5_(Poznań_Główn->Kraków_Główn)	430
431	Trasa:_EIP_1304_5_(Warszawa_Wsc->Kraków_Główn)	431
432	Trasa:_REJEWSKI_2522_3_(Lublin_Główn->Bydgoszcz_Gł)	432
433	Trasa:_WIGRY_81000_1_(Szczecin_Głó->Mockava)	433
434	Trasa:_LUBUSZANIN_87102_(Gorzów_Wielk->Zbąszynek)	434
435	Trasa:_BATORY_14004_5_(Warszawa_Wsc->Budapest-Kel)	435
436	Trasa:_ŁYSICA_6220_(Wrocław_Głów->Kielce_Główn)	436
437	Trasa:_INKA_2116_7_(Lublin_Główn->Warszawa_Wsc)	437
438	Trasa:_MIESZKO_5604_(Gdynia_Główn->Wrocław_Głów)	438
439	Trasa:_EIP_6104_5_(Wrocław_Głów->Warszawa_Wsc)	439
440	Trasa:_KASZTELAN_32110_1_(Kraków_Główn->Hrubieszów_M)	440
441	Trasa:_KASZUB_3550_1_(Zakopane->Gdynia_Główn)	441
442	Trasa:_REJEWSKI_5222_3_(Bydgoszcz_Gł->Lublin_Główn)	442
443	Trasa:_BOLKO_2602_3_(Lublin_Główn->Wrocław_Głów)	443
444	Trasa:_BŁATNIA_4306_7_(Bielsko-Biał->Kraków_Główn)	444
445	Trasa:_BIESZCZADY_30113_(Kraków_Główn->Jasło)	445
446	Trasa:_MALINOWSKI_30101_(Kraków_Główn->Krynica-Zdró)	446
447	Trasa:_SANDACZ_1549_(Warszawa_Zac->Olsztyn_Głów)	447
448	Trasa:_MALCZEWSKI_3804_5_(Kraków_Główn->Białogard)_2	448
449	Trasa:_DĄBROWSKA_6132_3_(Wrocław_Głów->Białystok)	449
450	Trasa:_NAREW_1100_1_(Białystok->Łódź_Fabrycz)	450
451	Trasa:_MAZURY_5122_3_(Olsztyn_Głów->Łódź_Fabrycz)	451
452	Trasa:_WISŁOK_1338_9_(Warszawa_Zac->Rzeszów_Głów)	452
453	Trasa:_JAĆWING_91001_(Suwałki->Mockava)	453
454	Trasa:_IC_78105_(Jarocin->Gorzów_Wielk)	454
455	Trasa:_CRACOVIA_34008_9_(Przemyśl_Głó->Praha_hlavní)	455
456	Trasa:_ZEFIR_3806_7_(Przemyśl_Głó->Sławno)_2	456
457	Trasa:_SZKUNER_3812_3_(Przemyśl_Głó->Sławno)_2	457
458	Trasa:_KRAJNA_85112_3_(Gorzów_Wielk->Gdynia_Główn)	458
459	Trasa:_LAGUNA_1552_3_(Łódź_Fabrycz->Gdynia_Główn)	459
460	Trasa:_SKARYNA_1023_(Warszawa_Zac->Terespol)	460
461	Trasa:_KORSARZ_78110_1_(Poznań_Główn->Kołobrzeg)	461
462	Trasa:_TUWIM_9110_1_(Łódź_Fabrycz->Warszawa_Cen)	462
463	Trasa:_KOCIEWIE_5128_9_(Gdynia_Główn->Łódź_Fabrycz)	463
464	Trasa:_BERLINWARSZAWAEXPRESS_71006_7_(Berlin_Haupt->Warszawa_Wsc)	464
465	Trasa:_ZAMENHOF_1102_(Białystok->Warszawa_Cen)	465
466	Trasa:_OSTERWA_38106_7_(Zakopane->Szczecin_Głó)	466
467	Trasa:_SAN_3130_1_(Przemyśl_Głó->Warszawa_Wsc)	467
468	Trasa:_EIP_1802_3_(Warszawa_Wsc->Szczecin_Głó)	468
469	Trasa:_KRZYWOUSTY_7104_5_(Poznań_Główn->Warszawa_Wsc)	469
470	Trasa:_PANORAMA_1600_1_(Warszawa_Wsc->Wrocław_Głów)	470
471	Trasa:_POBRZEŻE_8114_5_(Kołobrzeg->Łódź_Fabrycz)	471
472	Trasa:_SYRENA_81142_3_(Kołobrzeg->Warszawa_Głó)	472
473	Trasa:_ŻUBR_1116_7_(Białystok->Warszawa_Wsc)	473
474	Trasa:_MORCINEK_2304_5_(Lublin_Główn->Kraków_Główn)	474
475	Trasa:_ŻEROMSKI_5324_5_(Olsztyn_Głów->Kraków_Główn)	475
476	Trasa:_KARPATY_30171_(Kraków_Główn->Krynica-Zdró)	476
477	Trasa:_MARSZAŁEK_PIŁSUDSKI_13102_3_(Warszawa_Wsc->Kraków_Główn)	477
478	Trasa:_BESKIDY_4160_1_(Wisła_Uzdrow->Warszawa_Wsc)	478
479	Trasa:_PRATER_34010_1_(Kraków_Główn->Wien_Westbah)	479
480	Trasa:_KOSSAK_8310_1_(Kołobrzeg->Przemyśl_Głó)_2	480
481	Trasa:_WYSPIAŃSKI_6302_3_(Wrocław_Głów->Przemyśl_Głó)_2	481
482	Trasa:_MAZURY_1522_3_(Łódź_Fabrycz->Olsztyn_Głów)	482
483	Trasa:_MERKURY_6810_1_(Wrocław_Głów->Szczecin_Głó)	483
484	Trasa:_TATRY_3150_1_(Zakopane->Warszawa_Wsc)	484
485	Trasa:_KARPATY_53170_1_(Gdynia_Główn->Zakopane)_2	485
486	Trasa:_ZAMENHOF_1003_(Warszawa_Cen->Białystok)	486
487	Trasa:_RYBAK_8106_7_(Szczecin_Głó->Białystok)	487
488	Trasa:_MIESZKO_6504_5_(Wrocław_Głów->Gdynia_Główn)	488
489	Trasa:_KORCZAK_91132_3_(Łódź_Fabrycz->Warszawa_Wsc)	489
490	Trasa:_KARŁOWICZ_1320_1_(Warszawa_Wsc->Kraków_Główn)	490
491	Trasa:_VIADRINA_1610_1_(Warszawa_Wsc->Wrocław_Głów)	491
492	Trasa:_KRASZEWSKI_1150_1_(Terespol->Warszawa_Zac)	492
493	Trasa:_MEDUZA_5146_7_(Gdynia_Główn->Warszawa_Zac)	493
494	Trasa:_CHEMIK_4124_5_(Katowice->Płock_Radziw)	494
495	Trasa:_WYSOCKI_5450_1_(Gdynia_Główn->Bielsko-Biał)	495
496	Trasa:_SKARBEK_4524_5_(Racibórz->Olsztyn_Głów)	496
497	Trasa:_SIELAWA_1563_(Warszawa_Cen->Olsztyn_Głów)	497
498	Trasa:_MALCZEWSKI_8304_5_(Białogard->Kraków_Główn)_2	498
499	Trasa:_VIA_REGIA_60009_(Wrocław_Głów->Leipzig_Haup)_2	499
500	Trasa:_EIP_3508_9_(Rzeszów_Głów->Gdynia_Główn)	500
501	Trasa:_KORMORAN_5330_1_(Olsztyn_Głów->Kraków_Główn)	501
502	Trasa:_BYSTRZYCA_22100_(Hrubieszów_M->Lublin_Główn)	502
503	Trasa:_FLISAK_54102_3_(Gdynia_Główn->Katowice)_2	503
504	Trasa:_EIP_5308_9_(Gdynia_Główn->Rzeszów_Głów)	504
505	Trasa:_EIC_1308_9_(Warszawa_Wsc->Kraków_Główn)	505
506	Trasa:_KUTER_5138_9_(Gdynia_Główn->Warszawa_Zac)	506
507	Trasa:_LEDNICA_6500_1_(Wrocław_Głów->Gdynia_Główn)	507
508	Trasa:_BORY_TUCHOLSKIE_58110_1_(Gdynia_Główn->Kostrzyn)	508
509	Trasa:_SZPIGLASOWY_WIERCH_13160_1_(Warszawa_Wsc->Zakopane)	509
510	Trasa:_BERLINWARSZAWAEXPRESS_71010_1_(Berlin_Haupt->Warszawa_Wsc)	510
511	Trasa:_IC+_33012_(Київ-Пасажир->Przemyśl_Głó)	511
512	Trasa:_DĘBOWIEC_4302_3_(Bielsko-Biał->Kraków_Główn)	512
513	Trasa:_SANDACZ_5148_(Olsztyn_Głów->Warszawa_Zac)	513
514	Trasa:_PRZĄŚNICZKA_9107_(Łódź_Fabrycz->Warszawa_Wsc)	514
515	Trasa:_BRDA_5130_1_(Bydgoszcz_Gł->Warszawa_Cen)	515
516	Trasa:_CHROBRY_8100_1_(Szczecin_Głó->Warszawa_Wsc)	516
517	Trasa:_BATORY_41004_5_(Budapest-Kel->Warszawa_Wsc)	517
518	Trasa:_BACZYŃSKI_1622_3_(Warszawa_Wsc->Wrocław_Głów)	518
519	Trasa:_EIC_5102_3_(Gdynia_Główn->Warszawa_Zac)	519
520	Trasa:_WISŁOK_22020_(Рава-Руська->Lublin_Główn)	520
521	Trasa:_IC_87116_(Gorzów_Wielk->Jarocin)	521
522	Trasa:_PORTA_MORAVICA_43002_3_(Wien_Hauptba->Kraków_Główn)	522
523	Trasa:_PORTA_MORAVICA_46004_5_(Graz_Hauptba->Wrocław_Głów)	523
524	Trasa:_SPICHLERZ_1508_9_(Warszawa_Wsc->Bydgoszcz_Gł)	524
525	Trasa:_IC_78107_(Poznań_Główn->Gorzów_Wielk)	525
526	Trasa:_DĘBOWIEC_3403_(Kraków_Główn->Bielsko-Biał)	526
527	Trasa:_GEDANIA_75000_1_(Berlin_Haupt->Gdynia_Główn)	527
528	Trasa:_BYSTRZYCA_3538_9_(Rzeszów_Głów->Bydgoszcz_Gł)	528
529	Trasa:_WETLINA_33110_1_(Jasło->Kraków_Główn)	529
530	Trasa:_JANTAR_5140_1_(Hel->Warszawa_Zac)	530
531	Trasa:_KILIŃSKI_7112_3_(Poznań_Główn->Warszawa_Wsc)	531
532	Trasa:_PRZEMYŚLANIN_78172_3_(Poznań_Główn->Sławno)_2	532
533	Trasa:_EIP_3502_3_(Kraków_Główn->Gdynia_Główn)	533
534	Trasa:_PRATER_43010_(Wien_Westbah->Kraków_Płasz)	534
535	Trasa:_STARZYŃSKI_1134_5_(Terespol->Warszawa_Zac)	535
536	Trasa:_PODLASIE_1126_7_(Terespol->Warszawa_Zac)	536
537	Trasa:_STARZYŃSKI_7132_3_(Poznań_Główn->Terespol)	537
538	Trasa:_EIP_5352_3_(Gdynia_Główn->Zakopane)	538
539	Trasa:_WETLINA_33110_1_(Krosno->Kraków_Główn)	539
540	Trasa:_ŚNIEŻKA_1650_1_(Warszawa_Wsc->Szklarska_Po)	540
541	Trasa:_KRASNOLUD_73160_1_(Poznań_Główn->Kraków_Główn)	541
542	Trasa:_PAPRYKARZ_88142_3_(Kamień_Pomor->Szczecin_Głó)	542
543	Trasa:_ALBATROS_85100_1_(Szczecin_Głó->Gdańsk_Główn)	543
544	Trasa:_SKARYNA_1122_(Terespol->Warszawa_Zac)	544
545	Trasa:_EIP_4508_9_(Gliwice->Gdynia_Główn)	545
546	Trasa:_BERLINWARSZAWAEXPRESS_17010_1_(Warszawa_Wsc->Berlin_Haupt)	546
547	Trasa:_EIP_5306_7_(Gdynia_Główn->Kraków_Główn)	547
548	Trasa:_LECH_1612_3_(Warszawa_Wsc->Wrocław_Głów)	548
549	Trasa:_BALTAZAR_4304_(Bielsko-Biał->Kraków_Główn)	549
550	Trasa:_BAŁTYK_7500_1_(Poznań_Główn->Gdynia_Główn)	550
551	Trasa:_ZEFIR_8306_7_(Sławno->Przemyśl_Głó)_2	551
552	Trasa:_PODLASIE_1126_(Terespol->Warszawa_Wsc)	552
553	Trasa:_SPICHLERZ_5108_9_(Bydgoszcz_Gł->Warszawa_Wsc)	553
554	Trasa:_BOSMAN_6812_3_(Wrocław_Głów->Białogard)	554
555	Trasa:_STOŁECZNY_81140_(Szczecin_Głó->Warszawa_Głó)	555
556	Trasa:_WYBRZEŻE_1516_7_(Łódź_Fabrycz->Gdynia_Główn)	556
557	Trasa:_MAŁOPOLSKA_33104_(Krynica-Zdró->Kraków_Główn)	557
558	Trasa:_STRZELECKI_87100_(Gorzów_Wielk->Zbąszynek)	558
559	Trasa:_VIA_REGIA_66008_(Leipzig_Haup->Wrocław_Głów)	559
560	Trasa:_FLISAK_45102_3_(Katowice->Gdynia_Główn)_2	560
561	Trasa:_ASNYK_1620_1_(Warszawa_Wsc->Wrocław_Głów)	561
562	Trasa:_RADZIWIŁŁ_1031_(Warszawa_Zac->Terespol)	562
563	Trasa:_CHEMIK_4124_5_(Katowice->Kutno)	563
564	Trasa:_EIP_5304_5_(Gdynia_Główn->Kraków_Główn)	564
565	Trasa:_PRZEMYŚLANIN_87172_3_(Sławno->Poznań_Główn)_2	565
566	Trasa:_EIP_8102_3_(Szczecin_Głó->Warszawa_Wsc)	566
567	Trasa:_WETLINA_30111_(Kraków_Główn->Krosno)	567
568	Trasa:_BERLINWARSZAWAEXPRESS_17012_3_(Warszawa_Wsc->Berlin_Gesun)	568
569	Trasa:_EIP_1501_(Warszawa_Zac->Gdynia_Główn)	569
570	Trasa:_BIESZCZADY_33112_3_(Krosno->Kraków_Główn)	570
571	Trasa:_LATARNIK_1852_3_(Warszawa_Wsc->Świnoujście)	571
572	Trasa:_PORTA_MORAVICA_64004_5_(Wrocław_Głów->Graz_Hauptba)	572
573	Trasa:_IC+_33000_(Київ-Пасажир->Przemyśl_Głó)	573
574	Trasa:_EIP_1604_5_(Warszawa_Wsc->Wrocław_Głów)	574
575	Trasa:_KYIV_EXPRESS_12011_(Warszawa_Zac->Київ-Пасажир)	575
576	Trasa:_ALBATROS_58100_1_(Gdańsk_Główn->Szczecin_Głó)	576
577	Trasa:_BOSMAN_8612_3_(Białogard->Wrocław_Głów)	577
578	Trasa:_PAPRYKARZ_88140_1_(Szczecin_Głó->Kamień_Pomor)	578
579	Trasa:_PORTA_MORAVICA_43002_3_(Graz_Hauptba->Kraków_Główn)_2	579
580	Trasa:_LECH_6112_3_(Wrocław_Głów->Warszawa_Wsc)	580
581	Trasa:_BIESZCZADY_33112_3_(Jasło->Kraków_Główn)	581
582	Trasa:_PORTA_MORAVICA_34002_3_(Kraków_Główn->Wien_Hauptba)	582
583	Trasa:_EIP_1306_7_(Warszawa_Wsc->Kraków_Główn)	583
584	Trasa:_IC_78117_(Poznań_Główn->Gorzów_Wielk)	584
585	Trasa:_IC_87104_(Gorzów_Wielk->Jarocin)	585
586	Trasa:_ŚNIEŻKA_60151_(Wrocław_Głów->Polanica_Zdr)	586
587	Trasa:_KRASNOLUD_37160_1_(Kraków_Główn->Poznań_Główn)	587
588	Trasa:_BYSTRZYCA_20101_(Lublin_Główn->Hrubieszów_M)	588
589	Trasa:_IC_87108_(Gorzów_Wielk->Poznań_Główn)	589
590	Trasa:_WISŁOK_22019_(Lublin_Główn->Рава-Руська)	590
591	Trasa:_GWAREK_8316_7_(Sławno->Kraków_Główn)_2	591
592	Trasa:_VIA_REGIA_66008_(Leipzig_Haup->Wrocław_Głów)_2	592
593	Trasa:_EIP_3510_1_(Kraków_Główn->Gdynia_Główn)	593
594	Trasa:_EIP_1503_(Warszawa_Zac->Gdynia_Główn)	594
\.

COPY trasy_cykliczne (id_trasy, dzien_kursowania) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	czwartek
1	niedziela
1	piątek
1	poniedziałek
1	sobota
1	wtorek
1	środa
2	czwartek
2	niedziela
2	piątek
2	poniedziałek
2	sobota
2	wtorek
2	środa
3	czwartek
3	niedziela
3	piątek
3	poniedziałek
3	sobota
3	wtorek
3	środa
4	czwartek
4	niedziela
4	piątek
4	poniedziałek
4	sobota
4	wtorek
4	środa
5	czwartek
5	niedziela
5	piątek
5	poniedziałek
5	sobota
5	wtorek
5	środa
6	czwartek
6	niedziela
6	piątek
6	poniedziałek
6	sobota
6	wtorek
6	środa
7	czwartek
7	niedziela
7	piątek
7	poniedziałek
7	sobota
7	wtorek
7	środa
9	czwartek
9	niedziela
9	piątek
9	poniedziałek
9	sobota
9	wtorek
9	środa
10	czwartek
10	niedziela
10	piątek
10	poniedziałek
10	sobota
10	wtorek
10	środa
11	czwartek
11	niedziela
11	piątek
11	poniedziałek
11	sobota
11	wtorek
11	środa
12	czwartek
12	niedziela
12	piątek
12	poniedziałek
12	sobota
12	wtorek
12	środa
14	czwartek
14	piątek
14	poniedziałek
14	wtorek
14	środa
16	czwartek
16	niedziela
16	piątek
16	poniedziałek
16	sobota
16	wtorek
16	środa
17	czwartek
17	piątek
17	poniedziałek
17	wtorek
17	środa
18	czwartek
18	niedziela
18	piątek
18	poniedziałek
18	sobota
18	wtorek
18	środa
19	czwartek
19	niedziela
19	piątek
19	poniedziałek
19	sobota
19	wtorek
19	środa
20	czwartek
20	niedziela
20	piątek
20	poniedziałek
20	sobota
20	wtorek
20	środa
21	czwartek
21	niedziela
21	piątek
21	poniedziałek
21	sobota
21	wtorek
21	środa
22	czwartek
22	niedziela
22	piątek
22	poniedziałek
22	sobota
22	wtorek
22	środa
23	czwartek
23	niedziela
23	piątek
23	poniedziałek
23	sobota
23	wtorek
23	środa
24	czwartek
24	niedziela
24	piątek
24	poniedziałek
24	sobota
24	wtorek
24	środa
25	czwartek
25	niedziela
25	piątek
25	poniedziałek
25	sobota
25	wtorek
25	środa
26	czwartek
26	niedziela
26	piątek
26	poniedziałek
26	sobota
26	wtorek
26	środa
27	czwartek
27	piątek
27	poniedziałek
27	wtorek
27	środa
28	czwartek
28	niedziela
28	piątek
28	poniedziałek
28	sobota
28	wtorek
28	środa
29	czwartek
29	niedziela
29	piątek
29	poniedziałek
29	sobota
29	wtorek
29	środa
30	czwartek
30	niedziela
30	piątek
30	poniedziałek
30	sobota
30	wtorek
30	środa
31	czwartek
31	piątek
31	poniedziałek
31	wtorek
31	środa
32	czwartek
32	niedziela
32	piątek
32	poniedziałek
32	sobota
32	wtorek
32	środa
33	czwartek
33	niedziela
33	piątek
33	poniedziałek
33	sobota
33	wtorek
33	środa
34	czwartek
34	niedziela
34	piątek
34	poniedziałek
34	sobota
34	wtorek
34	środa
35	czwartek
35	niedziela
35	piątek
35	poniedziałek
35	sobota
35	wtorek
35	środa
36	czwartek
36	niedziela
36	piątek
36	poniedziałek
36	sobota
36	wtorek
36	środa
37	czwartek
37	niedziela
37	piątek
37	poniedziałek
37	sobota
37	wtorek
37	środa
38	czwartek
38	niedziela
38	piątek
38	poniedziałek
38	sobota
38	wtorek
38	środa
39	czwartek
39	niedziela
39	piątek
39	poniedziałek
39	sobota
39	wtorek
39	środa
41	czwartek
41	piątek
41	poniedziałek
41	sobota
41	wtorek
41	środa
42	czwartek
42	niedziela
42	piątek
42	poniedziałek
42	sobota
42	wtorek
42	środa
43	czwartek
43	niedziela
43	piątek
43	poniedziałek
43	sobota
43	wtorek
43	środa
44	czwartek
44	niedziela
44	piątek
44	poniedziałek
44	sobota
44	wtorek
44	środa
45	czwartek
45	niedziela
45	piątek
45	poniedziałek
45	sobota
45	wtorek
45	środa
46	czwartek
46	niedziela
46	piątek
46	poniedziałek
46	wtorek
46	środa
47	czwartek
47	niedziela
47	piątek
47	poniedziałek
47	sobota
47	wtorek
47	środa
48	czwartek
48	niedziela
48	piątek
48	poniedziałek
48	sobota
48	wtorek
48	środa
49	czwartek
49	niedziela
49	piątek
49	poniedziałek
49	sobota
49	wtorek
49	środa
50	czwartek
50	niedziela
50	piątek
50	poniedziałek
50	sobota
50	wtorek
50	środa
51	czwartek
51	niedziela
51	piątek
51	poniedziałek
51	sobota
51	wtorek
51	środa
52	czwartek
52	niedziela
52	piątek
52	poniedziałek
52	sobota
52	wtorek
52	środa
53	czwartek
53	niedziela
53	piątek
53	poniedziałek
53	sobota
53	wtorek
53	środa
54	czwartek
54	niedziela
54	piątek
54	poniedziałek
54	sobota
54	wtorek
54	środa
55	czwartek
55	niedziela
55	piątek
55	poniedziałek
55	sobota
55	wtorek
55	środa
56	czwartek
56	niedziela
56	piątek
56	poniedziałek
56	sobota
56	wtorek
56	środa
57	czwartek
57	niedziela
57	piątek
57	poniedziałek
57	sobota
57	wtorek
57	środa
58	czwartek
58	niedziela
58	piątek
58	poniedziałek
58	sobota
58	wtorek
58	środa
59	czwartek
59	niedziela
59	piątek
59	poniedziałek
59	sobota
59	wtorek
59	środa
60	czwartek
60	niedziela
60	piątek
60	poniedziałek
60	sobota
60	wtorek
60	środa
61	czwartek
61	niedziela
61	piątek
61	poniedziałek
61	sobota
61	wtorek
61	środa
62	czwartek
62	niedziela
62	piątek
62	poniedziałek
62	sobota
62	wtorek
62	środa
63	czwartek
63	niedziela
63	piątek
63	poniedziałek
63	sobota
63	wtorek
63	środa
65	czwartek
65	niedziela
65	piątek
65	poniedziałek
65	sobota
65	wtorek
65	środa
66	czwartek
66	niedziela
66	piątek
66	poniedziałek
66	sobota
66	wtorek
66	środa
67	czwartek
67	niedziela
67	piątek
67	poniedziałek
67	sobota
67	wtorek
67	środa
68	czwartek
68	niedziela
68	piątek
68	poniedziałek
68	sobota
68	wtorek
68	środa
69	czwartek
69	niedziela
69	piątek
69	poniedziałek
69	sobota
69	wtorek
69	środa
70	czwartek
70	niedziela
70	piątek
70	poniedziałek
70	sobota
70	wtorek
70	środa
71	czwartek
71	niedziela
71	piątek
71	poniedziałek
71	sobota
71	wtorek
71	środa
72	czwartek
72	niedziela
72	piątek
72	poniedziałek
72	sobota
72	wtorek
72	środa
73	czwartek
73	niedziela
73	piątek
73	poniedziałek
73	sobota
73	wtorek
73	środa
74	czwartek
74	niedziela
74	piątek
74	poniedziałek
74	sobota
74	wtorek
74	środa
75	czwartek
75	niedziela
75	piątek
75	poniedziałek
75	sobota
75	wtorek
75	środa
77	czwartek
77	niedziela
77	piątek
77	poniedziałek
77	sobota
77	wtorek
77	środa
78	czwartek
78	niedziela
78	piątek
78	poniedziałek
78	sobota
78	wtorek
78	środa
79	czwartek
79	niedziela
79	piątek
79	poniedziałek
79	sobota
79	wtorek
79	środa
80	czwartek
80	niedziela
80	piątek
80	poniedziałek
80	sobota
80	wtorek
80	środa
81	czwartek
81	niedziela
81	piątek
81	poniedziałek
81	sobota
81	wtorek
81	środa
82	czwartek
82	niedziela
82	piątek
82	poniedziałek
82	sobota
82	wtorek
82	środa
83	czwartek
83	niedziela
83	piątek
83	poniedziałek
83	sobota
83	wtorek
83	środa
84	czwartek
84	niedziela
84	piątek
84	poniedziałek
84	sobota
84	wtorek
84	środa
85	czwartek
85	niedziela
85	piątek
85	poniedziałek
85	sobota
85	wtorek
85	środa
86	czwartek
86	niedziela
86	piątek
86	poniedziałek
86	sobota
86	wtorek
86	środa
87	czwartek
87	niedziela
87	piątek
87	poniedziałek
87	sobota
87	wtorek
87	środa
89	czwartek
89	niedziela
89	piątek
89	poniedziałek
89	sobota
89	wtorek
89	środa
90	czwartek
90	niedziela
90	piątek
90	poniedziałek
90	sobota
90	wtorek
90	środa
91	czwartek
91	niedziela
91	piątek
91	poniedziałek
91	sobota
91	wtorek
91	środa
92	czwartek
92	niedziela
92	piątek
92	poniedziałek
92	sobota
92	wtorek
92	środa
93	czwartek
93	niedziela
93	piątek
93	poniedziałek
93	sobota
93	wtorek
93	środa
94	czwartek
94	niedziela
94	piątek
94	poniedziałek
94	sobota
94	wtorek
94	środa
95	czwartek
95	niedziela
95	piątek
95	poniedziałek
95	sobota
95	wtorek
95	środa
96	czwartek
96	niedziela
96	piątek
96	poniedziałek
96	sobota
96	wtorek
96	środa
97	czwartek
97	niedziela
97	piątek
97	poniedziałek
97	sobota
97	wtorek
97	środa
99	czwartek
99	niedziela
99	piątek
99	poniedziałek
99	sobota
99	wtorek
99	środa
100	czwartek
100	niedziela
100	piątek
100	poniedziałek
100	sobota
100	wtorek
100	środa
101	czwartek
101	niedziela
101	piątek
101	poniedziałek
101	sobota
101	wtorek
101	środa
102	czwartek
102	niedziela
102	piątek
102	poniedziałek
102	sobota
102	wtorek
102	środa
103	czwartek
103	niedziela
103	piątek
103	poniedziałek
103	sobota
103	wtorek
103	środa
104	czwartek
104	niedziela
104	piątek
104	poniedziałek
104	sobota
104	wtorek
104	środa
105	czwartek
105	niedziela
105	piątek
105	poniedziałek
105	sobota
105	wtorek
105	środa
106	czwartek
106	niedziela
106	piątek
106	poniedziałek
106	sobota
106	wtorek
106	środa
107	czwartek
107	niedziela
107	piątek
107	poniedziałek
107	sobota
107	wtorek
107	środa
108	czwartek
108	niedziela
108	piątek
108	poniedziałek
108	sobota
108	wtorek
108	środa
109	czwartek
109	niedziela
109	piątek
109	poniedziałek
109	sobota
109	wtorek
109	środa
110	czwartek
110	niedziela
110	piątek
110	poniedziałek
110	sobota
110	wtorek
110	środa
111	czwartek
111	niedziela
111	piątek
111	poniedziałek
111	sobota
111	wtorek
111	środa
112	czwartek
112	niedziela
112	piątek
112	poniedziałek
112	sobota
112	wtorek
112	środa
114	czwartek
114	niedziela
114	piątek
114	poniedziałek
114	sobota
114	wtorek
114	środa
115	czwartek
115	niedziela
115	piątek
115	poniedziałek
115	sobota
115	wtorek
115	środa
116	czwartek
116	niedziela
116	piątek
116	poniedziałek
116	sobota
116	wtorek
116	środa
117	czwartek
117	niedziela
117	piątek
117	poniedziałek
117	sobota
117	wtorek
117	środa
118	czwartek
118	niedziela
118	piątek
118	poniedziałek
118	sobota
118	wtorek
118	środa
119	czwartek
119	niedziela
119	piątek
119	poniedziałek
119	sobota
119	wtorek
119	środa
120	czwartek
120	niedziela
120	piątek
120	poniedziałek
120	sobota
120	wtorek
120	środa
121	czwartek
121	niedziela
121	piątek
121	poniedziałek
121	sobota
121	wtorek
121	środa
122	czwartek
122	niedziela
122	piątek
122	poniedziałek
122	sobota
122	wtorek
122	środa
123	czwartek
123	niedziela
123	piątek
123	poniedziałek
123	sobota
123	wtorek
123	środa
124	czwartek
124	niedziela
124	piątek
124	poniedziałek
124	sobota
124	wtorek
124	środa
125	czwartek
125	niedziela
125	piątek
125	poniedziałek
125	sobota
125	wtorek
125	środa
126	czwartek
126	niedziela
126	piątek
126	poniedziałek
126	sobota
126	wtorek
126	środa
127	czwartek
127	niedziela
127	piątek
127	poniedziałek
127	sobota
127	wtorek
127	środa
128	czwartek
128	niedziela
128	piątek
128	poniedziałek
128	sobota
128	wtorek
128	środa
129	czwartek
129	niedziela
129	piątek
129	poniedziałek
129	sobota
129	wtorek
129	środa
130	czwartek
130	niedziela
130	piątek
130	poniedziałek
130	sobota
130	wtorek
130	środa
132	czwartek
132	niedziela
132	piątek
132	poniedziałek
132	sobota
132	wtorek
132	środa
134	czwartek
134	niedziela
134	piątek
134	poniedziałek
134	sobota
134	wtorek
134	środa
135	czwartek
135	niedziela
135	piątek
135	poniedziałek
135	sobota
135	wtorek
135	środa
136	czwartek
136	niedziela
136	piątek
136	poniedziałek
136	sobota
136	wtorek
136	środa
137	czwartek
137	niedziela
137	piątek
137	poniedziałek
137	sobota
137	wtorek
137	środa
138	czwartek
138	niedziela
138	piątek
138	poniedziałek
138	sobota
138	wtorek
138	środa
139	czwartek
139	niedziela
139	piątek
139	poniedziałek
139	sobota
139	wtorek
139	środa
140	czwartek
140	niedziela
140	piątek
140	poniedziałek
140	sobota
140	wtorek
140	środa
141	czwartek
141	niedziela
141	piątek
141	poniedziałek
141	sobota
141	wtorek
141	środa
142	czwartek
142	niedziela
142	piątek
142	poniedziałek
142	sobota
142	wtorek
142	środa
143	czwartek
143	niedziela
143	piątek
143	poniedziałek
143	sobota
143	wtorek
143	środa
144	czwartek
144	niedziela
144	piątek
144	poniedziałek
144	sobota
144	wtorek
144	środa
145	czwartek
145	niedziela
145	piątek
145	poniedziałek
145	sobota
145	wtorek
145	środa
146	czwartek
146	niedziela
146	piątek
146	poniedziałek
146	sobota
146	wtorek
146	środa
147	czwartek
147	niedziela
147	piątek
147	poniedziałek
147	sobota
147	wtorek
147	środa
148	czwartek
148	niedziela
148	piątek
148	poniedziałek
148	sobota
148	wtorek
148	środa
149	czwartek
149	niedziela
149	piątek
149	poniedziałek
149	sobota
149	wtorek
149	środa
150	czwartek
150	niedziela
150	piątek
150	poniedziałek
150	sobota
150	wtorek
150	środa
151	czwartek
151	niedziela
151	piątek
151	poniedziałek
151	sobota
151	wtorek
151	środa
152	czwartek
152	niedziela
152	piątek
152	poniedziałek
152	sobota
152	wtorek
152	środa
153	czwartek
153	piątek
153	poniedziałek
153	wtorek
153	środa
154	czwartek
154	niedziela
154	piątek
154	poniedziałek
154	sobota
154	wtorek
154	środa
155	czwartek
155	niedziela
155	piątek
155	poniedziałek
155	sobota
155	wtorek
155	środa
156	czwartek
156	niedziela
156	piątek
156	poniedziałek
156	sobota
156	wtorek
156	środa
157	czwartek
157	niedziela
157	piątek
157	poniedziałek
157	sobota
157	wtorek
157	środa
158	czwartek
158	niedziela
158	piątek
158	poniedziałek
158	sobota
158	wtorek
158	środa
159	czwartek
159	niedziela
159	piątek
159	poniedziałek
159	sobota
159	wtorek
159	środa
160	czwartek
160	niedziela
160	piątek
160	poniedziałek
160	sobota
160	wtorek
160	środa
161	czwartek
161	niedziela
161	piątek
161	poniedziałek
161	sobota
161	wtorek
161	środa
162	czwartek
162	niedziela
162	piątek
162	poniedziałek
162	sobota
162	wtorek
162	środa
163	czwartek
163	niedziela
163	piątek
163	poniedziałek
163	sobota
163	wtorek
163	środa
164	czwartek
164	niedziela
164	piątek
164	poniedziałek
164	sobota
164	wtorek
164	środa
165	czwartek
165	niedziela
165	piątek
165	poniedziałek
165	sobota
165	wtorek
165	środa
166	czwartek
166	niedziela
166	piątek
166	poniedziałek
166	sobota
166	wtorek
166	środa
167	czwartek
167	niedziela
167	piątek
167	poniedziałek
167	sobota
167	wtorek
167	środa
168	czwartek
168	niedziela
168	piątek
168	poniedziałek
168	sobota
168	wtorek
168	środa
169	czwartek
169	niedziela
169	piątek
169	poniedziałek
169	sobota
169	wtorek
169	środa
170	czwartek
170	niedziela
170	piątek
170	poniedziałek
170	sobota
170	wtorek
170	środa
171	czwartek
171	niedziela
171	piątek
171	poniedziałek
171	sobota
171	wtorek
171	środa
172	czwartek
172	niedziela
172	piątek
172	poniedziałek
172	sobota
172	wtorek
172	środa
174	czwartek
174	niedziela
174	piątek
174	poniedziałek
174	sobota
174	wtorek
174	środa
175	czwartek
175	niedziela
175	piątek
175	poniedziałek
175	wtorek
175	środa
176	czwartek
176	niedziela
176	piątek
176	poniedziałek
176	sobota
176	wtorek
176	środa
177	czwartek
177	niedziela
177	piątek
177	poniedziałek
177	sobota
177	wtorek
177	środa
178	czwartek
178	niedziela
178	piątek
178	poniedziałek
178	sobota
178	wtorek
178	środa
179	czwartek
179	niedziela
179	piątek
179	poniedziałek
179	sobota
179	wtorek
179	środa
180	czwartek
180	niedziela
180	piątek
180	poniedziałek
180	sobota
180	wtorek
180	środa
181	czwartek
181	niedziela
181	piątek
181	poniedziałek
181	sobota
181	wtorek
181	środa
182	czwartek
182	niedziela
182	piątek
182	poniedziałek
182	sobota
182	wtorek
182	środa
183	czwartek
183	niedziela
183	piątek
183	poniedziałek
183	sobota
183	wtorek
183	środa
184	czwartek
184	niedziela
184	piątek
184	poniedziałek
184	sobota
184	wtorek
184	środa
185	czwartek
185	niedziela
185	piątek
185	poniedziałek
185	sobota
185	wtorek
185	środa
186	czwartek
186	niedziela
186	piątek
186	poniedziałek
186	sobota
186	wtorek
186	środa
187	czwartek
187	niedziela
187	piątek
187	poniedziałek
187	sobota
187	wtorek
187	środa
189	czwartek
189	piątek
189	poniedziałek
189	wtorek
189	środa
190	czwartek
190	niedziela
190	piątek
190	poniedziałek
190	sobota
190	wtorek
190	środa
191	czwartek
191	niedziela
191	piątek
191	poniedziałek
191	sobota
191	wtorek
191	środa
192	czwartek
192	niedziela
192	piątek
192	poniedziałek
192	sobota
192	wtorek
192	środa
193	czwartek
193	niedziela
193	piątek
193	poniedziałek
193	sobota
193	wtorek
193	środa
194	czwartek
194	niedziela
194	piątek
194	poniedziałek
194	sobota
194	wtorek
194	środa
195	czwartek
195	niedziela
195	piątek
195	poniedziałek
195	sobota
195	wtorek
195	środa
196	czwartek
196	niedziela
196	piątek
196	poniedziałek
196	sobota
196	wtorek
196	środa
197	czwartek
197	niedziela
197	piątek
197	poniedziałek
197	sobota
197	wtorek
197	środa
199	czwartek
199	niedziela
199	piątek
199	poniedziałek
199	sobota
199	wtorek
199	środa
200	czwartek
200	niedziela
200	piątek
200	poniedziałek
200	sobota
200	wtorek
200	środa
201	czwartek
201	niedziela
201	piątek
201	poniedziałek
201	sobota
201	wtorek
201	środa
202	czwartek
202	niedziela
202	piątek
202	poniedziałek
202	wtorek
202	środa
204	czwartek
204	niedziela
204	piątek
204	poniedziałek
204	sobota
204	wtorek
204	środa
205	czwartek
205	niedziela
205	piątek
205	poniedziałek
205	sobota
205	wtorek
205	środa
206	czwartek
206	niedziela
206	piątek
206	poniedziałek
206	sobota
206	wtorek
206	środa
207	czwartek
207	niedziela
207	piątek
207	poniedziałek
207	sobota
207	wtorek
207	środa
208	czwartek
208	niedziela
208	piątek
208	poniedziałek
208	sobota
208	wtorek
208	środa
209	czwartek
209	piątek
209	poniedziałek
209	sobota
209	wtorek
209	środa
210	czwartek
210	niedziela
210	piątek
210	poniedziałek
210	sobota
210	wtorek
210	środa
211	czwartek
211	niedziela
211	piątek
211	poniedziałek
211	sobota
211	wtorek
211	środa
212	czwartek
212	niedziela
212	piątek
212	poniedziałek
212	sobota
212	wtorek
212	środa
213	czwartek
213	niedziela
213	piątek
213	poniedziałek
213	sobota
213	wtorek
213	środa
214	czwartek
214	niedziela
214	piątek
214	poniedziałek
214	sobota
214	wtorek
214	środa
215	czwartek
215	niedziela
215	piątek
215	poniedziałek
215	sobota
215	wtorek
215	środa
216	czwartek
216	niedziela
216	piątek
216	poniedziałek
216	sobota
216	wtorek
216	środa
217	czwartek
217	niedziela
217	piątek
217	poniedziałek
217	sobota
217	wtorek
217	środa
218	czwartek
218	niedziela
218	piątek
218	poniedziałek
218	sobota
218	wtorek
218	środa
219	czwartek
219	niedziela
219	piątek
219	poniedziałek
219	sobota
219	wtorek
219	środa
222	czwartek
222	niedziela
222	piątek
222	poniedziałek
222	sobota
222	wtorek
222	środa
223	czwartek
223	piątek
223	poniedziałek
223	wtorek
223	środa
224	czwartek
224	niedziela
224	piątek
224	poniedziałek
224	sobota
224	wtorek
224	środa
225	czwartek
225	niedziela
225	piątek
225	poniedziałek
225	sobota
225	wtorek
225	środa
226	czwartek
226	niedziela
226	piątek
226	poniedziałek
226	sobota
226	wtorek
226	środa
227	czwartek
227	niedziela
227	piątek
227	poniedziałek
227	sobota
227	wtorek
227	środa
228	czwartek
228	niedziela
228	piątek
228	poniedziałek
228	sobota
228	wtorek
228	środa
229	czwartek
229	niedziela
229	piątek
229	poniedziałek
229	sobota
229	wtorek
229	środa
231	czwartek
231	piątek
231	poniedziałek
231	sobota
231	wtorek
231	środa
232	czwartek
232	niedziela
232	piątek
232	poniedziałek
232	sobota
232	wtorek
232	środa
233	czwartek
233	niedziela
233	piątek
233	poniedziałek
233	sobota
233	wtorek
233	środa
234	czwartek
234	niedziela
234	piątek
234	poniedziałek
234	sobota
234	wtorek
234	środa
235	czwartek
235	niedziela
235	piątek
235	poniedziałek
235	sobota
235	wtorek
235	środa
237	czwartek
237	niedziela
237	piątek
237	poniedziałek
237	sobota
237	wtorek
237	środa
238	czwartek
238	niedziela
238	piątek
238	poniedziałek
238	sobota
238	wtorek
238	środa
239	czwartek
239	niedziela
239	piątek
239	poniedziałek
239	sobota
239	wtorek
239	środa
240	czwartek
240	niedziela
240	piątek
240	poniedziałek
240	sobota
240	wtorek
240	środa
241	czwartek
241	niedziela
241	piątek
241	poniedziałek
241	sobota
241	wtorek
241	środa
242	czwartek
242	niedziela
242	piątek
242	poniedziałek
242	sobota
242	wtorek
242	środa
243	czwartek
243	piątek
243	poniedziałek
243	wtorek
243	środa
244	czwartek
244	niedziela
244	piątek
244	poniedziałek
244	sobota
244	wtorek
244	środa
245	czwartek
245	niedziela
245	piątek
245	poniedziałek
245	sobota
245	wtorek
245	środa
247	czwartek
247	niedziela
247	piątek
247	poniedziałek
247	sobota
247	wtorek
247	środa
249	czwartek
249	niedziela
249	piątek
249	poniedziałek
249	sobota
249	wtorek
249	środa
250	czwartek
250	niedziela
250	piątek
250	poniedziałek
250	sobota
250	wtorek
250	środa
251	czwartek
251	niedziela
251	piątek
251	poniedziałek
251	sobota
251	wtorek
251	środa
252	czwartek
252	niedziela
252	piątek
252	poniedziałek
252	sobota
252	wtorek
252	środa
253	czwartek
253	niedziela
253	piątek
253	poniedziałek
253	sobota
253	wtorek
253	środa
255	czwartek
255	niedziela
255	piątek
255	poniedziałek
255	sobota
255	wtorek
255	środa
256	czwartek
256	niedziela
256	piątek
256	poniedziałek
256	sobota
256	wtorek
256	środa
257	czwartek
257	niedziela
257	piątek
257	poniedziałek
257	sobota
257	wtorek
257	środa
258	czwartek
258	niedziela
258	piątek
258	poniedziałek
258	sobota
258	wtorek
258	środa
259	czwartek
259	niedziela
259	piątek
259	poniedziałek
259	sobota
259	wtorek
259	środa
260	czwartek
260	niedziela
260	piątek
260	poniedziałek
260	sobota
260	wtorek
260	środa
261	czwartek
261	niedziela
261	piątek
261	poniedziałek
261	sobota
261	wtorek
261	środa
262	czwartek
262	niedziela
262	piątek
262	poniedziałek
262	sobota
262	wtorek
262	środa
263	czwartek
263	niedziela
263	piątek
263	poniedziałek
263	sobota
263	wtorek
263	środa
264	czwartek
264	niedziela
264	piątek
264	poniedziałek
264	sobota
264	wtorek
264	środa
265	czwartek
265	niedziela
265	piątek
265	poniedziałek
265	sobota
265	wtorek
265	środa
266	czwartek
266	niedziela
266	piątek
266	poniedziałek
266	sobota
266	wtorek
266	środa
267	czwartek
267	niedziela
267	piątek
267	poniedziałek
267	sobota
267	wtorek
267	środa
268	czwartek
268	niedziela
268	piątek
268	poniedziałek
268	sobota
268	wtorek
268	środa
269	czwartek
269	niedziela
269	piątek
269	poniedziałek
269	sobota
269	wtorek
269	środa
271	czwartek
271	niedziela
271	piątek
271	poniedziałek
271	sobota
271	wtorek
271	środa
273	czwartek
273	niedziela
273	piątek
273	poniedziałek
273	sobota
273	wtorek
273	środa
274	czwartek
274	niedziela
274	piątek
274	poniedziałek
274	sobota
274	wtorek
274	środa
276	czwartek
276	niedziela
276	piątek
276	poniedziałek
276	sobota
276	wtorek
276	środa
277	czwartek
277	niedziela
277	piątek
277	poniedziałek
277	sobota
277	wtorek
277	środa
278	czwartek
278	niedziela
278	piątek
278	poniedziałek
278	sobota
278	wtorek
278	środa
279	czwartek
279	niedziela
279	piątek
279	poniedziałek
279	sobota
279	wtorek
279	środa
280	czwartek
280	niedziela
280	piątek
280	poniedziałek
280	sobota
280	wtorek
280	środa
281	czwartek
281	niedziela
281	piątek
281	poniedziałek
281	sobota
281	wtorek
281	środa
282	czwartek
282	niedziela
282	piątek
282	poniedziałek
282	sobota
282	wtorek
282	środa
283	czwartek
283	niedziela
283	piątek
283	poniedziałek
283	sobota
283	wtorek
283	środa
284	czwartek
284	niedziela
284	piątek
284	poniedziałek
284	sobota
284	wtorek
284	środa
285	czwartek
285	niedziela
285	piątek
285	poniedziałek
285	sobota
285	wtorek
285	środa
286	czwartek
286	niedziela
286	piątek
286	poniedziałek
286	sobota
286	wtorek
286	środa
287	czwartek
287	niedziela
287	piątek
287	poniedziałek
287	sobota
287	wtorek
287	środa
288	czwartek
288	niedziela
288	piątek
288	poniedziałek
288	sobota
288	wtorek
288	środa
289	czwartek
289	niedziela
289	piątek
289	poniedziałek
289	sobota
289	wtorek
289	środa
291	czwartek
291	niedziela
291	piątek
291	poniedziałek
291	sobota
291	wtorek
291	środa
292	czwartek
292	niedziela
292	piątek
292	poniedziałek
292	sobota
292	wtorek
292	środa
293	czwartek
293	niedziela
293	piątek
293	poniedziałek
293	sobota
293	wtorek
293	środa
294	czwartek
294	niedziela
294	piątek
294	poniedziałek
294	sobota
294	wtorek
294	środa
295	czwartek
295	niedziela
295	piątek
295	poniedziałek
295	sobota
295	wtorek
295	środa
296	czwartek
296	niedziela
296	piątek
296	poniedziałek
296	sobota
296	wtorek
296	środa
298	czwartek
298	niedziela
298	piątek
298	poniedziałek
298	sobota
298	wtorek
298	środa
299	czwartek
299	niedziela
299	piątek
299	poniedziałek
299	sobota
299	wtorek
299	środa
300	czwartek
300	niedziela
300	piątek
300	poniedziałek
300	sobota
300	wtorek
300	środa
301	czwartek
301	niedziela
301	piątek
301	poniedziałek
301	sobota
301	wtorek
301	środa
302	czwartek
302	niedziela
302	piątek
302	poniedziałek
302	sobota
302	wtorek
302	środa
303	czwartek
303	niedziela
303	piątek
303	poniedziałek
303	sobota
303	wtorek
303	środa
304	czwartek
304	niedziela
304	piątek
304	poniedziałek
304	sobota
304	wtorek
304	środa
305	czwartek
305	niedziela
305	piątek
305	poniedziałek
305	sobota
305	wtorek
305	środa
307	czwartek
307	piątek
307	poniedziałek
307	sobota
307	wtorek
307	środa
308	czwartek
308	niedziela
308	piątek
308	poniedziałek
308	sobota
308	wtorek
308	środa
309	czwartek
309	niedziela
309	piątek
309	poniedziałek
309	sobota
309	wtorek
309	środa
310	czwartek
310	niedziela
310	piątek
310	poniedziałek
310	sobota
310	wtorek
310	środa
312	czwartek
312	niedziela
312	piątek
312	poniedziałek
312	sobota
312	wtorek
312	środa
313	czwartek
313	niedziela
313	piątek
313	poniedziałek
313	sobota
313	wtorek
313	środa
314	czwartek
314	niedziela
314	piątek
314	poniedziałek
314	sobota
314	wtorek
314	środa
316	czwartek
316	niedziela
316	piątek
316	poniedziałek
316	sobota
316	wtorek
316	środa
317	czwartek
317	niedziela
317	piątek
317	poniedziałek
317	sobota
317	wtorek
317	środa
318	czwartek
318	niedziela
318	piątek
318	poniedziałek
318	sobota
318	wtorek
318	środa
319	czwartek
319	niedziela
319	piątek
319	poniedziałek
319	sobota
319	wtorek
319	środa
320	czwartek
320	piątek
320	poniedziałek
320	wtorek
320	środa
322	czwartek
322	niedziela
322	piątek
322	poniedziałek
322	sobota
322	wtorek
322	środa
323	czwartek
323	niedziela
323	piątek
323	poniedziałek
323	sobota
323	wtorek
323	środa
324	czwartek
324	niedziela
324	piątek
324	poniedziałek
324	sobota
324	wtorek
324	środa
325	czwartek
325	niedziela
325	piątek
325	poniedziałek
325	sobota
325	wtorek
325	środa
327	czwartek
327	niedziela
327	piątek
327	poniedziałek
327	sobota
327	wtorek
327	środa
328	czwartek
328	niedziela
328	piątek
328	poniedziałek
328	sobota
328	wtorek
328	środa
329	czwartek
329	niedziela
329	piątek
329	poniedziałek
329	sobota
329	wtorek
329	środa
330	czwartek
330	niedziela
330	piątek
330	poniedziałek
330	sobota
330	wtorek
330	środa
331	czwartek
331	niedziela
331	piątek
331	poniedziałek
331	sobota
331	wtorek
331	środa
332	czwartek
332	niedziela
332	piątek
332	poniedziałek
332	sobota
332	wtorek
332	środa
333	czwartek
333	niedziela
333	piątek
333	poniedziałek
333	sobota
333	wtorek
333	środa
334	czwartek
334	niedziela
334	piątek
334	poniedziałek
334	sobota
334	wtorek
334	środa
335	czwartek
335	niedziela
335	piątek
335	poniedziałek
335	sobota
335	wtorek
335	środa
336	czwartek
336	niedziela
336	piątek
336	poniedziałek
336	sobota
336	wtorek
336	środa
337	czwartek
337	piątek
337	poniedziałek
337	sobota
337	wtorek
337	środa
338	czwartek
338	niedziela
338	piątek
338	poniedziałek
338	sobota
338	wtorek
338	środa
339	czwartek
339	niedziela
339	piątek
339	poniedziałek
339	sobota
339	wtorek
339	środa
340	czwartek
340	niedziela
340	piątek
340	poniedziałek
340	sobota
340	wtorek
340	środa
341	czwartek
341	niedziela
341	piątek
341	poniedziałek
341	sobota
341	wtorek
341	środa
342	czwartek
342	niedziela
342	piątek
342	poniedziałek
342	sobota
342	wtorek
342	środa
343	czwartek
343	niedziela
343	piątek
343	poniedziałek
343	sobota
343	wtorek
343	środa
344	czwartek
344	niedziela
344	piątek
344	poniedziałek
344	sobota
344	wtorek
344	środa
345	czwartek
345	niedziela
345	piątek
345	poniedziałek
345	sobota
345	wtorek
345	środa
346	czwartek
346	niedziela
346	piątek
346	poniedziałek
346	sobota
346	wtorek
346	środa
347	czwartek
347	niedziela
347	piątek
347	poniedziałek
347	sobota
347	wtorek
347	środa
348	czwartek
348	niedziela
348	piątek
348	poniedziałek
348	sobota
348	wtorek
348	środa
349	czwartek
349	niedziela
349	piątek
349	poniedziałek
349	sobota
349	wtorek
349	środa
350	czwartek
350	niedziela
350	piątek
350	poniedziałek
350	sobota
350	wtorek
350	środa
351	czwartek
351	niedziela
351	piątek
351	poniedziałek
351	sobota
351	wtorek
351	środa
352	czwartek
352	niedziela
352	piątek
352	poniedziałek
352	sobota
352	wtorek
352	środa
353	czwartek
353	niedziela
353	piątek
353	poniedziałek
353	sobota
353	wtorek
353	środa
354	czwartek
354	niedziela
354	piątek
354	poniedziałek
354	sobota
354	wtorek
354	środa
355	czwartek
355	niedziela
355	piątek
355	poniedziałek
355	sobota
355	wtorek
355	środa
357	czwartek
357	niedziela
357	piątek
357	poniedziałek
357	sobota
357	wtorek
357	środa
359	czwartek
359	niedziela
359	piątek
359	poniedziałek
359	sobota
359	wtorek
359	środa
360	czwartek
360	niedziela
360	piątek
360	poniedziałek
360	sobota
360	wtorek
360	środa
361	czwartek
361	niedziela
361	piątek
361	poniedziałek
361	sobota
361	wtorek
361	środa
362	czwartek
362	niedziela
362	piątek
362	poniedziałek
362	sobota
362	wtorek
362	środa
363	czwartek
363	niedziela
363	piątek
363	poniedziałek
363	sobota
363	wtorek
363	środa
364	czwartek
364	niedziela
364	piątek
364	poniedziałek
364	sobota
364	wtorek
364	środa
365	czwartek
365	niedziela
365	piątek
365	poniedziałek
365	sobota
365	wtorek
365	środa
366	czwartek
366	niedziela
366	piątek
366	poniedziałek
366	sobota
366	wtorek
366	środa
367	czwartek
367	niedziela
367	piątek
367	poniedziałek
367	sobota
367	wtorek
367	środa
368	czwartek
368	niedziela
368	piątek
368	poniedziałek
368	sobota
368	wtorek
368	środa
369	czwartek
369	niedziela
369	piątek
369	poniedziałek
369	sobota
369	wtorek
369	środa
370	czwartek
370	niedziela
370	piątek
370	poniedziałek
370	sobota
370	wtorek
370	środa
372	czwartek
372	niedziela
372	piątek
372	poniedziałek
372	sobota
372	wtorek
372	środa
373	czwartek
373	niedziela
373	piątek
373	poniedziałek
373	sobota
373	wtorek
373	środa
374	czwartek
374	niedziela
374	piątek
374	poniedziałek
374	sobota
374	wtorek
374	środa
376	czwartek
376	niedziela
376	piątek
376	poniedziałek
376	sobota
376	wtorek
376	środa
377	czwartek
377	niedziela
377	piątek
377	poniedziałek
377	sobota
377	wtorek
377	środa
378	czwartek
378	niedziela
378	piątek
378	poniedziałek
378	sobota
378	wtorek
378	środa
379	czwartek
379	niedziela
379	piątek
379	poniedziałek
379	sobota
379	wtorek
379	środa
380	czwartek
380	niedziela
380	piątek
380	poniedziałek
380	sobota
380	wtorek
380	środa
381	czwartek
381	niedziela
381	piątek
381	poniedziałek
381	sobota
381	wtorek
381	środa
382	czwartek
382	niedziela
382	piątek
382	poniedziałek
382	sobota
382	wtorek
382	środa
383	czwartek
383	niedziela
383	piątek
383	poniedziałek
383	sobota
383	wtorek
383	środa
384	czwartek
384	niedziela
384	piątek
384	poniedziałek
384	sobota
384	wtorek
384	środa
385	czwartek
385	niedziela
385	piątek
385	poniedziałek
385	sobota
385	wtorek
385	środa
386	czwartek
386	niedziela
386	piątek
386	poniedziałek
386	sobota
386	wtorek
386	środa
387	czwartek
387	niedziela
387	piątek
387	poniedziałek
387	sobota
387	wtorek
387	środa
388	czwartek
388	niedziela
388	piątek
388	poniedziałek
388	sobota
388	wtorek
388	środa
389	czwartek
389	niedziela
389	piątek
389	poniedziałek
389	sobota
389	wtorek
389	środa
390	czwartek
390	niedziela
390	piątek
390	poniedziałek
390	sobota
390	wtorek
390	środa
391	czwartek
391	niedziela
391	piątek
391	poniedziałek
391	sobota
391	wtorek
391	środa
392	czwartek
392	niedziela
392	piątek
392	poniedziałek
392	sobota
392	wtorek
392	środa
393	czwartek
393	niedziela
393	piątek
393	poniedziałek
393	sobota
393	wtorek
393	środa
394	czwartek
394	niedziela
394	piątek
394	poniedziałek
394	sobota
394	wtorek
394	środa
395	czwartek
395	niedziela
395	piątek
395	poniedziałek
395	sobota
395	wtorek
395	środa
396	czwartek
396	niedziela
396	piątek
396	poniedziałek
396	sobota
396	wtorek
396	środa
397	czwartek
397	niedziela
397	piątek
397	poniedziałek
397	wtorek
397	środa
398	czwartek
398	niedziela
398	piątek
398	poniedziałek
398	sobota
398	wtorek
398	środa
399	czwartek
399	niedziela
399	piątek
399	poniedziałek
399	sobota
399	wtorek
399	środa
401	czwartek
401	niedziela
401	piątek
401	poniedziałek
401	sobota
401	wtorek
401	środa
402	czwartek
402	niedziela
402	piątek
402	poniedziałek
402	sobota
402	wtorek
402	środa
403	czwartek
403	niedziela
403	piątek
403	poniedziałek
403	sobota
403	wtorek
403	środa
404	czwartek
404	piątek
404	poniedziałek
404	wtorek
404	środa
406	czwartek
406	niedziela
406	piątek
406	poniedziałek
406	sobota
406	wtorek
406	środa
407	czwartek
407	piątek
407	poniedziałek
407	wtorek
407	środa
408	czwartek
408	niedziela
408	piątek
408	poniedziałek
408	sobota
408	wtorek
408	środa
409	czwartek
409	piątek
409	poniedziałek
409	sobota
409	wtorek
409	środa
410	czwartek
410	niedziela
410	piątek
410	poniedziałek
410	sobota
410	wtorek
410	środa
411	czwartek
411	niedziela
411	piątek
411	poniedziałek
411	sobota
411	wtorek
411	środa
412	czwartek
412	niedziela
412	piątek
412	poniedziałek
412	sobota
412	wtorek
412	środa
413	czwartek
413	niedziela
413	piątek
413	poniedziałek
413	sobota
413	wtorek
413	środa
414	czwartek
414	niedziela
414	piątek
414	poniedziałek
414	sobota
414	wtorek
414	środa
415	czwartek
415	niedziela
415	piątek
415	poniedziałek
415	sobota
415	wtorek
415	środa
416	czwartek
416	niedziela
416	piątek
416	poniedziałek
416	sobota
416	wtorek
416	środa
417	czwartek
417	niedziela
417	piątek
417	poniedziałek
417	sobota
417	wtorek
417	środa
418	czwartek
418	niedziela
418	piątek
418	poniedziałek
418	sobota
418	wtorek
418	środa
419	czwartek
419	niedziela
419	piątek
419	poniedziałek
419	sobota
419	wtorek
419	środa
420	czwartek
420	niedziela
420	piątek
420	poniedziałek
420	sobota
420	wtorek
420	środa
421	czwartek
421	piątek
421	poniedziałek
421	wtorek
421	środa
422	czwartek
422	niedziela
422	piątek
422	poniedziałek
422	sobota
422	wtorek
422	środa
423	czwartek
423	niedziela
423	piątek
423	poniedziałek
423	sobota
423	wtorek
423	środa
424	czwartek
424	niedziela
424	piątek
424	poniedziałek
424	sobota
424	wtorek
424	środa
425	czwartek
425	niedziela
425	piątek
425	poniedziałek
425	sobota
425	wtorek
425	środa
427	czwartek
427	niedziela
427	piątek
427	poniedziałek
427	sobota
427	wtorek
427	środa
429	czwartek
429	niedziela
429	piątek
429	poniedziałek
429	sobota
429	wtorek
429	środa
430	czwartek
430	niedziela
430	piątek
430	poniedziałek
430	sobota
430	wtorek
430	środa
431	czwartek
431	niedziela
431	piątek
431	poniedziałek
431	sobota
431	wtorek
431	środa
432	czwartek
432	niedziela
432	piątek
432	poniedziałek
432	sobota
432	wtorek
432	środa
433	czwartek
433	niedziela
433	piątek
433	poniedziałek
433	sobota
433	wtorek
433	środa
434	czwartek
434	niedziela
434	piątek
434	poniedziałek
434	sobota
434	wtorek
434	środa
437	czwartek
437	niedziela
437	piątek
437	poniedziałek
437	sobota
437	wtorek
437	środa
438	czwartek
438	niedziela
438	piątek
438	poniedziałek
438	sobota
438	wtorek
438	środa
439	czwartek
439	niedziela
439	piątek
439	poniedziałek
439	sobota
439	wtorek
439	środa
440	czwartek
440	niedziela
440	piątek
440	poniedziałek
440	sobota
440	wtorek
440	środa
441	czwartek
441	niedziela
441	piątek
441	poniedziałek
441	sobota
441	wtorek
441	środa
442	czwartek
442	niedziela
442	piątek
442	poniedziałek
442	sobota
442	wtorek
442	środa
443	czwartek
443	niedziela
443	piątek
443	poniedziałek
443	sobota
443	wtorek
443	środa
444	czwartek
444	niedziela
444	piątek
444	poniedziałek
444	sobota
444	wtorek
444	środa
446	czwartek
446	niedziela
446	piątek
446	poniedziałek
446	sobota
446	wtorek
446	środa
449	czwartek
449	niedziela
449	piątek
449	poniedziałek
449	sobota
449	wtorek
449	środa
450	czwartek
450	niedziela
450	piątek
450	poniedziałek
450	sobota
450	wtorek
450	środa
451	czwartek
451	niedziela
451	piątek
451	poniedziałek
451	sobota
451	wtorek
451	środa
452	czwartek
452	niedziela
452	piątek
452	poniedziałek
452	sobota
452	wtorek
452	środa
453	czwartek
453	niedziela
453	piątek
453	poniedziałek
453	sobota
453	wtorek
453	środa
454	czwartek
454	niedziela
454	piątek
454	poniedziałek
454	sobota
454	wtorek
454	środa
455	czwartek
455	niedziela
455	piątek
455	poniedziałek
455	sobota
455	wtorek
455	środa
458	czwartek
458	niedziela
458	piątek
458	poniedziałek
458	sobota
458	wtorek
458	środa
460	czwartek
460	niedziela
460	piątek
460	poniedziałek
460	sobota
460	wtorek
460	środa
462	czwartek
462	piątek
462	poniedziałek
462	sobota
462	wtorek
462	środa
463	czwartek
463	niedziela
463	piątek
463	poniedziałek
463	sobota
463	wtorek
463	środa
464	czwartek
464	niedziela
464	piątek
464	poniedziałek
464	sobota
464	wtorek
464	środa
465	czwartek
465	niedziela
465	piątek
465	poniedziałek
465	sobota
465	wtorek
465	środa
466	czwartek
466	niedziela
466	piątek
466	poniedziałek
466	sobota
466	wtorek
466	środa
467	czwartek
467	niedziela
467	piątek
467	poniedziałek
467	sobota
467	wtorek
467	środa
468	czwartek
468	niedziela
468	piątek
468	poniedziałek
468	sobota
468	wtorek
468	środa
469	czwartek
469	niedziela
469	piątek
469	poniedziałek
469	sobota
469	wtorek
469	środa
470	czwartek
470	niedziela
470	piątek
470	poniedziałek
470	sobota
470	wtorek
470	środa
471	czwartek
471	niedziela
471	piątek
471	poniedziałek
471	sobota
471	wtorek
471	środa
473	czwartek
473	niedziela
473	piątek
473	poniedziałek
473	sobota
473	wtorek
473	środa
474	czwartek
474	niedziela
474	piątek
474	poniedziałek
474	sobota
474	wtorek
474	środa
475	czwartek
475	niedziela
475	piątek
475	poniedziałek
475	sobota
475	wtorek
475	środa
476	czwartek
476	niedziela
476	piątek
476	poniedziałek
476	sobota
476	wtorek
476	środa
477	czwartek
477	niedziela
477	piątek
477	poniedziałek
477	sobota
477	wtorek
477	środa
479	czwartek
479	niedziela
479	piątek
479	poniedziałek
479	sobota
479	wtorek
479	środa
482	czwartek
482	niedziela
482	piątek
482	poniedziałek
482	sobota
482	wtorek
482	środa
483	czwartek
483	niedziela
483	piątek
483	poniedziałek
483	sobota
483	wtorek
483	środa
484	czwartek
484	niedziela
484	piątek
484	poniedziałek
484	sobota
484	wtorek
484	środa
485	czwartek
485	niedziela
485	piątek
485	poniedziałek
485	sobota
485	wtorek
485	środa
486	czwartek
486	niedziela
486	piątek
486	poniedziałek
486	sobota
486	wtorek
486	środa
487	czwartek
487	niedziela
487	piątek
487	poniedziałek
487	sobota
487	wtorek
487	środa
488	czwartek
488	niedziela
488	piątek
488	poniedziałek
488	sobota
488	wtorek
488	środa
489	czwartek
489	piątek
489	poniedziałek
489	wtorek
489	środa
490	czwartek
490	niedziela
490	piątek
490	poniedziałek
490	sobota
490	wtorek
490	środa
491	czwartek
491	piątek
491	poniedziałek
491	sobota
491	wtorek
491	środa
496	czwartek
496	niedziela
496	piątek
496	poniedziałek
496	sobota
496	wtorek
496	środa
499	czwartek
499	niedziela
499	piątek
499	poniedziałek
499	sobota
499	wtorek
499	środa
500	czwartek
500	niedziela
500	piątek
500	poniedziałek
500	sobota
500	wtorek
500	środa
501	czwartek
501	niedziela
501	piątek
501	poniedziałek
501	sobota
501	wtorek
501	środa
502	czwartek
502	niedziela
502	piątek
502	poniedziałek
502	sobota
502	wtorek
502	środa
504	czwartek
504	niedziela
504	piątek
504	poniedziałek
504	sobota
504	wtorek
504	środa
505	czwartek
505	niedziela
505	piątek
505	poniedziałek
505	sobota
505	wtorek
505	środa
507	czwartek
507	niedziela
507	piątek
507	poniedziałek
507	sobota
507	wtorek
507	środa
508	czwartek
508	niedziela
508	piątek
508	poniedziałek
508	sobota
508	wtorek
508	środa
510	czwartek
510	niedziela
510	piątek
510	poniedziałek
510	sobota
510	wtorek
510	środa
511	czwartek
511	niedziela
511	piątek
511	poniedziałek
511	sobota
511	wtorek
511	środa
512	czwartek
512	niedziela
512	piątek
512	poniedziałek
512	sobota
512	wtorek
512	środa
514	czwartek
514	niedziela
514	piątek
514	poniedziałek
514	sobota
514	wtorek
514	środa
516	czwartek
516	niedziela
516	piątek
516	poniedziałek
516	sobota
516	wtorek
516	środa
518	czwartek
518	niedziela
518	piątek
518	poniedziałek
518	sobota
518	wtorek
518	środa
519	czwartek
519	niedziela
519	piątek
519	poniedziałek
519	sobota
519	wtorek
519	środa
520	czwartek
520	niedziela
520	piątek
520	poniedziałek
520	sobota
520	wtorek
520	środa
521	czwartek
521	niedziela
521	piątek
521	poniedziałek
521	sobota
521	wtorek
521	środa
523	czwartek
523	niedziela
523	piątek
523	poniedziałek
523	sobota
523	wtorek
523	środa
525	czwartek
525	niedziela
525	piątek
525	poniedziałek
525	sobota
525	wtorek
525	środa
526	czwartek
526	niedziela
526	piątek
526	poniedziałek
526	sobota
526	wtorek
526	środa
527	czwartek
527	niedziela
527	piątek
527	poniedziałek
527	sobota
527	wtorek
527	środa
528	czwartek
528	niedziela
528	piątek
528	poniedziałek
528	sobota
528	wtorek
528	środa
531	czwartek
531	niedziela
531	piątek
531	poniedziałek
531	sobota
531	wtorek
531	środa
533	czwartek
533	niedziela
533	piątek
533	poniedziałek
533	sobota
533	wtorek
533	środa
535	czwartek
535	niedziela
535	piątek
535	poniedziałek
535	sobota
535	wtorek
535	środa
536	czwartek
536	niedziela
536	piątek
536	poniedziałek
536	sobota
536	wtorek
536	środa
538	czwartek
538	niedziela
538	piątek
538	poniedziałek
538	sobota
538	wtorek
538	środa
539	czwartek
539	niedziela
539	piątek
539	poniedziałek
539	sobota
539	wtorek
539	środa
543	czwartek
543	niedziela
543	piątek
543	poniedziałek
543	sobota
543	wtorek
543	środa
544	czwartek
544	piątek
544	poniedziałek
544	sobota
544	wtorek
544	środa
545	czwartek
545	niedziela
545	piątek
545	poniedziałek
545	sobota
545	wtorek
545	środa
546	czwartek
546	niedziela
546	piątek
546	poniedziałek
546	sobota
546	wtorek
546	środa
547	czwartek
547	niedziela
547	piątek
547	poniedziałek
547	sobota
547	wtorek
547	środa
548	czwartek
548	niedziela
548	piątek
548	poniedziałek
548	wtorek
548	środa
549	czwartek
549	niedziela
549	piątek
549	poniedziałek
549	sobota
549	wtorek
549	środa
550	czwartek
550	niedziela
550	piątek
550	poniedziałek
550	sobota
550	wtorek
550	środa
556	czwartek
556	niedziela
556	piątek
556	poniedziałek
556	sobota
556	wtorek
556	środa
557	czwartek
557	niedziela
557	piątek
557	poniedziałek
557	sobota
557	wtorek
557	środa
558	czwartek
558	niedziela
558	piątek
558	poniedziałek
558	sobota
558	wtorek
558	środa
561	czwartek
561	niedziela
561	piątek
561	poniedziałek
561	sobota
561	wtorek
561	środa
562	czwartek
562	niedziela
562	piątek
562	poniedziałek
562	sobota
562	wtorek
562	środa
564	czwartek
564	niedziela
564	piątek
564	poniedziałek
564	sobota
564	wtorek
564	środa
566	czwartek
566	niedziela
566	piątek
566	poniedziałek
566	sobota
566	wtorek
566	środa
567	czwartek
567	niedziela
567	piątek
567	poniedziałek
567	sobota
567	wtorek
567	środa
569	czwartek
569	niedziela
569	piątek
569	poniedziałek
569	sobota
569	wtorek
569	środa
570	czwartek
570	niedziela
570	piątek
570	poniedziałek
570	sobota
570	wtorek
570	środa
572	czwartek
572	niedziela
572	piątek
572	poniedziałek
572	sobota
572	wtorek
572	środa
573	czwartek
573	niedziela
573	piątek
573	poniedziałek
573	sobota
573	wtorek
573	środa
574	czwartek
574	niedziela
574	piątek
574	poniedziałek
574	sobota
574	wtorek
574	środa
575	czwartek
575	niedziela
575	piątek
575	poniedziałek
575	sobota
575	wtorek
575	środa
576	czwartek
576	niedziela
576	piątek
576	poniedziałek
576	sobota
576	wtorek
576	środa
580	czwartek
580	piątek
580	poniedziałek
580	sobota
580	wtorek
580	środa
583	czwartek
583	niedziela
583	piątek
583	poniedziałek
583	sobota
583	wtorek
583	środa
584	czwartek
584	niedziela
584	piątek
584	poniedziałek
584	sobota
584	wtorek
584	środa
585	czwartek
585	niedziela
585	piątek
585	poniedziałek
585	sobota
585	wtorek
585	środa
588	czwartek
588	niedziela
588	piątek
588	poniedziałek
588	sobota
588	wtorek
588	środa
589	czwartek
589	niedziela
589	piątek
589	poniedziałek
589	sobota
589	wtorek
589	środa
590	czwartek
590	niedziela
590	piątek
590	poniedziałek
590	sobota
590	wtorek
590	środa
592	czwartek
592	niedziela
592	piątek
592	poniedziałek
592	sobota
592	wtorek
592	środa
593	czwartek
593	niedziela
593	piątek
593	poniedziałek
593	sobota
593	wtorek
593	środa
594	czwartek
594	niedziela
594	piątek
594	poniedziałek
594	sobota
594	wtorek
594	środa
\.

COPY przejazdy (id_trasy, id_pociagu, data_przejazdu) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
8	8	2026-05-09
8	8	2026-05-11
8	8	2026-05-16
8	8	2026-05-18
8	8	2026-05-23
8	8	2026-05-25
8	8	2026-05-30
8	8	2026-06-01
8	8	2026-06-04
8	8	2026-06-08
13	13	2026-05-09
13	13	2026-05-10
13	13	2026-05-16
13	13	2026-05-17
13	13	2026-05-23
13	13	2026-05-24
13	13	2026-05-30
13	13	2026-05-31
13	13	2026-06-04
13	13	2026-06-06
13	13	2026-06-07
15	15	2026-05-09
15	15	2026-05-11
15	15	2026-05-16
15	15	2026-05-18
15	15	2026-05-23
15	15	2026-05-25
15	15	2026-05-30
15	15	2026-06-01
15	15	2026-06-04
15	15	2026-06-08
40	40	2026-05-10
40	40	2026-05-15
40	40	2026-05-17
40	40	2026-05-22
40	40	2026-05-24
40	40	2026-05-29
40	40	2026-05-31
40	40	2026-06-03
40	40	2026-06-07
64	64	2026-05-10
64	64	2026-05-15
64	64	2026-05-17
64	64	2026-05-22
64	64	2026-05-24
64	64	2026-05-29
64	64	2026-05-31
64	64	2026-06-03
64	64	2026-06-07
76	76	2026-05-10
76	76	2026-05-15
76	76	2026-05-17
76	76	2026-05-22
76	76	2026-05-24
76	76	2026-05-29
76	76	2026-05-31
76	76	2026-06-03
76	76	2026-06-07
88	88	2026-05-29
88	88	2026-05-30
88	88	2026-05-31
88	88	2026-06-01
88	88	2026-06-02
88	88	2026-06-03
88	88	2026-06-04
88	88	2026-06-05
88	88	2026-06-06
88	88	2026-06-07
88	88	2026-06-08
88	88	2026-06-09
98	98	2026-05-23
98	98	2026-05-24
113	113	2026-05-09
113	113	2026-05-10
113	113	2026-05-16
113	113	2026-05-17
113	113	2026-05-23
113	113	2026-05-24
113	113	2026-05-30
113	113	2026-05-31
113	113	2026-06-04
113	113	2026-06-06
113	113	2026-06-07
131	131	2026-05-10
131	131	2026-05-15
131	131	2026-05-17
131	131	2026-05-22
131	131	2026-05-24
131	131	2026-05-29
131	131	2026-05-31
131	131	2026-06-03
131	131	2026-06-07
133	133	2026-05-09
133	133	2026-05-16
133	133	2026-05-23
133	133	2026-05-30
133	133	2026-06-06
173	173	2026-05-10
173	173	2026-05-11
173	173	2026-05-12
173	173	2026-05-13
173	173	2026-05-14
173	173	2026-05-17
173	173	2026-05-18
173	173	2026-05-19
173	173	2026-05-20
173	173	2026-05-21
188	188	2026-05-10
188	188	2026-05-15
188	188	2026-05-17
188	188	2026-05-22
188	188	2026-05-24
188	188	2026-05-29
188	188	2026-05-31
188	188	2026-06-03
188	188	2026-06-07
198	198	2026-05-10
198	198	2026-05-11
198	198	2026-05-12
198	198	2026-05-13
198	198	2026-05-14
198	198	2026-05-17
198	198	2026-05-18
198	198	2026-05-19
198	198	2026-05-20
198	198	2026-05-21
203	203	2026-05-10
203	203	2026-05-11
203	203	2026-05-12
203	203	2026-05-13
203	203	2026-05-14
203	203	2026-05-17
203	203	2026-05-18
203	203	2026-05-19
203	203	2026-05-20
203	203	2026-05-21
220	220	2026-05-09
220	220	2026-05-10
220	220	2026-05-16
220	220	2026-05-17
220	220	2026-05-23
220	220	2026-05-24
220	220	2026-05-30
220	220	2026-05-31
220	220	2026-06-04
220	220	2026-06-05
220	220	2026-06-06
220	220	2026-06-07
221	221	2026-05-09
221	221	2026-05-10
221	221	2026-05-16
221	221	2026-05-17
221	221	2026-05-23
221	221	2026-05-24
221	221	2026-05-30
221	221	2026-05-31
221	221	2026-06-04
221	221	2026-06-06
221	221	2026-06-07
230	230	2026-05-09
230	230	2026-05-10
230	230	2026-05-11
230	230	2026-05-12
230	230	2026-05-13
230	230	2026-05-14
230	230	2026-05-15
236	236	2026-05-10
236	236	2026-05-11
236	236	2026-05-12
236	236	2026-05-13
236	236	2026-05-14
236	236	2026-05-17
236	236	2026-05-18
236	236	2026-05-19
236	236	2026-05-20
236	236	2026-05-21
246	246	2026-05-09
246	246	2026-05-10
246	246	2026-05-11
246	246	2026-05-12
246	246	2026-05-13
246	246	2026-05-14
246	246	2026-05-15
246	246	2026-05-16
246	246	2026-05-17
246	246	2026-05-18
248	248	2026-05-23
248	248	2026-05-24
254	254	2026-05-09
254	254	2026-05-10
254	254	2026-05-16
254	254	2026-05-17
254	254	2026-05-23
254	254	2026-05-24
254	254	2026-05-30
254	254	2026-05-31
254	254	2026-06-04
254	254	2026-06-06
254	254	2026-06-07
270	270	2026-06-07
272	272	2026-05-10
272	272	2026-05-17
272	272	2026-05-24
272	272	2026-05-31
272	272	2026-06-07
275	275	2026-05-09
275	275	2026-05-16
275	275	2026-05-23
275	275	2026-05-30
275	275	2026-06-04
275	275	2026-06-06
290	290	2026-05-09
290	290	2026-05-10
290	290	2026-05-11
290	290	2026-05-12
290	290	2026-05-13
290	290	2026-05-14
290	290	2026-05-15
290	290	2026-05-16
290	290	2026-05-17
290	290	2026-05-18
297	297	2026-05-09
297	297	2026-05-10
297	297	2026-05-11
297	297	2026-05-12
297	297	2026-05-13
297	297	2026-05-14
297	297	2026-05-15
297	297	2026-05-16
297	297	2026-05-17
297	297	2026-05-18
306	306	2026-06-07
311	311	2026-05-15
315	315	2026-05-10
315	315	2026-05-17
315	315	2026-05-24
315	315	2026-05-31
315	315	2026-06-07
321	321	2026-05-10
321	321	2026-05-17
321	321	2026-05-24
321	321	2026-05-31
321	321	2026-06-04
321	321	2026-06-07
326	326	2026-05-10
326	326	2026-05-15
326	326	2026-05-17
326	326	2026-05-22
326	326	2026-05-24
326	326	2026-05-29
326	326	2026-05-31
326	326	2026-06-03
326	326	2026-06-07
356	356	2026-06-07
358	358	2026-05-23
358	358	2026-05-24
371	371	2026-06-06
371	371	2026-06-07
375	375	2026-05-09
375	375	2026-05-10
375	375	2026-05-16
375	375	2026-05-17
375	375	2026-05-23
375	375	2026-05-24
375	375	2026-05-30
375	375	2026-05-31
375	375	2026-06-04
375	375	2026-06-06
375	375	2026-06-07
400	400	2026-05-29
405	405	2026-05-09
405	405	2026-05-10
426	426	2026-05-30
426	426	2026-05-31
426	426	2026-06-04
426	426	2026-06-06
426	426	2026-06-07
428	428	2026-06-03
435	435	2026-05-09
436	436	2026-05-10
436	436	2026-05-15
436	436	2026-05-17
436	436	2026-05-22
436	436	2026-05-24
436	436	2026-05-29
436	436	2026-05-31
436	436	2026-06-03
436	436	2026-06-07
445	445	2026-05-29
445	445	2026-05-30
445	445	2026-05-31
445	445	2026-06-01
445	445	2026-06-02
445	445	2026-06-03
445	445	2026-06-04
445	445	2026-06-05
445	445	2026-06-06
445	445	2026-06-07
445	445	2026-06-08
445	445	2026-06-09
447	447	2026-06-07
448	448	2026-05-23
448	448	2026-05-24
456	456	2026-05-23
456	456	2026-05-24
457	457	2026-05-23
457	457	2026-05-24
459	459	2026-05-10
459	459	2026-05-17
459	459	2026-05-24
459	459	2026-05-31
459	459	2026-06-07
461	461	2026-05-16
472	472	2026-05-17
478	478	2026-05-09
478	478	2026-05-10
478	478	2026-05-16
478	478	2026-05-17
478	478	2026-05-23
478	478	2026-05-24
478	478	2026-05-30
478	478	2026-05-31
478	478	2026-06-04
478	478	2026-06-06
478	478	2026-06-07
480	480	2026-05-23
480	480	2026-05-24
481	481	2026-05-09
481	481	2026-05-10
481	481	2026-05-11
481	481	2026-05-12
481	481	2026-05-13
481	481	2026-05-14
481	481	2026-05-15
492	492	2026-05-10
492	492	2026-05-15
492	492	2026-05-17
492	492	2026-05-22
492	492	2026-05-24
492	492	2026-05-29
492	492	2026-05-31
492	492	2026-06-03
492	492	2026-06-07
493	493	2026-05-09
493	493	2026-05-10
493	493	2026-05-16
493	493	2026-05-17
493	493	2026-05-23
493	493	2026-05-24
494	494	2026-06-05
494	494	2026-06-06
494	494	2026-06-07
495	495	2026-05-10
495	495	2026-05-17
495	495	2026-05-24
495	495	2026-05-31
495	495	2026-06-04
495	495	2026-06-07
497	497	2026-05-09
497	497	2026-05-10
497	497	2026-05-16
497	497	2026-05-17
497	497	2026-05-23
497	497	2026-05-24
497	497	2026-05-30
497	497	2026-05-31
497	497	2026-06-04
497	497	2026-06-06
497	497	2026-06-07
498	498	2026-05-23
498	498	2026-05-24
503	503	2026-05-09
503	503	2026-05-10
506	506	2026-05-10
506	506	2026-05-15
506	506	2026-05-17
506	506	2026-05-22
506	506	2026-05-24
506	506	2026-05-29
506	506	2026-05-31
506	506	2026-06-03
506	506	2026-06-07
509	509	2026-06-08
513	513	2026-06-07
515	515	2026-05-09
515	515	2026-05-10
515	515	2026-05-16
515	515	2026-05-17
515	515	2026-05-23
515	515	2026-05-24
515	515	2026-05-30
515	515	2026-05-31
515	515	2026-06-04
515	515	2026-06-06
515	515	2026-06-07
517	517	2026-05-09
517	517	2026-05-10
522	522	2026-05-12
522	522	2026-05-13
522	522	2026-05-19
522	522	2026-05-20
522	522	2026-05-21
522	522	2026-05-22
522	522	2026-05-27
522	522	2026-05-28
524	524	2026-06-03
529	529	2026-05-30
529	529	2026-05-31
529	529	2026-06-01
529	529	2026-06-02
529	529	2026-06-03
529	529	2026-06-04
529	529	2026-06-05
529	529	2026-06-06
529	529	2026-06-07
529	529	2026-06-08
529	529	2026-06-09
530	530	2026-05-09
530	530	2026-05-10
530	530	2026-05-16
530	530	2026-05-17
530	530	2026-05-23
530	530	2026-05-24
530	530	2026-05-30
530	530	2026-05-31
530	530	2026-06-04
530	530	2026-06-05
530	530	2026-06-06
530	530	2026-06-07
532	532	2026-05-23
532	532	2026-05-24
534	534	2026-06-01
534	534	2026-06-02
534	534	2026-06-03
534	534	2026-06-04
534	534	2026-06-05
534	534	2026-06-06
534	534	2026-06-07
534	534	2026-06-08
534	534	2026-06-09
537	537	2026-06-07
540	540	2026-05-09
540	540	2026-05-10
540	540	2026-05-16
540	540	2026-05-17
540	540	2026-05-23
540	540	2026-05-24
540	540	2026-05-30
540	540	2026-05-31
540	540	2026-06-04
540	540	2026-06-06
540	540	2026-06-07
541	541	2026-06-07
542	542	2026-05-30
551	551	2026-05-23
551	551	2026-05-24
552	552	2026-06-07
553	553	2026-06-03
554	554	2026-05-23
554	554	2026-05-24
555	555	2026-05-31
559	559	2026-05-09
559	559	2026-05-10
559	559	2026-05-11
559	559	2026-05-12
559	559	2026-05-13
559	559	2026-05-14
559	559	2026-05-15
559	559	2026-05-16
559	559	2026-05-17
559	559	2026-05-18
560	560	2026-05-09
560	560	2026-05-10
563	563	2026-05-09
563	563	2026-05-10
565	565	2026-05-23
565	565	2026-05-24
568	568	2026-06-01
571	571	2026-06-08
577	577	2026-05-23
577	577	2026-05-24
578	578	2026-05-30
579	579	2026-05-09
581	581	2026-05-29
581	581	2026-05-30
581	581	2026-05-31
581	581	2026-06-01
581	581	2026-06-02
581	581	2026-06-03
581	581	2026-06-04
581	581	2026-06-05
581	581	2026-06-06
581	581	2026-06-07
581	581	2026-06-08
581	581	2026-06-09
582	582	2026-05-11
582	582	2026-05-12
582	582	2026-05-18
582	582	2026-05-19
582	582	2026-05-20
582	582	2026-05-21
582	582	2026-05-26
582	582	2026-05-27
586	586	2026-05-09
586	586	2026-05-10
586	586	2026-05-16
586	586	2026-05-17
586	586	2026-05-23
586	586	2026-05-24
586	586	2026-05-30
586	586	2026-05-31
586	586	2026-06-04
586	586	2026-06-06
586	586	2026-06-07
587	587	2026-06-07
591	591	2026-05-23
591	591	2026-05-24
\.

COPY postoje (id_trasy, numer_postoju, id_peronu_toru, dzien_przyjazdu_offset, dzien_odjazdu_offset, godzina_przyjazdu, godzina_odjazdu) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	1	4313	0	0		04:41:00
1	2	4305	0	0	05:02:30	05:03:30
1	3	4278	0	0	05:21:00	05:24:00
1	4	4239	0	0	05:37:00	05:41:00
1	5	4235	0	0	05:53:30	05:55:30
1	6	4229	0	0	06:02:30	06:07:30
1	7	4690	0	0	06:39:00	06:58:00
1	8	4515	0	0	07:14:00	07:15:00
1	9	4857	0	0	07:23:00	07:25:00
1	10	4738	0	0	07:46:00	07:50:00
1	11	5371	0	0	08:21:30	08:23:30
1	12	4903	0	0	08:43:30	08:55:00
1	13	2753	0	0	10:48:30	10:52:00
1	14	2770	0	0	10:56:00	11:13:00
1	15	3031	0	0	11:19:00	
2	1	4589	0	0		07:15:00
2	2	4635	0	0	07:22:00	07:23:00
2	3	5637	0	0	07:26:00	07:27:00
2	4	5596	0	0	07:30:30	07:31:30
2	5	5574	0	0	07:35:30	07:38:30
2	6	5370	0	0	07:53:00	07:54:00
2	7	978	0	0	08:59:00	09:02:00
2	8	1008	0	0	09:28:00	09:29:00
2	9	2533	0	0	09:57:00	09:58:00
2	10	2513	0	0	10:24:00	10:27:00
2	11	1820	0	0	11:10:00	11:11:00
2	12	2318	0	0	11:23:00	11:24:00
2	13	1752	0	0	11:47:00	11:50:00
2	14	925	0	0	12:09:00	12:12:00
2	15	1611	0	0	13:06:00	13:09:00
2	16	1630	0	0	13:16:00	
3	1	4011	0	0		05:10:00
3	2	4089	0	0	05:36:30	05:37:30
3	3	5088	0	0	06:00:00	06:03:30
3	4	5057	0	0	06:20:00	06:21:00
3	5	5060	0	0	06:23:30	06:24:30
3	6	5070	0	0	06:32:00	06:33:00
3	7	5078	0	0	06:41:30	06:42:30
3	8	6289	0	0	06:53:30	06:54:30
3	9	6286	0	0	07:01:00	07:02:00
3	10	6265	0	0	07:34:00	07:35:00
3	11	6214	0	0	07:46:00	07:49:00
3	12	6091	0	0	08:02:30	08:03:30
3	13	6086	0	0	08:08:30	08:09:30
3	14	6084	0	0	08:16:30	08:17:30
3	15	6039	0	0	08:33:30	08:40:00
3	16	5973	0	0	08:53:30	08:54:30
3	17	5961	0	0	09:01:30	09:02:30
3	18	5979	0	0	09:19:30	09:19:30
3	19	6027	0	0	09:25:00	
4	1	4011	0	0		06:00:00
4	2	1881	0	0	06:04:30	06:05:30
4	3	3987	0	0	06:17:00	06:18:00
4	4	3978	0	0	06:27:30	06:28:30
4	5	3838	0	0	06:58:00	07:00:00
4	6	3792	0	0	07:14:00	07:15:00
4	7	4974	0	0	09:03:00	09:25:00
4	8	5022	0	0	09:53:30	09:54:30
4	9	5015	0	0	10:07:30	10:12:30
4	10	5020	0	0	10:18:00	10:18:30
4	11	5018	0	0	10:23:00	10:38:00
4	12	5033	0	0	10:43:12	10:43:42
4	13	5948	0	0	10:48:36	10:49:06
4	14	5945	0	0	10:54:00	11:02:12
4	15	5943	0	0	11:06:00	11:06:30
4	16	5941	0	0	11:10:00	11:10:30
4	17	5939	0	0	11:12:42	11:13:12
4	18	5938	0	0	11:17:06	11:17:36
4	19	5936	0	0	11:19:54	11:20:24
4	20	5934	0	0	11:24:30	11:34:30
4	21	5931	0	0	11:37:48	11:38:18
4	22	5930	0	0	11:40:42	11:41:12
4	23	5927	0	0	11:43:54	11:44:24
4	24	5925	0	0	11:49:00	11:49:30
4	25	2287	0	0	11:53:42	11:54:12
4	26	5922	0	0	11:56:24	11:56:54
4	27	6029	0	0	12:04:00	
5	1	3032	0	0		08:09:00
5	2	2768	0	0	08:15:00	08:28:00
5	3	2753	0	0	08:32:00	08:33:00
5	4	3874	0	0	09:30:00	09:36:00
5	5	5053	0	0	10:02:30	10:03:30
5	6	5594	0	0	10:33:30	10:34:30
5	7	5556	0	0	10:55:00	10:56:00
5	8	5564	0	0	11:04:30	11:05:30
5	9	5477	0	0	11:20:00	11:23:00
5	10	5447	0	0	11:32:30	11:36:00
5	11	5515	0	0	11:45:00	11:47:00
5	12	5645	0	0	12:05:00	12:06:30
5	13	5610	0	0	12:47:00	12:48:00
5	14	938	0	0	13:09:00	13:34:00
5	15	250	0	0	13:41:00	13:43:00
5	16	252	0	0	13:49:00	13:51:00
5	17	241	0	0	14:18:00	14:20:00
5	18	257	0	0	14:40:00	14:42:00
5	19	266	0	0	14:57:00	14:59:00
5	20	267	0	0	15:09:00	15:11:00
5	21	243	0	0	15:27:00	15:29:00
5	22	233	0	0	15:40:00	15:53:00
5	23	371	0	0	16:05:00	16:09:00
5	24	373	0	0	17:07:00	17:17:00
5	25	376	0	0	18:09:00	18:11:00
5	26	377	0	0	18:37:00	18:40:00
5	27	362	0	0	18:50:00	18:51:00
5	28	360	0	0	19:01:00	19:02:00
5	29	358	0	0	19:15:00	19:23:00
5	30	356	0	0	19:49:00	
6	1	6345	0	0		19:47:00
6	2	6347	0	0	19:49:30	19:50:30
6	3	6294	0	0	20:11:00	20:13:00
6	4	6276	0	0	20:22:00	20:25:00
6	5	6265	0	0	20:37:00	20:40:30
6	6	6213	0	0	20:52:00	20:55:00
6	7	6084	0	0	21:17:12	21:18:12
6	8	6039	0	0	21:36:00	21:37:00
6	9	5962	0	0	21:55:24	21:56:24
6	10	5979	0	0	22:12:30	22:13:30
6	11	6027	0	0	22:17:36	
7	1	6429	0	0		09:53:00
7	2	6435	0	0	09:56:00	09:57:00
7	3	1282	0	0	10:24:00	10:25:00
7	4	1255	0	0	10:46:00	10:47:00
7	5	1189	0	0	11:07:30	11:08:30
7	6	1180	0	0	11:20:00	11:21:00
7	7	1175	0	0	11:29:00	11:30:00
7	8	1103	0	0	11:43:30	11:44:30
7	9	1096	0	0	11:48:00	11:49:00
7	10	1084	0	0	11:52:30	11:54:30
7	11	1007	0	0	12:17:30	12:22:00
7	12	2599	0	0	12:37:00	12:38:00
7	13	2534	0	0	12:52:30	12:55:00
7	14	2515	0	0	13:20:00	
8	1	4682	0	0		05:46:00
8	2	4737	0	0	06:31:00	06:35:00
8	3	4843	0	0	06:47:30	06:48:30
8	4	5167	0	0	06:55:30	06:56:30
8	5	5165	0	0	07:04:00	07:05:00
8	6	5238	0	0	07:40:00	07:41:00
8	7	5297	0	0	07:51:00	07:52:00
8	8	5657	0	0	08:25:00	08:28:00
8	9	5775	0	0	08:44:00	08:45:00
8	10	5980	0	0	09:35:00	
9	1	6031	0	0		11:28:00
9	2	2753	0	0	14:14:30	14:15:30
9	3	2771	0	0	14:20:00	14:29:00
9	4	3032	0	0	14:35:00	14:37:00
9	5	1255	0	0	16:02:30	16:03:00
9	6	5885	0	0	16:36:30	16:37:00
9	7	5370	0	0	16:47:30	16:48:00
9	8	5577	0	0	17:01:00	17:01:00
9	9	5596	0	0	17:07:00	17:07:00
9	10	5638	0	0	17:12:00	17:12:00
9	11	4636	0	0	17:17:00	17:17:00
9	12	4582	0	0	17:27:00	
10	1	331	0	0		06:08:00
10	2	335	0	0	06:14:00	06:16:00
10	3	273	0	0	06:48:00	06:50:00
10	4	278	0	0	07:09:00	07:11:00
10	5	283	0	0	07:48:00	07:50:00
10	6	263	0	0	08:11:00	08:13:00
10	7	247	0	0	08:34:00	08:37:00
10	8	241	0	0	09:06:00	09:08:00
10	9	251	0	0	09:35:00	09:37:00
10	10	249	0	0	09:43:00	09:46:00
10	11	937	0	0	10:22:00	10:22:00
10	12	5209	0	0	10:28:00	10:30:00
10	13	5255	0	0	10:47:00	10:49:00
10	14	5238	0	0	11:03:00	11:05:00
10	15	5515	0	0	11:35:00	11:46:00
10	16	5478	0	0	12:09:00	12:12:00
10	17	5563	0	0	12:26:00	12:29:00
10	18	5556	0	0	12:38:30	12:39:30
10	19	5593	0	0	12:58:00	12:59:00
10	20	5053	0	0	13:31:00	13:33:00
10	21	3874	0	0	14:01:00	14:03:00
10	22	2753	0	0	14:54:30	14:54:30
10	23	2774	0	0	15:08:00	15:08:00
10	24	3032	0	0	15:19:00	
11	1	3031	0	0		17:21:00
11	2	2768	0	0	17:27:00	17:36:00
11	3	2753	0	0	17:39:30	17:40:30
11	4	3874	0	0	18:31:00	18:32:00
11	5	5054	0	0	18:59:30	19:00:30
11	6	5594	0	0	19:31:00	19:32:00
11	7	5556	0	0	19:48:00	19:52:00
11	8	5564	0	0	20:00:30	20:01:36
11	9	5475	0	0	20:16:00	20:18:00
11	10	5515	0	0	20:41:30	20:42:30
11	11	5237	0	0	21:09:30	21:11:00
11	12	5256	0	0	21:23:30	21:25:00
11	13	5210	0	0	21:42:00	21:47:00
11	14	937	0	0	21:53:00	
12	1	2074	0	0		08:28:00
12	2	69	0	0	08:40:00	08:41:00
12	3	1283	0	0	08:55:00	08:56:00
12	4	2408	0	0	09:11:00	09:12:00
12	5	2395	0	0	09:26:30	09:27:30
12	6	2386	0	0	09:40:00	09:41:00
12	7	2377	0	0	09:56:30	09:57:30
12	8	2370	0	0	10:06:30	10:07:30
12	9	2518	0	0	10:24:30	10:34:00
12	10	2343	0	0	10:54:00	10:54:30
12	11	2443	0	0	11:14:30	11:15:00
12	12	2464	0	0	11:27:00	11:27:30
12	13	2715	0	0	11:40:00	11:41:00
12	14	2723	0	0	11:54:30	11:55:00
12	15	2609	0	0	12:18:00	12:30:30
12	16	2657	0	0	13:00:36	13:06:06
12	17	2661	0	0	13:13:36	13:14:06
12	18	3645	0	0	13:40:06	13:41:06
12	19	3644	0	0	13:46:12	13:47:12
12	20	3642	0	0	13:52:00	13:54:00
12	21	3630	0	0	14:00:30	14:01:30
12	22	3605	0	0	14:09:00	14:11:00
12	23	3726	0	0	14:38:30	14:39:30
12	24	3873	0	0	15:03:30	15:04:30
12	25	5053	0	0	15:31:30	15:32:30
12	26	6029	0	0	17:05:00	
13	1	4313	0	0		16:25:00
13	2	4306	0	0	16:47:30	16:49:30
13	3	4278	0	0	17:08:00	17:13:00
13	4	4240	0	0	17:26:00	17:29:00
13	5	4236	0	0	17:41:36	17:42:36
13	6	4230	0	0	17:49:30	17:50:30
13	7	4690	0	0	18:22:00	18:45:00
13	8	4516	0	0	19:00:00	19:01:00
13	9	4857	0	0	19:08:30	19:09:30
13	10	4737	0	0	19:28:30	19:30:30
13	11	5372	0	0	20:07:00	20:08:00
13	12	4906	0	0	20:28:30	20:34:00
13	13	2753	0	0	22:28:30	22:28:30
13	14	2767	0	0	22:36:00	22:36:00
13	15	3032	0	0	22:47:00	
14	1	3031	0	0		17:37:00
14	2	2767	0	0	17:43:00	17:48:00
14	3	2754	0	0	17:52:00	17:53:00
14	4	3673	0	0	18:22:00	18:23:00
14	5	3605	0	0	18:51:30	18:51:30
14	6	3610	0	0	18:57:12	
15	1	4970	0	0		04:58:00
15	2	5049	0	0	05:29:00	05:30:00
15	3	4927	0	0	05:43:30	05:44:30
15	4	4906	0	0	06:11:00	06:12:30
15	5	5372	0	0	06:32:30	06:33:30
15	6	4737	0	0	07:04:30	07:06:30
15	7	4857	0	0	07:25:00	07:26:00
15	8	4515	0	0	07:33:30	07:34:30
15	9	4688	0	0	07:50:00	
16	1	970	0	0		16:38:00
16	2	968	0	0	16:42:12	16:42:42
16	3	746	0	0	16:46:00	16:46:30
16	4	1102	0	0	16:54:30	16:55:30
16	5	1080	0	0	17:16:00	17:20:00
16	6	1220	0	0	17:31:00	17:31:30
16	7	1231	0	0	17:50:30	17:51:30
16	8	2610	0	0	18:22:00	18:23:00
16	9	2692	0	0	18:43:00	18:44:00
16	10	2835	0	0	18:56:06	18:57:06
16	11	2754	0	0	19:23:00	19:24:00
16	12	2774	0	0	19:28:00	19:41:00
16	13	3032	0	0	19:47:00	19:50:00
16	14	3119	0	0	20:28:30	20:29:30
16	15	3961	0	0	20:52:00	20:53:00
16	16	3978	0	0	21:04:00	21:05:00
16	17	3987	0	0	21:15:00	21:16:00
16	18	1881	0	0	21:27:30	21:27:30
16	19	4015	0	0	21:33:00	
17	1	5665	0	0		04:51:00
17	2	5658	0	0	05:00:00	05:01:30
17	3	5645	0	0	05:08:00	05:09:00
17	4	5516	0	0	05:26:00	05:27:00
17	5	5476	0	0	05:51:00	05:54:00
17	6	5562	0	0	06:07:30	06:10:00
17	7	5594	0	0	06:33:30	06:34:30
17	8	2754	0	0	08:19:00	08:19:00
17	9	2769	0	0	08:24:00	08:24:00
17	10	3032	0	0	08:31:00	
18	1	6215	0	0		17:11:00
18	2	6266	0	0	17:23:00	17:26:00
18	3	6285	0	0	18:08:00	18:09:00
18	4	6290	0	0	18:15:00	18:16:00
18	5	5077	0	0	18:27:00	18:29:00
18	6	5069	0	0	18:40:30	18:41:30
18	7	5060	0	0	18:47:30	18:48:30
18	8	5057	0	0	18:51:00	18:52:00
18	9	5087	0	0	19:07:30	19:08:30
18	10	4089	0	0	19:30:00	19:31:00
18	11	4013	0	0	20:06:00	20:26:00
18	12	1882	0	0	20:31:00	20:32:00
18	13	3987	0	0	20:44:00	20:45:00
18	14	3978	0	0	20:55:30	20:56:30
18	15	3961	0	0	21:07:00	21:08:00
18	16	3120	0	0	21:32:00	21:33:30
18	17	3032	0	0	22:11:00	22:11:00
18	18	2771	0	0	22:19:00	22:19:00
18	19	2753	0	0	22:35:30	
19	1	4011	0	0		09:32:00
19	2	1882	0	0	09:36:36	09:37:36
19	3	3988	0	0	09:49:42	09:50:12
19	4	3977	0	0	10:00:30	10:01:30
19	5	3837	0	0	10:31:42	10:32:42
19	6	3791	0	0	10:46:36	10:48:00
19	7	3851	0	0	11:11:30	11:12:30
19	8	3854	0	0	11:22:30	11:23:30
19	9	3725	0	0	11:49:00	11:53:00
19	10	3606	0	0	12:19:42	12:21:30
19	11	3630	0	0	12:28:24	12:29:24
19	12	3633	0	0	12:42:54	12:43:54
19	13	3637	0	0	12:53:48	12:54:18
19	14	1053	0	0	13:01:36	13:02:36
19	15	1057	0	0	13:13:30	13:15:30
19	16	3515	0	0	13:48:30	13:54:30
19	17	3502	0	0	14:25:36	14:26:36
19	18	3479	0	0	14:38:06	14:44:36
19	19	2470	0	0	15:03:18	15:04:18
19	20	2513	0	0	15:26:00	15:36:00
19	21	2369	0	0	15:53:12	15:54:12
19	22	2378	0	0	16:03:06	16:04:06
19	23	2386	0	0	16:20:00	16:21:00
19	24	2395	0	0	16:32:36	16:33:36
19	25	2408	0	0	16:48:00	16:49:00
19	26	1283	0	0	17:04:24	17:05:24
19	27	69	0	0	17:19:00	17:19:00
19	28	2072	0	0	17:33:00	
20	1	6432	0	0		07:46:00
20	2	6436	0	0	07:49:00	07:50:00
20	3	1281	0	0	08:18:00	08:19:00
20	4	1255	0	0	08:39:00	08:40:00
20	5	1189	0	0	09:00:30	09:01:30
20	6	1179	0	0	09:13:00	09:14:00
20	7	1176	0	0	09:22:00	09:23:00
20	8	1103	0	0	09:36:00	09:37:00
20	9	1095	0	0	09:40:30	09:41:30
20	10	1082	0	0	09:45:00	09:47:00
20	11	1008	0	0	10:14:00	10:15:00
20	12	2599	0	0	10:30:00	10:31:00
20	13	2534	0	0	10:44:30	10:47:30
20	14	2513	0	0	11:14:00	11:35:00
20	15	3415	0	0	11:56:00	11:57:00
20	16	3338	0	0	12:10:00	12:11:00
20	17	3455	0	0	12:25:30	12:26:30
20	18	3460	0	0	12:34:30	12:36:30
20	19	4557	0	0	12:46:30	12:48:30
20	20	4547	0	0	13:00:00	13:00:00
20	21	4686	0	0	13:06:00	
21	1	4684	0	0		03:38:00
21	2	4516	0	0	03:54:30	03:55:30
21	3	4857	0	0	04:03:00	04:04:30
21	4	4737	0	0	04:23:00	04:25:00
21	5	4831	0	0	04:40:00	04:40:30
21	6	5371	0	0	05:01:00	05:02:00
21	7	4909	0	0	05:22:30	05:23:30
21	8	4886	0	0	05:28:00	05:31:00
21	9	3754	0	0	06:03:30	06:05:30
21	10	3727	0	0	06:35:00	06:36:00
21	11	3684	0	0	07:00:30	07:01:30
21	12	3674	0	0	07:19:30	07:20:30
21	13	2808	0	0	07:31:00	07:32:00
21	14	2754	0	0	07:51:00	07:51:00
21	15	2767	0	0	07:56:00	07:56:00
21	16	3031	0	0	08:07:00	
22	1	5138	0	0		05:41:00
22	2	5139	0	0	05:52:00	05:53:00
22	3	1770	0	0	06:23:00	06:24:00
22	4	1767	0	0	06:26:30	06:27:30
22	5	5123	0	0	06:30:30	06:33:30
22	6	5132	0	0	06:44:00	06:45:00
22	7	2246	0	0	06:55:36	06:56:36
22	8	5162	0	0	07:05:30	07:06:30
22	9	5160	0	0	07:16:00	07:17:00
22	10	5157	0	0	07:25:00	07:26:00
22	11	5058	0	0	08:08:00	08:17:00
22	12	5059	0	0	08:20:30	08:21:30
22	13	5070	0	0	08:30:00	08:31:00
22	14	5077	0	0	08:44:00	08:45:00
22	15	6290	0	0	08:57:30	08:58:30
22	16	6285	0	0	09:10:30	09:11:30
22	17	6215	0	0	10:01:30	10:04:30
22	18	6083	0	0	10:29:30	10:30:30
22	19	6040	0	0	10:48:00	10:49:30
22	20	5980	0	0	11:29:00	11:29:00
22	21	6024	0	0	11:35:00	
23	1	6346	0	0		05:15:00
23	2	6348	0	0	05:18:00	05:19:00
23	3	6293	0	0	05:39:00	05:40:00
23	4	6276	0	0	05:49:00	05:50:00
23	5	6266	0	0	06:04:00	06:05:00
23	6	6216	0	0	06:16:00	06:19:00
23	7	6084	0	0	06:41:00	06:42:00
23	8	6040	0	0	06:56:30	07:01:30
23	9	5962	0	0	07:19:00	07:20:00
23	10	5980	0	0	07:36:00	07:37:00
23	11	6031	0	0	07:42:00	07:53:00
23	12	5477	0	0	08:43:00	08:49:00
23	13	5311	0	0	09:03:00	09:07:00
23	14	5307	0	0	09:13:00	09:20:00
23	15	5166	0	0	09:46:30	09:47:30
23	16	4737	0	0	10:10:00	10:13:00
23	17	4688	0	0	10:52:00	10:57:00
23	18	4170	0	0	11:31:00	11:40:00
23	19	4186	0	0	11:56:00	12:03:30
23	20	3319	0	0	12:28:00	12:30:00
23	21	2108	0	0	13:02:00	13:04:00
23	22	1752	0	0	13:46:00	13:49:00
23	23	925	0	0	14:09:00	14:12:00
23	24	1612	0	0	15:01:00	15:04:00
23	25	1630	0	0	15:11:00	
24	1	1630	0	0		13:50:00
24	2	1612	0	0	13:59:00	14:00:00
24	3	926	0	0	14:47:00	14:50:00
24	4	1751	0	0	15:07:00	15:13:00
24	5	2318	0	0	15:37:18	15:38:18
24	6	1819	0	0	15:50:00	15:51:00
24	7	2521	0	0	16:33:00	16:36:00
24	8	2715	0	0	17:21:00	17:22:00
24	9	2610	0	0	17:57:00	17:58:00
24	10	2754	0	0	18:55:00	18:55:00
24	11	2768	0	0	19:00:00	19:00:00
24	12	3031	0	0	19:15:00	
25	1	3032	0	0		17:09:00
25	2	2770	0	0	17:15:00	17:20:00
25	3	2753	0	0	17:24:00	17:25:30
25	4	2807	0	0	17:43:30	17:47:30
25	5	3673	0	0	17:59:00	18:01:00
25	6	3683	0	0	18:20:00	18:22:00
25	7	3727	0	0	18:46:30	18:57:00
25	8	3754	0	0	19:31:12	19:32:12
25	9	4882	0	0	20:02:00	20:04:00
25	10	4910	0	0	20:08:30	20:09:30
25	11	5372	0	0	20:30:00	20:32:00
25	12	4737	0	0	21:04:00	21:06:00
25	13	4858	0	0	21:24:30	21:25:30
25	14	4516	0	0	21:33:00	21:34:00
25	15	4685	0	0	21:50:00	21:55:00
25	16	4229	0	0	22:24:30	22:25:30
25	17	4235	0	0	22:32:42	22:33:42
25	18	4239	0	0	22:46:30	22:47:30
25	19	4277	0	0	22:58:00	23:01:00
25	20	4306	0	0	23:22:30	23:23:30
25	21	4313	0	0	23:45:00	
26	1	4313	0	0		08:17:00
26	2	4306	0	0	08:38:30	08:40:00
26	3	4277	0	0	08:57:30	08:58:30
26	4	4239	0	0	09:12:00	09:13:00
26	5	4235	0	0	09:25:42	09:26:42
26	6	4230	0	0	09:33:30	09:34:30
26	7	4681	0	0	10:05:00	10:19:00
26	8	4516	0	0	10:33:30	10:34:30
26	9	4858	0	0	10:42:30	10:43:30
26	10	4738	0	0	11:02:30	11:04:30
26	11	5372	0	0	11:37:00	11:38:00
26	12	4910	0	0	11:58:30	11:59:30
26	13	4883	0	0	12:04:00	12:07:30
26	14	3754	0	0	12:37:00	12:38:00
26	15	3728	0	0	13:09:00	13:15:00
26	16	3684	0	0	13:41:00	13:43:00
26	17	3673	0	0	14:01:30	14:04:00
26	18	2808	0	0	14:15:00	14:16:00
26	19	2754	0	0	14:35:00	14:35:00
26	20	2770	0	0	14:40:00	14:40:00
26	21	3032	0	0	14:51:00	
27	1	3032	0	0		15:37:00
27	2	2768	0	0	15:43:00	15:48:00
27	3	2754	0	0	15:52:00	15:54:30
27	4	2807	0	0	16:16:00	16:17:30
27	5	3674	0	0	16:31:00	16:32:30
27	6	3684	0	0	16:54:30	16:55:30
27	7	3606	0	0	17:08:30	17:08:30
27	8	3610	0	0	17:17:00	
28	1	2073	0	0		06:51:00
28	2	6377	0	0	07:07:00	07:09:00
28	3	385	0	0	07:28:00	07:29:00
28	4	392	0	0	07:42:00	07:44:00
28	5	351	0	0	08:02:00	08:03:00
28	6	1751	0	0	08:27:00	08:28:30
28	7	2107	0	0	09:10:30	09:19:00
28	8	3314	0	0	09:32:36	09:33:36
28	9	3320	0	0	09:53:00	09:55:00
28	10	4186	0	0	10:22:00	10:25:00
28	11	4170	0	0	10:39:00	10:47:00
28	12	4685	0	0	11:23:00	11:30:00
28	13	4737	0	0	12:09:00	12:15:00
28	14	5165	0	0	12:36:00	12:37:00
28	15	5307	0	0	13:03:00	13:04:00
28	16	5312	0	0	13:10:00	13:11:00
28	17	5475	0	0	13:31:00	13:38:00
28	18	6032	0	0	14:32:00	14:35:00
28	19	5980	0	0	14:39:30	14:40:30
28	20	5962	0	0	14:56:00	14:57:00
28	21	6039	0	0	15:15:00	15:18:30
28	22	6084	0	0	15:33:00	15:34:00
28	23	6213	0	0	15:55:00	15:58:00
28	24	6266	0	0	16:16:00	16:17:00
28	25	6276	0	0	16:30:00	16:31:00
28	26	6293	0	0	16:40:00	16:42:00
28	27	6348	0	0	17:03:00	17:03:00
28	28	6345	0	0	17:07:00	
29	1	6027	0	0		12:46:00
29	2	2754	0	0	15:37:30	15:37:30
29	3	2774	0	0	15:44:30	15:44:30
29	4	3031	0	0	15:53:30	
30	1	6433	0	0		05:44:00
30	2	6436	0	0	05:47:00	05:48:00
30	3	1282	0	0	06:14:54	06:15:54
30	4	1255	0	0	06:37:00	06:38:00
30	5	1190	0	0	06:58:30	06:59:30
30	6	1179	0	0	07:11:00	07:12:00
30	7	1175	0	0	07:20:00	07:21:00
30	8	1104	0	0	07:34:00	07:35:00
30	9	1095	0	0	07:38:30	07:39:30
30	10	1078	0	0	07:43:30	07:45:30
30	11	1008	0	0	08:13:00	08:14:00
30	12	2599	0	0	08:29:00	08:30:00
30	13	2534	0	0	08:44:30	08:45:30
30	14	2513	0	0	09:12:00	
31	1	3031	0	0		14:30:00
31	2	2771	0	0	14:36:00	14:40:00
31	3	2754	0	0	14:44:00	14:45:00
31	4	2808	0	0	15:06:00	15:09:00
31	5	3673	0	0	15:20:00	15:23:30
31	6	3684	0	0	15:41:30	15:42:30
31	7	3606	0	0	15:53:00	15:53:00
31	8	3614	0	0	16:00:00	
32	1	10	0	0		09:10:00
32	2	12	0	0	09:20:00	09:22:00
32	3	640	0	0	09:44:30	09:45:30
32	4	420	0	0	10:04:30	10:05:30
32	5	69	0	0	10:22:00	10:23:00
32	6	2078	0	0	10:36:00	10:41:00
32	7	6377	0	0	10:57:00	10:58:00
32	8	385	0	0	11:17:00	11:18:00
32	9	392	0	0	11:30:00	11:33:00
32	10	351	0	0	11:52:00	11:53:00
32	11	1751	0	0	12:17:00	12:19:00
32	12	2107	0	0	13:07:30	13:09:30
32	13	3313	0	0	13:23:06	13:24:06
32	14	3319	0	0	13:44:00	13:53:00
32	15	4721	0	0	14:21:48	14:22:48
32	16	4715	0	0	14:36:42	14:37:42
32	17	4707	0	0	14:44:00	14:45:00
32	18	4682	0	0	15:08:00	15:36:00
32	19	4737	0	0	16:17:00	16:24:00
32	20	5166	0	0	16:45:00	16:46:00
32	21	5302	0	0	17:13:00	17:20:00
32	22	5311	0	0	17:26:30	17:27:30
32	23	5482	0	0	17:43:00	17:46:00
32	24	6027	0	0	18:48:00	18:53:00
32	25	5980	0	0	18:58:00	18:59:00
32	26	5961	0	0	19:15:00	19:16:00
32	27	6039	0	0	19:34:00	19:35:30
32	28	6083	0	0	19:51:30	19:52:30
32	29	6213	0	0	20:15:00	20:19:00
32	30	6265	0	0	20:31:00	20:32:00
32	31	6275	0	0	20:45:30	20:46:30
32	32	6294	0	0	20:56:00	20:57:00
32	33	6348	0	0	21:18:00	21:18:00
32	34	6346	0	0	21:22:00	
33	1	972	0	0		05:37:00
33	2	967	0	0	05:40:48	05:41:48
33	3	745	0	0	05:45:00	05:46:00
33	4	1101	0	0	05:53:30	05:54:30
33	5	1081	0	0	06:14:42	06:21:00
33	6	1219	0	0	06:32:00	06:33:00
33	7	1231	0	0	06:51:30	06:52:30
33	8	2610	0	0	07:22:30	07:27:00
33	9	2658	0	0	07:53:18	07:54:18
33	10	2662	0	0	08:01:24	08:02:24
33	11	3645	0	0	08:18:54	08:19:54
33	12	3644	0	0	08:24:42	08:25:42
33	13	3641	0	0	08:30:00	08:32:00
33	14	3630	0	0	08:38:00	08:39:00
33	15	3606	0	0	08:46:30	08:52:30
33	16	3725	0	0	09:21:30	09:23:00
33	17	3874	0	0	09:47:00	09:48:00
33	18	5054	0	0	10:15:00	10:16:00
33	19	6030	0	0	12:02:00	12:05:00
33	20	5851	0	0	12:41:00	12:42:30
33	21	1774	0	0	13:19:30	13:20:30
33	22	5865	0	0	13:25:30	13:41:30
33	23	2020	0	0	14:23:12	14:24:12
33	24	5900	0	0	14:50:30	14:59:30
33	25	5914	0	0	15:09:30	15:14:00
33	26	5916	0	0	15:20:00	
34	1	4690	0	0		14:53:00
34	2	4548	0	0	14:57:30	14:58:30
34	3	4558	0	0	15:09:30	15:11:30
34	4	3459	0	0	15:21:30	15:23:30
34	5	3455	0	0	15:32:00	15:33:00
34	6	3338	0	0	15:49:00	15:50:00
34	7	3416	0	0	16:02:00	16:03:00
34	8	2514	0	0	16:24:00	16:46:00
34	9	2534	0	0	17:11:30	17:13:00
34	10	2600	0	0	17:27:00	17:28:00
34	11	1008	0	0	17:42:00	17:43:00
34	12	1077	0	0	18:06:00	18:08:00
34	13	1096	0	0	18:11:00	18:12:00
34	14	1104	0	0	18:15:30	18:16:30
34	15	1175	0	0	18:29:30	18:30:30
34	16	1180	0	0	18:38:30	18:39:30
34	17	1189	0	0	18:50:30	18:51:30
34	18	1256	0	0	19:13:00	19:19:30
34	19	1282	0	0	19:40:30	19:48:30
34	20	6436	0	0	20:15:00	20:15:00
34	21	6431	0	0	20:20:00	
35	1	6032	0	0		18:15:00
35	2	5980	0	0	18:19:30	18:20:30
35	3	5961	0	0	18:37:30	18:39:30
35	4	5973	0	0	18:47:00	18:49:00
35	5	6039	0	0	19:02:30	19:04:00
35	6	6083	0	0	19:20:30	19:21:30
35	7	6086	0	0	19:28:30	19:29:30
35	8	6092	0	0	19:34:30	19:35:30
35	9	6215	0	0	19:49:30	19:59:30
35	10	6265	0	0	20:10:30	20:11:30
35	11	6286	0	0	20:44:00	20:45:00
35	12	6290	0	0	20:51:30	20:52:30
35	13	5078	0	0	21:04:00	21:05:00
35	14	5069	0	0	21:16:30	21:17:30
35	15	5059	0	0	21:24:24	21:25:24
35	16	5058	0	0	21:28:00	21:33:00
35	17	5087	0	0	21:50:30	21:52:30
35	18	4090	0	0	22:14:00	22:15:00
35	19	4016	0	0	22:41:00	
36	1	3031	0	0		16:57:00
36	2	2771	0	0	17:03:00	17:08:00
36	3	2754	0	0	17:12:00	17:14:00
36	4	2764	0	0	17:21:30	17:22:30
36	5	2790	0	0	17:30:00	17:31:30
36	6	3812	0	0	17:46:30	17:47:30
36	7	3794	0	0	18:08:00	18:12:00
36	8	3772	0	0	18:50:00	18:58:00
36	9	3896	0	0	19:14:00	19:15:00
36	10	5098	0	0	19:48:00	19:49:00
36	11	5058	0	0	20:28:00	20:29:00
36	12	5060	0	0	20:31:30	20:32:30
36	13	5070	0	0	20:39:00	20:40:00
36	14	5077	0	0	20:48:00	20:49:00
36	15	6289	0	0	21:00:00	21:01:00
36	16	6285	0	0	21:07:00	21:09:00
36	17	6276	0	0	21:30:00	21:31:00
36	18	6293	0	0	21:40:00	21:41:00
36	19	6331	0	0	21:49:00	21:50:00
36	20	6347	0	0	22:02:30	22:02:30
36	21	6345	0	0	22:06:00	
37	1	5482	0	0		13:20:00
37	2	5496	0	0	13:34:00	13:35:00
37	3	5550	0	0	13:55:30	13:56:30
37	4	5593	0	0	14:11:30	14:13:00
37	5	5601	0	0	14:20:00	14:26:30
37	6	4885	0	0	14:42:00	14:44:00
37	7	1049	0	0	15:43:00	15:43:30
37	8	3638	0	0	15:53:42	15:54:12
37	9	3633	0	0	16:04:12	16:04:42
37	10	3642	0	0	16:14:30	16:17:30
37	11	3643	0	0	16:22:06	16:23:06
37	12	3645	0	0	16:28:18	16:34:18
37	13	2662	0	0	16:52:06	16:52:36
37	14	2657	0	0	17:00:06	17:03:06
37	15	2609	0	0	17:28:30	17:30:00
37	16	1232	0	0	17:59:30	18:00:30
37	17	1219	0	0	18:19:00	18:19:30
37	18	1084	0	0	18:32:00	18:41:00
37	19	1101	0	0	19:00:30	19:01:30
37	20	745	0	0	19:09:30	19:10:00
37	21	968	0	0	19:13:30	19:14:00
37	22	976	0	0	19:19:00	19:29:00
37	23	768	0	0	19:58:30	19:59:30
37	24	6358	0	0	20:16:00	20:16:30
37	25	5370	0	0	20:40:00	20:47:00
37	26	5467	0	0	20:57:00	20:57:30
37	27	5571	0	0	21:04:00	21:07:00
37	28	5596	0	0	21:11:00	21:12:30
37	29	5638	0	0	21:16:00	21:17:30
37	30	4635	0	0	21:21:00	21:22:00
37	31	4582	0	0	21:30:00	
38	1	4050	0	0		08:32:00
38	2	4054	0	0	08:35:30	08:36:30
38	3	4041	0	0	08:47:30	08:48:30
38	4	4007	0	0	09:13:00	09:14:00
38	5	4012	0	0	09:23:00	09:26:00
38	6	1881	0	0	09:31:00	09:32:00
38	7	3988	0	0	09:44:00	09:45:00
38	8	3977	0	0	09:55:30	09:56:30
38	9	3961	0	0	10:07:00	10:08:00
38	10	3119	0	0	10:31:30	10:32:30
38	11	3032	0	0	11:11:00	11:13:00
38	12	2770	0	0	11:19:00	11:32:00
38	13	2754	0	0	11:35:30	11:37:00
38	14	2836	0	0	12:02:30	12:03:30
38	15	2692	0	0	12:16:30	12:17:30
38	16	2610	0	0	12:37:00	12:38:00
38	17	2724	0	0	13:00:00	13:01:00
38	18	2716	0	0	13:14:00	13:15:00
38	19	2463	0	0	13:27:30	13:28:30
38	20	2443	0	0	13:41:00	13:42:00
38	21	2343	0	0	14:02:00	14:03:00
38	22	2521	0	0	14:22:00	14:38:00
38	23	2369	0	0	14:55:00	14:56:00
38	24	2378	0	0	15:05:00	15:06:00
38	25	2385	0	0	15:21:00	15:22:00
38	26	2395	0	0	15:34:00	15:35:00
38	27	2407	0	0	15:49:00	15:50:00
38	28	1283	0	0	16:05:00	16:06:00
38	29	69	0	0	16:18:30	16:18:30
38	30	2073	0	0	16:34:00	
39	1	9	0	0		13:13:00
39	2	12	0	0	13:23:00	13:25:00
39	3	640	0	0	13:47:30	13:48:30
39	4	420	0	0	14:07:00	14:08:00
39	5	70	0	0	14:25:30	14:26:30
39	6	2071	0	0	14:40:00	14:55:00
39	7	6377	0	0	15:10:00	15:12:00
39	8	386	0	0	15:32:00	15:33:00
39	9	392	0	0	15:45:00	15:48:00
39	10	352	0	0	16:05:00	16:07:00
39	11	1751	0	0	16:31:00	16:33:00
39	12	2107	0	0	17:15:00	17:23:30
39	13	3314	0	0	17:37:06	17:38:06
39	14	3319	0	0	17:57:30	17:58:30
39	15	4722	0	0	18:27:18	18:28:18
39	16	4715	0	0	18:42:12	18:43:12
39	17	4707	0	0	18:49:30	18:50:30
39	18	4689	0	0	19:15:00	19:40:00
39	19	4737	0	0	20:19:00	20:21:00
39	20	5166	0	0	20:42:00	20:43:00
39	21	5303	0	0	21:10:00	21:12:00
39	22	5311	0	0	21:18:30	21:19:30
39	23	5475	0	0	21:35:00	21:41:00
39	24	6025	0	0	22:38:00	
40	1	2771	0	0		21:48:00
40	2	2754	0	0	21:52:00	21:53:00
40	3	2808	0	0	22:11:36	22:12:36
40	4	3673	0	0	22:23:12	22:24:12
40	5	3684	0	0	22:42:30	22:43:30
40	6	3606	0	0	22:55:30	22:57:18
40	7	3630	0	0	23:04:06	23:05:06
40	8	3634	0	0	23:18:54	23:19:54
40	9	3638	0	0	23:29:54	23:30:54
40	10	1054	0	0	23:38:18	23:39:18
40	11	1057	0	0	23:50:30	23:51:30
40	12	3515	1	1	00:25:30	00:26:30
40	13	3560	1	1	00:44:12	00:45:12
40	14	3422	1	1	01:08:00	01:09:54
40	15	4648	1	1	01:46:00	01:47:00
40	16	4601	1	1	02:06:00	02:07:00
40	17	4547	1	1	02:11:18	02:12:18
40	18	4682	1	0	02:17:00	
41	1	3609	0	0		05:57:30
41	2	3606	0	0	06:04:00	06:06:00
41	3	3683	0	0	06:17:00	06:18:00
41	4	3673	0	0	06:37:00	06:38:30
41	5	2808	0	0	06:49:30	06:51:00
41	6	2754	0	0	07:10:30	07:10:30
41	7	2771	0	0	07:16:00	07:16:00
41	8	3031	0	0	07:27:00	
42	1	2108	0	0		07:35:00
42	2	2080	0	0	07:53:00	07:56:00
42	3	1837	0	0	08:06:12	08:07:12
42	4	1820	0	0	08:14:00	08:15:00
42	5	1834	0	0	08:20:00	08:21:00
42	6	1844	0	0	08:29:00	08:30:00
42	7	2062	0	0	08:41:42	08:42:42
42	8	2516	0	0	09:05:00	09:08:00
42	9	2533	0	0	09:33:30	09:39:00
42	10	2599	0	0	09:54:00	09:55:00
42	11	1022	0	0	10:11:00	10:12:00
42	12	1048	0	0	10:34:00	10:35:00
42	13	1046	0	0	10:51:30	10:52:30
42	14	2610	0	0	11:22:00	11:23:00
42	15	2692	0	0	11:43:00	11:44:00
42	16	2835	0	0	11:56:00	11:57:00
42	17	2754	0	0	12:22:30	12:24:00
42	18	2768	0	0	12:28:00	12:41:00
42	19	3032	0	0	12:47:00	12:49:00
42	20	3120	0	0	13:27:30	13:28:30
42	21	3962	0	0	13:52:00	13:53:00
42	22	3977	0	0	14:04:00	14:05:00
42	23	3988	0	0	14:15:00	14:16:00
42	24	1881	0	0	14:27:30	14:28:30
42	25	4016	0	0	14:33:00	14:35:00
42	26	4008	0	0	14:43:30	14:44:30
42	27	4042	0	0	15:10:00	15:11:00
42	28	4053	0	0	15:21:30	15:21:30
42	29	4049	0	0	15:26:00	
43	1	4687	0	0		16:42:00
43	2	4738	0	0	17:20:00	17:22:00
43	3	5372	0	0	17:55:00	17:56:00
43	4	4910	0	0	18:16:00	18:17:00
43	5	2753	0	0	20:10:30	20:10:30
43	6	2770	0	0	20:16:00	20:16:00
43	7	3032	0	0	20:27:00	
44	1	3031	0	0		18:24:00
44	2	3102	0	0	18:48:00	18:49:00
44	3	3192	0	0	18:59:00	19:00:00
44	4	3144	0	0	19:16:30	19:17:30
44	5	3197	0	0	19:31:30	19:39:30
44	6	3205	0	0	19:53:30	19:54:30
44	7	3211	0	0	20:11:00	20:12:00
44	8	4021	0	0	20:32:00	20:33:00
44	9	4013	0	0	21:00:00	
45	1	6345	0	0		09:56:00
45	2	6348	0	0	09:59:00	10:00:00
45	3	6331	0	0	10:12:00	10:13:00
45	4	6293	0	0	10:21:00	10:22:00
45	5	6275	0	0	10:31:00	10:32:00
45	6	6266	0	0	10:44:00	10:45:00
45	7	6211	0	0	10:57:00	11:00:00
45	8	6091	0	0	11:13:00	11:14:00
45	9	6086	0	0	11:18:30	11:19:30
45	10	6084	0	0	11:26:00	11:27:00
45	11	6040	0	0	11:41:30	11:43:00
45	12	5974	0	0	11:55:00	11:56:00
45	13	5962	0	0	12:02:30	12:03:30
45	14	5980	0	0	12:20:00	12:22:00
45	15	6026	0	0	12:27:00	12:40:00
45	16	5808	0	0	12:55:30	12:56:30
45	17	5795	0	0	13:04:00	13:09:00
45	18	5522	0	0	13:17:30	13:21:00
45	19	5495	0	0	13:33:00	13:34:30
45	20	5433	0	0	13:53:30	13:56:30
45	21	5302	0	0	14:11:00	14:12:00
45	22	4838	0	0	14:42:00	14:43:00
45	23	4738	0	0	15:06:00	15:09:00
45	24	4858	0	0	15:29:00	15:31:00
45	25	4516	0	0	15:39:00	15:41:00
45	26	4679	0	0	15:57:00	16:02:00
45	27	4558	0	0	16:16:18	16:17:18
45	28	3460	0	0	16:27:30	16:28:30
45	29	3456	0	0	16:36:30	16:37:30
45	30	3337	0	0	16:52:00	16:53:00
45	31	3416	0	0	17:06:00	17:07:00
45	32	2519	0	0	17:29:00	17:44:00
45	33	2422	0	0	18:11:36	18:12:36
45	34	684	0	0	18:23:00	18:24:00
45	35	694	0	0	18:40:00	18:41:00
45	36	500	0	0	18:56:00	18:57:00
45	37	702	0	0	19:23:00	19:24:00
45	38	2448	0	0	19:50:00	19:51:00
45	39	3103	0	0	20:35:00	20:45:00
45	40	3429	0	0	21:01:00	21:05:00
45	41	4056	0	0	21:39:00	
46	1	3031	0	0		16:49:00
46	2	2773	0	0	16:55:00	17:00:00
46	3	2753	0	0	17:03:30	17:05:00
46	4	2610	0	0	18:01:30	18:02:30
46	5	2716	0	0	18:38:00	18:39:00
46	6	2522	0	0	19:24:00	19:27:00
46	7	1820	0	0	20:10:00	20:11:00
46	8	2318	0	0	20:23:00	20:24:00
46	9	1751	0	0	20:47:00	20:50:00
46	10	926	0	0	21:09:00	21:09:00
46	11	411	0	0	22:03:00	22:05:00
46	12	1611	0	0	22:09:00	22:11:00
46	13	1630	0	0	22:17:00	22:21:00
46	14	409	0	0	22:26:00	22:28:00
46	15	408	0	0	22:31:00	
47	1	4011	0	0		17:02:00
47	2	1882	0	0	17:07:00	17:08:00
47	3	3987	0	0	17:20:00	17:20:30
47	4	3977	0	0	17:30:30	17:31:30
47	5	3838	0	0	18:02:00	18:03:00
47	6	3794	0	0	18:18:00	18:20:00
47	7	3755	0	0	18:43:30	18:45:30
47	8	4969	0	0	19:26:00	19:40:00
47	9	5050	0	0	20:11:00	20:12:00
47	10	4928	0	0	20:26:00	20:34:00
47	11	4908	0	0	21:01:30	21:03:30
47	12	5372	0	0	21:24:00	21:26:00
47	13	4737	0	0	21:58:00	22:00:00
47	14	4858	0	0	22:19:00	22:20:00
47	15	4516	0	0	22:28:00	22:29:00
47	16	4684	0	0	22:45:00	
48	1	5482	0	0		04:34:00
48	2	5515	0	0	04:59:00	05:07:00
48	3	5237	0	0	05:33:00	05:43:00
48	4	5255	0	0	05:55:30	05:57:00
48	5	5210	0	0	06:13:00	06:14:00
48	6	937	0	0	06:20:00	06:20:00
48	7	249	0	0	06:41:00	06:43:00
48	8	252	0	0	06:49:00	06:51:00
48	9	241	0	0	07:18:00	07:20:00
48	10	257	0	0	07:40:00	07:42:00
48	11	266	0	0	07:57:00	07:59:00
48	12	267	0	0	08:09:00	08:11:00
48	13	244	0	0	08:27:00	08:29:00
48	14	233	0	0	08:40:00	08:55:00
48	15	1555	0	0	09:49:00	10:02:00
48	16	656	0	0	10:07:00	10:10:00
48	17	627	0	0	10:27:00	
49	1	3613	0	0		09:26:00
49	2	3606	0	0	09:32:00	09:33:00
49	3	3684	0	0	09:44:00	09:45:00
49	4	3674	0	0	10:04:00	10:05:00
49	5	2807	0	0	10:16:30	10:17:30
49	6	2753	0	0	10:36:00	10:40:00
49	7	2773	0	0	10:44:00	11:01:00
49	8	3031	0	0	11:07:00	11:09:00
49	9	2913	0	0	11:23:00	11:24:00
49	10	2901	0	0	11:32:00	11:33:00
49	11	2963	0	0	11:59:30	12:00:30
49	12	2978	0	0	12:15:00	12:16:00
49	13	1307	0	0	12:26:00	12:27:00
49	14	1256	0	0	12:58:00	13:08:00
49	15	1327	0	0	13:24:00	13:25:00
49	16	5885	0	0	13:45:00	13:46:00
49	17	5370	0	0	13:57:00	13:58:00
49	18	5575	0	0	14:14:00	14:17:00
49	19	5596	0	0	14:21:30	14:22:30
49	20	5638	0	0	14:26:00	14:27:00
49	21	4635	0	0	14:30:30	14:31:30
49	22	4588	0	0	14:40:00	14:44:00
49	23	4768	0	0	14:54:00	14:55:00
49	24	4921	0	0	15:04:00	15:05:00
49	25	4159	0	0	15:25:00	15:26:00
49	26	3678	0	0	16:19:00	16:19:00
49	27	4056	0	0	17:25:00	17:25:00
49	28	3430	0	0	17:50:00	17:57:00
49	29	3280	0	0	18:22:00	18:30:00
49	30	3270	0	0	18:42:00	
50	1	4314	0	0		05:58:00
50	2	4306	0	0	06:20:00	06:21:00
50	3	4277	0	0	06:41:00	06:42:00
50	4	4240	0	0	06:55:00	06:56:30
50	5	4236	0	0	07:09:30	07:10:30
50	6	4229	0	0	07:17:30	07:18:30
50	7	4257	0	0	07:30:30	07:31:30
50	8	4268	0	0	07:51:30	07:52:30
50	9	4492	0	0	08:17:00	08:18:00
50	10	4366	0	0	08:31:00	08:32:00
50	11	4398	0	0	08:43:00	08:44:00
50	12	4393	0	0	08:55:30	08:56:30
50	13	4384	0	0	09:16:00	09:19:00
50	14	4424	0	0	09:55:00	09:56:00
50	15	5193	0	0	10:18:30	10:19:30
50	16	5165	0	0	10:41:30	10:43:30
50	17	5308	0	0	11:11:00	11:19:00
50	18	5312	0	0	11:26:00	11:27:00
50	19	5478	0	0	11:43:00	11:46:00
50	20	5496	0	0	12:00:00	12:02:00
50	21	5979	0	0	13:30:00	
51	1	1629	0	0		16:52:00
51	2	1612	0	0	16:59:00	17:00:00
51	3	925	0	0	17:50:00	17:50:00
51	4	1751	0	0	18:09:00	18:12:00
51	5	2107	0	0	19:00:30	19:02:30
51	6	3320	0	0	19:34:30	19:36:00
51	7	4186	0	0	20:02:00	20:03:30
51	8	4169	0	0	20:18:00	20:19:00
51	9	4688	0	0	20:52:00	20:57:00
51	10	4738	0	0	21:36:00	21:38:00
51	11	5165	0	0	21:59:00	22:00:00
51	12	5302	0	0	22:26:00	22:29:00
51	13	5312	0	0	22:35:48	22:36:48
51	14	5480	0	0	22:52:00	22:55:00
51	15	6029	0	0	23:44:00	
52	1	6025	0	0		05:54:00
52	2	5478	0	0	06:58:00	07:01:00
52	3	5311	0	0	07:20:30	07:21:30
52	4	5306	0	0	07:28:00	07:29:00
52	5	5166	0	0	07:56:00	07:57:00
52	6	4737	0	0	08:19:30	08:21:30
52	7	4683	0	0	09:01:00	09:21:00
52	8	4708	0	0	09:42:24	09:43:24
52	9	4716	0	0	09:50:00	09:51:00
52	10	4722	0	0	10:04:12	10:05:12
52	11	3319	0	0	10:31:00	10:33:30
52	12	3314	0	0	10:53:00	10:54:00
52	13	2107	0	0	11:07:30	11:09:30
52	14	1751	0	0	11:53:00	11:55:00
52	15	351	0	0	12:18:00	12:20:00
52	16	392	0	0	12:37:00	12:38:00
52	17	386	0	0	12:52:00	12:53:00
52	18	6377	0	0	13:12:00	13:15:00
52	19	2077	0	0	13:31:00	13:35:00
52	20	69	0	0	13:47:00	13:48:00
52	21	420	0	0	14:03:00	14:04:00
52	22	639	0	0	14:22:00	14:24:00
52	23	12	0	0	14:45:30	14:47:30
52	24	10	0	0	14:58:00	
53	1	5666	0	0		04:00:00
53	2	5658	0	0	04:09:00	04:10:00
53	3	5646	0	0	04:16:30	04:17:30
53	4	5515	0	0	04:34:30	04:36:00
53	5	5478	0	0	04:56:30	04:59:00
53	6	5564	0	0	05:16:00	05:18:30
53	7	5559	0	0	05:25:30	05:26:00
53	8	5556	0	0	05:29:30	05:31:00
53	9	5593	0	0	05:47:30	05:54:00
53	10	5601	0	0	06:01:00	06:06:00
53	11	4888	0	0	06:21:00	06:25:00
53	12	1050	0	0	07:31:24	07:32:30
53	13	3638	0	0	07:42:42	07:43:12
53	14	3633	0	0	07:53:12	07:53:42
53	15	3641	0	0	08:04:00	08:06:00
53	16	3643	0	0	08:10:30	08:11:30
53	17	3645	0	0	08:17:00	08:24:00
53	18	2662	0	0	08:46:36	08:47:06
53	19	2658	0	0	08:54:30	08:55:30
53	20	2609	0	0	09:18:00	09:19:00
53	21	1231	0	0	09:48:30	09:49:30
53	22	1219	0	0	10:08:00	10:08:30
53	23	1079	0	0	10:21:30	10:31:00
53	24	1102	0	0	10:51:00	10:52:00
53	25	746	0	0	11:00:00	11:00:30
53	26	968	0	0	11:04:00	11:05:00
53	27	977	0	0	11:10:00	11:30:00
53	28	768	0	0	12:02:00	12:03:00
53	29	6357	0	0	12:20:00	12:20:30
53	30	5370	0	0	12:42:00	12:52:00
53	31	5467	0	0	13:02:30	13:03:00
53	32	5578	0	0	13:09:30	13:11:30
53	33	5596	0	0	13:15:06	13:16:06
53	34	5638	0	0	13:19:12	13:20:12
53	35	4635	0	0	13:23:30	13:24:30
53	36	4586	0	0	13:32:00	
54	1	4055	0	0		14:25:00
54	2	3430	0	0	14:52:00	14:53:00
54	3	3104	0	0	15:07:00	15:08:00
54	4	2447	0	0	15:51:00	15:53:00
54	5	702	0	0	16:26:00	16:27:00
54	6	499	0	0	17:04:00	17:14:00
54	7	694	0	0	17:28:30	17:29:30
54	8	684	0	0	17:46:00	17:47:00
54	9	2421	0	0	17:56:42	17:57:42
54	10	2517	0	0	18:18:30	18:31:00
54	11	3416	0	0	18:52:00	18:53:00
54	12	3337	0	0	19:06:00	19:07:00
54	13	3455	0	0	19:21:30	19:22:30
54	14	3460	0	0	19:30:30	19:31:30
54	15	4557	0	0	19:41:30	19:42:30
54	16	4547	0	0	19:54:24	19:55:24
54	17	4689	0	0	20:00:00	20:15:00
54	18	4515	0	0	20:29:30	20:30:30
54	19	4857	0	0	20:38:00	20:39:00
54	20	4738	0	0	20:57:00	21:02:00
54	21	4837	0	0	21:26:30	21:29:00
54	22	5303	0	0	22:00:00	22:04:00
54	23	5433	0	0	22:18:00	22:22:30
54	24	5495	0	0	22:42:30	22:49:30
54	25	5521	0	0	22:58:00	23:00:00
54	26	5795	0	0	23:08:00	23:10:00
54	27	5807	0	0	23:17:30	23:18:30
54	28	6028	0	0	23:33:00	
55	1	331	0	0		14:08:00
55	2	335	0	0	14:14:00	14:16:00
55	3	274	0	0	14:48:00	14:50:00
55	4	277	0	0	15:09:00	15:11:00
55	5	283	0	0	15:48:00	15:50:00
55	6	264	0	0	16:11:00	16:13:00
55	7	247	0	0	16:34:00	16:37:00
55	8	241	0	0	17:06:00	17:08:00
55	9	251	0	0	17:35:00	17:37:00
55	10	249	0	0	17:43:00	17:46:00
55	11	937	0	0	18:23:00	18:23:00
55	12	5210	0	0	18:29:00	18:32:00
55	13	5255	0	0	18:49:00	18:51:00
55	14	5238	0	0	19:05:00	19:08:00
55	15	5515	0	0	19:36:00	19:45:30
55	16	5477	0	0	20:07:00	20:10:00
55	17	5563	0	0	20:23:30	20:26:00
55	18	5555	0	0	20:35:00	20:36:00
55	19	5593	0	0	20:54:30	21:01:30
55	20	5054	0	0	21:33:00	21:34:00
55	21	3873	0	0	22:01:00	22:02:00
55	22	2805	0	0	22:42:00	22:43:00
55	23	2754	0	0	22:56:30	22:56:30
55	24	2774	0	0	23:08:00	23:08:00
55	25	3032	0	0	23:24:00	
56	1	2519	0	0		14:46:00
56	2	2061	0	0	15:09:18	15:10:18
56	3	1844	0	0	15:20:18	15:21:18
56	4	1833	0	0	15:29:48	15:30:48
56	5	1819	0	0	15:35:12	15:36:12
56	6	1838	0	0	15:42:24	15:43:24
56	7	2080	0	0	15:53:30	15:54:30
56	8	2107	0	0	16:12:00	
57	1	6023	0	0		03:30:00
57	2	5922	0	0	03:36:48	03:37:48
57	3	2288	0	0	03:39:48	03:40:48
57	4	5926	0	0	03:45:00	03:46:00
57	5	5927	0	0	03:50:18	03:51:18
57	6	5930	0	0	03:54:18	03:55:18
57	7	5932	0	0	03:57:48	03:58:48
57	8	5933	0	0	04:01:30	04:02:30
57	9	5935	0	0	04:05:30	04:06:30
57	10	5938	0	0	04:08:30	04:09:30
57	11	5939	0	0	04:13:30	04:14:30
57	12	5941	0	0	04:17:00	04:18:00
57	13	5943	0	0	04:22:00	04:23:00
57	14	5946	0	0	04:27:00	04:28:00
57	15	5948	0	0	04:33:24	04:34:24
57	16	5034	0	0	04:39:00	04:40:00
57	17	5018	0	0	04:45:00	04:47:00
57	18	5020	0	0	04:52:00	04:53:00
57	19	5016	0	0	04:59:00	05:00:00
57	20	5021	0	0	05:12:30	05:13:30
57	21	4974	0	0	05:42:00	05:44:00
57	22	3755	0	0	06:22:00	06:23:00
57	23	3794	0	0	06:46:00	06:48:00
57	24	3811	0	0	07:11:00	07:12:00
57	25	2790	0	0	07:27:00	07:29:00
57	26	2764	0	0	07:37:30	07:38:30
57	27	2753	0	0	07:47:00	07:48:00
57	28	2773	0	0	07:52:00	07:57:00
57	29	3032	0	0	08:03:00	08:06:00
57	30	2890	0	0	08:23:30	08:24:30
57	31	2984	0	0	08:33:00	08:34:00
57	32	3000	0	0	08:44:00	08:45:00
57	33	3021	0	0	08:59:00	09:00:00
57	34	1626	0	0	09:10:30	09:11:30
57	35	1604	0	0	09:19:00	09:20:00
57	36	1590	0	0	09:32:00	09:33:00
57	37	2159	0	0	09:43:30	09:43:30
57	38	1426	0	0	09:48:00	10:07:00
57	39	2157	0	0	10:10:30	10:11:30
57	40	1460	0	0	10:40:30	10:41:30
57	41	1471	0	0	10:50:30	10:51:30
57	42	129	0	0	11:08:30	11:09:30
57	43	101	0	0	11:22:00	11:23:00
57	44	207	0	0	11:45:00	
58	1	5666	0	0		10:10:00
58	2	5657	0	0	10:19:00	10:20:00
58	3	5298	0	0	10:52:30	10:53:30
58	4	5237	0	0	11:03:30	11:04:30
58	5	5281	0	0	11:23:30	11:24:30
58	6	5166	0	0	11:39:30	11:40:30
58	7	5167	0	0	11:48:00	11:49:00
58	8	4844	0	0	11:55:00	11:56:00
58	9	4738	0	0	12:06:00	12:08:00
58	10	4858	0	0	12:26:30	12:27:30
58	11	4515	0	0	12:35:00	12:36:00
58	12	4683	0	0	12:51:00	13:00:00
58	13	4548	0	0	13:04:30	13:05:30
58	14	4558	0	0	13:16:00	13:17:00
58	15	3459	0	0	13:27:00	13:29:00
58	16	3455	0	0	13:37:00	13:38:00
58	17	3337	0	0	13:53:00	13:54:00
58	18	3416	0	0	14:07:00	14:08:00
58	19	2514	0	0	14:30:00	14:40:00
58	20	2533	0	0	15:05:00	15:06:00
58	21	2600	0	0	15:20:30	15:21:30
58	22	1008	0	0	15:36:00	15:37:00
58	23	970	0	0	16:01:00	16:04:00
58	24	768	0	0	16:34:30	16:35:30
58	25	5369	0	0	17:14:00	17:15:00
58	26	5577	0	0	17:30:30	17:33:30
58	27	5595	0	0	17:37:00	17:38:00
58	28	5638	0	0	17:41:30	17:42:30
58	29	4635	0	0	17:46:00	17:47:00
58	30	4583	0	0	17:54:00	
59	1	2108	0	0		11:44:00
59	2	2080	0	0	12:02:00	12:08:30
59	3	1838	0	0	12:19:00	12:20:00
59	4	1820	0	0	12:26:30	12:27:30
59	5	1833	0	0	12:32:30	12:33:30
59	6	1843	0	0	12:42:00	12:43:00
59	7	2061	0	0	12:53:30	12:54:30
59	8	2520	0	0	13:16:30	
60	1	2077	0	0		05:56:00
60	2	69	0	0	06:10:00	06:11:00
60	3	1283	0	0	06:32:00	06:33:00
60	4	1633	0	0	07:10:00	07:11:00
60	5	543	0	0	07:38:00	07:39:00
60	6	535	0	0	07:57:00	07:58:00
60	7	528	0	0	08:21:00	08:29:00
60	8	500	0	0	09:01:00	09:28:00
60	9	514	0	0	09:58:00	09:59:00
60	10	960	0	0	10:18:00	10:19:00
60	11	971	0	0	10:38:00	10:41:00
60	12	968	0	0	10:44:54	10:45:54
60	13	746	0	0	10:49:00	10:50:00
60	14	1102	0	0	10:58:00	10:59:00
60	15	1078	0	0	11:18:00	11:21:30
60	16	1219	0	0	11:32:30	11:33:30
60	17	1231	0	0	11:52:30	11:53:30
60	18	2609	0	0	12:22:24	12:23:24
60	19	2691	0	0	12:43:00	12:44:00
60	20	2835	0	0	12:56:00	12:57:00
60	21	2754	0	0	13:22:30	13:24:00
60	22	2774	0	0	13:28:00	13:41:00
60	23	3032	0	0	13:47:00	13:49:00
60	24	3120	0	0	14:28:30	14:29:30
60	25	3962	0	0	14:52:00	14:53:00
60	26	3978	0	0	15:04:00	15:05:00
60	27	3988	0	0	15:15:00	15:16:00
60	28	1881	0	0	15:27:30	15:28:30
60	29	4015	0	0	15:33:00	15:59:00
60	30	4089	0	0	16:27:00	16:28:00
60	31	5088	0	0	16:50:00	16:51:00
60	32	5058	0	0	17:07:00	17:08:00
60	33	5059	0	0	17:11:00	17:12:00
60	34	5070	0	0	17:19:00	17:20:00
60	35	5078	0	0	17:28:00	17:29:00
60	36	6290	0	0	17:40:00	17:41:00
60	37	6285	0	0	17:47:30	17:49:00
60	38	6265	0	0	18:24:30	18:25:30
60	39	6214	0	0	18:38:00	
61	1	525	0	0		18:35:00
61	2	523	0	0	18:43:00	18:45:00
61	3	521	0	0	19:20:00	19:22:00
61	4	638	0	0	20:26:00	20:30:00
61	5	633	0	0	21:15:00	21:17:00
61	6	631	0	0	21:44:00	21:46:00
61	7	630	0	0	22:36:00	22:38:00
61	8	656	0	0	23:06:00	23:08:00
61	9	1556	0	0	23:13:00	23:19:00
61	10	233	1	1	00:34:00	01:04:00
61	11	249	1	1	02:46:00	02:48:00
61	12	938	1	1	03:50:00	03:50:00
61	13	5210	1	1	03:56:00	03:57:00
61	14	5237	1	1	04:28:00	04:29:30
61	15	5477	1	1	05:16:00	05:19:00
61	16	5564	1	1	05:33:06	05:35:30
61	17	5555	1	1	05:45:00	05:46:00
61	18	5594	1	1	06:01:30	06:06:00
61	19	5053	1	1	06:35:00	06:36:00
61	20	3874	1	1	07:02:30	07:08:30
61	21	2753	1	1	08:02:00	08:02:00
61	22	2773	1	1	08:08:00	08:08:00
61	23	3031	1	0	08:23:00	
62	1	4686	0	0		05:10:00
62	2	4737	0	0	05:49:00	05:51:00
62	3	5166	0	0	06:11:30	06:16:30
62	4	5307	0	0	06:44:00	06:50:00
62	5	5312	0	0	06:56:00	06:57:00
62	6	5481	0	0	07:11:00	07:14:00
62	7	6027	0	0	08:08:00	08:14:00
62	8	5979	0	0	08:19:00	08:21:00
62	9	5962	0	0	08:36:30	08:37:30
62	10	6039	0	0	08:55:00	08:56:30
62	11	6084	0	0	09:11:30	09:12:30
62	12	6212	0	0	09:33:00	09:36:00
62	13	6266	0	0	09:47:00	09:48:00
62	14	6276	0	0	10:00:00	10:01:00
62	15	6293	0	0	10:10:00	10:11:00
62	16	6348	0	0	10:32:00	10:32:00
62	17	6345	0	0	10:36:00	
63	1	3103	0	0		17:31:00
63	2	2448	0	0	18:12:00	18:13:00
63	3	702	0	0	18:38:30	18:39:30
63	4	499	0	0	19:05:00	19:06:00
63	5	694	0	0	19:19:30	19:20:30
63	6	684	0	0	19:36:00	19:42:00
63	7	2422	0	0	19:55:06	19:56:06
63	8	2514	0	0	20:20:00	20:31:00
63	9	3416	0	0	20:52:00	20:53:00
63	10	3337	0	0	21:06:00	21:07:00
63	11	3455	0	0	21:21:30	21:22:30
63	12	3459	0	0	21:30:30	21:31:30
63	13	4557	0	0	21:41:30	21:42:30
63	14	4684	0	0	21:58:00	
64	1	4684	0	0		18:05:00
64	2	4547	0	0	18:10:12	18:11:12
64	3	4601	0	0	18:15:12	18:16:12
64	4	4647	0	0	18:35:48	18:36:48
64	5	3421	0	0	19:18:30	19:20:00
64	6	3560	0	0	19:43:00	19:44:00
64	7	3515	0	0	19:59:48	20:00:48
64	8	1057	0	0	20:32:30	20:33:30
64	9	1053	0	0	20:44:06	20:45:06
64	10	3637	0	0	20:52:36	20:53:36
64	11	3633	0	0	21:03:42	21:04:42
64	12	3630	0	0	21:18:18	21:19:18
64	13	3606	0	0	21:26:30	21:28:30
64	14	3684	0	0	21:39:30	21:40:30
64	15	3674	0	0	21:59:00	22:00:00
64	16	2807	0	0	22:11:00	22:22:00
64	17	2753	0	0	22:46:30	22:46:30
64	18	2774	0	0	22:52:00	22:52:00
64	19	3031	0	0	23:03:00	
65	1	5482	0	0		17:20:00
65	2	5496	0	0	17:34:00	17:39:00
65	3	5550	0	0	18:00:00	18:01:30
65	4	5594	0	0	18:13:30	18:15:00
65	5	5601	0	0	18:23:00	18:25:00
65	6	4886	0	0	18:40:00	18:42:00
65	7	3753	0	0	19:10:00	19:11:00
65	8	3728	0	0	19:43:30	19:47:30
65	9	3606	0	0	20:24:00	20:26:00
65	10	3630	0	0	20:32:36	20:33:36
65	11	3641	0	0	20:40:00	20:46:00
65	12	3643	0	0	20:50:30	20:51:30
65	13	3646	0	0	20:56:42	20:57:42
65	14	2662	0	0	21:15:30	21:21:00
65	15	2657	0	0	21:28:30	21:29:00
65	16	2609	0	0	21:52:00	21:53:00
65	17	2632	0	0	22:13:30	22:14:30
65	18	2668	0	0	22:36:00	
66	1	5301	0	0		14:21:00
66	2	5312	0	0	14:28:00	14:29:00
66	3	5478	0	0	14:44:00	14:47:00
66	4	5563	0	0	15:04:00	15:07:00
66	5	5594	0	0	15:34:30	15:35:00
66	6	2753	0	0	17:18:30	17:19:30
66	7	2767	0	0	17:24:00	17:29:00
66	8	3032	0	0	17:35:00	17:37:00
66	9	1255	0	0	19:02:30	19:03:00
66	10	5886	0	0	19:36:30	19:37:00
66	11	5369	0	0	19:47:30	19:48:00
66	12	5579	0	0	20:01:00	20:01:00
66	13	5595	0	0	20:07:00	20:07:00
66	14	5637	0	0	20:12:00	20:12:00
66	15	4635	0	0	20:17:00	20:17:00
66	16	4588	0	0	20:27:00	
67	1	6030	0	0		11:48:00
67	2	5593	0	0	12:47:00	12:49:00
67	3	5054	0	0	13:20:00	13:22:00
67	4	3874	0	0	13:50:00	13:52:00
67	5	2754	0	0	14:47:00	14:48:00
67	6	2773	0	0	14:52:00	15:01:00
67	7	3032	0	0	15:07:00	15:09:00
67	8	2914	0	0	15:22:12	15:23:12
67	9	2901	0	0	15:31:00	15:32:00
67	10	2964	0	0	15:58:30	15:59:30
67	11	2977	0	0	16:14:00	16:15:00
67	12	1308	0	0	16:25:00	16:26:00
67	13	1255	0	0	16:57:00	17:07:00
67	14	1328	0	0	17:23:30	17:24:30
67	15	5886	0	0	17:43:00	17:44:00
67	16	5370	0	0	17:55:00	18:00:00
67	17	5580	0	0	18:15:00	18:18:00
67	18	5595	0	0	18:22:00	18:23:00
67	19	5638	0	0	18:26:30	18:27:30
67	20	4635	0	0	18:31:00	18:33:00
67	21	4590	0	0	18:42:00	18:45:00
67	22	4767	0	0	18:54:30	18:55:30
67	23	4922	0	0	19:04:00	19:05:00
67	24	4160	0	0	19:25:00	19:27:00
67	25	3678	0	0	20:14:00	20:14:00
67	26	4055	0	0	21:14:00	21:14:00
67	27	3429	0	0	21:36:00	21:38:00
67	28	3104	0	0	21:52:00	21:53:00
67	29	2884	0	0	22:12:00	22:13:00
67	30	2852	0	0	22:26:00	22:27:00
67	31	2839	0	0	22:34:30	22:35:30
67	32	2853	0	0	22:45:30	22:46:30
67	33	1284	0	0	23:03:00	23:04:00
67	34	70	0	0	23:19:00	23:19:00
67	35	2071	0	0	23:34:00	
68	1	6346	0	0		13:10:00
68	2	6348	0	0	13:12:30	13:13:30
68	3	6293	0	0	13:34:00	13:36:00
68	4	6275	0	0	13:45:00	13:47:00
68	5	6266	0	0	13:59:00	14:00:00
68	6	6214	0	0	14:11:00	14:16:00
68	7	6083	0	0	14:37:30	14:38:30
68	8	6039	0	0	14:54:00	14:56:00
68	9	5961	0	0	15:13:30	15:18:30
68	10	5979	0	0	15:34:30	15:35:30
68	11	6024	0	0	15:40:00	15:52:00
68	12	5434	0	0	16:51:00	16:52:00
68	13	5302	0	0	17:06:30	17:14:00
68	14	5165	0	0	17:40:00	17:45:00
68	15	4738	0	0	18:06:00	18:12:00
68	16	4688	0	0	18:51:00	19:17:00
68	17	4169	0	0	19:50:00	19:56:00
68	18	4186	0	0	20:19:00	20:20:00
68	19	3319	0	0	20:47:00	20:55:00
68	20	3313	0	0	21:15:00	21:18:00
68	21	2107	0	0	21:33:00	
69	1	2522	0	0		12:46:00
69	2	2533	0	0	13:11:30	13:13:00
69	3	2600	0	0	13:27:00	13:29:00
69	4	1007	0	0	13:43:30	13:44:30
69	5	1083	0	0	14:12:00	14:14:00
69	6	1096	0	0	14:17:00	14:18:00
69	7	1103	0	0	14:21:30	14:22:30
69	8	1176	0	0	14:36:00	14:37:00
69	9	1180	0	0	14:45:00	14:46:00
69	10	1190	0	0	14:57:00	14:58:00
69	11	1255	0	0	15:20:00	15:21:00
69	12	1281	0	0	15:41:00	15:43:00
69	13	6436	0	0	16:09:30	16:09:30
69	14	6434	0	0	16:14:00	
70	1	4584	0	0		11:22:00
70	2	4636	0	0	11:29:30	11:31:30
70	3	5638	0	0	11:35:00	11:36:00
70	4	5596	0	0	11:39:30	11:40:30
70	5	5575	0	0	11:44:30	11:47:30
70	6	5370	0	0	12:03:00	12:04:00
70	7	5886	0	0	12:15:00	12:16:00
70	8	1327	0	0	12:34:00	12:42:00
70	9	1255	0	0	12:58:00	12:59:00
70	10	1307	0	0	13:30:00	13:32:00
70	11	2978	0	0	13:41:00	13:42:00
70	12	2963	0	0	13:58:00	14:00:00
70	13	2902	0	0	14:28:00	14:29:00
70	14	2914	0	0	14:36:30	14:37:30
70	15	3031	0	0	14:50:00	14:53:00
70	16	2768	0	0	14:59:00	15:20:00
70	17	2754	0	0	15:24:00	15:25:30
70	18	2807	0	0	15:44:00	15:45:00
70	19	3673	0	0	15:56:00	15:57:00
70	20	3684	0	0	16:16:00	16:17:00
70	21	3606	0	0	16:28:00	16:28:00
70	22	3611	0	0	16:35:00	
71	1	208	0	0		16:12:00
71	2	101	0	0	16:34:00	16:35:00
71	3	129	0	0	16:49:30	16:50:30
71	4	1472	0	0	17:07:00	17:08:00
71	5	1460	0	0	17:17:00	17:18:00
71	6	2155	0	0	17:45:30	17:46:30
71	7	1427	0	0	17:50:00	18:15:00
71	8	2155	0	0	18:18:30	18:19:30
71	9	1590	0	0	18:29:30	18:30:30
71	10	1604	0	0	18:42:30	18:43:30
71	11	1625	0	0	18:51:30	18:52:30
71	12	3022	0	0	19:04:00	19:05:00
71	13	2999	0	0	19:17:36	19:18:36
71	14	2984	0	0	19:27:42	19:28:42
71	15	2889	0	0	19:36:18	19:37:18
71	16	3031	0	0	19:55:00	19:57:00
71	17	2772	0	0	20:03:00	20:08:00
71	18	2753	0	0	20:12:00	20:14:30
71	19	2790	0	0	20:29:00	20:31:00
71	20	3811	0	0	20:48:00	20:49:00
71	21	3790	0	0	21:10:00	21:12:00
71	22	3755	0	0	21:36:00	21:38:00
71	23	4971	0	0	22:21:00	22:45:00
71	24	6030	1	0	00:47:00	
72	1	971	0	0		05:46:00
72	2	768	0	0	06:15:30	06:16:30
72	3	6358	0	0	06:33:30	06:34:30
72	4	6325	0	0	06:45:00	06:46:00
72	5	5369	0	0	06:58:00	07:00:00
72	6	5571	0	0	07:16:30	07:19:30
72	7	5596	0	0	07:23:00	07:24:00
72	8	5637	0	0	07:27:00	07:28:00
72	9	4635	0	0	07:31:00	07:32:00
72	10	4589	0	0	07:40:00	
73	1	4590	0	0		03:30:00
73	2	4636	0	0	03:37:30	03:39:30
73	3	5637	0	0	03:43:00	03:44:00
73	4	5596	0	0	03:47:30	03:48:30
73	5	5574	0	0	03:52:30	03:55:30
73	6	5370	0	0	04:11:00	04:12:00
73	7	5885	0	0	04:22:42	04:23:42
73	8	1327	0	0	04:42:00	04:43:00
73	9	1255	0	0	04:59:30	05:01:30
73	10	1308	0	0	05:32:30	05:33:30
73	11	2978	0	0	05:42:30	05:43:30
73	12	2963	0	0	05:59:00	06:00:00
73	13	2901	0	0	06:27:30	06:28:30
73	14	2914	0	0	06:36:30	06:37:30
73	15	3031	0	0	06:50:00	06:53:00
73	16	2770	0	0	06:59:00	07:12:00
73	17	2753	0	0	07:16:00	07:17:30
73	18	2808	0	0	07:36:36	07:37:36
73	19	3674	0	0	07:48:48	07:49:48
73	20	3683	0	0	08:08:30	08:09:30
73	21	3606	0	0	08:20:06	08:20:06
73	22	3612	0	0	08:26:18	
74	1	2077	0	0		04:05:00
74	2	69	0	0	04:17:00	04:18:00
74	3	1283	0	0	04:33:00	04:35:00
74	4	2854	0	0	04:52:00	04:53:00
74	5	2839	0	0	05:03:00	05:04:00
74	6	2851	0	0	05:13:00	05:16:00
74	7	2884	0	0	05:30:00	05:32:00
74	8	3104	0	0	05:53:00	06:07:00
74	9	3429	0	0	06:27:12	06:28:12
74	10	4056	0	0	06:52:00	06:52:00
74	11	3678	0	0	07:53:00	07:53:00
74	12	4160	0	0	08:49:00	08:51:00
74	13	4921	0	0	09:10:30	09:11:30
74	14	4768	0	0	09:20:30	09:21:30
74	15	4582	0	0	09:31:00	09:36:00
74	16	4636	0	0	09:43:30	09:45:30
74	17	5637	0	0	09:49:00	09:50:00
74	18	5595	0	0	09:53:30	09:54:30
74	19	5580	0	0	09:58:30	10:00:30
74	20	5370	0	0	10:15:30	10:16:30
74	21	5885	0	0	10:27:00	10:28:00
74	22	1327	0	0	10:46:00	10:47:00
74	23	1256	0	0	11:04:00	11:05:00
74	24	1308	0	0	11:35:30	11:36:30
74	25	2977	0	0	11:45:06	11:46:06
74	26	2964	0	0	12:00:30	12:01:30
74	27	2902	0	0	12:29:30	12:30:30
74	28	2913	0	0	12:38:00	12:39:00
74	29	3031	0	0	12:51:00	12:53:00
74	30	2768	0	0	12:59:00	13:08:00
74	31	2754	0	0	13:12:00	13:13:00
74	32	3873	0	0	14:03:30	14:04:30
74	33	5054	0	0	14:32:00	14:33:00
74	34	5593	0	0	15:05:00	15:06:00
74	35	6023	0	0	16:11:00	
75	1	4584	0	0		14:47:00
75	2	4635	0	0	14:54:30	14:55:30
75	3	5638	0	0	14:59:00	15:00:00
75	4	5596	0	0	15:04:00	15:05:00
75	5	5579	0	0	15:09:00	15:12:00
75	6	5468	0	0	15:18:00	15:18:30
75	7	5370	0	0	15:29:00	15:30:00
75	8	6358	0	0	15:51:00	15:53:00
75	9	767	0	0	16:09:30	16:10:30
75	10	972	0	0	16:42:00	16:57:00
75	11	968	0	0	17:01:12	17:01:42
75	12	746	0	0	17:05:00	17:05:30
75	13	1101	0	0	17:13:30	17:14:30
75	14	1082	0	0	17:40:30	17:42:30
75	15	1220	0	0	17:53:30	17:54:00
75	16	1231	0	0	18:13:00	18:14:00
75	17	2610	0	0	18:44:00	18:45:00
75	18	2658	0	0	19:07:42	19:08:12
75	19	2662	0	0	19:15:42	19:16:12
75	20	3646	0	0	19:32:54	19:33:24
75	21	3644	0	0	19:38:30	19:39:00
75	22	3642	0	0	19:43:30	19:46:00
75	23	3633	0	0	19:55:42	19:56:12
75	24	3638	0	0	20:06:06	20:06:36
75	25	1050	0	0	20:16:42	20:17:12
75	26	4886	0	0	21:18:00	21:19:00
75	27	5602	0	0	21:35:00	21:36:00
75	28	5593	0	0	21:43:00	21:44:00
75	29	5556	0	0	22:00:00	22:01:00
75	30	5559	0	0	22:04:30	22:05:00
75	31	5564	0	0	22:11:00	22:13:00
75	32	5477	0	0	22:27:00	22:31:00
75	33	5516	0	0	22:52:00	22:53:00
75	34	5646	0	0	23:09:00	23:10:30
75	35	5657	0	0	23:18:00	23:19:00
75	36	5665	0	0	23:29:00	
76	1	5980	0	0		18:21:00
76	2	5776	0	0	19:18:48	19:19:48
76	3	5658	0	0	19:35:30	19:43:00
76	4	5298	0	0	20:16:30	20:17:30
76	5	5238	0	0	20:28:00	20:37:00
76	6	5165	0	0	21:11:00	21:20:00
76	7	5168	0	0	21:28:30	21:30:00
76	8	4844	0	0	21:37:00	21:38:00
76	9	4738	0	0	21:50:00	21:52:00
76	10	4679	0	0	22:38:00	
77	1	6028	0	0		13:55:00
77	2	5980	0	0	13:59:00	14:01:00
77	3	6040	0	0	14:40:30	14:42:00
77	4	6061	0	0	15:01:00	15:02:00
77	5	6071	0	0	15:15:30	15:16:30
77	6	6078	0	0	15:29:36	15:30:36
77	7	6130	0	0	15:38:30	15:39:30
77	8	6139	0	0	15:43:30	15:44:30
77	9	6159	0	0	16:13:00	16:14:00
77	10	6161	0	0	16:20:30	16:21:30
77	11	6168	0	0	16:28:30	16:29:30
77	12	6171	0	0	16:35:30	16:36:30
77	13	6201	0	0	16:42:00	16:43:00
77	14	6199	0	0	16:47:30	16:48:30
77	15	6195	0	0	16:57:30	16:58:30
77	16	6182	0	0	17:09:00	17:28:00
77	17	6184	0	0	17:30:30	17:31:30
77	18	6188	0	0	17:43:00	
78	1	3103	0	0		13:23:00
78	2	2447	0	0	14:04:00	14:05:00
78	3	702	0	0	14:31:30	14:32:30
78	4	500	0	0	15:12:00	15:13:00
78	5	694	0	0	15:27:36	15:28:36
78	6	684	0	0	15:45:00	15:46:00
78	7	2421	0	0	15:56:00	15:57:00
78	8	2520	0	0	16:20:00	16:31:00
78	9	3415	0	0	16:52:00	16:53:00
78	10	3338	0	0	17:06:00	17:07:00
78	11	3456	0	0	17:23:00	17:24:00
78	12	3460	0	0	17:32:24	17:33:24
78	13	4558	0	0	17:43:42	17:44:42
78	14	4682	0	0	18:00:00	18:13:00
78	15	4515	0	0	18:28:00	18:29:00
78	16	4857	0	0	18:37:00	18:38:00
78	17	4737	0	0	18:57:00	19:00:00
78	18	4838	0	0	19:29:30	19:30:30
78	19	5307	0	0	20:03:00	20:06:00
78	20	5311	0	0	20:12:30	20:13:30
78	21	5479	0	0	20:30:00	20:34:00
78	22	5496	0	0	20:50:30	20:52:00
78	23	5522	0	0	21:01:00	21:05:00
78	24	5795	0	0	21:14:00	21:15:30
78	25	5808	0	0	21:23:30	21:24:30
78	26	6030	0	0	21:46:00	
79	1	6026	0	0		13:11:00
79	2	5937	0	0	14:00:00	14:14:00
79	3	5945	0	0	14:26:00	14:33:00
79	4	5015	0	0	14:58:30	14:59:00
79	5	5022	0	0	15:11:30	15:12:00
79	6	4970	0	0	15:41:00	15:42:00
79	7	3756	0	0	16:19:00	16:23:00
79	8	3789	0	0	16:47:00	16:49:00
79	9	3812	0	0	17:10:30	17:11:30
79	10	2790	0	0	17:26:00	17:27:00
79	11	2763	0	0	17:34:30	17:36:30
79	12	2754	0	0	17:44:00	17:48:00
79	13	2771	0	0	17:52:00	18:01:00
79	14	3031	0	0	18:07:00	18:09:00
79	15	2913	0	0	18:22:00	18:23:00
79	16	2902	0	0	18:30:30	18:31:30
79	17	2963	0	0	18:58:30	18:59:30
79	18	2977	0	0	19:14:00	19:14:30
79	19	1307	0	0	19:24:00	19:25:00
79	20	1297	0	0	19:39:30	19:40:00
79	21	6469	0	0	19:57:30	19:58:00
79	22	6436	0	0	20:16:30	20:16:30
79	23	6427	0	0	20:21:00	
80	1	5480	0	0		12:20:00
80	2	5432	0	0	12:31:00	12:31:30
80	3	5434	0	0	12:37:00	12:37:30
80	4	5359	0	0	12:50:00	12:50:30
80	5	2009	0	0	13:05:00	13:06:30
80	6	5593	0	0	13:21:30	13:22:30
80	7	5050	0	0	13:55:30	13:56:30
80	8	4972	0	0	14:27:00	
81	1	5308	0	0		08:08:00
81	2	5312	0	0	08:14:00	08:15:00
81	3	5470	0	0	08:24:00	08:29:00
81	4	5476	0	0	08:36:00	08:38:00
81	5	5562	0	0	08:52:30	08:55:00
81	6	5560	0	0	09:01:00	09:02:00
81	7	5555	0	0	09:05:30	09:06:30
81	8	5594	0	0	09:21:30	09:23:00
81	9	5050	0	0	09:54:00	09:54:30
81	10	4974	0	0	10:27:00	
82	1	6031	0	0		07:40:00
82	2	5926	0	0	07:53:30	07:53:30
82	3	5945	0	0	08:32:30	08:40:30
82	4	5015	0	0	09:06:30	09:07:00
82	5	5021	0	0	09:20:00	09:20:30
82	6	4972	0	0	09:49:00	09:50:00
82	7	2753	0	0	11:41:30	11:43:00
82	8	2768	0	0	11:47:00	12:01:00
82	9	3031	0	0	12:07:00	12:09:00
82	10	2914	0	0	12:22:00	12:23:00
82	11	2901	0	0	12:30:30	12:31:30
82	12	2963	0	0	12:58:00	12:59:00
82	13	2978	0	0	13:13:30	13:14:00
82	14	1307	0	0	13:24:00	13:25:00
82	15	1298	0	0	13:38:42	13:39:12
82	16	6470	0	0	13:56:30	13:57:00
82	17	6435	0	0	14:14:30	14:14:30
82	18	6431	0	0	14:20:00	
83	1	153	0	0		19:06:00
83	2	170	1	1	01:32:00	01:52:00
83	3	4057	1	1	06:00:00	06:00:00
83	4	4050	1	1	06:18:00	06:22:00
83	5	4053	1	1	06:25:30	06:26:30
83	6	4041	1	1	06:40:30	06:41:30
83	7	4007	1	1	07:09:00	07:10:00
83	8	4012	1	1	07:21:00	07:24:00
83	9	1882	1	1	07:30:00	07:31:00
83	10	3987	1	1	07:48:00	07:49:00
83	11	3977	1	1	08:02:30	08:03:30
83	12	3961	1	1	08:16:00	08:17:00
83	13	3119	1	1	08:45:30	08:46:30
83	14	3032	1	1	09:34:30	09:34:30
83	15	2770	1	1	09:43:00	09:43:00
83	16	2754	1	0	10:08:30	
84	1	6032	0	0		05:07:00
84	2	5807	0	0	05:23:30	05:26:00
84	3	5796	0	0	05:34:30	05:38:00
84	4	5522	0	0	05:48:00	05:53:00
84	5	5496	0	0	06:02:00	06:06:30
84	6	5434	0	0	06:25:30	06:36:00
84	7	5359	0	0	06:48:00	06:50:00
84	8	5372	0	0	07:12:00	07:18:00
84	9	5388	0	0	07:36:42	07:37:42
84	10	4794	0	0	07:52:00	07:53:00
84	11	4807	0	0	08:04:18	08:05:18
84	12	3531	0	0	08:22:36	08:23:36
84	13	3535	0	0	08:35:36	08:36:36
84	14	3560	0	0	08:53:12	08:55:12
84	15	3502	0	0	09:12:06	09:13:06
84	16	3480	0	0	09:25:30	09:26:30
84	17	2470	0	0	09:46:00	09:47:00
84	18	2514	0	0	10:14:00	
85	1	1820	0	0		21:52:00
85	2	2059	0	0	22:18:00	22:19:00
85	3	2000	0	0	22:35:30	22:36:30
85	4	398	0	0	23:00:00	
86	1	6028	0	0		20:35:00
86	2	5946	0	0	21:47:30	21:55:00
86	3	5015	0	0	22:23:30	22:24:30
86	4	5022	0	0	22:38:00	22:39:00
86	5	4973	0	0	23:09:00	23:12:00
86	6	3755	0	1	23:51:00	00:06:00
86	7	3791	1	1	00:32:00	00:37:00
86	8	3811	1	1	01:05:00	01:07:00
86	9	2790	1	1	01:27:30	01:28:30
86	10	2763	1	1	01:38:00	01:39:00
86	11	2754	1	1	01:47:00	01:48:30
86	12	2774	1	1	01:53:00	02:20:00
86	13	3031	1	1	02:26:00	02:29:00
86	14	2913	1	1	02:43:00	02:44:00
86	15	2901	1	1	02:54:00	02:55:00
86	16	2963	1	1	03:28:00	03:29:00
86	17	2978	1	1	03:48:00	03:49:00
86	18	1308	1	1	04:01:00	04:02:00
86	19	1256	1	1	04:37:00	04:39:00
86	20	1327	1	1	04:58:00	04:59:00
86	21	5885	1	1	05:21:00	05:22:00
86	22	5370	1	1	05:35:00	05:36:00
86	23	5580	1	1	05:55:00	05:58:00
86	24	5596	1	1	06:02:30	06:03:30
86	25	5637	1	1	06:08:00	06:09:00
86	26	4635	1	1	06:13:30	06:14:30
86	27	4588	1	1	06:23:00	06:33:00
86	28	4768	1	1	06:44:00	06:45:00
86	29	4922	1	1	06:55:00	06:57:00
86	30	4160	1	1	07:21:00	07:35:00
86	31	3678	1	1	08:37:00	08:37:00
86	32	4055	1	1	09:37:00	09:37:00
86	33	3429	1	1	10:00:00	10:17:00
86	34	3280	1	1	10:43:00	10:44:00
86	35	3270	1	0	10:56:00	
87	1	921	0	0		14:12:00
87	2	325	0	0	14:27:00	14:42:00
87	3	276	0	0	15:04:00	15:29:00
87	4	349	0	0	15:50:30	15:51:30
87	5	1657	0	0	16:14:30	16:15:30
87	6	1640	0	0	16:39:00	16:40:00
87	7	1428	0	0	17:08:00	17:33:00
87	8	2162	0	0	17:36:00	17:37:00
87	9	3032	0	0	18:55:30	18:57:00
87	10	2767	0	0	19:03:00	19:08:00
87	11	2753	0	0	19:12:00	19:13:30
87	12	3874	0	0	20:05:00	20:06:00
87	13	5053	0	0	20:33:00	20:36:30
87	14	5946	0	0	21:38:06	21:50:00
87	15	6028	0	0	22:33:00	
88	1	6029	0	0		18:19:00
88	2	5980	0	0	18:23:30	18:24:30
88	3	6039	0	0	19:09:00	19:20:00
88	4	6062	0	0	19:41:00	19:42:00
88	5	6071	0	0	19:55:30	19:56:30
88	6	6143	0	0	20:41:30	20:42:30
88	7	6152	0	0	20:52:00	20:53:00
88	8	6310	0	0	21:15:00	
89	1	6024	0	0		05:00:00
89	2	5946	0	0	05:47:00	05:47:30
89	3	5018	0	0	06:09:30	06:28:00
89	4	5016	0	0	06:39:00	06:39:30
89	5	5021	0	0	06:52:00	06:52:30
89	6	4970	0	0	07:22:00	07:38:00
89	7	2753	0	0	09:32:00	09:32:00
89	8	2773	0	0	09:40:00	09:40:00
89	9	3032	0	0	09:55:00	
90	1	4050	0	0		12:32:00
90	2	4054	0	0	12:35:30	12:36:30
90	3	4041	0	0	12:47:00	12:48:00
90	4	4007	0	0	13:12:30	13:13:30
90	5	4015	0	0	13:23:00	13:26:00
90	6	1882	0	0	13:31:00	13:32:00
90	7	3987	0	0	13:44:00	13:45:00
90	8	3977	0	0	13:55:30	13:56:30
90	9	3961	0	0	14:07:00	14:08:00
90	10	3119	0	0	14:30:30	14:31:30
90	11	3032	0	0	15:11:00	15:13:00
90	12	2774	0	0	15:19:00	15:32:00
90	13	2754	0	0	15:35:30	15:37:00
90	14	2835	0	0	16:02:30	16:03:30
90	15	2691	0	0	16:16:30	16:17:30
90	16	2610	0	0	16:37:00	16:38:00
90	17	1046	0	0	17:08:00	17:09:00
90	18	1047	0	0	17:25:00	17:26:00
90	19	1022	0	0	17:50:00	17:53:00
90	20	2600	0	0	18:10:00	18:11:00
90	21	2534	0	0	18:24:30	18:25:30
90	22	2519	0	0	18:52:00	18:55:00
90	23	2062	0	0	19:19:48	19:20:48
90	24	1844	0	0	19:29:30	19:30:30
90	25	1834	0	0	19:39:00	19:40:00
90	26	1819	0	0	19:45:00	19:46:00
90	27	1838	0	0	19:52:30	19:53:30
90	28	2080	0	0	20:04:00	20:05:00
90	29	2107	0	0	20:23:00	
91	1	6029	0	0		15:11:00
91	2	5808	0	0	15:27:36	15:28:36
91	3	5795	0	0	15:36:00	15:39:00
91	4	5522	0	0	15:47:00	15:48:00
91	5	5550	0	0	16:01:30	16:04:00
91	6	5593	0	0	16:19:00	16:20:00
91	7	5053	0	0	16:49:30	16:50:30
91	8	3874	0	0	17:15:30	17:16:30
91	9	3725	0	0	17:45:00	17:46:00
91	10	3606	0	0	18:13:06	18:15:00
91	11	3629	0	0	18:21:36	18:22:36
91	12	3633	0	0	18:36:24	18:37:24
91	13	3637	0	0	18:47:18	18:47:48
91	14	1053	0	0	18:55:06	18:56:06
91	15	1057	0	0	19:07:00	19:08:00
91	16	3515	0	0	19:40:00	19:41:30
91	17	3502	0	0	20:11:54	20:12:54
91	18	3480	0	0	20:25:00	20:26:00
91	19	2470	0	0	20:45:30	20:46:30
91	20	2513	0	0	21:08:00	
92	1	4685	0	0		19:35:00
92	2	4229	0	0	20:05:30	20:06:30
92	3	4236	0	0	20:13:30	20:14:30
92	4	4240	0	0	20:27:00	20:36:00
92	5	4277	0	0	20:45:30	20:48:30
92	6	4305	0	0	21:10:00	21:11:00
92	7	4313	0	0	21:33:00	
93	1	4314	0	0		06:45:00
93	2	4306	0	0	07:06:30	07:07:30
93	3	4278	0	0	07:25:00	07:26:00
93	4	4240	0	0	07:39:30	07:44:00
93	5	4235	0	0	07:56:00	07:57:00
93	6	4230	0	0	08:03:30	08:04:30
93	7	4687	0	0	08:35:00	
94	1	3032	0	0		05:13:00
94	2	2772	0	0	05:19:00	05:28:00
94	3	2754	0	0	05:32:00	05:33:00
94	4	3874	0	0	06:26:00	06:28:00
94	5	5053	0	0	06:55:00	06:57:30
94	6	5593	0	0	07:30:00	07:32:00
94	7	5550	0	0	07:46:00	07:47:00
94	8	5496	0	0	08:05:30	08:07:00
94	9	5478	0	0	08:23:00	08:25:00
94	10	5516	0	0	08:49:00	09:03:30
94	11	5238	0	0	09:31:00	09:33:30
94	12	5265	0	0	09:57:00	09:58:30
94	13	5210	0	0	10:12:00	10:14:00
94	14	938	0	0	10:20:00	10:34:00
94	15	250	0	0	10:41:00	10:43:00
94	16	252	0	0	10:49:00	10:51:00
94	17	242	0	0	11:18:00	11:20:00
94	18	258	0	0	11:40:00	11:42:00
94	19	265	0	0	11:57:00	11:59:00
94	20	268	0	0	12:09:00	12:11:00
94	21	244	0	0	12:27:00	12:29:00
94	22	234	0	0	12:40:00	12:55:00
94	23	1555	0	0	13:49:00	14:02:00
94	24	656	0	0	14:07:00	14:10:00
94	25	627	0	0	14:27:00	
95	1	3032	0	0		15:09:00
95	2	2768	0	0	15:15:00	15:28:00
95	3	2754	0	0	15:32:00	15:33:00
95	4	4910	0	0	17:29:30	17:37:00
95	5	5372	0	0	17:57:30	18:03:00
95	6	4738	0	0	18:37:00	18:39:00
95	7	4857	0	0	18:58:00	18:59:00
95	8	4515	0	0	19:06:42	19:07:42
95	9	4687	0	0	19:23:00	19:29:00
95	10	4170	0	0	20:02:00	20:03:00
95	11	4206	0	0	20:13:30	20:14:00
95	12	4201	0	0	20:26:54	20:27:54
95	13	4105	0	0	20:40:06	20:41:06
95	14	4121	0	0	20:48:24	20:48:54
95	15	4115	0	0	20:55:00	20:56:00
95	16	4113	0	0	20:59:00	
96	1	6345	0	0		15:44:00
96	2	6347	0	0	15:46:36	15:47:36
96	3	6331	0	0	16:00:00	16:02:00
96	4	6293	0	0	16:11:00	16:13:00
96	5	6276	0	0	16:22:00	16:27:00
96	6	6286	0	0	16:48:00	16:50:00
96	7	6290	0	0	16:56:12	16:58:00
96	8	5077	0	0	17:09:30	17:10:30
96	9	5069	0	0	17:22:00	17:23:00
96	10	5059	0	0	17:29:06	17:30:06
96	11	5057	0	0	17:32:48	17:33:48
96	12	5098	0	0	18:00:00	18:01:00
96	13	3896	0	0	18:35:30	18:36:30
96	14	3772	0	0	18:55:00	19:04:00
96	15	3794	0	0	19:40:00	19:44:00
96	16	3811	0	0	20:09:00	20:10:00
96	17	2790	0	0	20:27:00	20:28:00
96	18	2764	0	0	20:36:00	20:37:00
96	19	2754	0	0	20:45:00	20:45:00
96	20	2767	0	0	20:52:00	20:52:00
96	21	3031	0	0	21:15:00	
97	1	5665	0	0		11:38:00
97	2	5657	0	0	11:47:30	11:49:00
97	3	5645	0	0	11:57:00	11:59:00
97	4	5516	0	0	12:17:30	12:29:00
97	5	5477	0	0	12:49:00	12:52:00
97	6	5561	0	0	13:06:30	13:08:30
97	7	5594	0	0	13:32:30	13:34:30
97	8	2754	0	0	15:18:30	15:19:30
97	9	2769	0	0	15:24:00	15:29:00
97	10	3032	0	0	15:35:00	15:37:00
97	11	1255	0	0	17:02:30	17:03:00
97	12	5885	0	0	17:36:30	17:37:00
97	13	5370	0	0	17:47:30	17:48:00
97	14	5580	0	0	18:01:00	18:01:00
97	15	5595	0	0	18:07:00	18:07:00
97	16	5638	0	0	18:12:00	18:12:00
97	17	4636	0	0	18:17:00	18:17:00
97	18	4588	0	0	18:27:00	
98	1	4056	0	0		06:26:00
98	2	3429	0	0	06:55:00	06:56:00
98	3	3104	0	0	07:10:00	07:11:00
98	4	1284	0	0	08:50:00	09:10:00
98	5	2385	0	0	09:52:00	09:53:00
98	6	2512	0	0	10:33:00	10:39:00
98	7	3416	0	0	11:00:30	11:01:30
98	8	3337	0	0	11:14:00	11:15:00
98	9	3456	0	0	11:30:00	11:31:00
98	10	3460	0	0	11:39:00	11:40:00
98	11	4557	0	0	11:50:00	11:51:00
98	12	4679	0	0	12:06:00	12:15:00
98	13	4516	0	0	12:29:30	12:30:30
98	14	4858	0	0	12:37:30	12:38:30
98	15	4737	0	0	12:57:30	12:59:30
98	16	4837	0	0	13:22:00	13:27:00
98	17	5307	0	0	13:55:00	13:58:30
98	18	5312	0	0	14:04:30	14:05:30
98	19	5480	0	0	14:20:00	14:23:00
98	20	5495	0	0	14:37:30	14:42:30
98	21	5522	0	0	14:51:00	14:54:30
98	22	5795	0	0	15:03:00	15:06:00
98	23	5807	0	0	15:13:00	15:18:00
98	24	6025	0	0	15:33:00	15:36:00
98	25	5980	0	0	15:40:30	15:41:30
98	26	5962	0	0	15:57:30	15:58:30
98	27	5973	0	0	16:05:00	16:06:00
98	28	6039	0	0	16:18:00	16:19:30
98	29	6084	0	0	16:34:30	16:35:30
98	30	6086	0	0	16:42:00	16:43:00
98	31	6091	0	0	16:47:30	16:48:30
98	32	6214	0	0	17:01:00	17:04:00
98	33	6266	0	0	17:15:30	17:16:30
98	34	6276	0	0	17:29:00	17:30:00
98	35	6294	0	0	17:39:00	17:40:00
98	36	6331	0	0	17:48:30	17:49:30
98	37	6348	0	0	18:03:00	18:03:00
98	38	6346	0	0	18:07:00	
99	1	3031	0	0		05:53:00
99	2	2767	0	0	05:59:00	06:04:00
99	3	2753	0	0	06:07:30	06:09:00
99	4	3874	0	0	07:01:30	07:02:30
99	5	5054	0	0	07:29:30	07:31:30
99	6	6025	0	0	09:00:00	09:12:00
99	7	5852	0	0	09:46:00	09:55:12
99	8	5866	0	0	10:21:30	10:22:30
99	9	5899	0	0	11:07:00	11:11:30
99	10	5914	0	0	11:22:00	11:23:00
99	11	5916	0	0	11:29:00	
100	1	5665	0	0		16:48:00
100	2	5657	0	0	16:57:30	16:58:00
100	3	5645	0	0	17:06:00	17:06:30
100	4	5516	0	0	17:25:00	17:28:00
100	5	5477	0	0	17:48:00	17:53:00
100	6	5564	0	0	18:07:30	18:10:30
100	7	5594	0	0	18:34:30	18:35:00
100	8	2754	0	0	20:18:30	20:19:30
100	9	2774	0	0	20:24:00	20:29:00
100	10	3031	0	0	20:35:00	20:37:00
100	11	1255	0	0	22:03:00	22:03:30
100	12	5885	0	0	22:36:30	22:37:00
100	13	5370	0	0	22:47:30	22:48:00
100	14	5579	0	0	23:01:00	23:01:00
100	15	5596	0	0	23:07:00	23:07:00
100	16	5637	0	0	23:12:00	23:12:00
100	17	4635	0	0	23:17:00	23:17:00
100	18	4581	0	0	23:27:00	
101	1	4589	0	0		18:05:00
101	2	4635	0	0	18:12:30	18:14:30
101	3	5637	0	0	18:18:00	18:19:00
101	4	5595	0	0	18:22:30	18:23:30
101	5	5576	0	0	18:28:00	18:31:00
101	6	5370	0	0	18:46:00	18:47:00
101	7	767	0	0	19:23:30	19:27:00
101	8	972	0	0	19:58:00	20:04:00
101	9	1008	0	0	20:30:00	20:31:00
101	10	2599	0	0	20:45:30	20:46:30
101	11	2534	0	0	21:00:30	21:01:30
101	12	2511	0	0	21:27:00	21:31:00
101	13	3416	0	0	21:52:00	21:53:00
101	14	3337	0	0	22:06:00	22:07:00
101	15	3456	0	0	22:21:30	22:23:30
101	16	3460	0	0	22:31:30	22:32:30
101	17	4557	0	0	22:42:30	22:44:30
101	18	4687	0	0	23:00:00	
102	1	2078	0	0		18:27:00
102	2	70	0	0	18:40:00	18:41:00
102	3	1283	0	0	18:55:00	18:56:00
102	4	2408	0	0	19:11:12	19:12:12
102	5	2396	0	0	19:26:36	19:27:36
102	6	2385	0	0	19:39:18	19:40:18
102	7	2377	0	0	19:56:06	19:57:06
102	8	2369	0	0	20:06:00	20:07:00
102	9	2511	0	0	20:24:00	20:27:00
102	10	3416	0	0	20:47:42	20:48:42
102	11	3338	0	0	21:01:30	21:02:30
102	12	3455	0	0	21:17:30	21:18:30
102	13	4687	0	0	21:48:00	
103	1	3031	0	0		17:05:00
103	2	2768	0	0	17:11:00	17:32:00
103	3	2754	0	0	17:35:30	17:37:00
103	4	2835	0	0	18:02:30	18:03:30
103	5	2692	0	0	18:16:30	18:17:30
103	6	2610	0	0	18:37:00	18:38:00
103	7	2723	0	0	19:01:30	19:02:30
103	8	2715	0	0	19:16:00	19:17:00
103	9	2464	0	0	19:30:00	19:31:00
103	10	2444	0	0	19:43:00	19:44:00
103	11	2344	0	0	20:03:00	20:04:00
103	12	2518	0	0	20:14:00	20:40:00
103	13	2062	0	0	21:03:00	21:04:00
103	14	1844	0	0	21:16:00	21:18:00
103	15	1833	0	0	21:26:30	21:27:30
103	16	1819	0	0	21:32:00	21:47:00
103	17	1838	0	0	21:53:30	21:54:30
103	18	2079	0	0	22:05:00	22:06:00
103	19	2107	0	0	22:24:00	
104	1	3615	0	0		19:35:30
104	2	3605	0	0	19:41:00	19:42:00
104	3	3683	0	0	19:53:00	19:54:00
104	4	3673	0	0	20:13:30	20:16:30
104	5	2807	0	0	20:27:48	20:28:48
104	6	2754	0	0	20:47:48	20:52:00
104	7	2774	0	0	20:56:00	21:01:00
104	8	3032	0	0	21:07:00	21:09:00
104	9	2914	0	0	21:22:30	21:23:30
104	10	2901	0	0	21:31:30	21:32:30
104	11	2963	0	0	22:00:12	22:03:00
104	12	2978	0	0	22:19:18	22:20:18
104	13	1308	0	0	22:29:12	22:30:12
104	14	1255	0	0	23:00:00	23:01:00
104	15	1328	0	0	23:17:30	23:18:30
104	16	5885	0	0	23:37:00	23:38:00
104	17	5369	0	0	23:48:24	23:49:24
104	18	5571	1	1	00:04:30	00:06:00
104	19	5596	1	1	00:10:00	00:11:00
104	20	5637	1	1	00:14:30	00:15:30
104	21	4635	1	1	00:19:00	00:20:00
104	22	4584	1	0	00:28:00	
105	1	331	0	0		10:08:00
105	2	335	0	0	10:14:00	10:16:00
105	3	273	0	0	10:48:00	10:50:00
105	4	278	0	0	11:09:00	11:11:00
105	5	283	0	0	11:48:00	11:50:00
105	6	263	0	0	12:11:00	12:13:00
105	7	247	0	0	12:32:00	12:37:00
105	8	242	0	0	13:06:00	13:08:00
105	9	252	0	0	13:35:00	13:37:00
105	10	249	0	0	13:43:00	13:46:00
105	11	937	0	0	13:53:00	14:32:00
105	12	5609	0	0	14:52:00	14:53:00
105	13	5657	0	0	15:37:00	15:38:00
105	14	5776	0	0	15:53:30	15:54:30
105	15	5813	0	0	16:09:00	16:10:00
105	16	5796	0	0	16:14:00	16:16:00
105	17	5808	0	0	16:23:30	16:26:00
105	18	6026	0	0	16:41:00	16:47:00
105	19	5980	0	0	16:52:00	16:57:00
105	20	5961	0	0	17:13:00	17:15:00
105	21	6039	0	0	17:35:00	17:44:00
105	22	6084	0	0	17:59:00	18:02:00
105	23	6213	0	0	18:25:00	18:28:00
105	24	6266	0	0	18:39:30	18:40:30
105	25	6275	0	0	18:53:00	18:54:00
105	26	6293	0	0	19:03:00	19:04:00
105	27	6348	0	0	19:25:00	19:25:00
105	28	6346	0	0	19:29:00	
106	1	2511	0	0		07:13:00
106	2	2470	0	0	07:35:48	07:36:48
106	3	3480	0	0	07:55:54	07:56:54
106	4	3502	0	0	08:08:30	08:09:30
106	5	3516	0	0	08:39:00	08:40:00
106	6	1058	0	0	09:13:00	09:14:00
106	7	1053	0	0	09:25:30	09:26:30
106	8	3638	0	0	09:33:48	09:34:18
106	9	3634	0	0	09:44:18	09:45:18
106	10	3629	0	0	09:58:54	09:59:54
106	11	3606	0	0	10:07:00	10:09:00
106	12	3727	0	0	10:44:30	10:45:30
106	13	3753	0	0	11:23:30	11:24:30
106	14	4885	0	0	11:54:00	11:55:00
106	15	5601	0	0	12:10:30	12:12:00
106	16	5594	0	0	12:19:30	12:23:00
106	17	5549	0	0	12:37:30	12:38:00
106	18	5522	0	0	12:52:30	12:55:30
106	19	5796	0	0	13:04:00	13:07:00
106	20	5807	0	0	13:14:30	13:16:30
106	21	6029	0	0	13:31:00	
107	1	6026	0	0		15:11:00
107	2	5938	0	0	15:55:00	15:59:00
107	3	5945	0	0	16:12:00	16:12:30
107	4	5018	0	0	16:28:30	16:37:00
107	5	5015	0	0	16:47:36	16:52:36
107	6	5022	0	0	17:05:06	17:05:36
107	7	4971	0	0	17:35:00	17:40:00
107	8	3755	0	0	18:21:00	18:23:00
107	9	3793	0	0	18:46:00	18:48:00
107	10	3811	0	0	19:10:00	19:11:00
107	11	2789	0	0	19:26:00	19:27:00
107	12	2764	0	0	19:34:30	19:36:30
107	13	2754	0	0	19:45:00	19:48:00
107	14	2767	0	0	19:52:00	20:01:00
107	15	3031	0	0	20:07:00	20:09:00
107	16	2913	0	0	20:22:00	20:23:00
107	17	2901	0	0	20:30:30	20:31:30
107	18	2964	0	0	20:58:00	20:59:00
107	19	2977	0	0	21:13:00	21:13:30
107	20	1308	0	0	21:23:00	21:25:00
107	21	1298	0	0	21:39:00	21:44:00
107	22	6469	0	0	22:01:30	22:02:00
107	23	6435	0	0	22:19:00	22:19:00
107	24	6430	0	0	22:25:00	
108	1	2522	0	0		06:46:00
108	2	2533	0	0	07:11:30	07:13:00
108	3	2600	0	0	07:27:00	07:29:00
108	4	1007	0	0	07:43:30	07:44:30
108	5	1080	0	0	08:11:00	08:13:00
108	6	1096	0	0	08:16:00	08:17:00
108	7	1103	0	0	08:20:30	08:21:30
108	8	1176	0	0	08:34:30	08:35:30
108	9	1180	0	0	08:43:30	08:44:30
108	10	1190	0	0	08:55:30	08:56:30
108	11	1256	0	0	09:18:00	09:19:00
108	12	1282	0	0	09:39:36	09:40:36
108	13	6436	0	0	10:06:30	10:06:30
108	14	6431	0	0	10:11:00	
109	1	6432	0	0		19:11:00
109	2	6436	0	0	19:14:00	19:15:00
109	3	1282	0	0	19:42:00	19:43:00
109	4	1255	0	0	20:03:00	20:04:00
109	5	1308	0	0	20:34:00	20:35:00
109	6	2978	0	0	20:44:00	20:44:30
109	7	2963	0	0	20:59:00	21:00:00
109	8	2902	0	0	21:28:00	21:29:00
109	9	2914	0	0	21:37:30	21:38:30
109	10	3032	0	0	21:51:00	21:53:00
109	11	2767	0	0	21:59:00	22:04:00
109	12	2753	0	0	22:08:00	22:09:00
109	13	2805	0	0	22:22:30	22:23:30
109	14	3873	0	0	23:04:00	23:05:00
109	15	5054	0	0	23:32:00	23:33:00
109	16	6031	1	0	01:02:00	
110	1	4056	0	0		06:35:00
110	2	3430	0	0	07:09:00	07:11:00
110	3	3103	0	0	07:26:00	07:27:00
110	4	2447	0	0	08:13:00	08:16:00
110	5	702	0	0	08:48:00	08:49:00
110	6	499	0	0	09:13:00	09:15:00
110	7	694	0	0	09:28:30	09:29:30
110	8	683	0	0	09:45:30	09:46:30
110	9	2422	0	0	09:56:12	09:57:12
110	10	2519	0	0	10:19:00	10:39:00
110	11	3416	0	0	11:00:30	11:01:30
110	12	3338	0	0	11:14:00	11:15:00
110	13	3456	0	0	11:30:00	11:31:00
110	14	3460	0	0	11:39:00	11:40:00
110	15	4558	0	0	11:50:00	11:51:00
110	16	4681	0	0	12:06:00	12:15:00
110	17	4516	0	0	12:29:30	12:30:30
110	18	4857	0	0	12:37:30	12:38:30
110	19	4737	0	0	12:57:30	12:59:30
110	20	4838	0	0	13:26:00	13:27:00
110	21	5303	0	0	13:57:00	13:58:30
110	22	5311	0	0	14:04:30	14:05:30
110	23	5475	0	0	14:20:00	14:23:00
110	24	5495	0	0	14:37:30	14:42:30
110	25	5521	0	0	14:51:00	14:54:30
110	26	5795	0	0	15:03:00	15:06:00
110	27	5808	0	0	15:13:00	15:18:00
110	28	6025	0	0	15:33:00	15:36:00
110	29	5979	0	0	15:40:30	15:41:30
110	30	5961	0	0	15:57:30	15:58:30
110	31	5973	0	0	16:05:00	16:06:00
110	32	6039	0	0	16:18:00	16:19:30
110	33	6083	0	0	16:34:30	16:35:30
110	34	6086	0	0	16:42:00	16:43:00
110	35	6092	0	0	16:47:30	16:48:30
110	36	6211	0	0	17:01:00	17:04:00
110	37	6266	0	0	17:15:30	17:16:30
110	38	6276	0	0	17:29:00	17:30:00
110	39	6293	0	0	17:39:00	17:40:00
110	40	6331	0	0	17:48:30	17:49:30
110	41	6348	0	0	18:03:00	18:03:00
110	42	6345	0	0	18:07:00	
111	1	6345	0	0		23:59:00
111	2	178	1	1	02:29:00	02:45:00
111	3	176	1	1	04:17:00	04:20:00
111	4	157	1	1	05:41:00	05:44:00
111	5	160	1	1	07:20:00	07:23:00
111	6	153	1	0	10:37:00	
112	1	3031	0	0		06:41:00
112	2	2768	0	0	06:47:00	06:52:00
112	3	2753	0	0	06:56:00	06:57:30
112	4	6026	0	0	09:46:00	10:03:00
112	5	5899	0	0	11:45:00	11:47:00
112	6	5916	0	0	12:02:00	
113	1	3614	0	0		08:01:00
113	2	3606	0	0	08:07:00	08:08:00
113	3	3684	0	0	08:19:00	08:20:00
113	4	3673	0	0	08:39:30	08:40:30
113	5	2808	0	0	08:52:00	08:53:00
113	6	2754	0	0	09:11:00	09:12:30
113	7	2774	0	0	09:16:00	09:19:00
113	8	3031	0	0	09:25:00	09:27:00
113	9	2913	0	0	09:39:00	09:40:00
113	10	2902	0	0	09:48:00	09:49:00
113	11	2963	0	0	10:26:00	10:27:00
113	12	2977	0	0	10:42:00	10:49:00
113	13	1307	0	0	10:58:00	10:59:00
113	14	1256	0	0	11:30:00	11:31:00
113	15	1328	0	0	11:47:00	11:48:00
113	16	5886	0	0	12:06:00	12:07:00
113	17	5370	0	0	12:18:00	12:20:00
113	18	5571	0	0	12:36:30	12:40:00
113	19	5595	0	0	12:43:30	12:45:00
113	20	5637	0	0	12:48:30	12:50:00
113	21	4635	0	0	12:53:30	12:54:30
113	22	4588	0	0	13:03:00	
114	1	6029	0	0		14:59:00
114	2	5808	0	0	15:16:30	15:18:00
114	3	5795	0	0	15:27:30	15:29:00
114	4	5521	0	0	15:40:00	15:41:00
114	5	5495	0	0	15:50:30	15:56:30
114	6	5478	0	0	16:13:00	16:16:00
114	7	5312	0	0	16:34:00	16:35:00
114	8	5305	0	0	16:42:00	16:43:00
114	9	5165	0	0	17:09:30	17:13:00
114	10	5193	0	0	17:37:00	17:39:00
114	11	4424	0	0	18:02:00	18:04:00
114	12	4383	0	0	18:34:00	18:41:00
114	13	4393	0	0	19:01:30	19:02:30
114	14	4398	0	0	19:14:30	19:15:30
114	15	4365	0	0	19:26:00	19:29:00
114	16	4491	0	0	19:42:00	19:43:00
114	17	4267	0	0	20:07:30	20:09:30
114	18	4258	0	0	20:30:00	20:31:00
114	19	4229	0	0	20:41:00	20:43:30
114	20	4236	0	0	20:51:30	20:52:30
114	21	4239	0	0	21:05:30	21:08:00
114	22	4277	0	0	21:18:30	21:26:30
114	23	4306	0	0	21:48:00	21:49:00
114	24	4314	0	0	22:11:00	
115	1	3032	0	0		20:09:00
115	2	2769	0	0	20:15:00	20:20:00
115	3	2753	0	0	20:24:00	20:25:00
115	4	2808	0	0	20:44:06	20:45:06
115	5	3673	0	0	20:56:00	20:57:00
115	6	3683	0	0	21:15:30	21:18:30
115	7	3728	0	0	21:47:00	21:48:30
115	8	3753	0	0	22:18:00	22:20:30
115	9	4882	0	0	22:49:00	22:51:00
115	10	4908	0	0	22:55:30	22:56:30
115	11	5372	0	0	23:17:00	23:18:00
115	12	4832	0	0	23:37:30	23:38:00
115	13	4737	0	0	23:52:00	23:54:00
115	14	4858	1	1	00:12:30	00:13:30
115	15	4516	1	1	00:21:00	00:22:00
115	16	4686	1	0	00:38:00	
116	1	4682	0	0		19:05:00
116	2	4548	0	0	19:10:00	19:11:00
116	3	4602	0	0	19:15:00	19:18:30
116	4	4648	0	0	19:38:36	19:40:06
116	5	4641	0	0	19:51:00	19:52:30
116	6	4664	0	0	20:15:00	20:17:00
116	7	3421	0	0	20:30:00	20:31:00
116	8	3560	0	0	20:54:00	20:55:00
116	9	3515	0	0	21:10:48	21:12:18
116	10	1057	0	0	21:45:00	21:46:00
116	11	1053	0	0	21:56:36	21:57:36
116	12	3638	0	0	22:05:06	22:05:36
116	13	3633	0	0	22:15:42	22:16:42
116	14	3630	0	0	22:30:18	22:31:18
116	15	3605	0	0	22:38:30	22:40:30
116	16	3684	0	0	22:51:30	22:54:30
116	17	3674	0	0	23:13:00	23:17:00
116	18	2808	0	0	23:28:00	23:32:30
116	19	2753	0	0	23:51:30	23:51:30
116	20	2768	0	0	23:56:30	23:56:30
116	21	3031	1	0	00:06:00	
117	1	2108	0	0		09:33:00
117	2	2080	0	0	09:51:00	09:52:00
117	3	1838	0	0	10:02:54	10:03:54
117	4	1820	0	0	10:10:30	10:15:00
117	5	1833	0	0	10:21:00	10:22:00
117	6	1843	0	0	10:30:00	10:31:00
117	7	2061	0	0	10:42:30	10:43:30
117	8	2513	0	0	11:03:00	11:40:00
117	9	2534	0	0	12:05:00	12:06:00
117	10	2600	0	0	12:20:30	12:21:30
117	11	1008	0	0	12:36:00	12:37:00
117	12	970	0	0	13:02:00	13:05:00
117	13	767	0	0	13:34:00	13:35:00
117	14	5369	0	0	14:12:30	14:13:30
117	15	5576	0	0	14:28:30	14:31:30
117	16	5595	0	0	14:35:00	14:36:00
117	17	5638	0	0	14:39:00	14:40:00
117	18	4636	0	0	14:43:00	14:44:00
117	19	4581	0	0	14:52:00	
118	1	4585	0	0		09:31:00
118	2	4636	0	0	09:38:30	09:39:30
118	3	5638	0	0	09:43:00	09:44:00
118	4	5595	0	0	09:48:00	09:49:00
118	5	5579	0	0	09:53:30	09:55:30
118	6	5369	0	0	10:08:30	10:09:00
118	7	5885	0	0	10:19:30	10:20:00
118	8	1256	0	0	10:52:30	10:53:00
118	9	3031	0	0	12:23:00	12:25:00
118	10	2769	0	0	12:31:00	12:36:00
118	11	2754	0	0	12:40:00	12:41:00
118	12	5594	0	0	14:24:48	14:26:00
118	13	5479	0	0	15:15:00	15:18:00
118	14	5516	0	0	15:40:00	15:40:30
118	15	5645	0	0	15:58:30	15:59:30
118	16	5657	0	0	16:07:30	16:08:00
118	17	5665	0	0	16:18:00	
119	1	628	0	0		05:33:00
119	2	656	0	0	05:50:00	05:53:00
119	3	1556	0	0	05:58:00	06:10:00
119	4	234	0	0	07:04:00	07:15:00
119	5	244	0	0	07:26:00	07:28:00
119	6	267	0	0	07:44:00	07:46:00
119	7	266	0	0	07:55:00	07:57:00
119	8	258	0	0	08:13:00	08:15:00
119	9	241	0	0	08:41:00	08:43:00
119	10	252	0	0	09:10:00	09:12:00
119	11	249	0	0	09:18:00	09:20:00
119	12	938	0	0	09:41:00	09:41:00
119	13	5209	0	0	09:47:00	09:49:00
119	14	5255	0	0	10:10:00	10:11:00
119	15	5238	0	0	10:25:00	10:26:30
119	16	5515	0	0	10:54:00	10:58:00
119	17	5481	0	0	11:21:00	11:24:00
119	18	5563	0	0	11:37:30	11:40:00
119	19	5556	0	0	11:49:30	11:50:30
119	20	5594	0	0	12:06:00	12:10:00
119	21	5054	0	0	12:40:30	12:41:30
119	22	3874	0	0	13:09:00	13:11:00
119	23	2754	0	0	14:02:30	14:02:30
119	24	2769	0	0	14:08:00	14:08:00
119	25	3032	0	0	14:19:00	
120	1	6346	0	0		09:09:00
120	2	6347	0	0	09:11:30	09:12:30
120	3	6294	0	0	09:33:00	09:34:00
120	4	6276	0	0	09:43:00	09:44:00
120	5	6265	0	0	09:57:00	09:58:00
120	6	6214	0	0	10:10:00	10:13:00
120	7	6084	0	0	10:34:00	10:36:00
120	8	6040	0	0	10:51:30	10:54:30
120	9	5962	0	0	11:14:00	11:17:00
120	10	5979	0	0	11:33:00	11:34:30
120	11	6028	0	0	11:39:00	11:54:00
120	12	5481	0	0	12:48:00	12:51:00
120	13	5312	0	0	13:05:30	13:06:30
120	14	5307	0	0	13:13:00	13:18:00
120	15	5166	0	0	13:45:00	13:46:00
120	16	4737	0	0	14:08:00	14:10:00
120	17	4688	0	0	14:49:00	14:55:00
120	18	4169	0	0	15:28:00	15:29:00
120	19	4185	0	0	15:43:30	15:44:30
120	20	3319	0	0	16:26:00	16:27:00
120	21	2108	0	0	17:00:30	17:04:30
120	22	1751	0	0	17:46:00	17:49:00
120	23	926	0	0	18:09:00	18:12:00
120	24	1612	0	0	19:01:00	19:04:00
120	25	1629	0	0	19:11:00	
121	1	2517	0	0		17:59:00
121	2	2386	0	0	18:44:00	18:45:00
121	3	2399	0	0	18:54:30	18:55:30
121	4	488	0	0	19:08:30	19:09:30
121	5	1803	0	0	19:28:00	19:29:00
121	6	398	0	0	19:32:00	
122	1	6025	0	0		04:39:00
122	2	5808	0	0	04:53:30	04:56:30
122	3	5796	0	0	05:03:30	05:07:00
122	4	5521	0	0	05:15:00	05:16:00
122	5	5496	0	0	05:24:30	05:25:30
122	6	5482	0	0	05:41:00	05:44:00
122	7	5470	0	0	05:50:30	05:51:30
122	8	5312	0	0	06:00:00	06:01:00
122	9	5301	0	0	06:07:00	06:12:00
122	10	4838	0	0	06:42:00	06:43:00
122	11	4737	0	0	07:09:00	07:13:00
122	12	4857	0	0	07:31:30	07:32:30
122	13	4515	0	0	07:40:00	07:41:00
122	14	4689	0	0	07:56:00	08:07:00
122	15	4548	0	0	08:11:30	08:12:30
122	16	4557	0	0	08:23:30	08:24:30
122	17	3459	0	0	08:34:30	08:35:30
122	18	3456	0	0	08:43:00	08:44:00
122	19	3338	0	0	08:58:00	08:59:00
122	20	3416	0	0	09:12:00	09:13:00
122	21	2512	0	0	09:35:00	09:43:00
122	22	2421	0	0	10:11:12	10:12:12
122	23	683	0	0	10:22:30	10:23:30
122	24	694	0	0	10:39:00	10:40:00
122	25	499	0	0	10:55:00	10:56:00
122	26	701	0	0	11:19:54	11:20:54
122	27	2448	0	0	11:46:00	11:47:00
122	28	3104	0	0	12:30:00	12:31:00
122	29	3430	0	0	12:45:00	12:46:00
122	30	4056	0	0	13:14:00	
123	1	3269	0	0		19:05:00
123	2	3280	0	0	19:18:00	19:26:00
123	3	3429	0	0	19:52:00	19:55:00
123	4	4056	0	0	20:29:00	20:29:00
123	5	3677	0	0	21:29:00	21:29:00
123	6	4160	0	0	22:31:00	22:32:00
123	7	4922	0	0	22:54:00	22:55:00
123	8	4767	0	0	23:04:30	23:05:30
123	9	4582	0	0	23:16:00	23:20:00
123	10	4635	0	0	23:28:00	23:30:00
123	11	5638	0	0	23:34:00	23:35:00
123	12	5596	0	0	23:39:00	23:40:00
123	13	5576	0	0	23:45:00	23:48:00
123	14	5370	1	1	00:07:00	00:08:00
123	15	5885	1	1	00:21:00	00:22:00
123	16	1328	1	1	00:45:00	00:46:00
123	17	1256	1	1	01:05:30	01:07:30
123	18	1308	1	1	01:42:30	01:43:30
123	19	2977	1	1	01:54:06	01:55:06
123	20	2964	1	1	02:14:00	02:15:00
123	21	2902	1	1	02:49:30	02:50:30
123	22	2914	1	1	03:00:30	03:01:30
123	23	3031	1	1	03:16:00	03:19:00
123	24	2771	1	1	03:25:00	03:31:00
123	25	2753	1	1	03:35:00	03:36:30
123	26	2763	1	1	03:44:00	03:45:00
123	27	2789	1	1	03:54:00	03:55:00
123	28	3812	1	1	04:14:00	04:15:00
123	29	3794	1	1	04:40:00	04:42:00
123	30	3755	1	1	05:07:00	05:09:00
123	31	4974	1	1	05:56:00	06:02:00
123	32	5021	1	1	06:31:30	06:32:30
123	33	5015	1	1	06:47:00	06:48:00
123	34	5945	1	1	07:22:18	07:23:18
123	35	6031	1	0	08:17:00	
124	1	3031	0	0		07:29:00
124	2	2772	0	0	07:35:00	07:40:00
124	3	2754	0	0	07:44:00	07:45:00
124	4	6030	0	0	10:41:00	
125	1	6026	0	0		11:06:00
125	2	5946	0	0	12:00:30	12:01:00
125	3	5017	0	0	12:17:00	12:28:00
125	4	5015	0	0	12:39:00	12:39:30
125	5	5022	0	0	12:52:30	12:53:00
125	6	4972	0	0	13:22:00	13:40:00
125	7	2753	0	0	15:33:00	15:36:00
125	8	2770	0	0	15:40:00	16:01:00
125	9	3032	0	0	16:07:00	16:09:00
125	10	2914	0	0	16:22:00	16:23:00
125	11	2902	0	0	16:30:30	16:31:30
125	12	2963	0	0	16:58:00	16:59:00
125	13	2977	0	0	17:13:30	17:14:00
125	14	1307	0	0	17:24:00	17:25:00
125	15	1298	0	0	17:39:30	17:40:00
125	16	6469	0	0	17:58:00	17:58:30
125	17	6435	0	0	18:15:30	18:15:30
125	18	6429	0	0	18:21:00	
126	1	4013	0	0		15:04:00
126	2	1882	0	0	15:09:00	15:10:00
126	3	3987	0	0	15:21:30	15:22:30
126	4	3978	0	0	15:32:30	15:33:30
126	5	3837	0	0	16:02:30	16:03:30
126	6	3791	0	0	16:18:00	16:23:00
126	7	3756	0	0	16:47:00	16:48:00
126	8	4973	0	0	17:33:00	17:47:00
126	9	5022	0	0	18:15:30	18:16:30
126	10	5016	0	0	18:29:30	18:30:30
126	11	5946	0	0	18:59:54	19:00:54
126	12	6032	0	0	20:08:00	
127	1	4582	0	0		15:11:00
127	2	4636	0	0	15:18:30	15:20:30
127	3	5638	0	0	15:24:00	15:25:00
127	4	5596	0	0	15:28:30	15:29:30
127	5	5580	0	0	15:34:00	15:37:00
127	6	5369	0	0	15:54:00	16:01:00
127	7	5886	0	0	16:12:00	16:15:00
127	8	1327	0	0	16:33:00	16:41:00
127	9	1255	0	0	16:58:00	17:00:00
127	10	1308	0	0	17:30:00	17:31:00
127	11	2977	0	0	17:41:00	17:42:00
127	12	2963	0	0	17:56:30	17:57:30
127	13	2902	0	0	18:25:00	18:26:00
127	14	2913	0	0	18:34:00	18:35:00
127	15	3031	0	0	18:49:00	18:53:00
127	16	2772	0	0	18:59:00	19:12:00
127	17	2753	0	0	19:16:00	19:17:30
127	18	2808	0	0	19:36:30	19:37:30
127	19	3674	0	0	19:49:00	19:50:00
127	20	3683	0	0	20:08:00	20:09:00
127	21	3606	0	0	20:19:30	20:19:30
127	22	3615	0	0	20:28:00	
128	1	3611	0	0		07:32:00
128	2	3606	0	0	07:38:00	07:41:00
128	3	3683	0	0	07:52:00	07:53:00
128	4	3673	0	0	08:11:00	08:12:00
128	5	2808	0	0	08:22:30	08:23:30
128	6	2754	0	0	08:42:30	08:44:00
128	7	2769	0	0	08:48:00	09:01:00
128	8	3031	0	0	09:07:00	09:09:00
128	9	2914	0	0	09:23:00	09:24:00
128	10	2902	0	0	09:31:30	09:32:30
128	11	2963	0	0	09:59:00	10:00:00
128	12	2978	0	0	10:14:00	10:15:00
128	13	1307	0	0	10:24:00	10:25:00
128	14	1256	0	0	10:55:00	10:57:00
128	15	1327	0	0	11:12:30	11:21:00
128	16	5885	0	0	11:42:00	11:43:00
128	17	5370	0	0	11:54:00	11:55:00
128	18	5579	0	0	12:09:30	12:12:30
128	19	5596	0	0	12:16:30	12:17:30
128	20	5638	0	0	12:21:00	12:22:00
128	21	4636	0	0	12:25:30	12:26:30
128	22	4587	0	0	12:35:00	
129	1	6030	0	0		17:23:00
129	2	5808	0	0	17:38:30	17:40:00
129	3	5795	0	0	17:47:30	17:49:30
129	4	5521	0	0	17:59:00	18:00:00
129	5	5549	0	0	18:13:30	18:14:00
129	6	5593	0	0	18:28:30	18:29:30
129	7	5602	0	0	18:36:30	18:41:30
129	8	4903	0	0	19:00:30	19:09:30
129	9	5372	0	0	19:30:00	19:33:00
129	10	5387	0	0	19:51:30	19:52:30
129	11	4794	0	0	20:06:30	20:07:30
129	12	4807	0	0	20:19:00	20:20:00
129	13	3532	0	0	20:34:42	20:36:12
129	14	3536	0	0	20:48:12	20:49:12
129	15	3559	0	0	21:05:42	21:06:42
129	16	3501	0	0	21:23:00	21:24:00
129	17	3480	0	0	21:36:00	21:38:30
129	18	2470	0	0	21:58:00	21:59:00
129	19	2519	0	0	22:20:00	
130	1	355	0	0		08:12:00
130	2	358	0	0	08:37:00	08:44:00
130	3	359	0	0	08:56:00	08:57:00
130	4	362	0	0	09:08:00	09:09:00
130	5	377	0	0	09:19:00	09:23:00
130	6	375	0	0	09:48:00	09:51:00
130	7	374	0	0	10:44:00	10:46:00
130	8	371	0	0	11:53:00	11:55:00
130	9	234	0	0	12:06:00	12:15:00
130	10	244	0	0	12:26:00	12:28:00
130	11	268	0	0	12:44:00	12:46:00
130	12	265	0	0	12:55:00	12:57:00
130	13	258	0	0	13:13:00	13:15:00
130	14	241	0	0	13:36:00	13:38:00
130	15	251	0	0	14:05:00	14:07:00
130	16	249	0	0	14:13:00	14:16:00
130	17	938	0	0	14:23:00	14:51:00
130	18	5610	0	0	15:12:00	15:13:00
130	19	5645	0	0	16:05:30	16:06:30
130	20	5515	0	0	16:26:00	16:34:00
130	21	5478	0	0	16:53:00	16:58:00
130	22	5562	0	0	17:12:00	17:16:00
130	23	5555	0	0	17:25:30	17:31:00
130	24	5594	0	0	17:47:30	17:48:30
130	25	5054	0	0	18:19:00	18:20:00
130	26	3873	0	0	18:47:00	18:48:00
130	27	2754	0	0	19:39:00	19:40:00
130	28	2771	0	0	19:44:00	19:49:00
130	29	3032	0	0	19:55:00	
131	1	3268	0	0		18:37:00
131	2	1687	0	0	18:43:30	18:44:00
131	3	3259	0	0	18:51:00	18:52:00
131	4	3246	0	0	19:00:00	19:01:00
131	5	3247	0	0	19:12:30	19:13:30
131	6	3198	0	0	19:26:30	19:27:30
131	7	3143	0	0	19:41:00	19:42:00
131	8	3191	0	0	19:58:00	19:59:00
131	9	3101	0	0	20:08:30	20:09:30
131	10	3031	0	0	20:33:30	20:37:00
131	11	2772	0	0	20:43:00	21:00:00
131	12	2753	0	0	21:03:30	21:05:00
131	13	2836	0	0	21:30:30	21:31:30
131	14	2692	0	0	21:44:30	21:45:30
131	15	2609	0	0	22:05:30	22:06:30
131	16	2724	0	0	22:29:00	22:30:00
131	17	2716	0	0	22:43:00	22:44:00
131	18	2464	0	0	22:57:30	22:58:30
131	19	2444	0	0	23:11:00	23:12:00
131	20	2343	0	0	23:31:00	23:32:00
131	21	2521	0	0	23:42:00	
132	1	9	0	0		21:26:00
132	2	12	0	0	21:36:00	21:38:00
132	3	640	0	0	22:01:00	22:02:00
132	4	420	0	0	22:20:30	22:21:30
132	5	70	0	0	22:39:00	22:40:00
132	6	2078	0	0	22:52:00	22:57:00
132	7	70	0	0	23:09:00	23:10:30
132	8	1283	0	0	23:25:00	23:26:00
132	9	2407	0	0	23:42:00	23:43:00
132	10	2396	0	0	23:58:00	23:59:00
132	11	2386	1	1	00:11:00	00:12:00
132	12	2377	1	1	00:27:06	00:28:06
132	13	2370	1	1	00:37:06	00:38:06
132	14	2514	1	1	00:56:00	01:22:00
132	15	2470	1	1	01:46:24	01:47:24
132	16	3479	1	1	02:07:12	02:08:12
132	17	3502	1	1	02:22:00	02:23:00
132	18	3516	1	1	02:56:00	02:57:00
132	19	1058	1	1	03:32:30	03:33:30
132	20	1054	1	1	03:45:42	03:46:42
132	21	3638	1	1	03:54:30	03:55:30
132	22	3633	1	1	04:05:54	04:06:54
132	23	3630	1	1	04:23:00	04:24:00
132	24	3606	1	1	04:32:30	04:37:00
132	25	3683	1	1	04:52:00	04:53:00
132	26	3673	1	1	05:15:00	05:16:00
132	27	2807	1	1	05:29:30	05:30:30
132	28	2754	1	1	05:53:00	05:56:00
132	29	2767	1	1	06:00:00	06:21:00
132	30	3031	1	1	06:27:00	06:29:00
132	31	3119	1	1	07:11:00	07:12:00
132	32	3962	1	1	07:39:00	07:40:00
132	33	3978	1	1	07:53:00	07:54:00
132	34	3987	1	1	08:07:30	08:08:30
132	35	1882	1	1	08:22:30	08:23:30
132	36	4012	1	1	08:29:00	08:32:00
132	37	4007	1	1	08:41:30	08:42:30
132	38	4042	1	1	09:08:30	09:09:30
132	39	4053	1	1	09:21:30	09:21:30
132	40	4050	1	0	09:27:00	
133	1	3610	0	0		05:32:00
133	2	3606	0	0	05:38:30	05:39:30
133	3	3684	0	0	05:50:30	05:51:30
133	4	3673	0	0	06:10:30	06:11:30
133	5	2808	0	0	06:22:24	06:23:24
133	6	2753	0	0	06:42:30	06:44:00
133	7	2767	0	0	06:48:00	07:01:00
133	8	3032	0	0	07:07:00	07:09:00
133	9	2914	0	0	07:21:30	07:22:30
133	10	2901	0	0	07:30:30	07:31:30
133	11	2964	0	0	07:58:30	07:59:30
133	12	2977	0	0	08:14:30	08:15:30
133	13	1307	0	0	08:25:00	08:26:00
133	14	1255	0	0	08:57:00	09:10:00
133	15	1327	0	0	09:26:30	09:27:30
133	16	5886	0	0	09:46:00	09:47:00
133	17	5369	0	0	09:58:00	09:59:00
133	18	5573	0	0	10:14:30	10:17:30
133	19	5595	0	0	10:21:30	10:22:30
133	20	5638	0	0	10:26:00	10:27:00
133	21	4635	0	0	10:30:30	10:31:30
133	22	4581	0	0	10:40:00	10:45:00
133	23	4768	0	0	10:54:30	10:55:30
133	24	4921	0	0	11:05:00	11:06:00
133	25	4160	0	0	11:26:00	11:28:00
133	26	3677	0	0	12:22:00	
134	1	4686	0	0		09:17:00
134	2	4515	0	0	09:32:30	09:33:30
134	3	4857	0	0	09:41:30	09:42:30
134	4	4738	0	0	10:02:00	10:05:00
134	5	5371	0	0	10:45:30	10:49:00
134	6	4904	0	0	11:09:30	11:12:30
134	7	4927	0	0	11:39:30	11:40:00
134	8	5050	0	0	11:54:00	11:55:00
134	9	4971	0	0	12:26:00	12:51:00
134	10	3756	0	0	13:36:00	13:38:00
134	11	3790	0	0	14:02:00	14:04:00
134	12	3838	0	0	14:19:00	14:20:00
134	13	3977	0	0	14:49:30	14:51:30
134	14	3987	0	0	15:02:30	15:03:30
134	15	1881	0	0	15:15:30	15:15:30
134	16	4015	0	0	15:21:00	
135	1	978	0	0		14:40:00
135	2	967	0	0	14:43:54	14:44:54
135	3	745	0	0	14:48:00	14:49:00
135	4	1102	0	0	14:56:30	14:57:30
135	5	1082	0	0	15:17:30	15:19:30
135	6	1219	0	0	15:30:30	15:31:30
135	7	1231	0	0	15:50:30	15:51:30
135	8	2610	0	0	16:22:00	16:23:00
135	9	2692	0	0	16:43:00	16:44:00
135	10	2835	0	0	16:56:00	16:57:00
135	11	2753	0	0	17:22:30	17:24:00
135	12	2768	0	0	17:28:00	17:41:00
135	13	3031	0	0	17:47:00	17:49:00
135	14	3119	0	0	18:28:30	18:29:30
135	15	3962	0	0	18:52:00	18:53:00
135	16	3978	0	0	19:04:00	19:05:00
135	17	3988	0	0	19:15:00	19:16:00
135	18	1882	0	0	19:27:30	19:28:30
135	19	4012	0	0	19:33:00	19:48:00
135	20	4089	0	0	20:32:00	20:33:00
135	21	5088	0	0	20:54:30	20:55:30
135	22	5057	0	0	21:12:00	21:13:00
135	23	5059	0	0	21:15:30	21:16:30
135	24	5070	0	0	21:23:30	21:24:30
135	25	5077	0	0	21:32:30	21:33:30
135	26	6290	0	0	21:44:30	21:45:30
135	27	6285	0	0	21:51:30	21:52:30
135	28	6265	0	0	22:25:30	22:26:30
135	29	6216	0	0	22:38:00	
136	1	4685	0	0		12:41:00
136	2	4738	0	0	13:20:00	13:22:00
136	3	5371	0	0	13:54:00	13:55:00
136	4	4906	0	0	14:15:00	14:16:00
136	5	2754	0	0	16:11:00	16:11:00
136	6	2773	0	0	16:17:00	16:17:00
136	7	3031	0	0	16:27:00	
137	1	6430	0	0		05:30:00
137	2	6436	0	0	05:33:00	05:34:00
137	3	6469	0	0	05:51:30	05:52:00
137	4	1297	0	0	06:10:00	06:15:00
137	5	1308	0	0	06:30:00	06:32:00
137	6	2978	0	0	06:41:00	06:41:30
137	7	2963	0	0	06:57:00	06:59:00
137	8	2902	0	0	07:27:24	07:28:36
137	9	2914	0	0	07:37:00	07:38:00
137	10	3032	0	0	07:51:00	07:53:00
137	11	2769	0	0	07:59:00	08:08:00
137	12	2754	0	0	08:12:00	08:13:00
137	13	4969	0	0	10:05:30	10:13:30
137	14	5021	0	0	10:43:00	10:43:30
137	15	5015	0	0	10:56:30	11:00:00
137	16	5945	0	0	11:33:30	11:34:00
137	17	6027	0	0	12:30:00	
138	1	4682	0	0		05:35:00
138	2	4515	0	0	05:50:00	05:51:00
138	3	4857	0	0	05:59:00	06:00:00
138	4	4738	0	0	06:19:00	06:21:00
138	5	5372	0	0	07:03:00	07:04:00
138	6	4909	0	0	07:24:30	07:26:30
138	7	4928	0	0	07:54:00	07:58:00
138	8	5054	0	0	08:10:00	08:11:00
138	9	3789	0	0	09:25:00	09:29:00
138	10	3837	0	0	09:43:30	09:44:30
138	11	3978	0	0	10:13:30	10:14:30
138	12	3987	0	0	10:24:30	10:25:00
138	13	1882	0	0	10:36:30	10:36:30
138	14	4011	0	0	10:42:00	
139	1	541	0	0		14:57:00
139	2	429	0	0	16:15:00	16:17:00
139	3	432	0	0	16:34:00	16:36:00
139	4	4106	0	0	17:14:06	17:16:00
139	5	4201	0	0	17:28:06	17:29:06
139	6	4206	0	0	17:41:36	17:42:36
139	7	4170	0	0	17:53:00	17:58:00
139	8	4690	0	0	18:32:00	
140	1	5478	0	0		08:33:00
140	2	5431	0	0	08:43:00	08:44:00
140	3	5433	0	0	08:49:48	08:50:48
140	4	5359	0	0	09:01:30	09:02:30
140	5	4909	0	0	09:38:30	09:53:00
140	6	4882	0	0	09:57:30	10:01:00
140	7	1050	0	0	11:02:00	11:03:00
140	8	3637	0	0	11:13:30	11:14:30
140	9	3634	0	0	11:24:36	11:25:36
140	10	3641	0	0	11:35:30	11:49:00
140	11	3643	0	0	11:53:30	11:54:30
140	12	3645	0	0	11:59:48	12:01:48
140	13	2661	0	0	12:20:48	12:21:48
140	14	2657	0	0	12:29:24	12:31:24
140	15	2609	0	0	12:54:00	12:58:00
140	16	2632	0	0	13:18:30	13:21:30
140	17	2668	0	0	13:45:00	14:13:00
140	18	2672	0	0	14:45:00	14:46:00
140	19	1215	0	0	15:12:00	15:13:00
140	20	1212	0	0	15:37:00	15:38:00
140	21	1189	0	0	15:57:30	16:10:00
140	22	1154	0	0	16:41:00	17:01:00
140	23	1339	0	0	17:30:30	17:31:30
140	24	6047	0	0	17:51:00	17:52:00
140	25	5886	0	0	18:04:00	18:05:00
140	26	5370	0	0	18:19:30	18:20:30
140	27	5575	0	0	18:42:30	18:44:30
140	28	5595	0	0	18:49:00	18:50:00
140	29	5638	0	0	18:54:00	18:55:00
140	30	4635	0	0	18:59:00	19:00:00
140	31	4588	0	0	19:09:00	
141	1	6214	0	0		13:20:00
141	2	6266	0	0	13:31:30	13:32:30
141	3	6285	0	0	14:05:00	14:06:00
141	4	6290	0	0	14:12:00	14:13:00
141	5	5077	0	0	14:24:00	14:26:00
141	6	5070	0	0	14:38:00	14:39:00
141	7	5059	0	0	14:46:00	14:47:00
141	8	5058	0	0	14:49:30	14:50:30
141	9	5087	0	0	15:06:00	15:07:00
141	10	4089	0	0	15:35:00	15:36:00
141	11	4012	0	0	16:06:00	16:26:00
141	12	1881	0	0	16:31:00	16:32:00
141	13	3987	0	0	16:44:00	16:45:00
141	14	3977	0	0	16:55:30	16:56:30
141	15	3961	0	0	17:07:00	17:08:00
141	16	3119	0	0	17:31:30	17:32:30
141	17	3032	0	0	18:11:00	18:13:00
141	18	2772	0	0	18:19:00	18:32:00
141	19	2754	0	0	18:35:30	18:37:00
141	20	2835	0	0	19:02:30	19:03:30
141	21	2691	0	0	19:16:30	19:17:30
141	22	2609	0	0	19:37:00	19:38:00
141	23	1232	0	0	20:08:00	20:09:00
141	24	1219	0	0	20:28:00	20:29:00
141	25	1082	0	0	20:42:00	20:43:00
141	26	1101	0	0	21:03:00	21:04:00
141	27	746	0	0	21:12:00	21:13:00
141	28	968	0	0	21:16:30	21:17:30
141	29	973	0	0	21:22:00	21:25:00
141	30	959	0	0	21:44:00	21:45:00
141	31	514	0	0	22:00:00	22:01:00
141	32	499	0	0	22:29:00	
142	1	921	0	0		08:05:00
142	2	325	0	0	08:20:00	08:34:00
142	3	275	0	0	08:55:00	09:20:00
142	4	349	0	0	09:42:00	09:43:00
142	5	1658	0	0	10:05:30	10:06:30
142	6	1639	0	0	10:29:30	10:30:30
142	7	1428	0	0	11:08:00	11:33:00
142	8	2159	0	0	11:36:00	11:37:00
142	9	3032	0	0	12:55:30	12:57:00
142	10	2772	0	0	13:03:00	13:32:00
142	11	2753	0	0	13:35:30	13:37:00
142	12	2836	0	0	14:02:30	14:03:30
142	13	2691	0	0	14:16:30	14:17:30
142	14	2610	0	0	14:37:42	14:38:42
142	15	2723	0	0	15:00:54	15:01:54
142	16	2716	0	0	15:14:18	15:15:18
142	17	2464	0	0	15:27:36	15:28:36
142	18	2443	0	0	15:40:00	15:41:00
142	19	2344	0	0	15:59:00	16:00:00
142	20	2516	0	0	16:21:30	16:38:00
142	21	2370	0	0	16:55:00	16:56:00
142	22	2377	0	0	17:05:00	17:06:00
142	23	2385	0	0	17:22:00	17:23:00
142	24	2395	0	0	17:35:00	17:36:00
142	25	2407	0	0	17:50:00	17:51:00
142	26	1284	0	0	18:06:00	18:08:00
142	27	69	0	0	18:21:00	18:21:00
142	28	2074	0	0	18:37:00	
143	1	6432	0	0		14:10:00
143	2	6435	0	0	14:13:00	14:14:00
143	3	58	0	0	14:48:00	14:51:00
143	4	63	0	0	15:15:00	15:16:00
143	5	6122	0	0	15:34:30	15:35:30
143	6	5886	0	0	15:54:30	16:01:00
143	7	5369	0	0	16:13:00	16:14:00
143	8	5574	0	0	16:32:00	16:34:00
143	9	5595	0	0	16:38:00	16:39:00
143	10	5638	0	0	16:42:24	16:43:24
143	11	4636	0	0	16:46:48	16:47:48
143	12	4581	0	0	16:55:30	16:58:30
143	13	4767	0	0	17:08:30	17:09:30
143	14	4922	0	0	17:18:30	17:19:30
143	15	4159	0	0	17:42:00	18:00:00
143	16	3677	0	0	18:54:00	18:54:00
143	17	4055	0	0	19:54:00	19:54:00
143	18	3430	0	0	20:16:00	20:17:00
143	19	3104	0	0	20:31:00	20:39:00
143	20	2884	0	0	21:06:00	21:07:00
143	21	2851	0	0	21:20:00	21:29:00
143	22	2839	0	0	21:36:30	21:37:30
143	23	2853	0	0	21:47:30	21:48:30
143	24	1284	0	0	22:05:00	22:06:00
143	25	69	0	0	22:22:00	22:22:00
143	26	2071	0	0	22:36:00	
144	1	1427	0	0		13:58:00
144	2	2157	0	0	14:01:30	14:02:30
144	3	1577	0	0	14:30:30	14:31:30
144	4	1718	0	0	14:52:00	14:53:00
144	5	1698	0	0	15:11:30	15:12:30
144	6	1712	0	0	15:24:30	15:25:30
144	7	1716	0	0	15:35:00	15:36:00
144	8	3178	0	0	15:42:30	15:43:30
144	9	3172	0	0	15:53:30	15:54:30
144	10	3144	0	0	16:16:00	16:25:00
144	11	3192	0	0	16:42:00	16:43:00
144	12	3101	0	0	16:54:00	16:55:00
144	13	3031	0	0	17:20:00	
145	1	4313	0	0		12:24:30
145	2	4305	0	0	12:46:00	12:48:00
145	3	4277	0	0	13:08:30	13:09:30
145	4	4239	0	0	13:22:30	13:23:30
145	5	4235	0	0	13:35:36	13:36:36
145	6	4229	0	0	13:43:00	13:44:00
145	7	4686	0	0	14:14:00	14:39:00
145	8	4516	0	0	14:53:30	14:54:30
145	9	4858	0	0	15:02:00	15:03:00
145	10	4738	0	0	15:21:00	15:23:00
145	11	5371	0	0	16:02:00	16:03:00
145	12	4908	0	0	16:23:30	16:35:00
145	13	2753	0	0	18:30:00	18:30:00
145	14	2774	0	0	18:40:00	18:40:00
145	15	3032	0	0	18:47:00	
146	1	1428	0	0		16:15:00
146	2	2159	0	0	16:18:30	16:19:30
146	3	1589	0	0	16:29:30	16:30:30
146	4	1603	0	0	16:42:30	16:43:30
146	5	1625	0	0	16:51:30	16:52:30
146	6	3022	0	0	17:04:00	17:05:00
146	7	2999	0	0	17:17:30	17:18:30
146	8	2983	0	0	17:27:30	17:28:30
146	9	2890	0	0	17:36:30	17:37:30
146	10	3031	0	0	17:55:00	18:01:00
146	11	2768	0	0	18:07:00	18:12:00
146	12	2753	0	0	18:16:00	18:17:30
146	13	2808	0	0	18:35:54	18:36:54
146	14	3674	0	0	18:48:30	18:49:30
146	15	3683	0	0	19:08:00	19:09:00
146	16	3606	0	0	19:21:00	19:25:00
146	17	3630	0	0	19:31:48	19:32:48
146	18	3633	0	0	19:46:24	19:47:24
146	19	3637	0	0	19:57:06	19:58:06
146	20	1054	0	0	20:05:18	20:06:18
146	21	1058	0	0	20:17:30	20:18:30
146	22	3515	0	0	20:52:30	20:54:00
146	23	3559	0	0	21:12:00	21:13:00
146	24	3422	0	0	21:35:30	21:36:30
146	25	4641	0	0	22:04:00	22:07:00
146	26	4647	0	0	22:16:00	22:18:00
146	27	4601	0	0	22:37:30	22:37:30
146	28	4547	0	0	22:42:30	22:42:30
146	29	4679	0	0	22:49:00	
147	1	6026	0	0		04:07:00
147	2	5477	0	0	05:05:00	05:08:00
147	3	5311	0	0	05:22:30	05:23:30
147	4	5307	0	0	05:30:00	05:31:00
147	5	5166	0	0	05:57:00	06:04:00
147	6	4737	0	0	06:25:30	06:27:30
147	7	4688	0	0	07:06:00	07:11:00
147	8	4170	0	0	07:43:30	07:45:30
147	9	4185	0	0	08:00:30	08:01:30
147	10	3319	0	0	08:27:00	08:28:00
147	11	2107	0	0	09:00:00	09:02:00
147	12	1751	0	0	09:46:00	09:49:00
147	13	926	0	0	10:09:00	10:09:00
147	14	1611	0	0	11:01:00	11:04:00
147	15	1629	0	0	11:11:00	
148	1	3032	0	0		04:41:00
148	2	2768	0	0	04:47:00	04:52:00
148	3	2753	0	0	04:56:00	05:01:00
148	4	2806	0	0	05:13:06	05:14:06
148	5	3873	0	0	06:01:00	06:03:00
148	6	5053	0	0	06:30:00	06:32:00
148	7	5594	0	0	07:02:30	07:03:30
148	8	5556	0	0	07:23:30	07:27:30
148	9	5564	0	0	07:36:00	07:37:30
148	10	5475	0	0	07:56:00	08:02:00
148	11	5312	0	0	08:16:00	08:17:00
148	12	5307	0	0	08:23:00	08:26:00
148	13	5265	0	0	09:18:00	09:19:00
148	14	5210	0	0	09:32:00	09:33:00
148	15	937	0	0	09:39:00	09:39:00
148	16	249	0	0	10:13:00	10:16:00
148	17	252	0	0	10:22:00	10:24:00
148	18	242	0	0	10:51:00	10:53:00
148	19	248	0	0	11:22:00	11:25:00
148	20	263	0	0	11:46:00	11:48:00
148	21	283	0	0	12:09:00	12:11:00
148	22	277	0	0	12:46:00	12:48:00
148	23	274	0	0	13:09:00	13:11:00
148	24	336	0	0	13:45:00	13:46:00
148	25	332	0	0	13:52:00	
149	1	2078	0	0		10:27:00
149	2	69	0	0	10:39:12	10:40:12
149	3	1283	0	0	10:54:00	10:55:00
149	4	2408	0	0	11:10:30	11:11:30
149	5	2396	0	0	11:26:00	11:27:00
149	6	2385	0	0	11:39:00	11:40:00
149	7	2378	0	0	11:56:06	11:57:06
149	8	2369	0	0	12:06:00	12:07:00
149	9	2521	0	0	12:24:00	12:36:00
149	10	2469	0	0	12:57:36	12:58:06
149	11	3479	0	0	13:17:30	13:19:30
149	12	3502	0	0	13:32:42	13:34:42
149	13	3516	0	0	14:05:06	14:06:30
149	14	1058	0	0	14:39:00	14:40:00
149	15	1054	0	0	14:51:24	14:52:24
149	16	3638	0	0	14:59:48	15:00:18
149	17	3634	0	0	15:10:18	15:11:18
149	18	3630	0	0	15:24:48	15:25:48
149	19	3606	0	0	15:33:18	15:42:00
149	20	3725	0	0	16:11:36	16:12:36
149	21	3853	0	0	16:33:06	16:34:06
149	22	3852	0	0	16:43:12	16:44:12
149	23	3793	0	0	17:07:30	17:09:00
149	24	3837	0	0	17:23:30	17:24:30
149	25	3977	0	0	17:57:12	17:58:12
149	26	3988	0	0	18:08:48	18:09:18
149	27	1881	0	0	18:21:12	18:21:12
149	28	4014	0	0	18:28:00	
150	1	3032	0	0		10:49:00
150	2	2770	0	0	10:55:00	11:00:00
150	3	2753	0	0	11:03:30	11:05:00
150	4	2609	0	0	12:01:30	12:02:30
150	5	2715	0	0	12:38:00	12:39:00
150	6	2521	0	0	13:24:00	13:27:00
150	7	1819	0	0	14:10:00	14:11:00
150	8	2318	0	0	14:23:00	14:24:00
150	9	1751	0	0	14:47:00	14:50:00
150	10	925	0	0	15:09:00	15:12:00
150	11	1612	0	0	16:06:00	16:09:00
150	12	1630	0	0	16:16:00	
151	1	2753	0	0		21:08:00
151	2	2769	0	0	21:12:30	21:17:00
151	3	3031	0	0	21:23:00	21:24:00
151	4	3102	0	0	21:48:00	21:49:00
151	5	3192	0	0	21:58:00	21:58:30
151	6	3143	0	0	22:14:00	22:15:00
151	7	3198	0	0	22:28:00	22:29:00
151	8	3247	0	0	22:42:00	22:43:00
151	9	3245	0	0	22:54:30	22:55:30
151	10	3260	0	0	23:03:30	23:04:00
151	11	1688	0	0	23:11:30	23:12:00
151	12	3267	0	0	23:19:00	
152	1	2518	0	0		05:31:00
152	2	3415	0	0	05:56:00	05:57:00
152	3	3337	0	0	06:13:00	06:14:00
152	4	3455	0	0	06:32:00	06:34:00
152	5	3459	0	0	06:44:00	06:45:00
152	6	4557	0	0	06:58:00	07:00:00
152	7	4547	0	0	07:13:30	07:14:30
152	8	4687	0	0	07:19:00	07:33:00
152	9	4516	0	0	07:50:00	07:51:00
152	10	4857	0	0	08:00:00	08:01:00
152	11	4738	0	0	08:23:30	08:25:30
152	12	4843	0	0	08:38:00	08:39:00
152	13	5167	0	0	08:46:30	08:47:30
152	14	5166	0	0	08:55:30	08:57:30
152	15	5281	0	0	09:13:30	09:14:30
152	16	5238	0	0	09:36:00	09:38:00
152	17	5297	0	0	09:49:00	09:50:00
152	18	5657	0	0	10:24:00	10:29:00
152	19	5665	0	0	10:38:00	10:53:00
152	20	5683	0	0	11:11:30	11:12:30
152	21	5691	0	0	11:31:30	11:34:30
152	22	5840	0	0	11:49:00	11:50:00
152	23	5851	0	0	12:13:00	12:14:00
152	24	1774	0	0	12:42:30	12:43:30
152	25	5866	0	0	12:49:00	12:59:00
152	26	5899	0	0	13:50:30	13:55:30
152	27	5914	0	0	14:06:30	14:07:30
152	28	5916	0	0	14:14:00	
153	1	3614	0	0		08:08:30
153	2	3605	0	0	08:13:00	08:14:00
153	3	3673	0	0	08:42:00	08:43:00
153	4	2754	0	0	09:10:30	09:10:30
153	5	2774	0	0	09:15:06	09:15:06
153	6	3032	0	0	09:27:00	
154	1	4055	0	0		18:51:00
154	2	3430	0	0	19:14:00	19:18:00
154	3	3103	0	0	19:32:00	19:33:00
154	4	2447	0	0	20:17:00	20:21:00
154	5	702	0	0	20:47:00	20:48:00
154	6	500	0	0	21:12:00	21:13:00
154	7	694	0	0	21:26:30	21:27:30
154	8	683	0	0	21:44:00	21:45:00
154	9	2421	0	0	21:55:00	21:56:00
154	10	2522	0	0	22:17:00	
155	1	6023	0	0		07:19:00
155	2	5808	0	0	07:35:00	07:36:00
155	3	5795	0	0	07:45:00	07:46:00
155	4	5521	0	0	07:56:30	07:58:00
155	5	5550	0	0	08:11:30	08:12:30
155	6	5593	0	0	08:28:30	08:29:30
155	7	5601	0	0	08:38:00	08:39:00
155	8	4910	0	0	09:00:30	09:05:00
155	9	5371	0	0	09:26:00	09:29:30
155	10	5388	0	0	09:48:30	09:49:30
155	11	4793	0	0	10:04:00	10:06:00
155	12	4807	0	0	10:17:24	10:18:24
155	13	3532	0	0	10:35:36	10:36:36
155	14	3536	0	0	10:48:36	10:49:36
155	15	3559	0	0	11:06:12	11:07:12
155	16	3501	0	0	11:24:06	11:25:06
155	17	3480	0	0	11:39:18	11:40:18
155	18	2470	0	0	12:00:00	12:01:30
155	19	2511	0	0	12:23:00	
156	1	2075	0	0		17:51:00
156	2	6377	0	0	18:06:00	18:07:00
156	3	385	0	0	18:27:00	18:28:00
156	4	391	0	0	18:41:00	18:48:00
156	5	352	0	0	19:06:00	19:09:00
156	6	1752	0	0	19:35:00	19:37:00
156	7	2107	0	0	20:32:30	20:42:00
156	8	3313	0	0	20:57:18	20:58:18
156	9	3319	0	0	21:17:12	21:18:12
156	10	4186	0	0	21:45:00	21:47:30
156	11	4170	0	0	22:03:00	22:08:00
156	12	4690	0	0	22:48:00	
157	1	6346	0	0		15:34:00
157	2	6347	0	0	15:36:30	15:37:30
157	3	6332	0	0	15:50:00	15:51:00
157	4	6294	0	0	16:00:00	16:02:00
157	5	6276	0	0	16:11:00	16:13:00
157	6	6266	0	0	16:26:00	16:27:00
157	7	6215	0	0	16:39:00	16:48:00
157	8	6092	0	0	17:00:30	17:01:30
157	9	6085	0	0	17:06:00	17:07:00
157	10	6084	0	0	17:13:30	17:19:00
157	11	6039	0	0	17:34:30	17:35:30
157	12	5973	0	0	17:47:00	17:48:00
157	13	5962	0	0	17:55:00	17:58:00
157	14	5979	0	0	18:14:00	18:19:00
157	15	6023	0	0	18:24:00	18:32:00
157	16	5808	0	0	18:50:30	18:51:30
157	17	5795	0	0	18:58:30	19:03:30
157	18	5522	0	0	19:11:30	19:14:00
157	19	5496	0	0	19:23:00	19:25:30
157	20	5476	0	0	19:44:00	19:49:00
157	21	5311	0	0	20:03:00	20:04:00
157	22	5306	0	0	20:10:00	20:11:00
157	23	4837	0	0	20:40:30	20:41:30
157	24	4738	0	0	21:04:00	21:12:00
157	25	4857	0	0	21:31:00	21:32:00
157	26	4515	0	0	21:39:00	21:40:00
157	27	4687	0	0	21:55:00	
158	1	6428	0	0		17:53:00
158	2	6436	0	0	17:56:00	17:57:00
158	3	1282	0	0	18:23:00	18:24:00
158	4	1255	0	0	18:44:00	18:45:00
158	5	1190	0	0	19:05:30	19:06:30
158	6	1179	0	0	19:18:00	19:19:00
158	7	1176	0	0	19:27:00	19:28:00
158	8	1103	0	0	19:41:30	19:42:30
158	9	1095	0	0	19:46:00	19:47:00
158	10	1078	0	0	19:50:00	19:52:00
158	11	1008	0	0	20:19:00	20:20:00
158	12	2599	0	0	20:35:00	20:36:00
158	13	2533	0	0	20:50:00	20:51:00
158	14	2517	0	0	21:17:00	
159	1	3270	0	0		07:45:00
159	2	3430	0	0	08:29:00	08:55:00
159	3	3104	0	0	09:09:00	09:26:00
159	4	2447	0	0	10:03:00	10:04:00
159	5	701	0	0	10:33:00	10:34:00
159	6	499	0	0	11:01:00	11:04:00
159	7	694	0	0	11:17:30	11:18:30
159	8	684	0	0	11:35:00	11:38:00
159	9	2421	0	0	11:49:00	11:50:00
159	10	2511	0	0	12:18:00	12:31:00
159	11	3416	0	0	12:52:00	12:53:00
159	12	3337	0	0	13:06:00	13:07:00
159	13	3456	0	0	13:21:30	13:22:30
159	14	3459	0	0	13:30:30	13:31:30
159	15	4558	0	0	13:41:30	13:42:30
159	16	4689	0	0	13:57:00	14:14:00
159	17	4516	0	0	14:29:00	14:30:30
159	18	4857	0	0	14:37:30	14:38:30
159	19	4737	0	0	15:00:00	15:05:00
159	20	4837	0	0	15:31:00	15:32:00
159	21	5304	0	0	16:03:00	16:05:30
159	22	5433	0	0	16:20:00	16:23:00
159	23	5496	0	0	16:43:00	16:46:00
159	24	5521	0	0	16:55:00	17:07:30
159	25	5796	0	0	17:16:00	17:17:00
159	26	5807	0	0	17:24:00	17:25:00
159	27	6027	0	0	17:40:00	17:45:00
159	28	5980	0	0	17:49:30	17:52:30
159	29	5962	0	0	18:08:00	18:09:00
159	30	5974	0	0	18:15:24	18:16:24
159	31	6040	0	0	18:28:00	18:29:00
159	32	6083	0	0	18:44:00	18:45:00
159	33	6086	0	0	18:51:30	18:52:30
159	34	6091	0	0	18:57:00	18:58:00
159	35	6213	0	0	19:11:00	19:14:00
159	36	6266	0	0	19:26:00	19:27:00
159	37	6276	0	0	19:39:30	19:41:30
159	38	6293	0	0	19:50:30	19:52:30
159	39	6332	0	0	20:00:30	20:01:30
159	40	6347	0	0	20:14:00	20:14:00
159	41	6346	0	0	20:18:00	
160	1	628	0	0		13:33:00
160	2	656	0	0	13:50:00	13:53:00
160	3	1556	0	0	13:58:00	14:10:00
160	4	233	0	0	15:04:00	15:15:00
160	5	244	0	0	15:26:00	15:28:00
160	6	267	0	0	15:44:00	15:46:00
160	7	265	0	0	15:55:00	15:57:00
160	8	257	0	0	16:13:00	16:15:00
160	9	241	0	0	16:36:00	16:38:00
160	10	252	0	0	17:06:00	17:08:00
160	11	250	0	0	17:14:00	17:16:00
160	12	937	0	0	17:35:00	17:35:00
160	13	5209	0	0	17:41:00	17:42:00
160	14	5266	0	0	17:56:00	17:57:00
160	15	5238	0	0	18:23:00	18:24:30
160	16	5516	0	0	18:52:30	18:55:30
160	17	5478	0	0	19:16:00	19:22:00
160	18	5564	0	0	19:36:00	19:38:00
160	19	5556	0	0	19:47:30	19:48:30
160	20	5593	0	0	20:08:00	20:10:30
160	21	5054	0	0	20:42:00	20:43:00
160	22	3873	0	0	21:09:00	21:10:00
160	23	2753	0	0	22:03:00	22:03:00
160	24	2768	0	0	22:08:00	22:08:00
160	25	3032	0	0	22:19:00	
161	1	4583	0	0		06:01:00
161	2	4635	0	0	06:08:30	06:10:30
161	3	5637	0	0	06:14:00	06:15:00
161	4	5595	0	0	06:18:30	06:19:30
161	5	5573	0	0	06:23:30	06:26:30
161	6	5369	0	0	06:42:00	06:43:00
161	7	768	0	0	07:20:00	07:21:00
161	8	970	0	0	07:52:00	07:55:00
161	9	1008	0	0	08:21:00	08:22:00
161	10	2599	0	0	08:37:30	08:38:30
161	11	2533	0	0	08:53:00	08:54:00
161	12	2520	0	0	09:20:00	09:31:00
161	13	3416	0	0	09:52:00	09:53:00
161	14	3338	0	0	10:06:00	10:07:00
161	15	3455	0	0	10:22:00	10:24:00
161	16	3459	0	0	10:32:00	10:33:00
161	17	4558	0	0	10:43:30	10:45:30
161	18	4687	0	0	11:01:00	11:26:00
161	19	4230	0	0	11:57:00	12:01:00
161	20	4236	0	0	12:08:00	12:11:00
161	21	4240	0	0	12:35:30	12:36:30
161	22	4278	0	0	12:46:00	12:49:00
161	23	4305	0	0	13:11:00	13:12:00
161	24	4314	0	0	13:33:00	
162	1	4313	0	0		14:57:00
162	2	4306	0	0	15:18:30	15:19:30
162	3	4277	0	0	15:37:00	15:38:00
162	4	4239	0	0	15:50:30	15:51:30
162	5	4235	0	0	16:03:42	16:04:42
162	6	4229	0	0	16:11:12	16:12:12
162	7	4688	0	0	16:43:00	17:08:00
162	8	4557	0	0	17:22:12	17:23:12
162	9	3460	0	0	17:33:30	17:34:30
162	10	3456	0	0	17:42:30	17:43:30
162	11	3338	0	0	17:58:30	17:59:30
162	12	3416	0	0	18:12:30	18:13:30
162	13	2517	0	0	18:35:00	18:40:00
162	14	2534	0	0	19:05:00	19:06:00
162	15	2600	0	0	19:21:00	19:22:00
162	16	1007	0	0	19:36:30	19:37:30
162	17	971	0	0	20:02:00	20:07:00
162	18	768	0	0	20:38:00	20:39:00
162	19	5370	0	0	21:16:30	21:17:30
162	20	5573	0	0	21:32:30	21:35:30
162	21	5596	0	0	21:39:00	21:40:00
162	22	5637	0	0	21:43:00	21:44:00
162	23	4636	0	0	21:47:30	21:48:30
162	24	4586	0	0	21:56:00	
163	1	6345	0	0		05:50:00
163	2	6347	0	0	05:52:30	05:53:30
163	3	6332	0	0	06:05:30	06:06:30
163	4	6294	0	0	06:15:00	06:16:00
163	5	6276	0	0	06:25:00	06:26:00
163	6	6265	0	0	06:38:00	06:39:00
163	7	6213	0	0	06:52:00	06:55:00
163	8	6092	0	0	07:07:30	07:08:30
163	9	6086	0	0	07:13:00	07:14:00
163	10	6084	0	0	07:20:30	07:21:30
163	11	6040	0	0	07:37:30	07:39:00
163	12	5973	0	0	07:51:30	07:52:30
163	13	5961	0	0	07:59:30	08:00:30
163	14	5979	0	0	08:16:30	08:17:30
163	15	6027	0	0	08:22:00	08:39:00
163	16	5808	0	0	08:53:30	08:55:00
163	17	5796	0	0	09:02:00	09:04:00
163	18	5522	0	0	09:12:30	09:13:30
163	19	5496	0	0	09:22:30	09:23:30
163	20	5476	0	0	09:39:00	09:45:00
163	21	5311	0	0	10:00:00	10:01:00
163	22	5308	0	0	10:07:00	10:13:00
163	23	4837	0	0	10:41:30	10:44:00
163	24	4738	0	0	11:07:00	11:09:00
163	25	4858	0	0	11:28:00	11:29:00
163	26	4516	0	0	11:37:00	11:38:00
163	27	4679	0	0	11:53:00	12:00:00
163	28	4557	0	0	12:15:30	12:16:30
163	29	3459	0	0	12:26:30	12:28:30
163	30	3456	0	0	12:36:30	12:37:30
163	31	3338	0	0	12:52:00	12:53:00
163	32	3415	0	0	13:05:30	13:06:30
163	33	2519	0	0	13:29:00	13:35:00
163	34	2421	0	0	13:57:30	13:58:30
163	35	683	0	0	14:08:54	14:09:54
163	36	693	0	0	14:25:30	14:26:30
163	37	499	0	0	14:41:00	14:42:00
163	38	701	0	0	15:17:00	15:24:30
163	39	2447	0	0	15:51:00	15:54:00
163	40	3103	0	0	16:33:00	16:34:00
163	41	3430	0	0	16:48:00	16:50:00
163	42	4055	0	0	17:19:00	
164	1	4586	0	0		21:20:00
164	2	4635	0	0	21:27:00	21:28:00
164	3	5638	0	0	21:31:30	21:32:30
164	4	5596	0	0	21:36:00	21:37:00
164	5	5578	0	0	21:41:00	21:44:00
164	6	5370	0	0	22:00:00	22:01:00
164	7	6325	0	0	22:13:00	22:14:00
164	8	6357	0	0	22:25:30	22:26:30
164	9	767	0	0	22:43:36	22:44:36
164	10	974	0	0	23:19:24	
165	1	6434	0	0		09:34:00
165	2	6436	0	0	09:37:00	09:38:00
165	3	6469	0	0	09:55:00	10:00:00
165	4	1298	0	0	10:18:00	10:18:30
165	5	1308	0	0	10:34:00	10:35:00
165	6	2978	0	0	10:44:00	10:44:30
165	7	2963	0	0	10:59:00	11:00:00
165	8	2902	0	0	11:28:00	11:29:00
165	9	2913	0	0	11:37:30	11:38:30
165	10	3032	0	0	11:51:00	11:53:00
165	11	2767	0	0	11:59:00	12:08:00
165	12	2754	0	0	12:12:00	12:14:30
165	13	2763	0	0	12:21:30	12:22:30
165	14	2789	0	0	12:30:00	12:32:30
165	15	3811	0	0	12:48:00	12:49:00
165	16	3790	0	0	13:10:00	13:12:00
165	17	3755	0	0	13:36:00	13:38:00
165	18	4974	0	0	14:18:30	14:20:30
165	19	5021	0	0	14:48:30	14:49:00
165	20	5016	0	0	15:02:00	15:02:30
165	21	5946	0	0	15:36:12	15:36:42
165	22	6031	0	0	16:34:00	
166	1	331	0	0		06:08:00
166	2	335	0	0	06:14:00	06:16:00
166	3	274	0	0	06:48:00	06:50:00
166	4	277	0	0	07:09:00	07:11:00
166	5	283	0	0	07:48:00	07:50:00
166	6	263	0	0	08:11:00	08:13:00
166	7	247	0	0	08:34:00	08:37:00
166	8	242	0	0	09:06:00	09:08:00
166	9	252	0	0	09:35:00	09:37:00
166	10	250	0	0	09:43:00	09:46:00
166	11	938	0	0	09:53:00	10:17:00
166	12	5610	0	0	10:37:00	10:38:00
166	13	5658	0	0	11:14:00	11:15:00
166	14	5776	0	0	11:30:30	11:31:30
166	15	5814	0	0	11:45:30	11:46:30
166	16	5795	0	0	11:50:00	11:51:00
166	17	5808	0	0	11:58:00	11:59:00
166	18	6027	0	0	12:13:00	
167	1	628	0	0		17:33:00
167	2	655	0	0	17:50:00	17:53:00
167	3	1555	0	0	17:58:00	18:10:00
167	4	234	0	0	19:04:00	19:15:00
167	5	244	0	0	19:26:00	19:28:00
167	6	268	0	0	19:44:00	19:46:00
167	7	265	0	0	19:55:00	19:57:00
167	8	258	0	0	20:13:00	20:15:00
167	9	241	0	0	20:36:00	20:38:00
167	10	252	0	0	21:06:00	21:08:00
167	11	250	0	0	21:13:00	21:16:00
167	12	938	0	0	21:38:00	21:38:00
167	13	5210	0	0	21:44:00	21:45:00
167	14	5256	0	0	22:01:30	22:02:30
167	15	5238	0	0	22:16:00	22:17:00
167	16	5515	0	0	22:43:00	22:47:00
167	17	5477	0	0	23:10:00	
168	1	6345	0	0		11:10:00
168	2	6347	0	0	11:12:30	11:13:30
168	3	6294	0	0	11:34:00	11:36:00
168	4	6276	0	0	11:45:00	11:47:00
168	5	6265	0	0	11:59:30	12:00:30
168	6	6216	0	0	12:12:00	12:15:00
168	7	6083	0	0	12:37:00	12:38:00
168	8	6040	0	0	12:53:30	12:55:00
168	9	5962	0	0	13:13:00	13:17:00
168	10	5980	0	0	13:33:00	13:34:30
168	11	6029	0	0	13:39:00	13:44:00
168	12	5481	0	0	14:47:00	14:50:00
168	13	5470	0	0	14:56:30	14:57:30
168	14	5311	0	0	15:06:00	15:07:00
168	15	5304	0	0	15:13:00	15:20:00
168	16	5166	0	0	15:46:00	15:47:00
168	17	4737	0	0	16:09:00	16:14:00
168	18	4689	0	0	16:54:00	17:05:00
168	19	4170	0	0	17:38:00	17:39:00
168	20	4186	0	0	17:53:00	17:54:00
168	21	3320	0	0	18:32:00	18:33:00
168	22	3313	0	0	18:52:54	18:53:54
168	23	2107	0	0	19:07:30	19:09:30
168	24	1752	0	0	19:53:00	19:55:00
168	25	351	0	0	20:18:00	20:20:00
168	26	392	0	0	20:36:48	20:38:00
168	27	385	0	0	20:52:00	20:53:00
168	28	6378	0	0	21:13:00	21:14:00
168	29	2073	0	0	21:29:00	
169	1	2108	0	0		07:15:00
169	2	3313	0	0	07:29:00	07:30:00
169	3	3319	0	0	07:51:00	07:52:00
169	4	4186	0	0	08:25:30	08:27:00
169	5	4169	0	0	08:41:00	08:50:00
169	6	4690	0	0	09:23:00	09:29:00
169	7	4738	0	0	10:08:00	10:10:00
169	8	5166	0	0	10:31:00	10:35:00
169	9	5306	0	0	11:02:00	11:06:00
169	10	5312	0	0	11:12:00	11:13:00
169	11	5479	0	0	11:28:00	11:31:00
169	12	6032	0	0	12:22:00	12:27:00
169	13	5980	0	0	12:32:00	12:33:00
169	14	5962	0	0	12:48:30	12:49:30
169	15	6039	0	0	13:06:30	13:08:00
169	16	6084	0	0	13:22:30	13:23:30
169	17	6211	0	0	13:44:00	13:46:00
169	18	6265	0	0	13:57:00	13:58:00
169	19	6276	0	0	14:10:00	14:11:00
169	20	6293	0	0	14:20:00	14:21:00
169	21	6347	0	0	14:41:30	14:41:30
169	22	6346	0	0	14:46:00	
170	1	332	0	0		18:49:00
170	2	336	0	0	18:55:00	18:57:00
170	3	273	0	0	19:30:00	19:32:00
170	4	277	0	0	19:52:00	19:54:00
170	5	279	0	0	20:23:00	20:27:00
170	6	269	0	0	20:38:00	20:39:00
170	7	272	0	0	20:47:00	20:58:00
170	8	942	0	0	21:02:00	21:02:00
170	9	4434	0	0	21:11:00	21:17:00
170	10	4451	0	0	21:29:30	21:30:30
170	11	4464	0	0	21:41:00	21:42:00
170	12	4365	0	0	22:01:00	22:02:00
170	13	4673	0	0	22:23:00	22:24:00
170	14	4686	0	0	22:46:00	23:30:00
170	15	4558	0	0	23:44:30	23:45:30
170	16	3459	0	0	23:55:30	23:56:30
170	17	3456	1	1	00:05:00	00:06:00
170	18	3337	1	1	00:21:00	00:22:00
170	19	3415	1	1	00:35:00	00:36:00
170	20	2518	1	1	00:58:00	01:14:00
170	21	2534	1	1	01:39:30	01:42:00
170	22	2599	1	1	01:58:00	01:59:00
170	23	1007	1	1	02:14:00	02:15:00
170	24	978	1	1	02:41:00	02:44:00
170	25	967	1	1	02:48:00	02:49:00
170	26	746	1	1	02:52:30	02:53:30
170	27	1101	1	1	03:01:30	03:02:30
170	28	1079	1	1	03:24:00	03:26:00
170	29	1096	1	1	03:29:00	03:30:00
170	30	1104	1	1	03:33:36	03:34:36
170	31	1176	1	1	03:47:36	03:48:36
170	32	1180	1	1	03:56:36	03:57:36
170	33	1190	1	1	04:08:30	04:09:30
170	34	1256	1	1	04:32:00	04:33:00
170	35	1327	1	1	04:49:00	04:50:00
170	36	5885	1	1	05:08:00	05:09:00
170	37	5369	1	1	05:20:00	05:21:00
170	38	5576	1	1	05:36:00	05:39:00
170	39	5595	1	1	05:43:00	05:44:00
170	40	5638	1	1	05:47:30	05:48:30
170	41	4635	1	1	05:52:00	05:53:00
170	42	4581	1	0	06:01:00	
171	1	3269	0	0		05:45:00
171	2	3429	0	0	06:23:00	06:45:00
171	3	3103	0	0	07:00:00	07:04:00
171	4	2448	0	0	07:39:00	07:45:00
171	5	702	0	0	08:24:00	08:25:00
171	6	499	0	0	08:51:00	
172	1	3031	0	0		13:01:00
172	2	2773	0	0	13:07:00	13:12:00
172	3	2754	0	0	13:16:00	13:17:30
172	4	3873	0	0	14:07:30	14:09:30
172	5	5053	0	0	14:36:30	14:37:30
172	6	5593	0	0	15:11:00	15:12:00
172	7	5556	0	0	15:29:30	15:30:30
172	8	5563	0	0	15:39:00	15:42:00
172	9	5482	0	0	15:56:00	15:59:00
172	10	5516	0	0	16:21:00	16:22:00
172	11	5238	0	0	16:48:30	16:50:00
172	12	5255	0	0	17:03:00	17:04:00
172	13	5210	0	0	17:23:00	17:27:00
172	14	938	0	0	17:33:00	18:07:00
172	15	250	0	0	18:13:00	18:16:00
172	16	251	0	0	18:22:00	18:24:00
172	17	241	0	0	18:51:00	18:53:00
172	18	248	0	0	19:22:00	19:25:00
172	19	263	0	0	19:46:00	19:48:00
172	20	283	0	0	20:09:00	20:11:00
172	21	277	0	0	20:46:00	20:48:00
172	22	273	0	0	21:09:00	21:11:00
172	23	335	0	0	21:45:00	21:46:00
172	24	331	0	0	21:52:00	
173	1	6429	0	0		19:11:00
173	2	6435	0	0	19:14:00	19:15:00
173	3	1282	0	0	19:42:00	19:43:00
173	4	1255	0	0	20:03:00	20:04:00
173	5	1308	0	0	20:34:00	20:35:00
173	6	2978	0	0	20:44:00	20:44:30
173	7	2963	0	0	20:59:00	21:00:00
173	8	2901	0	0	21:28:00	21:29:00
173	9	2913	0	0	21:37:30	21:38:30
173	10	3031	0	0	21:51:00	21:53:00
173	11	2767	0	0	21:59:00	22:04:00
173	12	2753	0	0	22:08:00	22:09:00
173	13	2806	0	0	22:22:30	22:23:30
173	14	3874	0	0	23:04:00	23:05:00
173	15	5054	0	0	23:32:00	23:33:00
173	16	5945	1	1	00:16:30	00:17:30
173	17	6031	1	0	01:06:00	
174	1	4585	0	0		04:58:00
174	2	4636	0	0	05:05:00	05:06:00
174	3	5637	0	0	05:09:00	05:10:00
174	4	5595	0	0	05:13:00	05:14:00
174	5	5571	0	0	05:18:00	05:20:00
174	6	5468	0	0	05:26:30	05:27:30
174	7	5370	0	0	05:37:00	05:38:00
174	8	6357	0	0	06:00:00	06:03:00
174	9	768	0	0	06:19:00	06:20:00
174	10	978	0	0	06:50:00	06:54:00
174	11	1007	0	0	07:19:30	07:20:30
174	12	2600	0	0	07:35:30	07:36:30
174	13	2533	0	0	07:51:00	07:57:00
174	14	2519	0	0	08:23:00	08:38:00
174	15	2061	0	0	09:00:00	09:01:00
174	16	1844	0	0	09:12:30	09:14:30
174	17	1833	0	0	09:22:30	09:23:30
174	18	1819	0	0	09:28:00	09:29:00
174	19	1838	0	0	09:35:24	09:36:24
174	20	2079	0	0	09:47:00	09:56:00
174	21	2107	0	0	10:13:00	
175	1	1630	0	0		17:50:00
175	2	1611	0	0	17:59:00	18:00:00
175	3	926	0	0	18:50:00	18:50:00
175	4	1752	0	0	19:07:00	19:13:00
175	5	2318	0	0	19:37:18	19:38:18
175	6	1819	0	0	19:50:00	19:51:00
175	7	2511	0	0	20:33:00	20:36:00
175	8	2716	0	0	21:21:00	21:22:00
175	9	2609	0	0	21:57:00	21:58:00
175	10	2754	0	0	22:55:00	22:55:00
175	11	2772	0	0	23:00:00	23:00:00
175	12	3031	0	0	23:15:00	
176	1	1629	0	0		09:50:00
176	2	1611	0	0	09:59:00	10:00:00
176	3	925	0	0	10:47:00	10:50:00
176	4	1751	0	0	11:07:00	11:13:00
176	5	2318	0	0	11:37:18	11:38:18
176	6	1819	0	0	11:50:00	11:51:00
176	7	2512	0	0	12:33:00	12:36:00
176	8	2715	0	0	13:21:00	13:22:00
176	9	2609	0	0	13:57:00	13:58:00
176	10	2754	0	0	14:55:00	14:55:00
176	11	2770	0	0	15:00:00	15:00:00
176	12	3032	0	0	15:15:00	
177	1	2108	0	0		05:27:00
177	2	2080	0	0	05:44:00	05:45:00
177	3	1838	0	0	05:55:18	05:56:18
177	4	1819	0	0	06:03:00	06:28:00
177	5	1833	0	0	06:33:00	06:34:00
177	6	1843	0	0	06:42:00	06:43:00
177	7	2061	0	0	06:55:00	06:56:00
177	8	2515	0	0	07:18:00	07:45:00
177	9	2344	0	0	07:55:12	07:56:12
177	10	2444	0	0	08:15:30	08:16:30
177	11	2464	0	0	08:28:36	08:29:36
177	12	2715	0	0	08:43:06	08:44:06
177	13	2723	0	0	08:57:06	08:58:06
177	14	2609	0	0	09:22:00	09:23:00
177	15	2691	0	0	09:43:00	09:44:00
177	16	2835	0	0	09:56:00	09:57:00
177	17	2753	0	0	10:22:30	10:22:30
177	18	2772	0	0	10:28:00	10:28:00
177	19	3032	0	0	10:47:00	
178	1	5916	0	0		17:20:00
178	2	5914	0	0	17:26:00	17:28:30
178	3	5899	0	0	17:38:00	17:44:00
178	4	2020	0	0	18:06:00	18:07:00
178	5	5866	0	0	18:30:00	18:41:30
178	6	1773	0	0	18:46:30	18:47:30
178	7	5851	0	0	19:09:30	19:19:00
178	8	6029	0	0	19:58:00	20:23:00
178	9	5946	0	0	21:12:48	21:13:48
178	10	5054	0	0	21:58:00	22:02:00
178	11	3874	0	0	22:28:30	22:29:30
178	12	2754	0	0	23:21:00	23:21:00
178	13	2774	0	0	23:27:00	23:27:00
178	14	3032	0	0	23:35:00	
179	1	3611	0	0		05:38:00
179	2	3605	0	0	05:43:30	05:44:30
179	3	3629	0	0	06:00:30	06:01:30
179	4	3641	0	0	06:08:30	06:10:30
179	5	3643	0	0	06:15:00	06:16:00
179	6	3645	0	0	06:21:12	06:22:12
179	7	2662	0	0	06:40:00	06:41:00
179	8	2658	0	0	06:48:30	06:49:30
179	9	2610	0	0	07:16:00	07:17:00
179	10	1231	0	0	07:46:00	07:47:00
179	11	1220	0	0	08:05:30	08:06:00
179	12	1082	0	0	08:19:00	08:23:00
179	13	1101	0	0	08:43:30	08:44:30
179	14	745	0	0	08:52:30	08:53:00
179	15	968	0	0	08:56:30	08:57:00
179	16	976	0	0	09:01:00	09:12:00
179	17	767	0	0	09:42:00	09:45:00
179	18	6358	0	0	10:01:30	10:02:00
179	19	5370	0	0	10:25:00	10:26:00
179	20	5467	0	0	10:36:00	10:36:30
179	21	5572	0	0	10:43:00	10:45:00
179	22	5596	0	0	10:48:30	10:49:30
179	23	5638	0	0	10:52:42	10:53:42
179	24	4635	0	0	10:57:00	10:58:00
179	25	4589	0	0	11:06:00	
180	1	3031	0	0		17:49:00
180	2	2772	0	0	17:55:00	18:00:00
180	3	2753	0	0	18:03:30	18:05:00
180	4	2517	0	0	20:18:00	20:30:00
180	5	2385	0	0	21:08:30	21:09:30
180	6	1284	0	0	21:49:00	21:50:00
180	7	70	0	0	22:03:00	22:03:00
180	8	2077	0	0	22:15:00	
181	1	4583	0	0		04:06:00
181	2	4635	0	0	04:13:30	04:15:30
181	3	5637	0	0	04:19:00	04:20:00
181	4	5595	0	0	04:23:30	04:24:30
181	5	5579	0	0	04:29:00	04:32:00
181	6	5370	0	0	04:47:00	04:48:00
181	7	976	0	0	05:54:00	05:57:00
181	8	1007	0	0	06:23:00	06:24:00
181	9	2533	0	0	06:53:00	06:54:00
181	10	2518	0	0	07:20:00	07:31:00
181	11	3338	0	0	08:03:00	08:04:00
181	12	4682	0	0	08:48:00	09:13:00
181	13	4674	0	0	09:36:00	09:37:00
181	14	4366	0	0	09:57:00	09:58:00
181	15	4463	0	0	10:17:30	10:18:30
181	16	4451	0	0	10:29:30	10:30:30
181	17	4434	0	0	10:43:00	10:49:00
181	18	942	0	0	10:57:00	10:57:00
181	19	271	0	0	11:10:00	11:11:00
181	20	269	0	0	11:19:00	11:20:00
181	21	280	0	0	11:32:00	11:34:00
181	22	278	0	0	12:05:00	12:08:00
181	23	274	0	0	12:32:00	12:34:00
181	24	335	0	0	13:07:00	13:08:00
181	25	332	0	0	13:14:00	
182	1	2518	0	0		08:31:00
182	2	3416	0	0	08:52:00	08:53:00
182	3	3337	0	0	09:06:00	09:07:00
182	4	3456	0	0	09:21:30	09:22:30
182	5	3459	0	0	09:30:30	09:32:30
182	6	4557	0	0	09:42:30	09:44:30
182	7	4685	0	0	09:59:00	10:04:00
182	8	4516	0	0	10:21:00	10:25:00
182	9	4857	0	0	10:32:00	10:36:00
182	10	4737	0	0	10:55:00	11:06:00
182	11	4837	0	0	11:31:18	11:32:18
182	12	5305	0	0	12:02:00	12:04:00
182	13	5311	0	0	12:10:00	12:11:00
182	14	5482	0	0	12:26:00	12:35:00
182	15	5496	0	0	12:49:00	12:52:30
182	16	5522	0	0	13:01:00	13:02:00
182	17	5795	0	0	13:10:30	13:11:30
182	18	5807	0	0	13:19:00	13:22:00
182	19	6030	0	0	13:36:00	13:41:00
182	20	5980	0	0	13:45:00	13:46:00
182	21	5962	0	0	14:02:00	14:03:00
182	22	5974	0	0	14:09:36	14:10:36
182	23	6040	0	0	14:23:00	14:24:30
182	24	6083	0	0	14:39:00	14:40:00
182	25	6085	0	0	14:46:30	14:47:30
182	26	6091	0	0	14:52:00	14:53:00
182	27	6211	0	0	15:05:00	15:08:00
182	28	6266	0	0	15:19:00	15:20:00
182	29	6276	0	0	15:33:00	15:34:00
182	30	6294	0	0	15:43:00	15:44:00
182	31	6332	0	0	15:53:00	15:54:00
182	32	6347	0	0	16:07:00	16:07:00
182	33	6345	0	0	16:11:00	
183	1	4681	0	0		15:05:00
183	2	4548	0	0	15:10:00	15:11:00
183	3	4601	0	0	15:15:00	15:18:00
183	4	4648	0	0	15:36:42	15:37:42
183	5	4663	0	0	16:09:30	16:10:30
183	6	3422	0	0	16:24:06	16:25:06
183	7	3559	0	0	16:48:00	16:55:00
183	8	3515	0	0	17:10:48	17:12:18
183	9	1057	0	0	17:45:00	17:46:00
183	10	1054	0	0	17:56:36	17:57:36
183	11	3637	0	0	18:05:06	18:05:36
183	12	3634	0	0	18:15:42	18:16:42
183	13	3629	0	0	18:30:18	18:31:18
183	14	3606	0	0	18:38:30	18:40:30
183	15	3683	0	0	18:51:30	18:52:30
183	16	3674	0	0	19:11:00	19:12:00
183	17	2807	0	0	19:23:00	19:24:00
183	18	2753	0	0	19:43:00	19:44:00
183	19	2774	0	0	19:48:00	19:57:00
183	20	3032	0	0	20:03:00	20:06:00
183	21	2889	0	0	20:24:06	20:24:36
183	22	2984	0	0	20:33:30	20:34:00
183	23	2999	0	0	20:44:30	20:45:00
183	24	3021	0	0	20:59:00	21:00:00
183	25	1626	0	0	21:10:54	21:11:54
183	26	1604	0	0	21:19:30	21:20:30
183	27	1589	0	0	21:32:30	21:33:30
183	28	2157	0	0	21:44:00	21:44:00
183	29	1423	0	0	21:48:00	
184	1	3031	0	0		12:49:00
184	2	2773	0	0	12:55:00	13:00:00
184	3	2754	0	0	13:03:30	13:05:00
184	4	2610	0	0	14:01:30	14:02:30
184	5	2716	0	0	14:38:00	14:39:00
184	6	2520	0	0	15:24:00	15:27:00
184	7	1819	0	0	16:10:00	16:11:00
184	8	2318	0	0	16:23:00	16:24:00
184	9	1752	0	0	16:47:00	16:50:00
184	10	926	0	0	17:09:00	17:09:00
184	11	1612	0	0	18:06:00	18:09:00
184	12	1630	0	0	18:16:00	
185	1	4583	0	0		21:59:00
185	2	4635	0	0	22:06:30	22:08:30
185	3	5638	0	0	22:12:00	22:13:00
185	4	5596	0	0	22:16:30	22:17:30
185	5	5579	0	0	22:21:30	22:24:30
185	6	5370	0	0	22:39:30	22:40:30
185	7	5885	0	0	22:51:30	22:52:30
185	8	1327	0	0	23:11:30	23:12:30
185	9	1255	0	0	23:29:30	23:30:30
185	10	1190	0	0	23:52:00	23:53:00
185	11	1180	1	1	00:05:00	00:06:00
185	12	1175	1	1	00:14:00	00:15:00
185	13	1103	1	1	00:28:30	00:29:30
185	14	1096	1	1	00:33:06	00:34:06
185	15	1078	1	1	00:37:06	00:39:00
185	16	1102	1	1	00:59:00	01:00:00
185	17	746	1	1	01:07:30	01:08:30
185	18	968	1	1	01:12:00	01:13:00
185	19	977	1	1	01:18:00	01:21:00
185	20	1008	1	1	01:46:30	01:47:30
185	21	2600	1	1	02:03:00	02:04:00
185	22	2533	1	1	02:18:00	02:20:30
185	23	2519	1	1	02:48:00	02:53:00
185	24	3415	1	1	03:14:00	03:15:00
185	25	3337	1	1	03:28:00	03:29:00
185	26	3456	1	1	03:44:00	03:45:00
185	27	3459	1	1	03:53:00	03:54:00
185	28	4557	1	1	04:04:30	04:05:30
185	29	4689	1	1	04:20:00	05:13:00
185	30	4673	1	1	05:36:00	05:37:00
185	31	4365	1	1	05:57:00	05:58:00
185	32	4464	1	1	06:17:30	06:18:30
185	33	4451	1	1	06:29:30	06:30:30
185	34	4434	1	1	06:43:00	06:49:00
185	35	942	1	1	06:57:00	06:57:00
185	36	271	1	1	07:10:00	07:11:00
185	37	269	1	1	07:19:00	07:20:00
185	38	280	1	1	07:32:00	07:34:00
185	39	277	1	1	08:05:00	08:08:00
185	40	273	1	1	08:32:00	08:34:00
185	41	336	1	1	09:07:00	09:08:00
185	42	332	1	0	09:14:00	
186	1	4582	0	0		06:46:00
186	2	4635	0	0	06:54:00	06:55:00
186	3	5638	0	0	06:58:30	06:59:30
186	4	5595	0	0	07:03:00	07:04:00
186	5	5579	0	0	07:08:00	07:14:00
186	6	5468	0	0	07:20:30	07:21:00
186	7	5369	0	0	07:32:00	07:34:00
186	8	6358	0	0	07:55:00	07:55:30
186	9	768	0	0	08:13:00	08:14:00
186	10	975	0	0	08:45:30	08:55:30
186	11	968	0	0	08:59:42	09:00:12
186	12	745	0	0	09:03:30	09:04:00
186	13	1101	0	0	09:12:00	09:13:00
186	14	1081	0	0	09:35:00	09:37:00
186	15	1219	0	0	09:48:00	09:48:30
186	16	1232	0	0	10:07:30	10:08:30
186	17	2609	0	0	10:38:00	10:39:00
186	18	2658	0	0	11:01:42	11:02:42
186	19	2661	0	0	11:10:12	11:16:00
186	20	3645	0	0	11:32:42	11:33:42
186	21	3644	0	0	11:38:48	11:39:48
186	22	3642	0	0	11:44:30	11:46:30
186	23	3633	0	0	11:56:12	11:56:54
186	24	3637	0	0	12:06:48	12:07:30
186	25	1049	0	0	12:20:00	12:20:30
186	26	4883	0	0	13:26:00	13:32:00
186	27	5601	0	0	13:48:00	13:58:00
186	28	5594	0	0	14:05:30	14:12:00
186	29	5555	0	0	14:29:30	14:35:00
186	30	5560	0	0	14:38:30	14:39:00
186	31	5563	0	0	14:45:00	14:46:00
186	32	5479	0	0	15:02:00	
187	1	4583	0	0		08:06:00
187	2	4635	0	0	08:13:30	08:15:30
187	3	5638	0	0	08:19:00	08:20:00
187	4	5595	0	0	08:23:30	08:24:30
187	5	5576	0	0	08:29:00	08:32:00
187	6	5370	0	0	08:47:00	08:48:00
187	7	971	0	0	09:54:00	09:57:00
187	8	1007	0	0	10:23:00	10:24:00
187	9	2533	0	0	10:53:00	10:54:00
187	10	2516	0	0	11:20:00	11:31:00
187	11	3337	0	0	12:03:00	12:04:00
187	12	4689	0	0	12:48:00	13:13:00
187	13	4674	0	0	13:36:00	13:37:00
187	14	4366	0	0	13:57:00	13:58:00
187	15	4464	0	0	14:17:30	14:18:30
187	16	4451	0	0	14:29:30	14:30:30
187	17	4434	0	0	14:43:00	14:49:00
187	18	941	0	0	14:57:00	14:57:00
187	19	271	0	0	15:10:00	15:11:00
187	20	269	0	0	15:19:00	15:20:00
187	21	279	0	0	15:32:00	15:34:00
187	22	278	0	0	16:05:00	16:08:00
187	23	274	0	0	16:32:00	16:34:00
187	24	335	0	0	17:07:00	17:08:00
187	25	332	0	0	17:14:00	
188	1	2753	0	0		22:36:00
188	2	2770	0	0	22:40:00	22:45:00
188	3	3032	0	0	22:51:00	22:56:00
188	4	2914	0	0	23:10:00	23:11:00
188	5	2902	0	0	23:18:30	23:19:30
188	6	2964	0	0	23:47:30	23:48:30
188	7	2977	1	1	00:02:30	00:03:30
188	8	1308	1	1	00:12:30	00:13:30
188	9	1255	1	1	00:44:00	00:46:00
188	10	1327	1	1	01:02:00	01:03:00
188	11	5886	1	1	01:21:00	01:22:00
188	12	5370	1	1	01:33:00	01:34:00
188	13	5574	1	1	01:49:00	01:51:00
188	14	5595	1	1	01:55:00	01:56:00
188	15	5637	1	1	01:59:30	02:00:30
188	16	4636	1	1	02:04:00	02:05:00
188	17	4587	1	0	02:13:00	
189	1	4680	0	0		18:45:00
189	2	4516	0	0	19:00:00	19:01:00
189	3	4858	0	0	19:08:30	19:09:30
189	4	4738	0	0	19:28:30	19:30:30
189	5	5371	0	0	20:07:00	20:08:00
189	6	4908	0	0	20:28:30	20:34:00
189	7	2754	0	0	22:28:30	22:28:30
189	8	2774	0	0	22:36:00	22:36:00
189	9	3031	0	0	22:47:00	
190	1	3032	0	0		13:09:00
190	2	2770	0	0	13:15:00	13:20:00
190	3	2754	0	0	13:23:30	13:25:30
190	4	4904	0	0	15:19:00	15:20:30
190	5	5371	0	0	15:41:00	15:46:00
190	6	4737	0	0	16:24:00	16:26:00
190	7	4857	0	0	16:44:30	16:45:30
190	8	4515	0	0	16:53:00	16:54:00
190	9	4682	0	0	17:09:00	17:15:00
190	10	4229	0	0	17:45:30	17:47:30
190	11	4236	0	0	17:55:00	17:56:00
190	12	4239	0	0	18:09:30	18:14:30
190	13	4277	0	0	18:24:00	18:27:00
190	14	4306	0	0	18:48:30	18:49:30
190	15	4313	0	0	19:11:00	
191	1	525	0	0		18:35:00
191	2	523	0	0	18:43:00	18:45:00
191	3	522	0	0	19:20:00	19:22:00
191	4	638	0	0	20:26:00	20:30:00
191	5	633	0	0	21:15:00	21:17:00
191	6	631	0	0	21:44:00	21:46:00
191	7	629	0	0	22:36:00	22:38:00
191	8	655	0	0	23:06:00	23:08:00
191	9	1555	0	0	23:13:00	23:19:00
191	10	234	1	1	00:34:00	01:04:00
191	11	249	1	1	02:46:00	02:48:00
191	12	937	1	1	03:58:00	03:58:00
191	13	5210	1	1	04:04:00	04:05:00
191	14	5266	1	1	04:19:00	04:20:00
191	15	5307	1	1	05:10:00	05:24:00
191	16	5312	1	1	05:30:42	05:31:42
191	17	5481	1	1	05:46:42	06:00:00
191	18	5496	1	1	06:15:00	06:16:30
191	19	5522	1	1	06:25:30	06:37:30
191	20	5795	1	1	06:47:00	06:48:00
191	21	5808	1	1	06:56:18	06:57:18
191	22	6024	1	1	07:17:30	07:22:00
191	23	5979	1	1	07:27:00	07:40:00
191	24	5961	1	1	07:56:00	07:57:00
191	25	5973	1	1	08:04:54	08:05:54
191	26	6039	1	1	08:18:54	08:20:00
191	27	6084	1	1	08:36:00	08:38:00
191	28	6085	1	1	08:45:48	08:46:48
191	29	6092	1	1	08:52:36	08:53:36
191	30	6216	1	1	09:07:18	09:08:18
191	31	6266	1	1	09:19:00	09:20:00
191	32	6275	1	1	09:32:42	09:33:42
191	33	6294	1	1	09:43:06	09:44:06
191	34	6332	1	1	09:53:00	09:54:00
191	35	6348	1	1	10:07:00	10:07:00
191	36	6346	1	0	10:11:00	
192	1	6023	0	0		20:21:00
192	2	5054	0	0	21:53:00	21:54:00
192	3	3873	0	0	22:20:00	22:21:00
192	4	3725	0	0	22:56:00	22:57:00
192	5	3605	0	0	23:25:00	23:25:00
192	6	3615	0	0	23:32:00	
193	1	5916	0	0		07:05:00
193	2	5913	0	0	07:11:00	07:12:00
193	3	5900	0	0	07:21:30	07:24:00
193	4	2020	0	0	07:53:00	07:53:30
193	5	5865	0	0	08:16:30	08:17:00
193	6	1773	0	0	08:22:00	08:23:00
193	7	5851	0	0	08:45:00	08:46:00
193	8	6023	0	0	09:18:00	09:35:00
193	9	5945	0	0	10:18:30	10:19:30
193	10	5018	0	0	10:35:30	10:49:30
193	11	5053	0	0	11:16:00	11:17:00
193	12	3874	0	0	11:43:00	11:44:00
193	13	3725	0	0	12:08:00	12:09:00
193	14	3606	0	0	12:35:30	12:37:30
193	15	3629	0	0	12:44:00	12:45:00
193	16	3642	0	0	12:52:00	12:54:00
193	17	3643	0	0	12:58:30	12:59:30
193	18	3645	0	0	13:04:30	13:07:30
193	19	2661	0	0	13:25:18	13:25:48
193	20	2657	0	0	13:33:18	13:38:18
193	21	2610	0	0	14:01:00	14:02:00
193	22	1231	0	0	14:31:30	14:32:30
193	23	1219	0	0	14:51:00	14:51:30
193	24	1079	0	0	15:04:30	15:06:30
193	25	1101	0	0	15:26:30	15:27:30
193	26	746	0	0	15:35:30	15:36:00
193	27	967	0	0	15:39:30	15:40:00
193	28	973	0	0	15:45:00	15:55:00
193	29	767	0	0	16:24:30	16:25:30
193	30	6358	0	0	16:42:30	16:43:00
193	31	5369	0	0	17:04:30	17:09:00
193	32	5467	0	0	17:19:00	17:19:30
193	33	5580	0	0	17:26:00	17:29:00
193	34	5596	0	0	17:33:00	17:34:00
193	35	5638	0	0	17:37:30	17:38:30
193	36	4636	0	0	17:42:00	17:43:00
193	37	4583	0	0	17:51:00	
194	1	1424	0	0		12:15:00
194	2	2156	0	0	12:18:30	12:19:30
194	3	1590	0	0	12:29:30	12:30:30
194	4	1603	0	0	12:42:30	12:43:30
194	5	1625	0	0	12:51:30	12:52:30
194	6	3022	0	0	13:04:00	13:05:00
194	7	3000	0	0	13:17:36	13:18:36
194	8	2984	0	0	13:27:42	13:28:42
194	9	2890	0	0	13:36:30	13:37:30
194	10	3032	0	0	13:55:00	13:57:00
194	11	2769	0	0	14:03:00	14:12:00
194	12	2754	0	0	14:16:00	14:17:30
194	13	2808	0	0	14:35:54	14:37:24
194	14	3674	0	0	14:48:30	14:50:00
194	15	3683	0	0	15:08:00	15:09:30
194	16	3605	0	0	15:23:00	15:25:00
194	17	3630	0	0	15:31:48	15:32:48
194	18	3633	0	0	15:46:24	15:47:24
194	19	3637	0	0	15:57:06	15:58:06
194	20	1054	0	0	16:05:18	16:06:18
194	21	1058	0	0	16:17:30	16:18:30
194	22	3516	0	0	16:49:12	16:53:24
194	23	3559	0	0	17:11:30	17:12:30
194	24	3422	0	0	17:35:06	17:36:06
194	25	4664	0	0	17:50:06	17:51:06
194	26	4648	0	0	18:14:06	18:15:06
194	27	4602	0	0	18:33:36	18:33:36
194	28	4548	0	0	18:43:00	18:43:00
194	29	4683	0	0	18:49:00	
195	1	398	0	0		11:50:00
195	2	1803	0	0	11:52:30	11:53:30
195	3	487	0	0	12:12:30	12:13:30
195	4	2399	0	0	12:26:00	12:27:00
195	5	2386	0	0	12:37:00	12:40:00
195	6	2513	0	0	13:25:00	
196	1	4973	0	0		09:17:00
196	2	5049	0	0	09:49:00	09:50:00
196	3	5594	0	0	10:22:00	10:23:00
196	4	2009	0	0	10:37:30	10:47:30
196	5	5359	0	0	11:00:00	11:02:00
196	6	5433	0	0	11:13:00	11:19:00
196	7	5431	0	0	11:25:00	11:26:30
196	8	5481	0	0	11:36:00	
197	1	3612	0	0		06:08:00
197	2	3605	0	0	06:14:00	06:15:00
197	3	3630	0	0	06:30:00	06:31:00
197	4	3634	0	0	06:44:48	06:46:48
197	5	3637	0	0	06:56:42	06:58:42
197	6	1054	0	0	07:06:00	07:08:00
197	7	1058	0	0	07:19:00	07:20:00
197	8	3515	0	0	07:53:00	07:58:30
197	9	3502	0	0	08:30:00	08:31:00
197	10	3479	0	0	08:43:18	08:44:18
197	11	2470	0	0	09:03:42	09:04:42
197	12	2519	0	0	09:26:00	09:36:00
197	13	2369	0	0	09:53:00	09:54:00
197	14	2378	0	0	10:03:00	10:04:00
197	15	2386	0	0	10:19:30	10:20:30
197	16	2395	0	0	10:32:00	10:33:00
197	17	2407	0	0	10:48:00	10:49:00
197	18	1283	0	0	11:05:00	11:06:00
197	19	69	0	0	11:18:30	11:18:30
197	20	2078	0	0	11:32:00	
198	1	207	0	0		16:12:00
198	2	101	0	0	16:34:00	16:35:00
198	3	129	0	0	16:49:30	16:50:30
198	4	1472	0	0	17:07:00	17:08:00
198	5	1460	0	0	17:17:00	17:18:00
198	6	2155	0	0	17:45:30	17:46:30
198	7	1424	0	0	17:50:00	18:15:00
198	8	2162	0	0	18:18:30	18:19:30
198	9	1589	0	0	18:29:30	18:30:30
198	10	1603	0	0	18:42:30	18:43:30
198	11	1626	0	0	18:51:30	18:52:30
198	12	3022	0	0	19:04:00	19:05:00
198	13	2999	0	0	19:17:36	19:18:36
198	14	2983	0	0	19:27:42	19:28:42
198	15	2889	0	0	19:36:18	19:37:18
198	16	3032	0	0	19:55:00	19:57:00
198	17	2773	0	0	20:03:00	20:08:00
198	18	2754	0	0	20:12:00	20:14:30
198	19	2790	0	0	20:29:00	20:31:00
198	20	3811	0	0	20:48:00	20:49:00
198	21	3789	0	0	21:10:00	21:12:00
198	22	3756	0	0	21:36:00	21:38:00
198	23	4969	0	0	22:21:00	22:23:00
198	24	5022	0	0	22:50:30	22:51:30
198	25	5016	0	0	23:04:30	23:05:30
198	26	5945	0	0	23:33:06	23:42:30
198	27	6029	1	0	00:24:00	
199	1	4587	0	0		13:58:00
199	2	4636	0	0	14:05:30	14:07:30
199	3	5637	0	0	14:11:00	14:12:00
199	4	5596	0	0	14:15:30	14:16:30
199	5	5577	0	0	14:21:00	14:24:00
199	6	5369	0	0	14:40:00	14:41:00
199	7	768	0	0	15:18:00	15:19:00
199	8	974	0	0	15:50:00	15:55:00
199	9	1008	0	0	16:21:00	16:22:00
199	10	2600	0	0	16:37:30	16:38:30
199	11	2534	0	0	16:53:00	16:54:00
199	12	2520	0	0	17:20:00	17:33:00
199	13	3415	0	0	17:54:00	17:55:00
199	14	3337	0	0	18:08:00	18:09:00
199	15	3456	0	0	18:24:30	18:26:30
199	16	3459	0	0	18:34:42	18:36:42
199	17	4557	0	0	18:47:00	18:49:00
199	18	4680	0	0	19:07:00	19:22:00
199	19	4516	0	0	19:37:00	19:38:00
199	20	4857	0	0	19:46:00	19:47:00
199	21	4737	0	0	20:05:00	20:09:00
199	22	4843	0	0	20:20:00	20:21:00
199	23	5167	0	0	20:27:00	20:28:00
199	24	5166	0	0	20:34:30	20:37:30
199	25	5281	0	0	20:53:00	20:54:00
199	26	5237	0	0	21:14:30	21:16:30
199	27	5298	0	0	21:27:00	
200	1	2516	0	0		05:42:00
200	2	2421	0	0	06:04:00	06:05:00
200	3	684	0	0	06:15:00	06:16:00
200	4	694	0	0	06:31:30	06:34:00
200	5	500	0	0	06:49:00	06:50:00
200	6	701	0	0	07:14:00	07:15:00
200	7	2447	0	0	07:41:00	07:43:00
200	8	3104	0	0	08:22:00	08:29:00
200	9	3429	0	0	08:43:00	08:48:00
200	10	4055	0	0	09:11:00	
201	1	5665	0	0		07:45:00
201	2	5657	0	0	07:54:30	07:55:00
201	3	5645	0	0	08:03:12	08:03:42
201	4	5515	0	0	08:23:00	08:26:30
201	5	5475	0	0	08:48:00	08:54:00
201	6	5562	0	0	09:08:00	09:09:00
201	7	5593	0	0	09:34:30	09:35:00
201	8	2753	0	0	11:18:30	11:19:30
201	9	2771	0	0	11:24:00	11:29:00
201	10	3031	0	0	11:35:00	11:37:00
201	11	1256	0	0	13:02:30	13:03:00
201	12	5885	0	0	13:36:30	13:37:00
201	13	5370	0	0	13:47:30	13:48:00
201	14	5572	0	0	14:01:00	14:01:00
201	15	5595	0	0	14:07:00	14:07:00
201	16	5638	0	0	14:12:00	14:12:00
201	17	4636	0	0	14:17:00	14:17:00
201	18	4588	0	0	14:27:00	
202	1	4681	0	0		18:20:00
202	2	3337	0	0	19:03:00	19:04:00
202	3	2517	0	0	19:36:00	19:40:00
202	4	2753	0	0	21:54:30	21:54:30
202	5	2769	0	0	22:00:00	22:00:00
202	6	3032	0	0	22:15:00	
203	1	4583	0	0		19:18:00
203	2	4636	0	0	19:26:00	19:28:00
203	3	5638	0	0	19:31:30	19:32:30
203	4	5595	0	0	19:36:00	19:37:00
203	5	5574	0	0	19:41:00	19:44:00
203	6	5370	0	0	20:00:00	20:01:00
203	7	5886	0	0	20:12:00	20:13:00
203	8	1327	0	0	20:32:00	20:41:00
203	9	1255	0	0	20:58:00	21:00:00
203	10	1307	0	0	21:30:30	21:31:30
203	11	2977	0	0	21:40:30	21:48:30
203	12	2964	0	0	22:04:00	22:05:00
203	13	2901	0	0	22:32:30	22:33:30
203	14	2913	0	0	22:41:36	22:42:36
203	15	3031	0	0	22:55:00	22:58:00
203	16	2774	0	0	23:04:00	23:32:00
203	17	2753	0	0	23:36:00	23:38:00
203	18	4904	1	1	01:36:00	01:56:00
203	19	6024	1	1	03:41:00	03:56:00
203	20	5852	1	1	04:28:00	04:29:00
203	21	1773	1	1	04:51:00	04:52:00
203	22	5865	1	1	04:57:00	04:58:00
203	23	2020	1	1	05:21:00	05:22:00
203	24	5900	1	1	05:51:00	05:52:00
203	25	5914	1	1	06:02:00	06:03:00
203	26	5915	1	0	06:09:00	
204	1	6433	0	0		06:40:00
204	2	6435	0	0	06:43:00	06:44:00
204	3	58	0	0	07:24:00	07:25:00
204	4	64	0	0	07:47:00	07:52:00
204	5	6122	0	0	08:11:00	08:12:00
204	6	5885	0	0	08:31:00	08:42:00
204	7	5370	0	0	08:54:00	08:58:00
204	8	5573	0	0	09:16:00	09:18:00
204	9	5596	0	0	09:22:00	09:23:00
204	10	5638	0	0	09:26:30	09:27:30
204	11	4635	0	0	09:31:00	09:32:00
204	12	4582	0	0	09:40:00	09:45:00
204	13	4768	0	0	09:55:00	09:56:00
204	14	4922	0	0	10:05:00	10:06:00
204	15	4160	0	0	10:27:00	10:35:00
204	16	3677	0	0	11:38:00	11:38:00
204	17	4055	0	0	12:40:00	12:40:00
204	18	3429	0	0	13:03:00	13:04:00
204	19	3103	0	0	13:18:00	13:19:00
204	20	2883	0	0	13:38:00	13:39:00
204	21	2852	0	0	13:52:00	13:56:00
204	22	2839	0	0	14:03:30	14:04:30
204	23	2854	0	0	14:14:30	14:15:30
204	24	1284	0	0	14:32:00	14:33:00
204	25	70	0	0	14:49:00	14:49:00
204	26	2072	0	0	15:06:00	
205	1	1629	0	0		08:52:00
205	2	1612	0	0	08:59:00	09:01:00
205	3	926	0	0	09:47:00	09:50:00
205	4	1752	0	0	10:09:00	10:12:00
205	5	2108	0	0	10:54:30	11:02:30
205	6	3320	0	0	11:35:00	11:36:00
205	7	4186	0	0	12:01:30	12:02:30
205	8	4170	0	0	12:24:00	12:25:00
205	9	4682	0	0	12:58:00	13:10:00
205	10	4738	0	0	13:49:00	13:51:00
205	11	5166	0	0	14:12:00	14:20:00
205	12	5303	0	0	14:47:00	14:48:00
205	13	5312	0	0	14:54:00	14:55:00
205	14	5482	0	0	15:11:00	15:16:00
205	15	6027	0	0	16:06:00	16:20:00
205	16	5980	0	0	16:24:30	16:25:30
205	17	5962	0	0	16:41:00	16:42:00
205	18	6040	0	0	17:00:00	17:01:00
205	19	6083	0	0	17:16:00	17:17:00
205	20	6216	0	0	17:38:00	17:41:00
205	21	6265	0	0	17:52:00	17:53:00
205	22	6275	0	0	18:06:00	18:07:00
205	23	6294	0	0	18:16:00	18:18:00
205	24	6347	0	0	18:39:00	18:39:00
205	25	6345	0	0	18:43:00	
206	1	4049	0	0		18:29:00
206	2	4054	0	0	18:32:30	18:33:30
206	3	4042	0	0	18:46:00	18:47:00
206	4	4007	0	0	19:12:30	19:13:30
206	5	4012	0	0	19:23:00	19:27:00
206	6	1882	0	0	19:32:00	19:33:30
206	7	3987	0	0	19:49:00	19:50:30
206	8	3977	0	0	20:03:00	20:04:30
206	9	3961	0	0	20:17:00	20:18:36
206	10	3120	0	0	20:46:00	20:47:00
206	11	3032	0	0	21:34:00	21:37:00
206	12	2768	0	0	21:43:00	22:16:00
206	13	2753	0	0	22:20:00	22:22:00
206	14	2808	0	0	22:45:18	22:46:18
206	15	3673	0	0	22:59:30	23:00:30
206	16	3684	0	0	23:23:00	23:24:00
206	17	3605	0	0	23:38:00	23:40:00
206	18	3629	0	0	23:47:18	23:48:18
206	19	3634	1	1	00:03:00	00:04:30
206	20	3638	1	1	00:15:00	00:16:00
206	21	1054	1	1	00:24:00	00:25:00
206	22	1057	1	1	00:37:00	00:38:00
206	23	3515	1	1	01:14:48	01:15:48
206	24	3502	1	1	01:48:30	01:49:30
206	25	3480	1	1	02:02:12	02:03:12
206	26	2469	1	1	02:23:12	02:24:12
206	27	2514	1	1	02:46:00	03:10:00
206	28	2370	1	1	03:29:06	03:30:06
206	29	2377	1	1	03:39:12	03:40:12
206	30	2385	1	1	03:56:00	03:57:00
206	31	2395	1	1	04:09:12	04:10:12
206	32	2407	1	1	04:25:30	04:26:30
206	33	1283	1	1	04:42:54	04:44:00
206	34	70	1	1	04:56:42	04:57:42
206	35	2074	1	1	05:09:00	05:20:00
206	36	69	1	1	05:32:30	05:36:00
206	37	419	1	1	05:54:30	05:55:30
206	38	639	1	1	06:14:30	06:15:30
206	39	12	1	1	06:37:30	06:39:30
206	40	10	1	0	06:50:00	
207	1	4684	0	0		05:00:00
207	2	4170	0	0	05:39:30	05:41:30
207	3	4186	0	0	05:56:00	05:57:00
207	4	3319	0	0	06:23:00	06:25:00
207	5	3313	0	0	06:44:54	06:45:54
207	6	2107	0	0	06:59:30	07:08:00
207	7	1751	0	0	07:52:30	07:54:30
207	8	352	0	0	08:16:30	08:20:00
207	9	392	0	0	08:35:30	08:38:00
207	10	386	0	0	08:52:00	08:53:00
207	11	6378	0	0	09:12:30	09:14:00
207	12	2074	0	0	09:33:00	
208	1	627	0	0		11:33:00
208	2	656	0	0	11:50:00	11:53:00
208	3	1556	0	0	11:58:00	12:10:00
208	4	233	0	0	13:04:00	13:15:00
208	5	244	0	0	13:26:00	13:28:00
208	6	267	0	0	13:44:00	13:46:00
208	7	266	0	0	13:55:00	13:57:00
208	8	257	0	0	14:13:00	14:15:00
208	9	241	0	0	14:36:00	14:38:00
208	10	252	0	0	15:06:00	15:08:00
208	11	250	0	0	15:14:00	15:16:00
208	12	937	0	0	15:23:00	15:42:00
208	13	5610	0	0	16:10:00	16:13:00
208	14	5658	0	0	16:44:30	16:45:30
208	15	5776	0	0	17:00:00	17:01:30
208	16	5814	0	0	17:15:00	17:16:00
208	17	5796	0	0	17:19:30	17:20:30
208	18	5807	0	0	17:28:00	17:32:30
208	19	6028	0	0	17:47:00	
209	1	1630	0	0		05:51:00
209	2	1612	0	0	05:58:00	05:59:00
209	3	411	0	0	06:03:00	06:05:00
209	4	926	0	0	06:47:00	06:50:00
209	5	1751	0	0	07:07:00	07:13:00
209	6	2318	0	0	07:37:18	07:38:18
209	7	1819	0	0	07:50:00	07:51:00
209	8	2517	0	0	08:32:00	08:36:00
209	9	2715	0	0	09:21:00	09:22:00
209	10	2609	0	0	09:57:00	09:58:00
209	11	2754	0	0	10:55:00	10:55:00
209	12	2773	0	0	11:00:00	11:00:00
209	13	3032	0	0	11:15:00	
210	1	1421	0	0		10:15:00
210	2	2159	0	0	10:18:30	10:19:00
210	3	1589	0	0	10:29:00	10:30:00
210	4	1604	0	0	10:42:30	10:43:30
210	5	1625	0	0	10:51:30	10:52:30
210	6	3022	0	0	11:04:00	11:05:00
210	7	3000	0	0	11:18:00	11:18:30
210	8	2983	0	0	11:28:00	11:28:30
210	9	2889	0	0	11:36:30	11:37:00
210	10	3032	0	0	11:55:00	11:57:00
210	11	2772	0	0	12:03:00	12:12:00
210	12	2754	0	0	12:16:00	12:17:00
210	13	2807	0	0	12:37:18	12:38:18
210	14	3674	0	0	12:49:00	12:50:00
210	15	3683	0	0	13:08:00	13:09:00
210	16	3605	0	0	13:21:00	13:25:00
210	17	3630	0	0	13:31:36	13:32:36
210	18	3633	0	0	13:46:24	13:47:24
210	19	3637	0	0	13:57:24	13:57:54
210	20	1053	0	0	14:05:18	14:06:18
210	21	1058	0	0	14:17:30	14:18:30
210	22	3515	0	0	14:53:30	14:54:30
210	23	3559	0	0	15:12:06	15:13:06
210	24	3421	0	0	15:35:30	15:36:30
210	25	4663	0	0	15:51:00	15:52:00
210	26	4642	0	0	16:15:00	16:16:00
210	27	4647	0	0	16:25:30	16:27:30
210	28	4601	0	0	16:46:18	16:46:18
210	29	4547	0	0	16:52:30	16:52:30
210	30	4680	0	0	16:58:00	
211	1	1642	0	0		20:53:00
211	2	925	0	0	22:14:00	22:14:00
211	3	1751	0	0	22:39:00	22:54:00
211	4	2318	0	0	23:18:00	23:19:00
211	5	1820	0	0	23:30:30	23:31:30
211	6	1834	0	0	23:37:00	23:38:00
211	7	1844	0	0	23:46:00	23:47:00
211	8	2062	0	0	23:58:30	23:59:30
211	9	2518	1	1	00:22:00	01:30:00
211	10	3415	1	1	01:51:00	01:52:00
211	11	3338	1	1	02:05:30	02:06:30
211	12	3456	1	1	02:21:30	02:22:30
211	13	3459	1	1	02:31:00	02:32:00
211	14	4557	1	1	02:42:30	02:43:30
211	15	4679	1	1	02:58:00	03:12:00
211	16	4858	1	1	03:35:00	03:41:00
211	17	4738	1	1	03:59:30	04:01:30
211	18	5165	1	1	04:23:00	04:28:00
211	19	5306	1	1	04:55:00	05:04:00
211	20	5312	1	1	05:10:00	05:11:00
211	21	5477	1	1	05:26:00	05:34:00
211	22	5522	1	1	05:56:30	05:58:30
211	23	5795	1	1	06:07:00	06:08:00
211	24	5808	1	1	06:16:00	06:20:00
211	25	6028	1	1	06:36:00	06:41:00
211	26	5979	1	1	06:45:30	06:52:30
211	27	5961	1	1	07:08:00	07:09:00
211	28	5973	1	1	07:16:00	07:17:00
211	29	6040	1	1	07:30:00	07:31:30
211	30	6083	1	1	07:47:00	07:48:00
211	31	6213	1	1	08:09:00	08:12:00
211	32	6266	1	1	08:23:06	08:24:06
211	33	6276	1	1	08:37:00	08:38:00
211	34	6293	1	1	08:47:00	08:48:00
211	35	6346	1	0	09:11:00	
212	1	2753	0	0		05:52:00
212	2	2771	0	0	05:56:00	06:01:00
212	3	3032	0	0	06:07:00	06:09:00
212	4	2914	0	0	06:22:00	06:23:00
212	5	2902	0	0	06:30:30	06:31:30
212	6	2963	0	0	06:57:30	06:58:30
212	7	2978	0	0	07:13:30	07:14:00
212	8	1308	0	0	07:23:00	07:24:00
212	9	1255	0	0	07:55:00	07:56:00
212	10	1282	0	0	08:17:00	08:25:00
212	11	6436	0	0	08:51:30	08:51:30
212	12	6432	0	0	08:56:00	
213	1	4587	0	0		05:18:00
213	2	4636	0	0	05:25:30	05:27:30
213	3	5638	0	0	05:31:00	05:32:00
213	4	5595	0	0	05:35:30	05:36:30
213	5	5580	0	0	05:41:00	05:44:00
213	6	5369	0	0	06:00:00	06:01:00
213	7	5885	0	0	06:12:00	06:13:00
213	8	1327	0	0	06:33:00	06:41:00
213	9	1256	0	0	06:59:00	07:01:00
213	10	1307	0	0	07:30:00	07:31:00
213	11	2978	0	0	07:40:00	07:41:00
213	12	2964	0	0	07:56:30	07:57:30
213	13	2901	0	0	08:26:30	08:27:30
213	14	2913	0	0	08:36:00	08:37:00
213	15	3031	0	0	08:50:00	08:53:00
213	16	2774	0	0	08:59:00	09:08:00
213	17	2753	0	0	09:12:00	09:13:00
213	18	4970	0	0	11:13:00	11:23:00
213	19	5022	0	0	11:52:00	11:53:00
213	20	5016	0	0	12:06:00	12:12:00
213	21	5945	0	0	12:37:30	12:46:30
213	22	6031	0	0	13:30:00	13:44:00
213	23	5866	0	0	15:12:30	15:13:30
213	24	2020	0	0	15:46:00	15:47:00
213	25	5900	0	0	16:26:00	16:27:00
213	26	5914	0	0	16:37:30	16:45:00
213	27	5915	0	0	16:51:00	
214	1	1427	0	0		09:15:00
214	2	2156	0	0	09:18:30	09:19:00
214	3	1589	0	0	09:29:00	09:30:00
214	4	1603	0	0	09:42:30	09:43:30
214	5	1625	0	0	09:51:30	09:52:30
214	6	3022	0	0	10:04:00	10:05:00
214	7	3000	0	0	10:18:00	10:18:30
214	8	2983	0	0	10:28:00	10:28:30
214	9	2890	0	0	10:37:00	10:37:30
214	10	3032	0	0	10:55:00	10:57:00
214	11	2771	0	0	11:03:00	11:16:00
214	12	2754	0	0	11:20:00	11:21:30
214	13	4886	0	0	13:16:00	13:26:00
214	14	5602	0	0	13:42:00	13:43:00
214	15	5594	0	0	13:50:30	13:51:30
214	16	5555	0	0	14:07:30	14:10:00
214	17	5560	0	0	14:13:30	14:14:00
214	18	5561	0	0	14:21:00	14:22:00
214	19	5480	0	0	14:37:00	14:40:00
214	20	5311	0	0	14:54:30	14:55:30
214	21	5303	0	0	15:02:00	
215	1	2075	0	0		15:42:00
215	2	70	0	0	15:53:30	15:54:30
215	3	1284	0	0	16:09:00	16:10:00
215	4	2386	0	0	16:48:00	16:49:00
215	5	2522	0	0	17:28:00	17:40:00
215	6	2754	0	0	19:53:30	19:53:30
215	7	2768	0	0	19:58:30	19:58:30
215	8	3032	0	0	20:15:00	
216	1	4015	0	0		04:37:00
216	2	1882	0	0	04:41:30	04:42:30
216	3	3988	0	0	04:54:00	04:55:00
216	4	3977	0	0	05:04:30	05:05:30
216	5	3837	0	0	05:35:30	05:36:30
216	6	3794	0	0	05:50:00	05:52:00
216	7	3756	0	0	06:15:00	06:17:00
216	8	4972	0	0	06:58:00	07:08:00
216	9	5050	0	0	07:39:00	07:40:00
216	10	4927	0	0	07:53:30	07:58:00
216	11	4904	0	0	08:25:00	08:27:00
216	12	5371	0	0	08:47:00	08:53:00
216	13	4738	0	0	09:35:00	09:44:00
216	14	4857	0	0	10:02:00	10:05:00
216	15	4516	0	0	10:12:00	10:17:30
216	16	4684	0	0	10:34:00	
217	1	6027	0	0		06:53:00
217	2	5808	0	0	07:11:00	07:12:30
217	3	5796	0	0	07:22:00	07:23:00
217	4	5522	0	0	07:34:00	07:35:00
217	5	5496	0	0	07:44:30	07:49:30
217	6	5480	0	0	08:07:00	08:10:00
217	7	5312	0	0	08:24:30	08:28:00
217	8	5307	0	0	08:35:00	08:46:00
217	9	5165	0	0	09:14:00	09:15:00
217	10	5193	0	0	09:39:00	09:40:00
217	11	4423	0	0	10:02:00	10:03:00
217	12	4383	0	0	10:33:00	10:34:00
217	13	4393	0	0	10:54:00	10:55:00
217	14	4398	0	0	11:07:00	11:08:00
217	15	4365	0	0	11:19:00	11:28:00
217	16	4437	0	0	11:45:00	11:46:00
217	17	4463	0	0	11:48:30	11:57:30
217	18	4438	0	0	12:00:00	12:01:00
217	19	4495	0	0	12:20:48	12:21:48
217	20	4279	0	0	12:52:00	12:53:00
217	21	4277	0	0	13:01:30	13:10:30
217	22	4306	0	0	13:32:30	13:33:30
217	23	4313	0	0	13:55:00	
218	1	3031	0	0		05:21:00
218	2	2773	0	0	05:27:00	05:32:00
218	3	2753	0	0	05:35:30	05:37:00
218	4	2835	0	0	06:02:30	06:03:30
218	5	2692	0	0	06:16:30	06:17:30
218	6	2609	0	0	06:37:00	06:38:00
218	7	2723	0	0	07:01:00	07:02:00
218	8	2716	0	0	07:15:00	07:16:00
218	9	2464	0	0	07:29:00	07:30:00
218	10	2443	0	0	07:42:00	07:43:00
218	11	2343	0	0	08:02:00	08:03:00
218	12	2522	0	0	08:23:00	08:37:00
218	13	2370	0	0	08:54:00	08:55:00
218	14	2378	0	0	09:04:00	09:05:00
218	15	2385	0	0	09:21:00	09:22:30
218	16	2395	0	0	09:33:30	09:34:30
218	17	2407	0	0	09:49:30	09:50:30
218	18	1283	0	0	10:06:00	10:07:00
218	19	69	0	0	10:19:00	10:19:00
218	20	2076	0	0	10:32:00	
219	1	6346	0	0		17:32:00
219	2	6348	0	0	17:35:00	17:36:00
219	3	6294	0	0	17:56:00	17:57:00
219	4	6276	0	0	18:06:00	18:07:00
219	5	6266	0	0	18:20:00	18:21:30
219	6	6212	0	0	18:33:00	18:35:00
219	7	6083	0	0	18:56:00	18:57:00
219	8	6040	0	0	19:11:30	19:13:30
219	9	5962	0	0	19:31:00	19:32:00
219	10	5980	0	0	19:47:30	19:48:30
219	11	6028	0	0	19:53:00	19:59:00
219	12	5482	0	0	20:50:00	20:58:00
219	13	5469	0	0	21:04:30	21:05:30
219	14	5311	0	0	21:14:00	21:15:00
219	15	5308	0	0	21:21:00	21:22:00
219	16	5166	0	0	21:48:00	21:49:00
219	17	4738	0	0	22:10:00	22:12:00
219	18	4685	0	0	22:51:00	
220	1	2754	0	0		07:40:00
220	2	2769	0	0	07:44:00	07:49:00
220	3	3032	0	0	07:55:00	08:04:00
220	4	1255	0	0	09:33:00	09:34:00
220	5	5885	0	0	10:09:00	10:10:00
220	6	5369	0	0	10:22:00	10:25:00
220	7	5576	0	0	10:39:00	10:43:00
220	8	5596	0	0	10:47:00	10:48:00
220	9	5638	0	0	10:51:30	10:52:30
220	10	4635	0	0	10:56:00	10:58:00
220	11	4588	0	0	11:06:00	11:40:00
220	12	5164	0	0	12:12:00	12:15:00
220	13	5188	0	0	12:26:00	12:38:00
220	14	5185	0	0	12:45:00	12:46:00
220	15	5200	0	0	12:52:00	12:54:30
220	16	5202	0	0	13:02:30	13:12:00
220	17	5197	0	0	13:16:00	13:17:00
220	18	5211	0	0	13:28:00	
221	1	3032	0	0		08:41:00
221	2	2770	0	0	08:47:00	08:52:00
221	3	2754	0	0	08:56:00	08:57:00
221	4	2806	0	0	09:10:00	09:11:00
221	5	3874	0	0	09:56:30	09:57:30
221	6	5053	0	0	10:23:00	10:24:00
221	7	6025	0	0	12:08:00	12:15:00
221	8	2154	0	0	12:55:30	12:56:30
221	9	5776	0	0	13:12:30	13:30:00
221	10	5657	0	0	13:48:00	13:49:00
221	11	5632	0	0	14:29:00	14:30:00
221	12	5753	0	0	14:36:00	14:37:00
221	13	5764	0	0	14:44:30	14:45:30
221	14	5773	0	0	14:49:00	14:50:00
221	15	5766	0	0	14:55:00	
222	1	4683	0	0		06:12:00
222	2	4516	0	0	06:26:30	06:27:30
222	3	4858	0	0	06:35:00	06:36:00
222	4	4737	0	0	06:54:30	06:56:30
222	5	4837	0	0	07:19:30	07:20:30
222	6	5303	0	0	07:48:00	08:03:30
222	7	5433	0	0	08:18:00	08:23:30
222	8	5496	0	0	08:44:00	08:46:00
222	9	5521	0	0	08:54:30	08:56:30
222	10	5796	0	0	09:05:00	09:07:00
222	11	5808	0	0	09:14:00	09:17:00
222	12	6027	0	0	09:31:00	09:36:00
222	13	5980	0	0	09:40:30	09:41:30
222	14	5961	0	0	09:57:00	09:58:00
222	15	5974	0	0	10:04:30	10:05:30
222	16	6039	0	0	10:18:00	10:19:30
222	17	6083	0	0	10:34:00	10:35:00
222	18	6085	0	0	10:42:00	10:43:00
222	19	6091	0	0	10:48:00	10:49:00
222	20	6212	0	0	11:01:00	11:04:00
222	21	6265	0	0	11:15:00	11:16:00
222	22	6276	0	0	11:28:00	11:29:00
222	23	6294	0	0	11:38:00	11:39:00
222	24	6331	0	0	11:47:30	11:48:30
222	25	6348	0	0	12:01:00	12:01:00
222	26	6345	0	0	12:05:00	
223	1	3031	0	0		17:57:00
223	2	2768	0	0	18:03:00	18:08:00
223	3	2753	0	0	18:12:00	18:14:30
223	4	2763	0	0	18:21:30	18:22:30
223	5	2790	0	0	18:30:00	18:32:00
223	6	3811	0	0	18:47:30	18:48:30
223	7	3791	0	0	19:09:00	19:11:00
223	8	3756	0	0	19:36:00	19:41:30
223	9	4971	0	0	20:25:30	20:28:00
223	10	5022	0	0	20:56:30	20:57:00
223	11	5016	0	0	21:10:00	21:10:30
223	12	5946	0	0	21:52:30	21:56:00
223	13	6023	0	0	22:41:00	
224	1	3614	0	0		05:08:00
224	2	3605	0	0	05:14:00	05:15:00
224	3	3725	0	0	05:43:00	05:45:00
224	4	3873	0	0	06:09:30	06:10:30
224	5	5054	0	0	06:37:00	06:38:00
224	6	5594	0	0	07:09:30	07:10:30
224	7	5549	0	0	07:26:00	07:32:30
224	8	5522	0	0	07:45:00	07:53:00
224	9	5795	0	0	08:01:30	08:04:30
224	10	5807	0	0	08:12:00	08:16:00
224	11	6027	0	0	08:34:00	
225	1	6029	0	0		05:49:00
225	2	5053	0	0	07:18:00	07:19:00
225	3	3873	0	0	07:46:30	07:47:30
225	4	2753	0	0	08:38:30	08:40:00
225	5	2773	0	0	08:44:00	08:57:00
225	6	3032	0	0	09:03:00	09:04:30
225	7	2158	0	0	10:23:00	10:24:00
225	8	1421	0	0	10:27:00	10:52:00
225	9	1639	0	0	11:20:00	11:21:00
225	10	1658	0	0	11:44:00	11:45:00
225	11	349	0	0	12:08:00	12:09:00
225	12	275	0	0	12:31:30	12:56:00
225	13	326	0	0	13:18:00	13:28:00
225	14	922	0	0	13:43:00	
226	1	2108	0	0		15:32:00
226	2	2080	0	0	15:49:00	15:55:30
226	3	1837	0	0	16:05:30	16:06:30
226	4	1819	0	0	16:13:30	16:35:00
226	5	1833	0	0	16:40:00	16:41:00
226	6	1844	0	0	16:49:00	16:50:00
226	7	2062	0	0	17:01:42	17:02:42
226	8	2521	0	0	17:28:00	17:44:00
226	9	2344	0	0	17:55:00	17:56:00
226	10	2443	0	0	18:16:00	18:18:30
226	11	2464	0	0	18:30:42	18:31:42
226	12	2715	0	0	18:44:30	18:45:30
226	13	2723	0	0	18:58:30	18:59:30
226	14	2609	0	0	19:22:00	19:23:00
226	15	2691	0	0	19:43:00	19:44:00
226	16	2836	0	0	19:56:00	19:57:00
226	17	2754	0	0	20:22:30	20:24:00
226	18	2767	0	0	20:28:00	20:41:00
226	19	3031	0	0	20:47:00	20:49:00
226	20	3120	0	0	21:30:00	21:31:00
226	21	3961	0	0	21:52:00	21:53:00
226	22	3978	0	0	22:04:00	22:05:00
226	23	3987	0	0	22:15:00	22:16:00
226	24	1881	0	0	22:29:00	22:29:00
226	25	4011	0	0	22:35:00	
227	1	4114	0	0		06:40:00
227	2	4115	0	0	06:42:24	06:43:24
227	3	4122	0	0	06:49:18	06:49:48
227	4	4105	0	0	06:57:00	06:58:00
227	5	4201	0	0	07:10:30	07:11:30
227	6	4205	0	0	07:24:30	07:25:00
227	7	4170	0	0	07:36:00	07:37:00
227	8	4680	0	0	08:14:00	08:19:00
227	9	4516	0	0	08:34:00	08:35:00
227	10	4857	0	0	08:43:00	08:44:00
227	11	4737	0	0	09:03:00	09:05:00
227	12	5372	0	0	09:39:30	09:40:30
227	13	4905	0	0	10:00:30	10:01:30
227	14	4882	0	0	10:06:00	10:08:00
227	15	3753	0	0	10:36:30	10:43:30
227	16	3728	0	0	11:11:00	11:14:30
227	17	3683	0	0	11:44:00	11:45:00
227	18	3674	0	0	12:04:00	12:05:00
227	19	2808	0	0	12:16:00	12:17:00
227	20	2754	0	0	12:36:00	12:36:00
227	21	2770	0	0	12:44:00	12:44:00
227	22	3031	0	0	12:55:00	
228	1	3032	0	0		10:24:00
228	2	3102	0	0	10:50:30	10:51:30
228	3	3191	0	0	11:00:42	11:01:42
228	4	3144	0	0	11:16:54	11:17:54
228	5	3171	0	0	11:38:00	11:39:00
228	6	3178	0	0	11:49:30	11:50:30
228	7	1716	0	0	11:57:00	11:58:00
228	8	1712	0	0	12:07:30	12:08:30
228	9	1698	0	0	12:20:30	12:21:30
228	10	1717	0	0	12:39:36	12:40:36
228	11	1577	0	0	13:00:30	13:03:00
228	12	2160	0	0	13:29:30	13:29:30
228	13	1426	0	0	13:34:00	
229	1	4588	0	0		05:31:00
229	2	4636	0	0	05:38:30	05:39:30
229	3	5637	0	0	05:43:00	05:44:00
229	4	5595	0	0	05:48:00	05:49:00
229	5	5579	0	0	05:53:30	05:55:30
229	6	5369	0	0	06:08:30	06:09:00
229	7	5886	0	0	06:19:30	06:20:00
229	8	1256	0	0	06:52:30	06:53:00
229	9	3032	0	0	08:23:00	08:25:00
229	10	2772	0	0	08:31:00	08:40:00
229	11	2754	0	0	08:44:00	08:45:00
229	12	6023	0	0	11:37:00	
230	1	332	0	0		18:49:00
230	2	335	0	0	18:55:00	18:57:00
230	3	273	0	0	19:30:00	19:32:00
230	4	278	0	0	19:52:00	19:54:00
230	5	279	0	0	20:23:00	20:27:00
230	6	270	0	0	20:38:00	20:39:00
230	7	271	0	0	20:47:00	20:58:00
230	8	942	0	0	21:02:00	21:02:00
230	9	4433	0	0	21:11:00	21:17:00
230	10	4452	0	0	21:29:30	21:30:30
230	11	4463	0	0	21:41:00	21:42:00
230	12	4366	0	0	22:01:00	22:02:00
230	13	4674	0	0	22:23:00	22:24:00
230	14	4685	0	0	22:46:00	23:30:00
230	15	4558	0	0	23:44:48	23:45:48
230	16	3459	0	0	23:56:06	23:57:06
230	17	3455	1	1	00:05:12	00:06:12
230	18	3337	1	1	00:21:48	00:22:48
230	19	3415	1	1	00:36:00	00:37:00
230	20	2513	1	1	00:58:48	01:14:00
230	21	2533	1	1	01:41:00	01:42:30
230	22	2599	1	1	01:58:12	01:59:12
230	23	1007	1	1	02:14:00	02:15:00
230	24	970	1	1	02:41:00	02:44:00
230	25	968	1	1	02:48:00	02:49:00
230	26	745	1	1	02:52:30	02:53:30
230	27	1101	1	1	03:01:30	03:02:30
230	28	1077	1	1	03:20:36	03:26:00
230	29	1096	1	1	03:29:00	03:30:00
230	30	1104	1	1	03:33:36	03:34:36
230	31	1176	1	1	03:47:36	03:48:36
230	32	1179	1	1	03:56:36	03:57:36
230	33	1190	1	1	04:08:30	04:09:30
230	34	1255	1	1	04:32:00	04:33:00
230	35	1327	1	1	04:49:18	04:50:18
230	36	5885	1	1	05:08:00	05:09:00
230	37	5369	1	1	05:20:00	05:21:00
230	38	5578	1	1	05:36:12	05:39:00
230	39	5595	1	1	05:43:00	05:44:00
230	40	5638	1	1	05:47:30	05:48:30
230	41	4635	1	1	05:52:00	05:53:00
230	42	4586	1	0	06:01:00	
231	1	3032	0	0		16:09:00
231	2	2772	0	0	16:15:00	16:20:00
231	3	2753	0	0	16:24:00	16:25:00
231	4	4885	0	0	18:19:36	18:29:36
231	5	5601	0	0	18:46:00	18:51:00
231	6	5593	0	0	18:58:30	19:02:30
231	7	5550	0	0	19:15:30	19:18:00
231	8	5476	0	0	20:02:00	20:09:00
231	9	5515	0	0	20:31:30	20:36:30
231	10	5645	0	0	20:54:00	20:55:00
231	11	5657	0	0	21:02:30	21:03:30
231	12	5665	0	0	21:12:00	21:22:00
231	13	5712	0	0	21:41:00	
232	1	4584	0	0		16:31:00
232	2	4635	0	0	16:38:30	16:39:30
232	3	5637	0	0	16:43:00	16:44:00
232	4	5595	0	0	16:48:00	16:49:00
232	5	5579	0	0	16:53:30	16:55:30
232	6	5370	0	0	17:08:30	17:09:00
232	7	5885	0	0	17:19:30	17:20:00
232	8	1256	0	0	17:52:30	17:53:00
232	9	3032	0	0	19:23:00	19:25:00
232	10	2773	0	0	19:31:00	19:36:00
232	11	2753	0	0	19:40:00	19:41:00
232	12	5593	0	0	21:25:00	21:25:30
232	13	5562	0	0	21:50:00	21:55:48
232	14	5481	0	0	22:10:00	22:13:00
232	15	5516	0	0	22:34:42	22:35:42
232	16	5645	0	0	22:52:00	22:54:30
232	17	5658	0	0	23:01:30	23:02:00
232	18	5666	0	0	23:12:00	
233	1	5916	0	0		13:30:00
233	2	5914	0	0	13:36:30	13:41:30
233	3	5900	0	0	13:53:00	13:54:00
233	4	2020	0	0	14:46:00	14:47:00
233	5	5866	0	0	15:10:00	15:15:30
233	6	1774	0	0	15:21:00	15:22:00
233	7	5851	0	0	15:44:30	15:51:30
233	8	5839	0	0	16:14:30	16:21:00
233	9	5692	0	0	16:34:30	16:35:30
233	10	5684	0	0	16:54:00	16:55:00
233	11	5666	0	0	17:13:00	17:28:00
233	12	5658	0	0	17:37:00	17:38:00
233	13	5298	0	0	18:21:30	18:22:30
233	14	5238	0	0	18:33:00	18:34:30
233	15	5281	0	0	18:54:00	18:55:00
233	16	5165	0	0	19:10:30	19:11:30
233	17	5168	0	0	19:21:00	19:22:00
233	18	4843	0	0	19:29:30	19:30:30
233	19	4737	0	0	19:43:00	19:46:00
233	20	4858	0	0	20:08:00	20:09:00
233	21	4515	0	0	20:18:00	20:19:00
233	22	4683	0	0	20:37:00	20:46:00
233	23	4547	0	0	20:50:30	20:51:30
233	24	4557	0	0	21:04:30	21:05:30
233	25	3460	0	0	21:18:00	21:19:00
233	26	3455	0	0	21:29:00	21:30:00
233	27	3338	0	0	21:48:30	21:50:00
233	28	3415	0	0	22:05:00	22:06:00
233	29	2512	0	0	22:32:00	
234	1	4581	0	0		10:47:00
234	2	4636	0	0	10:54:30	10:55:30
234	3	5638	0	0	10:59:00	11:00:00
234	4	5595	0	0	11:04:00	11:05:00
234	5	5573	0	0	11:09:00	11:12:00
234	6	5468	0	0	11:18:30	11:19:00
234	7	5370	0	0	11:30:00	11:31:00
234	8	6357	0	0	11:53:30	11:54:00
234	9	767	0	0	12:10:30	12:11:30
234	10	973	0	0	12:43:00	12:56:00
234	11	968	0	0	13:00:12	13:00:42
234	12	745	0	0	13:04:00	13:04:30
234	13	1102	0	0	13:12:30	13:13:30
234	14	1080	0	0	13:34:00	13:36:00
234	15	1219	0	0	13:47:00	13:47:30
234	16	1232	0	0	14:06:30	14:07:30
234	17	2610	0	0	14:38:00	14:39:00
234	18	2657	0	0	15:01:42	15:02:42
234	19	2662	0	0	15:10:12	15:11:12
234	20	3645	0	0	15:27:54	15:28:54
234	21	3644	0	0	15:34:00	15:35:00
234	22	3641	0	0	15:39:30	15:41:30
234	23	3630	0	0	15:47:54	15:48:54
234	24	3605	0	0	15:56:30	15:58:30
234	25	3725	0	0	16:25:30	16:26:30
234	26	3874	0	0	16:53:00	16:54:00
234	27	5054	0	0	17:20:00	17:21:00
234	28	6029	0	0	18:56:00	19:04:00
234	29	5852	0	0	19:49:00	19:50:00
234	30	1773	0	0	20:12:30	20:13:30
234	31	5865	0	0	20:18:30	20:27:30
234	32	2019	0	0	20:50:30	20:51:00
234	33	5900	0	0	21:13:00	21:17:00
234	34	5913	0	0	21:27:00	21:28:00
234	35	5916	0	0	21:34:00	
235	1	4687	0	0		05:56:00
235	2	4557	0	0	06:10:00	06:11:00
235	3	3460	0	0	06:21:00	06:22:00
235	4	3455	0	0	06:30:00	06:31:00
235	5	3338	0	0	06:47:00	06:50:00
235	6	3415	0	0	07:04:00	07:08:00
235	7	2513	0	0	07:29:00	07:41:30
235	8	2421	0	0	08:02:36	08:03:36
235	9	684	0	0	08:13:54	08:14:54
235	10	694	0	0	08:30:36	08:31:36
235	11	499	0	0	08:46:00	08:47:00
235	12	701	0	0	09:19:00	09:20:00
235	13	2448	0	0	09:46:00	09:47:00
235	14	3104	0	0	10:27:00	
236	1	5916	0	0		21:38:00
236	2	5913	0	0	21:44:00	21:45:00
236	3	5899	0	0	21:55:00	21:56:00
236	4	2020	0	0	22:17:36	22:18:36
236	5	5865	0	0	22:42:00	22:43:00
236	6	1774	0	0	22:48:00	22:49:00
236	7	5851	0	0	23:11:00	23:12:00
236	8	6031	0	1	23:44:00	00:07:00
236	9	4909	1	1	02:01:00	02:28:00
236	10	2754	1	1	04:28:30	04:32:00
236	11	2768	1	1	04:36:00	05:01:00
236	12	3032	1	1	05:07:00	05:09:00
236	13	2914	1	1	05:21:30	05:22:30
236	14	2901	1	1	05:30:30	05:31:30
236	15	2963	1	1	06:00:00	06:01:00
236	16	2978	1	1	06:16:30	06:17:30
236	17	1307	1	1	06:26:30	06:27:30
236	18	1256	1	1	06:59:00	07:01:00
236	19	1328	1	1	07:18:00	07:19:00
236	20	5885	1	1	07:38:00	07:39:00
236	21	5369	1	1	07:51:00	08:00:00
236	22	5574	1	1	08:16:00	08:20:00
236	23	5595	1	1	08:24:00	08:25:00
236	24	5638	1	1	08:28:30	08:29:30
236	25	4636	1	1	08:33:00	08:35:00
236	26	4586	1	0	08:44:00	
237	1	6428	0	0		11:48:00
237	2	6435	0	0	11:51:00	11:52:00
237	3	1282	0	0	12:18:06	12:19:06
237	4	1256	0	0	12:39:00	12:40:00
237	5	1190	0	0	13:00:30	13:01:30
237	6	1180	0	0	13:13:00	13:14:00
237	7	1175	0	0	13:22:00	13:23:00
237	8	1104	0	0	13:36:00	13:37:00
237	9	1096	0	0	13:40:30	13:41:30
237	10	1077	0	0	13:45:00	13:47:00
237	11	1008	0	0	14:14:00	14:15:00
237	12	2599	0	0	14:30:00	14:31:00
237	13	2534	0	0	14:44:30	14:47:00
237	14	2520	0	0	15:14:00	
238	1	5482	0	0		16:23:00
238	2	5431	0	0	16:34:00	16:35:30
238	3	5434	0	0	16:41:00	16:41:30
238	4	5359	0	0	16:53:00	16:54:00
238	5	2009	0	0	17:07:00	17:07:30
238	6	5593	0	0	17:25:00	17:36:00
238	7	5050	0	0	18:09:00	18:10:00
238	8	4970	0	0	18:41:00	
239	1	2753	0	0		17:08:00
239	2	2768	0	0	17:12:00	17:17:00
239	3	3031	0	0	17:23:00	17:24:00
239	4	3101	0	0	17:48:00	17:49:00
239	5	3191	0	0	17:57:30	17:58:30
239	6	3144	0	0	18:13:30	18:15:00
239	7	3197	0	0	18:28:00	18:29:00
239	8	3248	0	0	18:42:00	18:43:00
239	9	3245	0	0	18:54:00	18:55:00
239	10	3260	0	0	19:03:00	19:04:00
239	11	1688	0	0	19:10:30	19:11:30
239	12	3268	0	0	19:18:00	
240	1	6023	0	0		05:35:00
240	2	5776	0	0	06:30:30	06:35:00
240	3	5657	0	0	06:50:00	06:57:00
240	4	5665	0	0	07:06:00	
241	1	2514	0	0		17:41:00
241	2	2470	0	0	18:03:30	18:04:30
241	3	3480	0	0	18:24:30	18:25:30
241	4	3501	0	0	18:39:00	18:40:00
241	5	3559	0	0	18:58:30	19:01:30
241	6	3536	0	0	19:18:00	19:19:00
241	7	3531	0	0	19:30:30	19:31:30
241	8	4808	0	0	19:47:00	19:48:00
241	9	4793	0	0	19:59:30	20:03:30
241	10	5387	0	0	20:17:00	20:19:00
241	11	5372	0	0	20:37:00	20:38:00
241	12	5359	0	0	21:00:00	21:03:00
241	13	5434	0	0	21:14:30	21:16:30
241	14	5495	0	0	21:37:00	21:40:00
241	15	5522	0	0	21:49:00	21:50:00
241	16	5795	0	0	22:00:00	22:01:00
241	17	5807	0	0	22:09:30	22:10:30
241	18	6029	0	0	22:27:00	
242	1	973	0	0		04:38:00
242	2	968	0	0	04:42:12	04:42:42
242	3	745	0	0	04:46:00	04:46:30
242	4	1101	0	0	04:54:06	04:55:30
242	5	1081	0	0	05:16:00	05:18:00
242	6	1220	0	0	05:29:00	05:29:30
242	7	1231	0	0	05:48:18	05:49:30
242	8	2610	0	0	06:20:00	06:21:00
242	9	2641	0	0	06:30:00	06:30:30
242	10	2692	0	0	06:43:00	06:44:00
242	11	2836	0	0	06:56:06	06:57:06
242	12	2753	0	0	07:23:00	07:24:00
242	13	2769	0	0	07:28:00	07:41:00
242	14	3031	0	0	07:47:00	07:49:00
242	15	3120	0	0	08:27:30	08:28:30
242	16	3961	0	0	08:52:00	08:53:00
242	17	3977	0	0	09:04:00	09:05:00
242	18	3987	0	0	09:15:00	09:16:00
242	19	1882	0	0	09:27:30	09:27:30
242	20	4013	0	0	09:33:00	
243	1	3032	0	0		05:09:00
243	2	2773	0	0	05:15:00	05:20:00
243	3	2753	0	0	05:23:30	05:26:00
243	4	4903	0	0	07:20:30	07:25:00
243	5	5372	0	0	07:45:30	07:48:00
243	6	4738	0	0	08:34:30	08:41:30
243	7	4858	0	0	09:02:00	09:03:00
243	8	4516	0	0	09:10:00	09:11:00
243	9	4682	0	0	09:26:00	
244	1	4050	0	0		16:32:00
244	2	4053	0	0	16:35:30	16:36:30
244	3	4042	0	0	16:47:30	16:48:30
244	4	4008	0	0	17:13:00	17:14:00
244	5	4011	0	0	17:23:00	17:26:00
244	6	1882	0	0	17:31:00	17:32:00
244	7	3987	0	0	17:44:00	17:45:00
244	8	3977	0	0	17:55:30	17:56:30
244	9	3962	0	0	18:07:00	18:08:00
244	10	3120	0	0	18:30:30	18:31:30
244	11	3031	0	0	19:10:00	19:13:00
244	12	2768	0	0	19:19:00	19:32:00
244	13	2754	0	0	19:35:30	19:37:00
244	14	2835	0	0	20:02:30	20:03:30
244	15	2692	0	0	20:16:30	20:17:30
244	16	2609	0	0	20:37:00	20:38:00
244	17	2723	0	0	21:01:30	21:02:30
244	18	2716	0	0	21:16:00	21:17:00
244	19	2464	0	0	21:30:00	21:31:00
244	20	2444	0	0	21:43:00	21:44:00
244	21	2344	0	0	22:03:00	22:04:00
244	22	2519	0	0	22:14:00	
245	1	6429	0	0		15:48:00
245	2	6435	0	0	15:51:00	15:52:00
245	3	1281	0	0	16:19:00	16:20:00
245	4	1255	0	0	16:40:30	16:41:30
245	5	1189	0	0	17:02:00	17:03:00
245	6	1180	0	0	17:14:30	17:15:30
245	7	1175	0	0	17:23:30	17:24:30
245	8	1104	0	0	17:38:00	17:39:00
245	9	1095	0	0	17:42:30	17:43:30
245	10	1079	0	0	17:47:00	17:49:00
245	11	1008	0	0	18:16:00	18:17:00
245	12	2599	0	0	18:32:00	18:33:00
245	13	2533	0	0	18:46:30	18:48:00
245	14	2513	0	0	19:14:00	19:35:00
245	15	3416	0	0	19:56:00	19:57:00
245	16	3337	0	0	20:09:00	20:10:00
245	17	3455	0	0	20:25:30	20:27:30
245	18	3460	0	0	20:35:30	20:37:30
245	19	4558	0	0	20:47:30	20:49:30
245	20	4548	0	0	21:01:36	21:01:36
245	21	4683	0	0	21:07:00	
246	1	4686	0	0		13:30:00
246	2	4170	0	0	14:03:00	14:04:00
246	3	4205	0	0	14:14:30	14:15:30
246	4	4201	0	0	14:28:00	14:29:00
246	5	4105	0	0	14:41:00	14:45:00
246	6	431	0	0	15:24:00	15:26:00
246	7	429	0	0	15:43:00	15:45:00
246	8	435	0	0	16:05:00	16:07:00
246	9	484	0	0	16:25:00	16:27:00
246	10	541	0	0	17:04:00	
247	1	3031	0	0		06:21:00
247	2	2770	0	0	06:27:00	06:32:00
247	3	2753	0	0	06:35:30	06:37:00
247	4	2836	0	0	07:02:30	07:03:30
247	5	2691	0	0	07:16:30	07:17:30
247	6	2610	0	0	07:37:00	07:38:00
247	7	1231	0	0	08:08:00	08:09:00
247	8	1220	0	0	08:28:00	08:29:00
247	9	1082	0	0	08:42:00	08:44:00
247	10	1101	0	0	09:04:00	09:05:00
247	11	746	0	0	09:13:00	09:14:00
247	12	968	0	0	09:17:30	09:18:30
247	13	976	0	0	09:23:00	09:30:00
247	14	959	0	0	09:47:00	09:48:00
247	15	513	0	0	10:03:00	10:04:00
247	16	499	0	0	10:31:00	10:32:00
247	17	701	0	0	11:04:00	11:05:00
247	18	2447	0	0	11:31:00	11:32:00
247	19	3104	0	0	12:19:00	
248	1	6345	0	0		07:50:00
248	2	6348	0	0	07:53:00	07:54:00
248	3	6332	0	0	08:06:36	08:07:36
248	4	6293	0	0	08:16:00	08:17:00
248	5	6275	0	0	08:26:00	08:27:00
248	6	6265	0	0	08:39:30	08:40:30
248	7	6211	0	0	08:52:00	08:55:00
248	8	6091	0	0	09:08:00	09:09:00
248	9	6086	0	0	09:13:30	09:14:30
248	10	6084	0	0	09:21:00	09:22:00
248	11	6040	0	0	09:37:00	09:38:30
248	12	5974	0	0	09:50:30	09:51:30
248	13	5961	0	0	09:58:00	09:59:00
248	14	5980	0	0	10:15:00	10:17:00
248	15	6029	0	0	10:22:00	10:34:00
248	16	5807	0	0	10:53:30	10:54:30
248	17	5796	0	0	11:01:30	11:08:30
248	18	5522	0	0	11:18:00	11:19:00
248	19	5496	0	0	11:28:00	11:29:00
248	20	5433	0	0	11:47:30	11:49:00
248	21	5302	0	0	12:03:30	12:07:30
248	22	4838	0	0	12:37:00	12:38:00
248	23	4738	0	0	13:01:30	13:03:30
248	24	4857	0	0	13:23:00	13:25:00
248	25	4515	0	0	13:33:00	13:34:00
248	26	4687	0	0	13:49:00	13:59:00
248	27	4558	0	0	14:14:00	14:15:00
248	28	3459	0	0	14:25:24	14:26:24
248	29	3456	0	0	14:33:48	14:34:48
248	30	3337	0	0	14:50:00	14:53:00
248	31	3415	0	0	15:06:12	15:07:12
248	32	2515	0	0	15:29:00	15:44:00
248	33	2386	0	0	16:27:00	16:28:00
248	34	1284	0	0	17:08:00	17:47:00
248	35	3104	0	0	19:15:00	19:16:00
248	36	3430	0	0	19:36:00	20:00:00
248	37	3270	0	0	20:43:00	
249	1	6345	0	0		07:12:00
249	2	6348	0	0	07:15:00	07:16:00
249	3	6294	0	0	07:36:30	07:37:30
249	4	6275	0	0	07:46:30	07:47:30
249	5	6265	0	0	08:00:00	08:02:00
249	6	6214	0	0	08:14:00	08:16:00
249	7	6084	0	0	08:37:30	08:38:30
249	8	6039	0	0	08:54:00	08:55:30
249	9	5961	0	0	09:14:00	09:15:00
249	10	5979	0	0	09:32:00	09:41:00
249	11	6032	0	0	09:46:00	09:55:00
249	12	5477	0	0	10:52:00	10:57:00
249	13	5312	0	0	11:12:30	11:13:30
249	14	5307	0	0	11:20:00	11:23:00
249	15	5166	0	0	11:50:00	11:51:00
249	16	4738	0	0	12:13:00	12:21:00
249	17	4679	0	0	13:02:00	13:22:00
249	18	4707	0	0	13:44:00	13:45:00
249	19	4716	0	0	13:52:00	13:53:00
249	20	4721	0	0	14:05:00	14:08:30
249	21	3320	0	0	14:35:06	14:36:06
249	22	3313	0	0	14:55:54	14:56:54
249	23	2108	0	0	15:10:30	15:12:30
249	24	1752	0	0	15:56:00	15:58:00
249	25	351	0	0	16:20:00	16:24:00
249	26	391	0	0	16:41:00	16:42:00
249	27	385	0	0	16:56:00	16:57:00
249	28	6377	0	0	17:17:00	17:18:00
249	29	2078	0	0	17:34:00	17:48:00
249	30	70	0	0	18:00:00	18:01:00
249	31	419	0	0	18:16:06	18:17:06
249	32	640	0	0	18:35:00	18:36:00
249	33	11	0	0	18:59:00	19:01:00
249	34	10	0	0	19:12:00	
250	1	332	0	0		06:49:00
250	2	335	0	0	06:55:00	06:57:00
250	3	273	0	0	07:30:00	07:32:00
250	4	278	0	0	07:52:00	07:54:00
250	5	281	0	0	08:23:00	08:27:00
250	6	269	0	0	08:38:00	08:39:00
250	7	271	0	0	08:47:00	08:48:00
250	8	941	0	0	09:02:00	09:02:00
250	9	4433	0	0	09:11:00	09:17:00
250	10	4452	0	0	09:29:30	09:30:30
250	11	4464	0	0	09:41:00	09:42:00
250	12	4366	0	0	10:01:00	10:02:00
250	13	4674	0	0	10:23:00	10:24:00
250	14	4683	0	0	10:46:00	11:10:00
250	15	3337	0	0	11:55:00	11:56:00
250	16	2512	0	0	12:29:00	12:40:00
250	17	2533	0	0	13:06:00	13:07:00
250	18	1007	0	0	13:35:00	13:36:00
250	19	969	0	0	14:01:00	14:04:00
250	20	5370	0	0	15:11:00	15:12:00
250	21	5571	0	0	15:27:00	15:30:00
250	22	5596	0	0	15:34:00	15:35:00
250	23	5638	0	0	15:38:30	15:39:30
250	24	4636	0	0	15:43:00	15:45:00
250	25	4589	0	0	15:53:00	
251	1	1629	0	0		12:52:00
251	2	1612	0	0	12:59:00	13:00:00
251	3	925	0	0	13:47:00	13:50:00
251	4	1751	0	0	14:09:00	14:12:00
251	5	2108	0	0	14:54:30	15:02:30
251	6	3320	0	0	15:34:30	15:35:30
251	7	4186	0	0	16:01:00	16:02:00
251	8	4170	0	0	16:16:00	16:21:00
251	9	4680	0	0	16:54:00	17:10:00
251	10	4737	0	0	17:48:30	17:50:30
251	11	5165	0	0	18:11:00	18:12:00
251	12	5305	0	0	18:39:00	18:41:00
251	13	5311	0	0	18:47:00	18:48:30
251	14	5475	0	0	19:04:00	19:07:00
251	15	6025	0	0	20:02:00	20:20:00
251	16	5979	0	0	20:25:00	20:26:00
251	17	5961	0	0	20:41:00	20:42:00
251	18	6040	0	0	21:00:00	21:01:30
251	19	6083	0	0	21:17:00	21:18:00
251	20	6212	0	0	21:39:00	21:43:00
251	21	6265	0	0	21:54:00	21:55:00
251	22	6276	0	0	22:07:00	22:08:00
251	23	6294	0	0	22:17:00	22:18:00
251	24	6347	0	0	22:39:00	22:39:00
251	25	6345	0	0	22:43:00	
252	1	2072	0	0		12:43:00
252	2	70	0	0	12:58:30	12:59:30
252	3	1283	0	0	13:15:00	13:16:00
252	4	2853	0	0	13:33:00	13:34:00
252	5	2840	0	0	13:44:30	13:45:30
252	6	2851	0	0	13:54:00	13:55:00
252	7	2884	0	0	14:08:00	14:09:00
252	8	3104	0	0	14:36:00	14:50:00
252	9	3429	0	0	15:12:00	15:14:00
252	10	4055	0	0	15:52:00	15:52:00
252	11	3678	0	0	16:52:00	16:52:00
252	12	4160	0	0	17:45:00	17:46:00
252	13	4922	0	0	18:06:00	18:07:00
252	14	4768	0	0	18:15:30	18:16:30
252	15	4582	0	0	18:26:00	18:37:00
252	16	4636	0	0	18:44:30	18:45:30
252	17	5637	0	0	18:49:00	18:50:00
252	18	5596	0	0	18:54:00	18:55:00
252	19	5578	0	0	18:59:00	19:02:00
252	20	5369	0	0	19:20:00	19:21:00
252	21	5885	0	0	19:33:30	19:38:30
252	22	6122	0	0	19:57:00	20:01:00
252	23	64	0	0	20:18:30	20:19:30
252	24	58	0	0	20:42:30	20:43:30
252	25	6435	0	0	21:18:30	21:18:30
252	26	6430	0	0	21:23:00	
253	1	2667	0	0		05:43:00
253	2	2631	0	0	06:02:00	06:03:00
253	3	2609	0	0	06:24:00	06:25:00
253	4	2658	0	0	06:47:30	06:51:00
253	5	2662	0	0	06:58:30	06:59:00
253	6	3646	0	0	07:15:42	07:16:42
253	7	3644	0	0	07:21:48	07:22:48
253	8	3642	0	0	07:27:30	07:30:30
253	9	3630	0	0	07:37:00	07:38:00
253	10	3605	0	0	07:45:30	07:47:30
253	11	3728	0	0	08:26:30	08:28:30
253	12	3754	0	0	08:59:00	09:00:30
253	13	4888	0	0	09:29:30	09:41:00
253	14	5601	0	0	09:57:00	09:58:00
253	15	5593	0	0	10:06:00	10:07:00
253	16	5556	0	0	10:23:00	10:27:00
253	17	5559	0	0	10:30:30	10:31:00
253	18	5561	0	0	10:37:00	10:42:00
253	19	5476	0	0	11:01:00	
254	1	2767	0	0		18:08:00
254	2	2754	0	0	18:12:00	18:14:30
254	3	2763	0	0	18:21:30	18:22:30
254	4	2789	0	0	18:30:00	18:32:00
254	5	3812	0	0	18:47:30	18:48:30
254	6	3792	0	0	19:09:00	19:11:00
254	7	3755	0	0	19:36:00	19:41:30
254	8	4971	0	0	20:25:30	20:28:00
254	9	5022	0	0	20:56:30	20:57:00
254	10	5015	0	0	21:10:00	21:10:30
254	11	5945	0	0	21:52:30	21:56:00
254	12	6026	0	0	22:41:00	
255	1	276	0	0		05:27:00
255	2	350	0	0	05:48:30	05:50:30
255	3	1657	0	0	06:13:00	06:14:00
255	4	1640	0	0	06:37:30	06:38:30
255	5	1425	0	0	07:08:00	07:33:00
255	6	2160	0	0	07:36:00	07:37:00
255	7	3031	0	0	08:56:00	08:57:00
255	8	2768	0	0	09:03:00	09:32:00
255	9	2754	0	0	09:35:30	09:37:00
255	10	2836	0	0	10:02:30	10:03:30
255	11	2692	0	0	10:16:30	10:17:30
255	12	2609	0	0	10:37:00	10:38:00
255	13	2723	0	0	11:01:00	11:02:00
255	14	2715	0	0	11:15:00	11:16:00
255	15	2464	0	0	11:29:00	11:30:00
255	16	2444	0	0	11:42:00	11:43:00
255	17	2344	0	0	12:03:00	12:04:30
255	18	2518	0	0	12:14:00	12:38:00
255	19	2369	0	0	12:55:00	12:56:00
255	20	2377	0	0	13:05:00	13:06:00
255	21	2386	0	0	13:21:30	13:22:30
255	22	2395	0	0	13:34:00	13:35:00
255	23	2408	0	0	13:49:00	13:50:00
255	24	1284	0	0	14:06:00	14:07:00
255	25	70	0	0	14:20:00	14:21:00
255	26	2077	0	0	14:33:00	14:51:00
255	27	69	0	0	15:03:30	15:04:30
255	28	420	0	0	15:21:00	15:22:00
255	29	640	0	0	15:40:30	15:41:30
255	30	11	0	0	16:04:00	16:06:00
255	31	9	0	0	16:17:00	
256	1	5916	0	0		21:38:00
256	2	5914	0	0	21:44:00	21:45:00
256	3	5899	0	0	21:55:00	21:56:00
256	4	2019	0	0	22:17:36	22:18:36
256	5	5866	0	0	22:42:00	22:43:00
256	6	1773	0	0	22:48:00	22:49:00
256	7	5852	0	0	23:11:00	23:12:00
256	8	6029	0	1	23:44:00	00:17:00
256	9	5807	1	1	00:33:30	00:34:30
256	10	5796	1	1	00:42:00	00:43:00
256	11	5521	1	1	00:52:00	00:54:00
256	12	5549	1	1	01:08:00	01:09:30
256	13	5594	1	1	01:22:00	01:31:00
256	14	5602	1	1	01:38:00	01:39:00
256	15	4903	1	1	02:03:00	02:28:00
256	16	2754	1	1	04:28:30	04:32:00
256	17	2773	1	1	04:36:00	05:01:00
256	18	3031	1	1	05:07:00	05:09:00
256	19	2914	1	1	05:21:30	05:22:30
256	20	2901	1	1	05:30:30	05:31:30
256	21	2964	1	1	06:00:00	06:01:00
256	22	2978	1	1	06:16:30	06:17:30
256	23	1308	1	1	06:26:30	06:27:30
256	24	1255	1	1	06:59:00	07:01:00
256	25	1328	1	1	07:18:00	07:19:00
256	26	5885	1	1	07:38:00	07:39:00
256	27	5369	1	1	07:51:00	08:00:00
256	28	5576	1	1	08:16:00	08:20:00
256	29	5595	1	1	08:24:00	08:25:00
256	30	5637	1	1	08:28:30	08:29:30
256	31	4635	1	1	08:33:00	08:35:00
256	32	4588	1	0	08:44:00	
257	1	937	0	0		06:22:00
257	2	5210	0	0	06:28:00	06:31:00
257	3	5255	0	0	06:48:00	06:50:00
257	4	5237	0	0	07:04:00	07:06:00
257	5	5516	0	0	07:34:00	07:39:30
257	6	5482	0	0	08:00:00	08:02:00
257	7	5563	0	0	08:19:00	08:21:30
257	8	5556	0	0	08:30:30	08:31:30
257	9	5593	0	0	08:49:00	08:50:00
257	10	5053	0	0	09:22:00	09:23:00
257	11	3873	0	0	09:49:00	09:50:00
257	12	2753	0	0	10:41:00	10:41:00
257	13	2767	0	0	10:48:00	10:48:00
257	14	3032	0	0	10:59:00	
258	1	6346	0	0		18:49:00
258	2	6293	0	0	19:11:00	19:12:00
258	3	6275	0	0	19:21:00	19:22:00
258	4	6266	0	0	19:35:00	19:36:00
258	5	6211	0	0	19:47:00	19:55:00
258	6	6083	0	0	20:16:30	20:17:30
258	7	6040	0	0	20:32:00	20:36:00
258	8	5974	0	0	20:48:00	20:49:00
258	9	5961	0	0	20:55:30	20:56:30
258	10	5979	0	0	21:13:00	21:21:00
258	11	6031	0	0	21:26:00	21:36:00
258	12	5808	0	0	21:50:30	21:52:00
258	13	5795	0	0	22:00:00	22:01:00
258	14	5522	0	0	22:09:00	22:10:00
258	15	5478	0	0	22:40:00	22:44:00
258	16	5312	0	0	22:58:30	22:59:30
258	17	5304	0	0	23:06:00	23:07:00
258	18	5165	0	0	23:33:00	23:34:00
258	19	4738	0	1	23:56:00	00:01:00
258	20	4858	1	1	00:20:30	00:21:30
258	21	4687	1	1	00:45:00	00:53:00
258	22	4558	1	1	01:07:30	01:08:30
258	23	3460	1	1	01:18:30	01:19:30
258	24	3455	1	1	01:27:00	01:29:00
258	25	3338	1	1	01:45:00	01:46:00
258	26	3415	1	1	01:59:00	02:00:00
258	27	2513	1	1	02:22:00	03:19:00
258	28	2062	1	1	03:42:30	03:43:30
258	29	1843	1	1	03:55:30	03:56:30
258	30	1833	1	1	04:04:30	04:05:30
258	31	1819	1	1	04:10:30	04:11:30
258	32	2317	1	1	04:24:00	04:25:00
258	33	1752	1	1	04:47:00	04:50:00
258	34	926	1	1	05:08:00	05:08:00
258	35	1612	1	1	06:05:00	06:07:00
258	36	1629	1	1	06:14:00	06:17:00
258	37	410	1	1	06:22:00	06:24:00
258	38	407	1	0	06:27:00	
259	1	4012	0	0		05:26:00
259	2	1881	0	0	05:31:00	05:32:00
259	3	3988	0	0	05:44:00	05:45:00
259	4	3978	0	0	05:55:30	05:56:30
259	5	3962	0	0	06:07:00	06:08:00
259	6	3119	0	0	06:30:30	06:31:30
259	7	3031	0	0	07:10:00	07:13:00
259	8	2767	0	0	07:19:00	07:32:00
259	9	2754	0	0	07:35:30	07:37:00
259	10	2835	0	0	08:02:30	08:03:30
259	11	2691	0	0	08:16:30	08:17:30
259	12	2610	0	0	08:37:18	08:38:18
259	13	2723	0	0	09:02:06	09:03:06
259	14	2715	0	0	09:15:24	09:16:24
259	15	2464	0	0	09:28:36	09:29:36
259	16	2444	0	0	09:41:00	09:42:30
259	17	2343	0	0	10:02:30	10:03:30
259	18	2522	0	0	10:14:00	10:37:00
259	19	2062	0	0	11:00:18	11:01:18
259	20	1844	0	0	11:13:06	11:14:06
259	21	1834	0	0	11:22:12	11:23:12
259	22	1820	0	0	11:28:00	11:43:00
259	23	1837	0	0	11:50:00	11:56:00
259	24	2079	0	0	12:06:30	12:07:30
259	25	2108	0	0	12:25:00	
260	1	3031	0	0		07:01:00
260	2	2768	0	0	07:07:00	07:08:00
260	3	2754	0	0	07:12:00	07:14:30
260	4	2763	0	0	07:21:00	07:22:00
260	5	2790	0	0	07:30:00	07:32:00
260	6	3812	0	0	07:48:30	07:49:30
260	7	3794	0	0	08:13:00	08:16:00
260	8	3772	0	0	08:54:00	09:03:00
260	9	3896	0	0	09:19:00	09:20:00
260	10	5097	0	0	09:53:00	09:54:00
260	11	5057	0	0	10:33:00	10:34:00
260	12	5059	0	0	10:37:00	10:38:00
260	13	5070	0	0	10:45:00	10:46:00
260	14	5078	0	0	10:54:30	10:55:30
260	15	6290	0	0	11:06:36	11:07:36
260	16	6285	0	0	11:14:12	11:15:12
260	17	6276	0	0	11:36:00	11:37:00
260	18	6294	0	0	11:46:30	11:47:30
260	19	6332	0	0	11:56:00	11:57:00
260	20	6348	0	0	12:10:00	12:10:00
260	21	6345	0	0	12:14:00	
261	1	3031	0	0		19:38:00
261	2	3102	0	0	20:00:00	20:02:00
261	3	3191	0	0	20:11:30	20:12:30
261	4	3144	0	0	20:32:30	20:33:30
261	5	3172	0	0	20:54:00	20:55:00
261	6	3178	0	0	21:05:30	21:06:30
261	7	1715	0	0	21:13:00	21:14:00
261	8	1712	0	0	21:23:30	21:24:30
261	9	1698	0	0	21:36:00	21:38:00
261	10	1717	0	0	21:56:00	21:58:00
261	11	1577	0	0	22:18:00	22:19:00
261	12	2161	0	0	22:44:30	22:44:30
261	13	1422	0	0	22:49:00	
262	1	6028	0	0		15:55:00
262	2	5925	0	0	16:08:00	16:25:00
262	3	5938	0	0	16:51:00	17:03:00
262	4	5946	0	0	17:14:30	17:15:30
262	5	5016	0	0	17:41:00	17:42:00
262	6	5022	0	0	17:54:30	17:55:30
262	7	4970	0	0	18:25:00	19:04:00
262	8	3755	0	0	19:44:00	19:46:00
262	9	3793	0	0	20:09:00	20:11:00
262	10	3837	0	0	20:25:30	20:26:30
262	11	3978	0	0	20:53:00	20:54:00
262	12	3988	0	0	21:04:00	21:05:00
262	13	1881	0	0	21:16:00	21:16:00
262	14	4013	0	0	21:22:00	
263	1	3479	0	0		07:47:00
263	2	2470	0	0	08:06:30	08:07:30
263	3	2517	0	0	08:36:30	08:43:30
263	4	2386	0	0	09:28:00	09:31:00
263	5	2399	0	0	09:41:00	09:42:00
263	6	487	0	0	09:54:00	09:55:00
263	7	1803	0	0	10:14:00	10:15:00
263	8	398	0	0	10:18:00	
264	1	4582	0	0		19:31:00
264	2	4636	0	0	19:38:36	19:39:36
264	3	5638	0	0	19:43:00	19:44:00
264	4	5595	0	0	19:48:00	19:49:00
264	5	5578	0	0	19:53:30	19:55:30
264	6	5369	0	0	20:08:30	20:09:00
264	7	5886	0	0	20:19:30	20:20:00
264	8	1256	0	0	20:52:30	20:53:00
264	9	3031	0	0	22:23:00	22:23:00
264	10	2768	0	0	22:31:00	22:31:00
264	11	2754	0	0	22:40:00	
265	1	3032	0	0		09:19:00
265	2	3102	0	0	09:42:00	09:45:00
265	3	3191	0	0	09:54:30	09:57:30
265	4	3143	0	0	10:14:00	10:15:00
265	5	3197	0	0	10:28:30	10:29:30
265	6	3205	0	0	10:43:30	10:44:30
265	7	3211	0	0	11:01:30	11:02:30
265	8	4021	0	0	11:22:00	11:23:00
265	9	4016	0	0	11:49:00	
266	1	3031	0	0		13:41:00
266	2	2774	0	0	13:47:00	14:04:00
266	3	2754	0	0	14:08:00	14:09:30
266	4	3874	0	0	14:59:30	15:00:30
266	5	5054	0	0	15:27:00	15:28:00
266	6	5593	0	0	16:00:30	16:01:30
266	7	5555	0	0	16:19:00	16:20:00
266	8	5563	0	0	16:28:30	16:34:00
266	9	5479	0	0	16:49:00	16:55:00
266	10	5516	0	0	17:14:00	17:15:00
266	11	5238	0	0	17:42:00	17:43:30
266	12	5256	0	0	17:56:00	17:57:00
266	13	5209	0	0	18:14:00	18:15:00
266	14	937	0	0	18:21:00	18:34:00
266	15	250	0	0	18:41:00	18:43:00
266	16	251	0	0	18:49:00	18:51:00
266	17	242	0	0	19:18:00	19:20:00
266	18	257	0	0	19:40:00	19:42:00
266	19	266	0	0	19:57:00	19:59:00
266	20	267	0	0	20:09:00	20:11:00
266	21	243	0	0	20:27:00	20:29:00
266	22	234	0	0	20:40:00	20:55:00
266	23	1555	0	0	21:49:00	22:02:00
266	24	656	0	0	22:07:00	22:10:00
266	25	627	0	0	22:27:00	
267	1	4682	0	0		07:09:00
267	2	4738	0	0	07:53:00	07:58:00
267	3	5166	0	0	08:18:30	08:19:30
267	4	5306	0	0	08:45:00	08:47:00
267	5	5312	0	0	08:53:00	08:54:30
267	6	5470	0	0	09:03:30	09:04:30
267	7	5481	0	0	09:11:00	09:14:00
267	8	6029	0	0	10:05:00	10:15:00
267	9	5979	0	0	10:20:00	10:25:00
267	10	5961	0	0	10:41:00	10:49:00
267	11	6040	0	0	11:06:00	11:07:00
267	12	6083	0	0	11:21:30	11:22:30
267	13	6212	0	0	11:43:30	11:46:30
267	14	6266	0	0	11:57:30	11:58:30
267	15	6276	0	0	12:11:30	12:12:30
267	16	6294	0	0	12:21:30	12:22:30
267	17	6347	0	0	12:43:00	12:43:00
267	18	6346	0	0	12:47:00	
268	1	627	0	0		15:33:00
268	2	655	0	0	15:50:00	15:53:00
268	3	1555	0	0	15:58:00	16:10:00
268	4	233	0	0	17:04:00	17:15:00
268	5	243	0	0	17:26:00	17:28:00
268	6	267	0	0	17:44:00	17:46:00
268	7	266	0	0	17:55:00	17:57:00
268	8	258	0	0	18:13:00	18:15:00
268	9	241	0	0	18:36:00	18:38:00
268	10	251	0	0	19:06:00	19:08:00
268	11	249	0	0	19:13:00	19:16:00
268	12	938	0	0	19:23:00	19:35:00
268	13	5610	0	0	19:53:00	19:54:00
268	14	5658	0	0	20:30:30	20:31:30
268	15	5775	0	0	20:46:00	20:52:00
268	16	5980	0	0	21:47:00	
269	1	500	0	0		05:17:00
269	2	514	0	0	05:48:00	05:49:00
269	3	960	0	0	06:07:30	06:08:30
269	4	974	0	0	06:27:00	06:32:00
269	5	967	0	0	06:35:48	06:36:48
269	6	745	0	0	06:40:30	06:41:30
269	7	1102	0	0	06:49:00	06:50:00
269	8	1077	0	0	07:10:00	07:21:00
269	9	1220	0	0	07:32:00	07:33:00
269	10	1231	0	0	07:52:00	07:53:00
269	11	2610	0	0	08:22:00	08:23:00
269	12	2692	0	0	08:43:00	08:44:00
269	13	2836	0	0	08:56:00	08:57:00
269	14	2753	0	0	09:23:00	09:24:00
269	15	2767	0	0	09:28:00	09:41:00
269	16	3032	0	0	09:47:00	09:49:00
269	17	3120	0	0	10:27:00	10:28:00
269	18	3961	0	0	10:52:00	10:53:00
269	19	3978	0	0	11:04:00	11:05:00
269	20	3987	0	0	11:15:00	11:16:00
269	21	1881	0	0	11:27:30	11:28:30
269	22	4016	0	0	11:33:00	12:03:00
269	23	4090	0	0	12:29:30	12:30:30
269	24	5088	0	0	12:53:00	12:54:00
269	25	5057	0	0	13:10:30	13:11:30
269	26	5059	0	0	13:14:00	13:15:00
269	27	5069	0	0	13:22:00	13:23:00
269	28	5078	0	0	13:31:00	13:32:00
269	29	6289	0	0	13:43:00	13:44:00
269	30	6286	0	0	13:50:06	13:51:06
269	31	6265	0	0	14:24:00	14:25:00
269	32	6213	0	0	14:37:00	
270	1	5915	0	0		18:12:00
270	2	5914	0	0	18:17:36	18:18:36
270	3	5900	0	0	18:27:48	18:32:00
270	4	6031	0	0	21:25:06	21:28:00
270	5	2754	1	1	00:18:30	00:19:30
270	6	2772	1	1	00:23:30	00:25:30
270	7	3032	1	0	00:30:36	
271	1	5138	0	0		13:59:00
271	2	5140	0	0	14:10:00	14:11:00
271	3	1770	0	0	14:41:30	14:42:30
271	4	1767	0	0	14:45:00	14:46:00
271	5	5123	0	0	14:49:00	14:50:00
271	6	5132	0	0	15:00:30	15:01:30
271	7	2246	0	0	15:12:30	15:13:30
271	8	5161	0	0	15:22:30	15:23:30
271	9	5160	0	0	15:33:30	15:34:30
271	10	5157	0	0	15:42:30	15:43:30
271	11	5057	0	0	16:24:00	16:33:00
271	12	5060	0	0	16:36:00	16:37:00
271	13	5069	0	0	16:46:00	16:47:00
271	14	5078	0	0	17:00:00	17:01:00
271	15	6290	0	0	17:13:00	17:14:00
271	16	6285	0	0	17:26:00	17:27:00
271	17	6212	0	0	18:15:00	18:20:00
271	18	6083	0	0	18:45:00	18:46:00
271	19	6040	0	0	19:04:30	19:06:00
271	20	5980	0	0	19:43:00	19:43:00
271	21	6025	0	0	19:49:00	
272	1	4590	0	0		14:35:00
272	2	4636	0	0	14:43:30	14:45:00
272	3	5638	0	0	14:48:30	14:49:30
272	4	5596	0	0	14:53:30	14:54:30
272	5	5571	0	0	14:59:00	15:02:00
272	6	5369	0	0	15:18:00	15:20:00
272	7	767	0	0	15:57:30	15:58:30
272	8	978	0	0	16:31:00	16:44:00
272	9	1007	0	0	17:11:00	17:12:06
272	10	2534	0	0	17:42:00	17:44:00
272	11	2516	0	0	18:10:00	18:27:00
272	12	3337	0	0	19:00:00	19:01:00
272	13	4683	0	0	19:50:00	
273	1	4016	0	0		16:14:00
273	2	4021	0	0	16:38:30	16:39:30
273	3	3212	0	0	17:04:30	17:05:30
273	4	3205	0	0	17:23:30	17:24:30
273	5	3197	0	0	17:40:00	17:41:00
273	6	3144	0	0	17:54:30	17:55:30
273	7	3191	0	0	18:11:00	18:12:00
273	8	3101	0	0	18:21:30	18:22:30
273	9	3031	0	0	18:44:00	
274	1	5018	0	0		12:24:00
274	2	5054	0	0	12:51:30	12:52:30
274	3	3874	0	0	13:19:00	13:25:00
274	4	3725	0	0	13:50:00	13:51:00
274	5	3606	0	0	14:18:00	14:21:00
274	6	3629	0	0	14:27:36	14:28:36
274	7	3641	0	0	14:35:00	14:37:00
274	8	3644	0	0	14:41:30	14:42:30
274	9	3645	0	0	14:47:42	14:48:42
274	10	2662	0	0	15:08:00	15:12:30
274	11	2657	0	0	15:20:00	15:21:00
274	12	2609	0	0	15:43:30	15:44:30
274	13	2723	0	0	16:07:24	16:07:54
274	14	2716	0	0	16:20:42	16:21:12
274	15	2464	0	0	16:33:54	16:34:24
274	16	2444	0	0	16:46:24	16:46:54
274	17	2344	0	0	17:05:18	17:05:48
274	18	2518	0	0	17:16:00	17:38:00
274	19	2369	0	0	17:56:00	17:57:00
274	20	2378	0	0	18:06:00	18:07:00
274	21	2386	0	0	18:23:00	18:24:00
274	22	2396	0	0	18:35:30	18:36:30
274	23	2408	0	0	18:51:00	18:52:00
274	24	1283	0	0	19:07:00	19:08:00
274	25	70	0	0	19:21:00	19:21:00
274	26	2071	0	0	19:35:00	
275	1	5666	0	0		04:51:00
275	2	5658	0	0	05:00:00	05:01:30
275	3	5646	0	0	05:08:00	05:09:00
275	4	5516	0	0	05:26:00	05:27:00
275	5	5475	0	0	05:51:00	05:54:00
275	6	5561	0	0	06:07:36	06:10:00
275	7	5594	0	0	06:33:30	06:34:30
275	8	2754	0	0	08:19:00	08:20:00
275	9	2772	0	0	08:24:00	08:53:00
275	10	3032	0	0	08:59:00	09:04:00
275	11	5576	0	0	11:34:30	11:34:30
275	12	5596	0	0	11:40:30	11:40:30
275	13	5638	0	0	11:45:00	11:45:00
275	14	4635	0	0	11:49:30	11:49:30
275	15	4585	0	0	11:59:00	
276	1	4689	0	0		16:57:00
276	2	4548	0	0	17:02:00	17:03:00
276	3	4602	0	0	17:07:00	17:09:30
276	4	4647	0	0	17:29:00	17:30:00
276	5	4641	0	0	17:40:30	17:42:00
276	6	4664	0	0	18:09:00	18:10:00
276	7	3421	0	0	18:23:00	18:24:00
276	8	3560	0	0	18:47:00	18:48:00
276	9	3515	0	0	19:03:48	19:05:18
276	10	1057	0	0	19:38:00	19:45:00
276	11	1053	0	0	19:56:36	19:57:36
276	12	3637	0	0	20:05:06	20:05:36
276	13	3634	0	0	20:15:18	20:16:18
276	14	3629	0	0	20:30:30	20:31:30
276	15	3605	0	0	20:38:48	20:40:30
276	16	3684	0	0	20:51:30	20:52:30
276	17	3674	0	0	21:11:00	21:12:00
276	18	2807	0	0	21:22:24	21:23:24
276	19	2754	0	0	21:42:30	21:42:30
276	20	2771	0	0	21:48:00	21:48:00
276	21	3031	0	0	21:59:00	
277	1	627	0	0		15:33:00
277	2	655	0	0	15:50:00	15:53:00
277	3	1555	0	0	15:58:00	16:10:00
277	4	233	0	0	17:04:00	17:15:00
277	5	243	0	0	17:26:00	17:28:00
277	6	267	0	0	17:44:00	17:46:00
277	7	265	0	0	17:55:00	17:57:00
277	8	257	0	0	18:13:00	18:15:00
277	9	241	0	0	18:36:00	18:38:00
277	10	252	0	0	19:06:00	19:08:00
277	11	249	0	0	19:13:00	19:16:00
277	12	937	0	0	19:37:00	19:37:00
277	13	5209	0	0	19:43:00	19:44:00
277	14	5266	0	0	19:57:00	19:58:00
277	15	5166	0	0	20:23:30	20:24:30
277	16	4738	0	0	20:45:00	20:47:00
277	17	4689	0	0	21:26:00	21:29:00
277	18	3337	0	0	22:11:30	22:13:00
277	19	2521	0	0	22:46:00	
278	1	4588	0	0		19:04:00
278	2	4636	0	0	19:11:00	19:12:00
278	3	5638	0	0	19:15:30	19:16:30
278	4	5596	0	0	19:20:00	19:21:00
278	5	5575	0	0	19:25:00	19:27:00
278	6	5467	0	0	19:33:30	19:34:00
278	7	5369	0	0	19:45:00	19:46:00
278	8	6326	0	0	19:58:30	19:59:00
278	9	6357	0	0	20:11:00	20:11:30
278	10	768	0	0	20:28:30	20:29:30
278	11	975	0	0	21:03:00	21:05:00
278	12	1008	0	0	21:30:30	21:31:48
278	13	2599	0	0	21:47:00	21:48:00
278	14	2534	0	0	22:02:00	22:03:00
278	15	2515	0	0	22:32:00	
279	1	3031	0	0		13:05:00
279	2	2774	0	0	13:11:00	13:16:00
279	3	2753	0	0	13:20:00	13:21:30
279	4	2808	0	0	13:39:48	13:40:48
279	5	3673	0	0	13:52:00	13:53:00
279	6	3684	0	0	14:11:30	14:12:30
279	7	3605	0	0	14:23:30	14:23:30
279	8	3616	0	0	14:30:00	
280	1	6024	0	0		21:10:00
280	2	5937	0	0	21:54:30	22:10:30
280	3	5946	0	0	22:23:00	22:32:30
280	4	5053	0	0	23:13:00	23:14:00
280	5	3873	0	0	23:41:00	23:42:00
280	6	2806	1	1	00:30:30	00:31:30
280	7	2754	1	1	00:45:00	00:45:00
280	8	2768	1	1	00:50:00	00:50:00
280	9	3031	1	0	00:58:00	
281	1	4969	0	0		17:48:00
281	2	5049	0	0	18:19:00	18:20:00
281	3	5594	0	0	18:53:00	18:54:00
281	4	5550	0	0	19:07:30	19:09:00
281	5	5495	0	0	19:33:00	19:34:00
281	6	5434	0	0	19:52:00	19:54:30
281	7	5303	0	0	20:09:00	
282	1	4689	0	0		06:57:00
282	2	4547	0	0	07:02:00	07:03:00
282	3	4557	0	0	07:13:30	07:14:30
282	4	3460	0	0	07:24:30	07:25:30
282	5	3456	0	0	07:33:00	07:34:00
282	6	3337	0	0	07:49:00	07:50:00
282	7	3416	0	0	08:02:00	08:03:00
282	8	2517	0	0	08:25:00	08:46:00
282	9	2533	0	0	09:11:30	09:13:00
282	10	2600	0	0	09:27:00	09:29:00
282	11	1008	0	0	09:43:30	09:44:30
282	12	1083	0	0	10:08:00	10:14:00
282	13	1096	0	0	10:17:00	10:18:00
282	14	1103	0	0	10:21:30	10:22:30
282	15	1175	0	0	10:36:00	10:37:00
282	16	1179	0	0	10:45:00	10:46:00
282	17	1190	0	0	10:57:30	10:58:30
282	18	1256	0	0	11:20:00	11:21:00
282	19	1281	0	0	11:41:00	11:42:00
282	20	6436	0	0	12:09:00	12:09:00
282	21	6432	0	0	12:14:00	
283	1	3032	0	0		09:01:00
283	2	2773	0	0	09:07:00	09:12:00
283	3	2753	0	0	09:15:30	09:17:00
283	4	3605	0	0	10:12:00	10:12:00
283	5	3614	0	0	10:17:30	
284	1	6031	0	0		05:28:00
284	2	5980	0	0	05:32:30	05:42:30
284	3	5961	0	0	05:58:30	06:04:30
284	4	6040	0	0	06:23:00	06:24:00
284	5	6084	0	0	06:39:00	06:40:00
284	6	6216	0	0	07:01:00	07:03:00
284	7	6265	0	0	07:14:00	07:15:00
284	8	6275	0	0	07:27:00	07:28:00
284	9	6293	0	0	07:37:00	07:38:00
284	10	6348	0	0	07:58:18	07:58:18
284	11	6345	0	0	08:02:00	
285	1	3032	0	0		09:41:00
285	2	2773	0	0	09:47:00	09:52:00
285	3	2753	0	0	09:55:30	09:58:30
285	4	4908	0	0	11:52:00	11:54:00
285	5	5372	0	0	12:14:30	12:15:30
285	6	4737	0	0	12:47:30	12:55:00
285	7	4858	0	0	13:13:00	13:14:00
285	8	4515	0	0	13:21:30	13:22:30
285	9	4681	0	0	13:37:00	13:57:00
285	10	4229	0	0	14:27:00	14:29:00
285	11	4235	0	0	14:36:00	14:37:00
285	12	4239	0	0	14:50:00	15:02:00
285	13	4277	0	0	15:12:30	15:17:30
285	14	4306	0	0	15:38:30	15:39:30
285	15	4314	0	0	16:00:00	16:00:00
285	16	4351	0	0	16:55:00	16:55:00
285	17	4354	0	0	17:00:00	17:00:00
285	18	4356	0	0	17:07:00	
286	1	3616	0	0		11:32:00
286	2	3605	0	0	11:37:30	11:38:30
286	3	3683	0	0	11:50:00	11:52:00
286	4	3674	0	0	12:11:00	12:12:00
286	5	2807	0	0	12:23:00	12:24:00
286	6	2754	0	0	12:43:00	12:44:00
286	7	2767	0	0	12:48:00	13:01:00
286	8	3032	0	0	13:07:00	13:09:00
286	9	2913	0	0	13:22:30	13:23:30
286	10	2901	0	0	13:31:00	13:32:00
286	11	2964	0	0	13:59:00	14:00:00
286	12	2977	0	0	14:14:30	14:15:30
286	13	1307	0	0	14:25:00	14:26:00
286	14	1255	0	0	14:57:00	15:08:00
286	15	1327	0	0	15:24:00	15:25:00
286	16	5885	0	0	15:45:00	15:46:00
286	17	5370	0	0	15:57:00	15:58:00
286	18	5571	0	0	16:13:00	16:16:00
286	19	5596	0	0	16:20:00	16:21:00
286	20	5637	0	0	16:24:30	16:25:30
286	21	4635	0	0	16:29:00	16:30:00
286	22	4583	0	0	16:38:00	
287	1	2511	0	0		05:40:00
287	2	2469	0	0	06:01:30	06:02:30
287	3	3479	0	0	06:22:00	06:23:00
287	4	3502	0	0	06:36:00	06:37:00
287	5	3559	0	0	06:54:30	06:55:30
287	6	3536	0	0	07:12:00	07:13:00
287	7	3531	0	0	07:24:30	07:25:30
287	8	4807	0	0	07:42:00	07:43:00
287	9	4793	0	0	07:54:30	07:55:30
287	10	5387	0	0	08:09:00	08:10:00
287	11	5372	0	0	08:28:00	08:39:00
287	12	4906	0	0	09:00:00	09:05:00
287	13	5601	0	0	09:24:00	09:29:30
287	14	5593	0	0	09:37:00	09:39:30
287	15	5550	0	0	09:54:00	09:54:30
287	16	5522	0	0	10:10:00	10:11:00
287	17	5796	0	0	10:19:00	10:20:00
287	18	5808	0	0	10:27:00	10:30:30
287	19	6024	0	0	10:46:00	
288	1	2521	0	0		15:43:00
288	2	2469	0	0	16:05:00	16:06:00
288	3	3480	0	0	16:27:00	16:28:30
288	4	3501	0	0	16:42:00	16:43:00
288	5	3559	0	0	17:01:30	17:03:30
288	6	3535	0	0	17:19:30	17:20:30
288	7	3532	0	0	17:31:54	17:32:54
288	8	4807	0	0	17:51:30	17:52:30
288	9	4793	0	0	18:04:00	18:05:00
288	10	5388	0	0	18:18:00	18:19:00
288	11	5371	0	0	18:37:00	18:38:00
288	12	4909	0	0	18:59:00	19:09:30
288	13	5601	0	0	19:31:00	19:33:00
288	14	5594	0	0	19:41:30	19:48:00
288	15	5549	0	0	20:01:30	20:02:30
288	16	5522	0	0	20:15:30	20:21:00
288	17	5795	0	0	20:32:30	20:34:00
288	18	5807	0	0	20:42:30	20:43:30
288	19	6025	0	0	21:01:00	
289	1	6024	0	0		13:23:00
289	2	5776	0	0	14:28:30	14:35:00
289	3	5657	0	0	14:50:00	15:02:00
289	4	5665	0	0	15:11:00	
290	1	4686	0	0		09:31:00
290	2	4169	0	0	10:04:00	10:05:00
290	3	4205	0	0	10:15:30	10:16:30
290	4	4201	0	0	10:29:00	10:30:00
290	5	4105	0	0	10:42:00	10:45:00
290	6	431	0	0	11:24:00	11:26:00
290	7	430	0	0	11:43:00	11:45:00
290	8	436	0	0	12:05:00	12:07:00
290	9	484	0	0	12:25:00	12:27:00
290	10	541	0	0	13:04:00	
291	1	6345	0	0		07:50:00
291	2	6347	0	0	07:53:00	07:54:00
291	3	6332	0	0	08:06:36	08:07:36
291	4	6294	0	0	08:16:00	08:17:00
291	5	6276	0	0	08:26:00	08:27:00
291	6	6265	0	0	08:39:30	08:40:30
291	7	6212	0	0	08:52:00	08:55:00
291	8	6091	0	0	09:08:00	09:09:00
291	9	6085	0	0	09:13:30	09:14:30
291	10	6084	0	0	09:21:00	09:22:00
291	11	6039	0	0	09:37:00	09:38:30
291	12	5974	0	0	09:50:30	09:51:30
291	13	5962	0	0	09:58:00	09:59:00
291	14	5980	0	0	10:15:00	10:17:00
291	15	6023	0	0	10:22:00	10:34:00
291	16	5807	0	0	10:53:30	10:54:30
291	17	5795	0	0	11:01:30	11:08:30
291	18	5521	0	0	11:18:00	11:19:00
291	19	5495	0	0	11:28:00	11:29:00
291	20	5434	0	0	11:47:30	11:49:00
291	21	5304	0	0	12:03:30	12:07:00
291	22	4838	0	0	12:37:00	12:38:00
291	23	4737	0	0	13:01:30	13:03:30
291	24	4858	0	0	13:23:00	13:25:00
291	25	4515	0	0	13:33:00	13:34:00
291	26	4682	0	0	13:49:00	13:59:00
291	27	4557	0	0	14:14:00	14:15:00
291	28	3459	0	0	14:25:30	14:26:30
291	29	3456	0	0	14:34:00	14:35:00
291	30	3338	0	0	14:50:00	14:53:00
291	31	3415	0	0	15:06:00	15:07:00
291	32	2513	0	0	15:29:00	15:44:00
291	33	2421	0	0	16:12:30	16:13:30
291	34	683	0	0	16:24:00	16:28:00
291	35	694	0	0	16:44:00	16:45:00
291	36	500	0	0	17:00:00	17:06:00
291	37	701	0	0	17:30:00	17:31:00
291	38	2448	0	0	18:10:00	18:14:00
291	39	3104	0	0	18:50:00	18:51:00
291	40	3430	0	0	19:05:00	19:32:00
291	41	3270	0	0	20:24:00	
292	1	4581	0	0		07:20:00
292	2	4635	0	0	07:28:00	07:29:30
292	3	5637	0	0	07:33:00	07:34:00
292	4	5595	0	0	07:37:30	07:38:30
292	5	5573	0	0	07:42:30	07:45:00
292	6	5369	0	0	08:00:00	08:01:30
292	7	5886	0	0	08:12:30	08:13:30
292	8	1327	0	0	08:32:30	08:40:30
292	9	1255	0	0	08:58:30	09:00:30
292	10	1307	0	0	09:31:00	09:32:00
292	11	2978	0	0	09:41:00	09:42:00
292	12	2964	0	0	09:57:00	09:59:00
292	13	2902	0	0	10:27:30	10:28:30
292	14	2913	0	0	10:36:30	10:37:30
292	15	3032	0	0	10:50:00	10:53:00
292	16	2770	0	0	10:59:00	11:09:00
292	17	2753	0	0	11:13:00	11:14:30
292	18	2808	0	0	11:32:30	11:33:30
292	19	3673	0	0	11:44:00	11:45:00
292	20	3683	0	0	12:03:00	12:04:00
292	21	3605	0	0	12:14:30	12:14:30
292	22	3615	0	0	12:21:00	
293	1	6026	0	0		13:56:00
293	2	5808	0	0	14:12:00	14:16:30
293	3	5795	0	0	14:23:30	14:24:30
293	4	5813	0	0	14:27:30	14:28:30
293	5	5776	0	0	14:41:30	14:43:00
293	6	5658	0	0	14:57:00	15:00:00
293	7	5609	0	0	15:48:36	15:52:00
293	8	938	0	0	16:12:00	16:34:00
293	9	249	0	0	16:41:00	16:43:00
293	10	251	0	0	16:49:00	16:51:00
293	11	242	0	0	17:18:00	17:20:00
293	12	257	0	0	17:40:00	17:42:00
293	13	266	0	0	17:57:00	17:59:00
293	14	268	0	0	18:09:00	18:11:00
293	15	243	0	0	18:27:00	18:29:00
293	16	234	0	0	18:40:00	18:55:00
293	17	1555	0	0	19:49:00	19:55:00
293	18	656	0	0	20:00:00	20:02:00
293	19	658	0	0	21:41:00	21:43:00
293	20	659	0	0	22:19:00	
294	1	3032	0	0		23:32:00
294	2	2769	0	0	23:38:00	23:43:00
294	3	2753	0	0	23:47:00	23:48:30
294	4	2807	1	1	00:10:12	00:11:12
294	5	3674	1	1	00:24:00	00:25:00
294	6	3683	1	1	00:47:00	00:48:00
294	7	3605	1	1	01:00:00	01:02:00
294	8	3630	1	1	01:09:00	01:10:00
294	9	3634	1	1	01:24:06	01:25:06
294	10	3638	1	1	01:35:00	01:36:00
294	11	1053	1	1	01:43:24	01:44:24
294	12	1058	1	1	01:55:30	01:56:30
294	13	3515	1	1	02:32:30	02:34:00
294	14	3560	1	1	02:51:54	02:52:54
294	15	3421	1	1	03:14:30	03:15:30
294	16	4663	1	1	03:30:00	03:31:00
294	17	4647	1	1	03:54:00	03:55:00
294	18	4601	1	1	04:14:00	04:16:30
294	19	4685	1	1	04:25:00	04:49:00
294	20	4230	1	1	05:19:00	05:24:00
294	21	4235	1	1	05:31:00	05:32:00
294	22	4240	1	1	05:45:30	05:46:30
294	23	4278	1	1	05:56:30	06:03:30
294	24	4306	1	1	06:25:00	06:26:00
294	25	4313	1	1	06:46:00	06:46:00
294	26	4352	1	1	07:41:00	07:41:00
294	27	4353	1	1	07:46:00	07:46:00
294	28	4355	1	0	07:53:00	
295	1	1426	0	0		14:15:00
295	2	2161	0	0	14:18:30	14:19:30
295	3	1589	0	0	14:29:30	14:30:30
295	4	1603	0	0	14:42:30	14:43:30
295	5	1625	0	0	14:51:30	14:52:30
295	6	3022	0	0	15:04:00	15:05:00
295	7	2999	0	0	15:17:36	15:18:36
295	8	2983	0	0	15:27:48	15:28:48
295	9	2890	0	0	15:36:30	15:37:30
295	10	3031	0	0	15:55:00	15:57:00
295	11	2773	0	0	16:03:00	16:12:00
295	12	2754	0	0	16:16:00	16:17:30
295	13	2808	0	0	16:36:00	16:37:00
295	14	3673	0	0	16:48:30	16:49:30
295	15	3684	0	0	17:09:30	17:10:30
295	16	3606	0	0	17:22:00	17:25:00
295	17	3629	0	0	17:32:48	17:33:48
295	18	3633	0	0	17:48:00	17:49:00
295	19	3637	0	0	17:58:48	17:59:48
295	20	1054	0	0	18:07:00	18:08:00
295	21	1057	0	0	18:19:00	18:20:00
295	22	3515	0	0	18:54:30	18:55:30
295	23	3560	0	0	19:13:06	19:14:06
295	24	3422	0	0	19:36:36	19:37:36
295	25	4641	0	0	20:07:00	20:08:00
295	26	4647	0	0	20:17:00	20:19:00
295	27	4601	0	0	20:38:00	20:38:00
295	28	4548	0	0	20:48:30	20:48:30
295	29	4689	0	0	20:54:00	
296	1	4585	0	0		10:31:00
296	2	4635	0	0	10:38:30	10:39:30
296	3	5638	0	0	10:43:00	10:44:00
296	4	5595	0	0	10:48:00	10:49:00
296	5	5578	0	0	10:53:30	10:55:30
296	6	5370	0	0	11:08:30	11:09:00
296	7	5885	0	0	11:19:30	11:20:00
296	8	1256	0	0	11:52:30	11:53:00
296	9	3031	0	0	13:23:00	13:25:00
296	10	2772	0	0	13:31:00	13:40:00
296	11	2754	0	0	13:44:00	13:45:00
296	12	6023	0	0	16:27:00	
297	1	541	0	0		14:55:00
297	2	484	0	0	15:29:00	15:31:00
297	3	436	0	0	15:47:00	15:55:00
297	4	429	0	0	16:15:00	16:17:00
297	5	432	0	0	16:34:00	16:36:00
297	6	4106	0	0	17:14:06	17:16:00
297	7	4202	0	0	17:28:06	17:29:06
297	8	4205	0	0	17:41:36	17:42:36
297	9	4169	0	0	17:53:00	17:58:00
297	10	4688	0	0	18:32:00	
298	1	4056	0	0		11:03:00
298	2	3429	0	0	11:25:00	11:28:00
298	3	3104	0	0	11:42:00	11:43:00
298	4	2447	0	0	12:20:00	12:21:00
298	5	701	0	0	12:47:00	12:48:00
298	6	500	0	0	13:17:00	13:18:00
298	7	694	0	0	13:31:30	13:32:30
298	8	684	0	0	13:48:00	13:49:00
298	9	2421	0	0	14:04:06	14:05:06
298	10	2516	0	0	14:26:00	14:31:00
298	11	3416	0	0	14:52:00	14:53:00
298	12	3337	0	0	15:06:00	15:07:00
298	13	3455	0	0	15:22:00	15:24:00
298	14	3459	0	0	15:32:00	15:33:00
298	15	4557	0	0	15:43:00	15:44:00
298	16	4684	0	0	15:59:00	16:13:00
298	17	4515	0	0	16:27:30	16:32:30
298	18	4857	0	0	16:40:00	16:41:00
298	19	4738	0	0	17:03:00	17:10:00
298	20	4837	0	0	17:35:00	17:39:00
298	21	5304	0	0	18:10:00	18:11:00
298	22	5434	0	0	18:25:00	18:27:30
298	23	5496	0	0	18:47:30	18:50:30
298	24	5522	0	0	18:59:00	19:07:00
298	25	5796	0	0	19:15:30	19:16:30
298	26	5808	0	0	19:24:00	19:25:00
298	27	6023	0	0	19:40:00	19:45:00
298	28	5979	0	0	19:49:30	19:53:30
298	29	5962	0	0	20:09:30	20:10:30
298	30	5974	0	0	20:17:30	20:18:30
298	31	6040	0	0	20:31:30	20:33:00
298	32	6084	0	0	20:48:00	20:49:00
298	33	6085	0	0	20:56:00	20:57:00
298	34	6092	0	0	21:02:00	21:03:00
298	35	6216	0	0	21:16:00	21:19:00
298	36	6266	0	0	21:30:00	21:31:00
298	37	6276	0	0	21:43:00	21:44:00
298	38	6294	0	0	21:53:00	21:54:00
298	39	6331	0	0	22:03:00	22:04:00
298	40	6347	0	0	22:16:30	22:16:30
298	41	6346	0	0	22:21:00	
299	1	6345	0	0		11:53:00
299	2	6347	0	0	11:56:00	11:57:00
299	3	6332	0	0	12:09:30	12:10:30
299	4	6293	0	0	12:19:00	12:20:00
299	5	6276	0	0	12:29:00	12:30:00
299	6	6265	0	0	12:42:00	12:43:00
299	7	6211	0	0	12:54:00	12:57:00
299	8	6091	0	0	13:09:30	13:10:30
299	9	6086	0	0	13:15:00	13:16:00
299	10	6083	0	0	13:22:30	13:23:30
299	11	6039	0	0	13:39:00	13:40:30
299	12	5974	0	0	13:52:30	13:53:30
299	13	5961	0	0	14:00:00	14:01:00
299	14	5979	0	0	14:17:00	14:19:00
299	15	6031	0	0	14:24:00	14:37:00
299	16	5807	0	0	14:51:30	14:55:00
299	17	5796	0	0	15:02:30	15:08:00
299	18	5522	0	0	15:16:00	15:17:30
299	19	5495	0	0	15:26:00	15:30:30
299	20	5482	0	0	15:45:00	15:51:00
299	21	5470	0	0	15:57:30	15:58:30
299	22	5312	0	0	16:07:00	16:08:00
299	23	5308	0	0	16:14:00	16:18:00
299	24	4837	0	0	16:49:00	16:50:00
299	25	4738	0	0	17:13:00	17:15:00
299	26	4857	0	0	17:33:30	17:34:30
299	27	4515	0	0	17:41:30	17:42:30
299	28	4679	0	0	17:58:00	18:02:00
299	29	4557	0	0	18:17:00	18:18:00
299	30	3460	0	0	18:28:00	18:29:00
299	31	3456	0	0	18:37:00	18:38:00
299	32	3338	0	0	18:52:00	18:53:00
299	33	3416	0	0	19:06:00	19:07:00
299	34	2518	0	0	19:29:00	
300	1	5712	0	0		06:45:00
300	2	5666	0	0	07:10:00	07:18:00
300	3	5658	0	0	07:28:00	07:33:00
300	4	5645	0	0	07:40:00	07:41:00
300	5	5516	0	0	08:00:00	08:01:00
300	6	5491	0	0	08:40:30	08:41:00
300	7	5550	0	0	08:55:00	08:55:30
300	8	5593	0	0	09:09:30	09:11:30
300	9	5602	0	0	09:18:30	09:21:30
300	10	4886	0	0	09:39:00	09:51:00
300	11	2754	0	0	11:50:00	11:50:00
300	12	2767	0	0	11:55:00	11:55:00
300	13	3031	0	0	12:19:00	
301	1	3104	0	0		15:40:00
301	2	2448	0	0	16:28:00	16:29:00
301	3	702	0	0	16:55:00	16:58:00
301	4	499	0	0	17:30:00	17:32:00
301	5	513	0	0	18:02:00	18:03:00
301	6	960	0	0	18:22:30	18:23:30
301	7	971	0	0	18:42:00	18:45:00
301	8	967	0	0	18:48:54	18:49:54
301	9	745	0	0	18:53:00	18:54:00
301	10	1101	0	0	19:02:00	19:03:00
301	11	1080	0	0	19:23:30	19:29:00
301	12	1219	0	0	19:40:00	19:41:00
301	13	1231	0	0	20:00:00	20:02:00
301	14	2610	0	0	20:31:00	20:32:00
301	15	2691	0	0	20:52:00	20:53:00
301	16	2836	0	0	21:06:00	21:07:00
301	17	2754	0	0	21:33:00	21:33:00
301	18	2772	0	0	21:42:00	21:42:00
301	19	3031	0	0	21:51:00	
302	1	4584	0	0		12:58:00
302	2	4635	0	0	13:05:30	13:07:30
302	3	5638	0	0	13:11:00	13:12:00
302	4	5596	0	0	13:15:30	13:16:30
302	5	5573	0	0	13:20:30	13:23:30
302	6	5370	0	0	13:41:00	13:44:00
302	7	768	0	0	14:20:00	14:21:00
302	8	977	0	0	14:53:00	14:56:00
302	9	1007	0	0	15:22:00	15:23:00
302	10	2600	0	0	15:38:00	15:39:00
302	11	2533	0	0	15:53:00	15:54:00
302	12	2511	0	0	16:20:00	16:39:00
302	13	2062	0	0	17:02:30	17:03:30
302	14	1844	0	0	17:12:30	17:13:30
302	15	1833	0	0	17:21:30	17:22:30
302	16	1820	0	0	17:28:30	17:32:30
302	17	1838	0	0	17:39:12	17:40:12
302	18	2079	0	0	17:50:30	18:04:00
302	19	2107	0	0	18:22:00	
303	1	5916	0	0		13:51:00
303	2	5914	0	0	13:57:00	13:58:00
303	3	5900	0	0	14:14:30	14:28:30
303	4	2020	0	0	15:06:12	15:07:12
303	5	5865	0	0	15:30:30	15:31:30
303	6	1774	0	0	15:36:30	15:37:30
303	7	5852	0	0	15:59:30	16:00:30
303	8	6024	0	0	16:51:00	16:57:00
303	9	5550	0	0	17:39:00	17:40:00
303	10	5593	0	0	17:53:30	17:54:30
303	11	5053	0	0	18:24:30	18:25:30
303	12	3873	0	0	18:52:30	18:53:30
303	13	3726	0	0	19:17:24	19:18:24
303	14	3605	0	0	19:46:30	19:49:00
303	15	3630	0	0	19:55:48	19:56:48
303	16	3641	0	0	20:03:00	20:05:00
303	17	3644	0	0	20:09:06	20:10:06
303	18	3646	0	0	20:14:54	20:15:54
303	19	2661	0	0	20:33:36	20:34:36
303	20	2658	0	0	20:41:42	20:42:42
303	21	2609	0	0	21:05:00	21:06:00
303	22	1231	0	0	21:35:30	21:36:30
303	23	1219	0	0	21:55:00	21:56:30
303	24	1081	0	0	22:09:00	22:12:00
303	25	1101	0	0	22:32:00	22:33:00
303	26	745	0	0	22:40:30	22:40:30
303	27	967	0	0	22:44:36	22:44:36
303	28	977	0	0	22:50:00	
304	1	1428	0	0		05:15:00
304	2	2156	0	0	05:18:30	05:19:00
304	3	1590	0	0	05:29:00	05:30:00
304	4	1603	0	0	05:42:30	05:43:30
304	5	1626	0	0	05:51:30	05:52:30
304	6	3022	0	0	06:04:00	06:05:00
304	7	2999	0	0	06:18:00	06:18:30
304	8	2984	0	0	06:28:00	06:28:30
304	9	2890	0	0	06:36:30	06:37:00
304	10	3031	0	0	06:55:00	06:57:00
304	11	2773	0	0	07:03:00	07:28:00
304	12	2754	0	0	07:32:00	07:33:00
304	13	4887	0	0	09:34:00	09:47:00
304	14	5602	0	0	10:03:00	10:04:00
304	15	5593	0	0	10:12:30	10:13:30
304	16	5550	0	0	10:25:00	10:29:30
304	17	5496	0	0	10:50:00	10:51:00
304	18	5480	0	0	11:07:00	11:10:00
304	19	5312	0	0	11:24:30	11:25:30
304	20	5308	0	0	11:32:00	
305	1	2519	0	0		05:43:00
305	2	2343	0	0	05:54:00	05:55:00
305	3	2443	0	0	06:15:36	06:16:36
305	4	2464	0	0	06:28:36	06:29:36
305	5	2716	0	0	06:42:36	06:43:36
305	6	2724	0	0	06:56:30	06:57:30
305	7	2610	0	0	07:22:18	07:23:18
305	8	2691	0	0	07:43:24	07:44:24
305	9	2836	0	0	07:56:12	07:57:12
305	10	2754	0	0	08:22:30	08:24:00
305	11	2769	0	0	08:28:00	08:41:00
305	12	3031	0	0	08:47:00	08:49:00
305	13	3119	0	0	09:30:00	09:31:00
305	14	3961	0	0	09:52:00	09:53:00
305	15	3978	0	0	10:04:00	10:05:00
305	16	3988	0	0	10:15:00	10:16:00
305	17	1882	0	0	10:27:30	10:28:30
305	18	4011	0	0	10:33:00	10:36:00
305	19	4008	0	0	10:46:00	10:47:00
305	20	4041	0	0	11:12:30	11:13:30
305	21	4053	0	0	11:24:30	11:24:30
305	22	4050	0	0	11:29:00	
306	1	3268	0	0		06:39:00
306	2	1688	0	0	06:45:12	06:46:12
306	3	3259	0	0	06:53:00	06:54:00
306	4	3246	0	0	07:02:00	07:03:00
306	5	3247	0	0	07:14:00	07:15:00
306	6	3197	0	0	07:27:30	07:28:30
306	7	3143	0	0	07:41:30	07:42:30
306	8	3192	0	0	07:58:00	07:59:00
306	9	3102	0	0	08:08:00	08:09:00
306	10	3032	0	0	08:32:00	08:36:00
306	11	2767	0	0	08:42:00	08:48:00
306	12	2754	0	0	08:52:00	08:53:00
306	13	2836	0	0	09:41:00	09:42:00
306	14	2692	0	0	09:54:30	09:55:30
306	15	2610	0	0	10:15:00	10:16:00
306	16	2723	0	0	10:43:00	10:44:00
306	17	2715	0	0	10:57:30	11:04:30
306	18	2463	0	0	11:17:30	11:18:30
306	19	2443	0	0	11:31:00	11:33:00
306	20	2344	0	0	11:52:12	11:53:12
306	21	2515	0	0	12:02:30	
307	1	3032	0	0		04:49:00
307	2	2768	0	0	04:55:00	05:00:00
307	3	2754	0	0	05:03:30	05:05:00
307	4	2610	0	0	06:01:30	06:02:30
307	5	2715	0	0	06:38:00	06:39:00
307	6	2518	0	0	07:24:00	07:27:00
307	7	1819	0	0	08:10:00	08:11:00
307	8	2317	0	0	08:23:00	08:24:00
307	9	1751	0	0	08:47:00	08:50:00
307	10	926	0	0	09:09:00	09:12:00
307	11	1612	0	0	10:06:00	10:09:00
307	12	1629	0	0	10:16:00	
308	1	3032	0	0		08:49:00
308	2	2774	0	0	08:55:00	09:00:00
308	3	2754	0	0	09:03:30	09:05:00
308	4	2610	0	0	10:01:30	10:02:30
308	5	2716	0	0	10:38:00	10:39:00
308	6	2522	0	0	11:24:00	11:27:00
308	7	1819	0	0	12:10:00	12:11:00
308	8	2318	0	0	12:23:00	12:24:00
308	9	1751	0	0	12:47:00	12:50:00
308	10	926	0	0	13:09:00	13:12:00
308	11	1611	0	0	14:06:00	14:09:00
308	12	1629	0	0	14:16:00	
309	1	6025	0	0		18:59:00
309	2	5946	0	0	19:42:00	19:43:00
309	3	5018	0	0	19:59:00	20:08:00
309	4	5015	0	0	20:19:00	20:19:30
309	5	5022	0	0	20:32:30	20:33:00
309	6	4970	0	0	21:02:00	21:08:00
309	7	3755	0	0	21:48:00	21:51:00
309	8	3791	0	0	22:14:00	22:16:00
309	9	3812	0	0	22:37:00	22:38:00
309	10	2790	0	0	22:54:00	22:55:00
309	11	2764	0	0	23:05:00	23:06:00
309	12	2753	0	0	23:14:00	23:14:00
309	13	2771	0	0	23:20:00	23:20:00
309	14	3032	0	0	23:30:00	
310	1	4687	0	0		07:20:00
310	2	4547	0	0	07:25:00	07:26:00
310	3	4601	0	0	07:30:00	07:31:00
310	4	4647	0	0	07:49:30	07:50:30
310	5	4641	0	0	08:00:30	08:01:30
310	6	3421	0	0	08:28:00	08:29:00
310	7	3560	0	0	08:51:30	08:52:30
310	8	3516	0	0	09:07:48	09:08:48
310	9	1058	0	0	09:41:30	09:42:30
310	10	1054	0	0	09:53:00	09:54:00
310	11	3638	0	0	10:01:00	10:02:00
310	12	3633	0	0	10:12:00	10:13:00
310	13	3630	0	0	10:26:30	10:27:30
310	14	3605	0	0	10:35:00	10:41:00
310	15	3683	0	0	10:51:30	10:53:30
310	16	3673	0	0	11:12:00	11:14:00
310	17	2808	0	0	11:24:42	11:26:42
310	18	2754	0	0	11:45:30	11:47:00
310	19	2774	0	0	11:51:00	11:57:00
310	20	3032	0	0	12:03:00	12:06:00
310	21	2890	0	0	12:23:30	12:24:30
310	22	2983	0	0	12:33:00	12:34:00
310	23	2999	0	0	12:44:00	12:45:00
310	24	3021	0	0	12:59:00	13:00:00
310	25	1625	0	0	13:10:30	13:11:30
310	26	1603	0	0	13:19:30	13:20:30
310	27	1589	0	0	13:32:30	13:33:30
310	28	2156	0	0	13:43:30	13:43:30
310	29	1427	0	0	13:48:00	
311	1	2748	0	0		11:07:00
311	2	3657	0	0	12:16:00	12:24:00
311	3	3641	0	0	13:00:00	13:25:00
311	4	2513	0	0	16:02:42	
312	1	4313	0	0		14:33:00
312	2	4306	0	0	14:56:06	14:57:06
312	3	4278	0	0	15:15:30	15:16:30
312	4	4280	0	0	15:24:00	15:25:00
312	5	4496	0	0	15:55:30	15:56:30
312	6	4437	0	0	16:14:30	16:15:30
312	7	4464	0	0	16:18:00	16:29:00
312	8	4438	0	0	16:32:00	16:33:00
312	9	4365	0	0	16:49:30	16:50:30
312	10	4398	0	0	17:01:30	17:02:30
312	11	4393	0	0	17:14:30	17:15:30
312	12	4383	0	0	17:34:00	17:35:00
312	13	4423	0	0	18:12:00	18:13:00
312	14	5193	0	0	18:33:30	18:36:30
312	15	5165	0	0	18:59:00	19:00:00
312	16	5304	0	0	19:27:00	19:29:00
312	17	5312	0	0	19:35:30	19:36:30
312	18	5477	0	0	19:52:00	20:00:00
312	19	5495	0	0	20:16:00	20:19:30
312	20	5521	0	0	20:29:00	20:39:30
312	21	5795	0	0	20:50:30	20:51:30
312	22	5808	0	0	21:01:00	21:02:30
312	23	6024	0	0	21:20:00	
313	1	4680	0	0		18:08:00
313	2	4515	0	0	18:22:30	18:23:30
313	3	4858	0	0	18:31:00	18:32:00
313	4	4738	0	0	18:51:00	18:53:00
313	5	5371	0	0	19:38:00	19:41:00
313	6	4906	0	0	20:01:00	20:03:00
313	7	4927	0	0	20:30:00	20:34:00
313	8	5049	0	0	20:47:30	20:48:30
313	9	4974	0	0	21:20:00	21:30:00
313	10	3755	0	0	22:12:00	22:18:00
313	11	3792	0	0	22:42:00	22:44:00
313	12	3837	0	0	22:58:00	22:59:00
313	13	3978	0	0	23:26:00	23:27:00
313	14	3987	0	0	23:37:00	23:38:00
313	15	1881	0	0	23:49:00	23:49:00
313	16	4013	0	0	23:55:00	
314	1	2071	0	0		16:28:00
314	2	69	0	0	16:40:00	16:41:00
314	3	1283	0	0	16:53:30	16:54:30
314	4	2407	0	0	17:10:00	17:11:00
314	5	2395	0	0	17:25:30	17:26:30
314	6	2385	0	0	17:39:00	17:40:00
314	7	2378	0	0	17:56:00	17:57:00
314	8	2369	0	0	18:06:00	18:07:00
314	9	2512	0	0	18:24:00	18:48:00
314	10	2469	0	0	19:12:48	19:13:18
314	11	3480	0	0	19:31:54	19:33:24
314	12	3502	0	0	19:46:30	19:48:00
314	13	3516	0	0	20:18:00	20:19:00
314	14	1057	0	0	20:51:00	20:52:00
314	15	1053	0	0	21:02:54	21:03:54
314	16	3637	0	0	21:11:18	21:11:48
314	17	3633	0	0	21:21:48	21:22:48
314	18	3629	0	0	21:36:24	21:36:24
314	19	3605	0	0	21:52:00	21:52:00
314	20	3612	0	0	21:58:30	
315	1	3678	0	0		15:55:00
315	2	4159	0	0	16:44:00	16:45:00
315	3	4921	0	0	17:05:30	17:06:30
315	4	4767	0	0	17:15:00	17:16:00
315	5	4584	0	0	17:25:00	17:28:00
315	6	4636	0	0	17:35:00	17:36:00
315	7	5638	0	0	17:39:00	17:40:00
315	8	5595	0	0	17:43:18	17:44:18
315	9	5578	0	0	17:48:00	17:50:00
315	10	5369	0	0	18:04:30	18:05:30
315	11	5885	0	0	18:16:00	18:17:00
315	12	1328	0	0	18:36:00	18:44:00
315	13	1256	0	0	19:01:00	19:03:00
315	14	1308	0	0	19:33:30	19:34:30
315	15	2977	0	0	19:43:00	19:44:00
315	16	2963	0	0	19:58:30	19:59:30
315	17	2902	0	0	20:27:30	20:28:30
315	18	2913	0	0	20:36:30	20:37:30
315	19	3032	0	0	20:50:00	20:53:00
315	20	2767	0	0	20:59:00	21:12:00
315	21	2754	0	0	21:16:00	21:17:30
315	22	2807	0	0	21:36:30	21:37:30
315	23	3673	0	0	21:49:00	21:50:00
315	24	3684	0	0	22:09:00	22:10:00
315	25	3606	0	0	22:21:30	22:21:30
315	26	3613	0	0	22:29:00	
316	1	5301	0	0		16:50:00
316	2	5311	0	0	16:56:00	16:57:00
316	3	5480	0	0	17:12:00	17:14:00
316	4	5564	0	0	17:29:00	17:36:00
316	5	5559	0	0	17:43:00	17:43:30
316	6	5556	0	0	17:47:00	17:50:30
316	7	5594	0	0	18:06:30	18:09:00
316	8	5602	0	0	18:16:00	18:18:00
316	9	4885	0	0	18:33:00	18:43:00
316	10	2754	0	0	20:38:00	20:40:00
316	11	2770	0	0	20:44:00	20:57:00
316	12	3032	0	0	21:03:00	21:06:00
316	13	2890	0	0	21:24:00	21:24:30
316	14	2984	0	0	21:33:30	21:34:00
316	15	2999	0	0	21:44:30	21:45:00
316	16	3021	0	0	21:59:00	22:00:00
316	17	1626	0	0	22:10:54	22:11:54
316	18	1604	0	0	22:19:30	22:20:30
316	19	1589	0	0	22:32:30	22:33:30
316	20	2155	0	0	22:44:00	22:44:00
316	21	1428	0	0	22:48:00	
317	1	4016	0	0		18:49:00
317	2	1881	0	0	18:54:00	18:55:00
317	3	3988	0	0	19:07:00	19:08:00
317	4	3978	0	0	19:17:30	19:18:30
317	5	3837	0	0	19:51:30	19:52:30
317	6	3789	0	0	20:06:00	20:08:00
317	7	3755	0	0	20:32:00	20:36:30
317	8	4972	0	0	21:16:30	21:18:30
317	9	5022	0	0	21:46:00	21:47:00
317	10	5015	0	0	21:59:30	22:00:30
317	11	5945	0	0	22:28:30	22:29:30
317	12	6024	0	0	23:20:00	
318	1	4013	0	0		14:26:00
318	2	1881	0	0	14:31:00	14:32:00
318	3	3988	0	0	14:44:00	14:45:00
318	4	3977	0	0	14:55:30	14:56:30
318	5	3962	0	0	15:07:00	15:08:00
318	6	3119	0	0	15:31:00	15:32:00
318	7	3031	0	0	16:11:00	16:13:00
318	8	2773	0	0	16:19:00	16:32:00
318	9	2754	0	0	16:36:00	16:37:00
318	10	2836	0	0	17:02:30	17:03:30
318	11	2692	0	0	17:16:00	17:17:00
318	12	2642	0	0	17:28:42	17:29:12
318	13	2610	0	0	17:38:00	17:39:00
318	14	1232	0	0	18:08:00	18:09:00
318	15	1220	0	0	18:28:00	18:29:00
318	16	1084	0	0	18:42:00	18:50:00
318	17	1102	0	0	19:10:00	19:11:00
318	18	745	0	0	19:19:00	19:19:00
318	19	968	0	0	19:23:30	19:23:30
318	20	970	0	0	19:29:00	
319	1	207	0	0		06:18:00
319	2	102	0	0	06:41:00	06:42:00
319	3	130	0	0	06:55:30	06:56:30
319	4	1472	0	0	07:21:00	07:21:30
319	5	1459	0	0	07:31:00	07:31:30
319	6	2157	0	0	07:59:30	08:00:00
319	7	1421	0	0	08:04:00	08:15:00
319	8	2156	0	0	08:18:30	08:19:00
319	9	1589	0	0	08:29:00	08:30:00
319	10	1603	0	0	08:42:30	08:43:30
319	11	1626	0	0	08:51:30	08:52:30
319	12	3021	0	0	09:04:00	09:05:00
319	13	2999	0	0	09:18:00	09:18:30
319	14	2984	0	0	09:28:00	09:28:30
319	15	2890	0	0	09:37:00	09:37:30
319	16	3031	0	0	09:55:00	09:57:00
319	17	2771	0	0	10:03:00	10:12:00
319	18	2753	0	0	10:16:00	10:17:00
319	19	2807	0	0	10:37:18	10:38:18
319	20	3674	0	0	10:49:00	10:50:00
319	21	3684	0	0	11:08:00	11:09:00
319	22	3605	0	0	11:21:00	11:25:00
319	23	3630	0	0	11:31:36	11:32:36
319	24	3634	0	0	11:46:24	11:47:24
319	25	3638	0	0	11:57:24	11:57:54
319	26	1054	0	0	12:05:18	12:06:18
319	27	1058	0	0	12:17:30	12:18:30
319	28	3515	0	0	12:53:00	12:54:00
319	29	3559	0	0	13:12:18	13:13:18
319	30	3422	0	0	13:35:30	13:36:30
319	31	4663	0	0	13:50:42	13:51:42
319	32	4642	0	0	14:06:00	14:07:00
319	33	4648	0	0	14:15:54	14:16:54
319	34	4602	0	0	14:35:42	14:35:42
319	35	4548	0	0	14:42:00	14:42:00
319	36	4686	0	0	14:48:00	
320	1	3616	0	0		05:32:00
320	2	3605	0	0	05:38:30	05:39:30
320	3	3683	0	0	05:50:30	05:51:30
320	4	3673	0	0	06:10:30	06:11:30
320	5	2808	0	0	06:22:24	06:23:24
320	6	2753	0	0	06:42:30	06:44:00
320	7	2774	0	0	06:48:00	07:01:00
320	8	3032	0	0	07:07:00	07:09:00
320	9	2913	0	0	07:21:30	07:22:30
320	10	2902	0	0	07:30:30	07:31:30
320	11	2964	0	0	07:58:30	07:59:30
320	12	2978	0	0	08:14:30	08:15:30
320	13	1307	0	0	08:25:00	08:26:00
320	14	1256	0	0	08:57:00	09:10:00
320	15	1328	0	0	09:26:30	09:27:30
320	16	5886	0	0	09:46:00	09:47:00
320	17	5369	0	0	09:58:00	09:59:00
320	18	5579	0	0	10:14:30	10:17:30
320	19	5595	0	0	10:21:30	10:22:30
320	20	5638	0	0	10:26:00	10:27:00
320	21	4636	0	0	10:30:30	10:31:30
320	22	4588	0	0	10:40:00	
321	1	3032	0	0		16:09:00
321	2	2772	0	0	16:15:00	16:20:00
321	3	2754	0	0	16:24:00	16:25:00
321	4	4886	0	0	18:19:00	18:35:00
321	5	5601	0	0	18:52:00	19:06:00
321	6	5593	0	0	19:14:00	19:22:30
321	7	5549	0	0	19:38:00	19:42:00
321	8	5491	0	0	19:58:00	20:17:00
321	9	5516	0	0	20:51:30	20:52:30
321	10	5646	0	0	21:10:00	21:11:00
321	11	5657	0	0	21:18:00	21:19:00
321	12	5666	0	0	21:28:00	21:30:00
321	13	5712	0	0	21:49:00	
322	1	6428	0	0		04:40:00
322	2	6436	0	0	04:43:00	04:44:00
322	3	58	0	0	05:17:00	05:18:00
322	4	64	0	0	05:40:00	05:41:00
322	5	6122	0	0	06:00:00	06:02:00
322	6	5886	0	0	06:20:30	06:23:00
322	7	5369	0	0	06:36:00	06:41:00
322	8	5574	0	0	07:00:00	07:03:00
322	9	5595	0	0	07:07:00	07:08:00
322	10	5637	0	0	07:11:30	07:12:30
322	11	4636	0	0	07:16:00	07:17:00
322	12	4590	0	0	07:26:00	07:45:00
322	13	4767	0	0	07:55:00	07:56:00
322	14	4921	0	0	08:05:00	08:06:00
322	15	4160	0	0	08:41:30	08:45:00
322	16	3677	0	0	09:41:00	09:41:00
322	17	4056	0	0	10:41:00	10:41:00
322	18	3429	0	0	11:03:00	11:05:00
322	19	3103	0	0	11:19:00	11:20:00
322	20	2884	0	0	11:40:00	11:41:00
322	21	2851	0	0	11:54:00	12:01:00
322	22	2840	0	0	12:09:00	12:10:00
322	23	2854	0	0	12:20:00	12:21:00
322	24	1284	0	0	12:37:00	12:38:00
322	25	70	0	0	12:53:00	12:53:00
322	26	2071	0	0	13:08:00	
323	1	6030	0	0		06:18:00
323	2	5807	0	0	06:31:30	06:32:30
323	3	5796	0	0	06:40:30	06:41:30
323	4	5814	0	0	06:44:30	06:45:30
323	5	5776	0	0	06:59:00	07:00:00
323	6	5658	0	0	07:14:00	07:15:00
323	7	5609	0	0	07:51:00	07:52:00
323	8	938	0	0	08:12:00	08:34:00
323	9	249	0	0	08:41:00	08:43:00
323	10	251	0	0	08:49:00	08:51:00
323	11	242	0	0	09:18:00	09:20:00
323	12	258	0	0	09:40:00	09:42:00
323	13	266	0	0	09:57:00	09:59:00
323	14	267	0	0	10:09:00	10:11:00
323	15	244	0	0	10:27:00	10:29:00
323	16	234	0	0	10:40:00	10:55:00
323	17	1556	0	0	11:49:00	12:02:00
323	18	655	0	0	12:07:00	12:10:00
323	19	628	0	0	12:27:00	
324	1	6024	0	0		08:33:00
324	2	2753	0	0	11:27:00	11:27:00
324	3	2771	0	0	11:36:30	11:36:30
324	4	3032	0	0	11:51:00	
325	1	5017	0	0		10:44:00
325	2	5016	0	0	10:56:00	10:56:30
325	3	5022	0	0	11:09:30	11:10:00
325	4	4970	0	0	11:39:00	11:41:00
325	5	3755	0	0	12:19:00	12:22:00
325	6	3794	0	0	12:45:00	12:48:00
325	7	3811	0	0	13:09:00	13:10:00
325	8	2790	0	0	13:26:00	13:27:00
325	9	2764	0	0	13:34:30	13:36:30
325	10	2753	0	0	13:44:30	13:48:00
325	11	2774	0	0	13:52:00	14:01:00
325	12	3032	0	0	14:07:00	14:09:00
325	13	2913	0	0	14:22:00	14:23:00
325	14	2902	0	0	14:30:30	14:31:30
325	15	2963	0	0	14:58:00	14:59:00
325	16	2978	0	0	15:13:30	15:14:00
325	17	1308	0	0	15:24:00	15:25:00
325	18	1298	0	0	15:39:30	15:40:00
325	19	6470	0	0	15:58:00	15:58:30
325	20	6435	0	0	16:15:30	16:15:30
325	21	6433	0	0	16:21:00	
326	1	2754	0	0		13:08:00
326	2	2771	0	0	13:12:00	13:17:00
326	3	3032	0	0	13:23:00	13:24:00
326	4	3101	0	0	13:48:00	13:49:00
326	5	3191	0	0	13:58:00	13:59:00
326	6	3143	0	0	14:14:00	14:16:00
326	7	3198	0	0	14:29:00	14:31:00
326	8	3247	0	0	14:44:00	14:45:00
326	9	3246	0	0	14:56:30	14:58:30
326	10	3260	0	0	15:06:30	15:08:30
326	11	1688	0	0	15:15:30	15:16:30
326	12	3267	0	0	15:23:00	
327	1	3031	0	0		07:25:00
327	2	2772	0	0	07:31:00	07:36:00
327	3	2754	0	0	07:40:00	07:41:00
327	4	5593	0	0	09:26:00	09:26:30
327	5	5562	0	0	09:51:00	09:57:30
327	6	5477	0	0	10:12:00	10:15:00
327	7	5516	0	0	10:34:30	10:35:00
327	8	5646	0	0	10:53:00	10:53:30
327	9	5658	0	0	11:01:30	11:02:00
327	10	5666	0	0	11:13:00	
328	1	2512	0	0		05:06:00
328	2	3337	0	0	05:38:00	05:41:00
328	3	4685	0	0	06:24:00	06:27:00
328	4	4738	0	0	07:05:00	07:10:00
328	5	5166	0	0	07:31:30	07:32:30
328	6	5265	0	0	07:57:30	07:58:30
328	7	5210	0	0	08:11:00	08:12:00
328	8	937	0	0	08:18:00	08:34:00
328	9	250	0	0	08:41:00	08:43:00
328	10	251	0	0	08:49:00	08:51:00
328	11	241	0	0	09:18:00	09:20:00
328	12	257	0	0	09:40:00	09:42:00
328	13	265	0	0	09:57:00	09:59:00
328	14	267	0	0	10:09:00	10:11:00
328	15	243	0	0	10:27:00	10:29:00
328	16	234	0	0	10:40:00	10:55:00
328	17	1556	0	0	11:49:00	12:02:00
328	18	656	0	0	12:07:00	12:10:00
328	19	628	0	0	12:27:00	
329	1	6029	0	0		17:54:00
329	2	5813	0	0	18:22:00	18:23:00
329	3	5775	0	0	18:36:30	18:37:30
329	4	5657	0	0	18:51:30	18:58:30
329	5	5666	0	0	19:08:00	
330	1	4583	0	0		07:31:00
330	2	4635	0	0	07:38:30	07:39:30
330	3	5638	0	0	07:43:00	07:44:00
330	4	5596	0	0	07:48:00	07:49:00
330	5	5579	0	0	07:53:30	07:55:30
330	6	5369	0	0	08:08:30	08:09:00
330	7	5885	0	0	08:19:30	08:20:00
330	8	1256	0	0	08:52:30	08:53:00
330	9	3031	0	0	10:23:00	10:25:00
330	10	2767	0	0	10:31:00	10:44:00
330	11	2753	0	0	10:48:00	10:49:00
330	12	5594	0	0	12:34:30	12:35:00
330	13	5563	0	0	12:58:24	13:09:30
330	14	5476	0	0	13:24:00	13:27:00
330	15	5312	0	0	13:42:30	13:43:00
330	16	5306	0	0	13:50:00	
331	1	4582	0	0		09:55:00
331	2	4636	0	0	10:02:30	10:04:30
331	3	5637	0	0	10:07:30	10:08:30
331	4	5595	0	0	10:12:00	10:13:00
331	5	5572	0	0	10:17:00	10:18:00
331	6	5369	0	0	10:33:00	10:34:00
331	7	768	0	0	11:10:30	11:11:30
331	8	976	0	0	11:42:30	11:45:30
331	9	1007	0	0	12:11:00	12:12:00
331	10	2599	0	0	12:27:00	12:28:00
331	11	2533	0	0	12:42:30	12:43:30
331	12	2516	0	0	13:09:00	13:31:00
331	13	3416	0	0	13:52:00	13:53:00
331	14	3338	0	0	14:06:00	14:07:00
331	15	3455	0	0	14:21:30	14:27:00
331	16	3460	0	0	14:34:30	14:35:30
331	17	4557	0	0	14:46:00	14:49:00
331	18	4547	0	0	15:00:30	15:01:30
331	19	4680	0	0	15:06:00	15:13:00
331	20	4515	0	0	15:28:00	15:29:00
331	21	4857	0	0	15:36:30	15:37:30
331	22	4738	0	0	15:56:00	15:58:00
331	23	4844	0	0	16:08:30	16:09:30
331	24	5168	0	0	16:15:30	16:16:30
331	25	5166	0	0	16:23:00	16:24:00
331	26	5281	0	0	16:39:30	16:40:30
331	27	5238	0	0	17:01:00	17:03:00
331	28	5298	0	0	17:12:30	17:13:30
331	29	5657	0	0	17:47:00	17:49:00
331	30	5666	0	0	17:58:00	
332	1	2519	0	0		14:46:00
332	2	2534	0	0	15:11:30	15:13:00
332	3	2600	0	0	15:28:00	15:29:00
332	4	1007	0	0	15:43:00	15:44:00
332	5	1081	0	0	16:08:00	16:13:00
332	6	1095	0	0	16:16:00	16:17:00
332	7	1104	0	0	16:20:30	16:21:30
332	8	1176	0	0	16:34:30	16:35:30
332	9	1180	0	0	16:43:30	16:44:30
332	10	1190	0	0	16:55:30	16:56:30
332	11	1255	0	0	17:18:00	17:29:00
332	12	1281	0	0	17:48:30	17:49:30
332	13	6435	0	0	18:20:00	18:20:00
332	14	6430	0	0	18:24:00	
333	1	352	0	0		14:51:00
333	2	422	0	0	15:08:00	15:09:00
333	3	398	0	0	15:29:00	15:33:00
333	4	1804	0	0	15:35:30	15:36:30
333	5	487	0	0	15:58:00	15:59:00
333	6	2399	0	0	16:12:00	16:13:00
333	7	2386	0	0	16:24:00	16:25:00
333	8	2402	0	0	16:35:00	16:36:00
333	9	519	0	0	16:54:30	16:55:30
333	10	500	0	0	17:13:00	17:31:00
333	11	618	0	0	17:50:00	17:51:00
333	12	612	0	0	17:59:00	18:00:00
333	13	615	0	0	18:16:00	18:17:00
333	14	641	0	0	18:40:00	18:41:00
333	15	6402	0	0	19:03:30	19:04:30
333	16	6415	0	0	19:11:00	19:12:00
333	17	6413	0	0	19:16:00	19:17:00
333	18	6420	0	0	19:25:00	19:26:00
333	19	6384	0	0	19:47:30	19:48:30
333	20	5370	0	0	20:08:00	20:29:00
333	21	5571	0	0	20:52:30	20:54:30
333	22	5596	0	0	20:59:00	21:00:00
333	23	5637	0	0	21:04:30	21:05:30
333	24	4636	0	0	21:09:30	21:10:30
333	25	4588	0	0	21:20:00	
334	1	6029	0	0		20:05:00
334	2	2754	0	0	22:42:00	22:42:00
334	3	2773	0	0	22:48:30	22:48:30
334	4	3031	0	0	22:59:00	
335	1	1819	0	0		11:51:00
335	2	2060	0	0	12:17:00	12:18:00
335	3	1999	0	0	12:34:00	12:35:00
335	4	398	0	0	12:59:00	
336	1	6029	0	0		09:27:00
336	2	5980	0	0	09:31:30	09:32:30
336	3	6040	0	0	10:09:30	10:10:30
336	4	6061	0	0	10:30:00	10:31:00
336	5	6071	0	0	10:44:30	10:45:30
336	6	6143	0	0	11:23:30	11:24:30
336	7	6152	0	0	11:34:30	11:35:30
336	8	6309	0	0	11:58:00	11:59:00
336	9	6307	0	0	12:14:30	12:15:30
336	10	6312	0	0	12:24:00	
337	1	3031	0	0		16:41:00
337	2	2771	0	0	16:47:00	16:52:00
337	3	2754	0	0	16:56:00	16:57:30
337	4	2807	0	0	17:16:30	17:18:00
337	5	3673	0	0	17:30:00	17:31:30
337	6	3683	0	0	17:50:00	17:51:00
337	7	3605	0	0	18:03:00	18:03:00
337	8	3611	0	0	18:10:00	
338	1	6433	0	0		17:14:00
338	2	6436	0	0	17:17:00	17:18:00
338	3	58	0	0	17:51:30	17:52:30
338	4	64	0	0	18:15:30	18:16:30
338	5	6121	0	0	18:35:00	18:36:00
338	6	5886	0	0	18:55:00	18:59:30
338	7	5369	0	0	19:12:30	19:25:30
338	8	5580	0	0	19:44:30	19:46:30
338	9	5596	0	0	19:50:30	19:51:30
338	10	5638	0	0	19:55:00	19:56:00
338	11	4635	0	0	20:00:00	20:01:00
338	12	4582	0	0	20:09:00	
339	1	4685	0	0		13:10:00
339	2	4548	0	0	13:15:00	13:16:30
339	3	4601	0	0	13:20:30	13:22:00
339	4	4648	0	0	13:40:30	13:41:30
339	5	4642	0	0	13:51:30	13:52:00
339	6	4663	0	0	14:15:00	14:16:00
339	7	3421	0	0	14:29:00	14:30:00
339	8	3559	0	0	14:53:00	14:55:30
339	9	3515	0	0	15:11:18	15:12:18
339	10	1057	0	0	15:45:00	15:46:00
339	11	1054	0	0	15:56:48	15:57:48
339	12	3637	0	0	16:05:18	16:05:48
339	13	3634	0	0	16:15:54	16:16:54
339	14	3629	0	0	16:30:18	16:31:18
339	15	3605	0	0	16:38:30	16:40:30
339	16	3684	0	0	16:51:30	16:52:30
339	17	3674	0	0	17:11:00	17:12:00
339	18	2808	0	0	17:23:00	17:24:00
339	19	2753	0	0	17:43:00	17:44:00
339	20	2768	0	0	17:48:00	17:57:00
339	21	3032	0	0	18:03:00	18:06:00
339	22	2889	0	0	18:24:00	18:24:30
339	23	2983	0	0	18:33:30	18:34:00
339	24	2999	0	0	18:44:30	18:45:00
339	25	3022	0	0	18:59:00	19:00:00
339	26	1626	0	0	19:10:54	19:11:54
339	27	1604	0	0	19:19:30	19:20:30
339	28	1589	0	0	19:32:30	19:33:30
339	29	2158	0	0	19:43:30	19:43:30
339	30	1424	0	0	19:48:00	19:58:00
339	31	2158	0	0	20:01:30	20:02:00
339	32	1460	0	0	20:30:30	20:31:00
339	33	1472	0	0	20:40:30	20:41:00
339	34	130	0	0	20:58:30	20:59:30
339	35	102	0	0	21:13:30	21:14:30
339	36	207	0	0	21:37:00	
340	1	3268	0	0		04:37:00
340	2	1687	0	0	04:44:00	04:44:30
340	3	3259	0	0	04:51:30	04:52:00
340	4	3246	0	0	05:00:00	05:01:00
340	5	3247	0	0	05:12:30	05:13:30
340	6	3198	0	0	05:26:30	05:27:30
340	7	3143	0	0	05:41:00	05:42:00
340	8	3192	0	0	05:57:00	05:57:30
340	9	3101	0	0	06:07:00	06:08:00
340	10	3031	0	0	06:32:00	06:32:00
340	11	2771	0	0	06:39:00	06:39:00
340	12	2754	0	0	06:48:00	
341	1	6026	0	0		13:38:00
341	2	2754	0	0	16:18:30	16:19:30
341	3	2770	0	0	16:24:00	16:29:00
341	4	3032	0	0	16:35:00	16:36:00
341	5	5580	0	0	18:54:30	18:56:00
341	6	5596	0	0	19:00:30	19:01:30
341	7	5637	0	0	19:05:30	19:06:30
341	8	4635	0	0	19:10:30	19:11:30
341	9	4588	0	0	19:20:00	19:23:00
341	10	4159	0	0	20:00:00	20:00:30
341	11	3678	0	0	20:47:00	
342	1	6188	0	0		15:43:00
342	2	6183	0	0	15:53:30	15:54:30
342	3	6182	0	0	15:57:00	16:16:00
342	4	6196	0	0	16:26:00	16:27:00
342	5	6200	0	0	16:41:30	16:42:30
342	6	6201	0	0	16:52:06	16:53:06
342	7	6171	0	0	16:57:30	16:58:30
342	8	6167	0	0	17:04:30	17:07:00
342	9	6161	0	0	17:14:00	17:15:00
342	10	6160	0	0	17:21:30	17:22:30
342	11	6139	0	0	17:49:30	17:50:30
342	12	6130	0	0	17:54:30	17:55:30
342	13	6078	0	0	18:04:30	18:05:30
342	14	6071	0	0	18:18:00	18:19:00
342	15	6061	0	0	18:32:00	18:33:00
342	16	6040	0	0	18:52:00	18:55:00
342	17	5980	0	0	19:35:30	19:36:30
342	18	6027	0	0	19:41:00	
343	1	975	0	0		08:31:00
343	2	968	0	0	08:35:12	08:35:42
343	3	745	0	0	08:39:00	08:39:30
343	4	1101	0	0	08:47:24	08:48:54
343	5	1079	0	0	09:09:00	09:20:00
343	6	1220	0	0	09:31:00	09:31:30
343	7	1231	0	0	09:50:00	09:51:30
343	8	2610	0	0	10:22:00	10:23:00
343	9	2692	0	0	10:43:00	10:44:00
343	10	2836	0	0	10:56:06	10:57:06
343	11	2753	0	0	11:23:00	11:24:00
343	12	2768	0	0	11:28:00	11:41:00
343	13	3032	0	0	11:47:00	11:50:00
343	14	3120	0	0	12:28:30	12:29:30
343	15	3961	0	0	12:52:00	12:53:00
343	16	3978	0	0	13:04:00	13:05:00
343	17	3987	0	0	13:15:00	13:16:00
343	18	1882	0	0	13:27:30	13:27:30
343	19	4011	0	0	13:33:00	
344	1	4583	0	0		08:24:00
344	2	4636	0	0	08:31:30	08:32:30
344	3	5638	0	0	08:36:00	08:37:00
344	4	5596	0	0	08:41:00	08:42:00
344	5	5577	0	0	08:46:00	08:48:00
344	6	5370	0	0	09:06:00	09:07:00
344	7	5886	0	0	09:19:00	09:23:00
344	8	6122	0	0	09:41:30	09:45:00
344	9	64	0	0	10:02:30	10:03:30
344	10	58	0	0	10:26:30	10:27:30
344	11	6435	0	0	11:02:30	11:02:30
344	12	6432	0	0	11:07:00	
345	1	3032	0	0		11:33:00
345	2	2769	0	0	11:39:00	11:44:00
345	3	2754	0	0	11:48:00	11:49:30
345	4	4903	0	0	13:43:00	13:44:00
345	5	5371	0	0	14:04:00	14:05:00
345	6	4737	0	0	14:37:00	14:39:00
345	7	4679	0	0	15:18:00	
346	1	6345	0	0		17:51:00
346	2	6347	0	0	17:54:00	17:55:00
346	3	6331	0	0	18:08:00	18:09:00
346	4	6294	0	0	18:18:00	18:19:00
346	5	6276	0	0	18:28:12	18:29:12
346	6	6265	0	0	18:42:00	18:43:00
346	7	6216	0	0	18:55:00	19:00:00
346	8	6092	0	0	19:13:00	19:14:00
346	9	6086	0	0	19:19:18	19:20:18
346	10	6083	0	0	19:27:30	19:28:30
346	11	6040	0	0	19:43:36	19:44:36
346	12	5973	0	0	19:57:30	19:58:30
346	13	5962	0	0	20:06:00	20:07:00
346	14	5980	0	0	20:30:00	20:33:00
346	15	6031	0	0	20:38:00	20:56:00
346	16	5808	0	0	21:11:00	21:12:00
346	17	5796	0	0	21:20:00	21:21:00
346	18	5522	0	0	21:29:30	21:35:30
346	19	5495	0	0	21:45:00	21:47:30
346	20	5477	0	0	22:04:00	22:07:00
346	21	5311	0	0	22:23:00	22:24:30
346	22	5306	0	0	22:31:00	22:43:00
346	23	5265	0	0	23:38:00	23:48:00
346	24	5209	1	1	00:01:30	00:05:00
346	25	938	1	1	00:11:06	00:11:06
346	26	249	1	1	01:37:00	01:39:00
346	27	233	1	1	03:20:00	04:20:00
346	28	1556	1	1	05:25:00	05:39:00
346	29	655	1	1	05:44:00	05:46:00
346	30	629	1	1	06:13:00	06:15:00
346	31	631	1	1	07:13:00	07:15:00
346	32	634	1	1	07:41:00	07:43:00
346	33	637	1	1	08:30:00	08:33:00
346	34	521	1	1	09:43:00	09:45:00
346	35	524	1	1	10:13:00	10:15:00
346	36	525	1	0	10:24:00	
347	1	922	0	0		20:22:00
347	2	325	0	0	20:37:00	20:46:00
347	3	276	0	0	21:08:00	
348	1	5302	0	0		12:34:00
348	2	5312	0	0	12:40:30	12:41:30
348	3	5480	0	0	12:57:00	13:05:00
348	4	5495	0	0	13:20:00	13:23:00
348	5	5550	0	0	13:44:30	13:46:00
348	6	5593	0	0	13:58:00	14:02:00
348	7	5601	0	0	14:09:00	14:12:30
348	8	4882	0	0	14:27:00	14:37:00
348	9	2754	0	0	16:32:00	16:40:00
348	10	2774	0	0	16:44:00	16:57:00
348	11	3032	0	0	17:03:00	17:06:00
348	12	2890	0	0	17:24:00	17:24:30
348	13	2983	0	0	17:33:30	17:34:00
348	14	3000	0	0	17:44:30	17:45:00
348	15	3021	0	0	17:59:00	18:00:00
348	16	1626	0	0	18:10:54	18:11:54
348	17	1604	0	0	18:19:30	18:20:30
348	18	1589	0	0	18:32:30	18:33:30
348	19	2158	0	0	18:44:00	18:44:00
348	20	1421	0	0	18:48:00	
349	1	3613	0	0		13:30:00
349	2	3606	0	0	13:35:30	13:37:00
349	3	3683	0	0	13:49:00	13:50:30
349	4	3673	0	0	14:09:00	14:10:30
349	5	2808	0	0	14:21:30	14:23:00
349	6	2753	0	0	14:43:00	14:43:00
349	7	2773	0	0	14:48:00	14:48:00
349	8	3032	0	0	14:59:00	
350	1	4583	0	0		12:06:00
350	2	4635	0	0	12:13:30	12:15:30
350	3	5638	0	0	12:19:00	12:20:00
350	4	5595	0	0	12:23:30	12:24:30
350	5	5571	0	0	12:29:00	12:32:00
350	6	5369	0	0	12:47:00	12:48:00
350	7	971	0	0	13:54:00	13:57:00
350	8	1008	0	0	14:23:00	14:24:00
350	9	2534	0	0	14:53:00	14:54:00
350	10	2515	0	0	15:20:00	15:31:00
350	11	3337	0	0	16:03:00	16:04:00
350	12	4680	0	0	16:48:00	17:13:00
350	13	4674	0	0	17:36:00	17:37:00
350	14	4366	0	0	17:57:00	17:58:00
350	15	4464	0	0	18:17:30	18:18:30
350	16	4452	0	0	18:29:30	18:30:30
350	17	4433	0	0	18:43:00	18:49:00
350	18	942	0	0	18:57:00	18:57:00
350	19	271	0	0	19:10:00	19:11:00
350	20	270	0	0	19:19:00	19:20:00
350	21	279	0	0	19:32:00	19:34:00
350	22	278	0	0	20:05:00	20:08:00
350	23	274	0	0	20:32:00	20:34:00
350	24	336	0	0	21:07:00	21:08:00
350	25	332	0	0	21:14:00	
351	1	3032	0	0		10:09:00
351	2	2773	0	0	10:15:00	10:20:00
351	3	2753	0	0	10:23:30	10:25:00
351	4	2517	0	0	12:49:30	
352	1	3032	0	0		19:05:00
352	2	2769	0	0	19:11:00	19:20:00
352	3	2754	0	0	19:24:00	19:26:00
352	4	3874	0	0	20:17:30	20:18:30
352	5	5053	0	0	20:44:30	20:45:30
352	6	5593	0	0	21:17:30	21:19:30
352	7	5556	0	0	21:36:00	21:53:30
352	8	5564	0	0	22:02:00	22:04:00
352	9	5478	0	0	22:19:00	22:22:00
352	10	5237	0	0	23:08:00	23:23:30
352	11	5210	0	0	23:53:00	23:57:00
352	12	937	1	1	00:03:00	01:30:00
352	13	250	1	1	01:37:00	01:39:00
352	14	234	1	1	03:20:00	04:20:00
352	15	1556	1	1	05:25:00	05:39:00
352	16	655	1	1	05:44:00	05:46:00
352	17	630	1	1	06:13:00	06:15:00
352	18	632	1	1	07:13:00	07:15:00
352	19	633	1	1	07:41:00	07:43:00
352	20	637	1	1	08:30:00	08:33:00
352	21	522	1	1	09:43:00	09:45:00
352	22	523	1	1	10:13:00	10:15:00
352	23	526	1	0	10:24:00	
353	1	4585	0	0		07:01:00
353	2	4635	0	0	07:08:30	07:09:30
353	3	5637	0	0	07:13:00	07:14:00
353	4	5595	0	0	07:18:00	07:19:00
353	5	5579	0	0	07:23:00	07:28:00
353	6	5369	0	0	07:48:00	07:51:00
353	7	5886	0	0	08:04:00	08:08:00
353	8	6122	0	0	08:26:30	08:30:30
353	9	63	0	0	08:48:00	08:49:00
353	10	58	0	0	09:12:00	09:13:00
353	11	6436	0	0	09:48:00	09:49:00
353	12	6432	0	0	09:52:00	09:55:00
353	13	4	0	0	10:41:00	10:42:00
353	14	23	0	0	11:01:00	11:02:00
353	15	207	0	0	11:21:00	11:22:00
353	16	101	0	0	11:55:00	11:56:00
353	17	130	0	0	12:09:00	12:10:00
353	18	1471	0	0	12:27:30	12:28:30
353	19	1459	0	0	12:38:00	12:39:00
353	20	2161	0	0	13:07:00	13:07:00
353	21	1421	0	0	13:12:00	
354	1	4313	0	0		21:07:00
354	2	4306	0	0	21:28:00	21:29:00
354	3	4278	0	0	21:47:00	21:49:00
354	4	4240	0	0	22:02:30	22:03:30
354	5	4236	0	0	22:16:00	22:17:00
354	6	4230	0	0	22:23:30	22:24:30
354	7	4688	0	0	22:55:00	23:25:00
354	8	4602	0	0	23:34:00	23:36:00
354	9	4648	0	0	23:55:54	23:57:54
354	10	4663	1	1	00:21:54	00:25:24
354	11	3421	1	1	00:39:00	00:40:00
354	12	3559	1	1	01:03:00	01:08:30
354	13	3515	1	1	01:24:30	01:26:00
354	14	1058	1	1	01:59:00	02:00:00
354	15	1053	1	1	02:11:12	02:12:12
354	16	3638	1	1	02:19:42	02:20:42
354	17	3633	1	1	02:30:42	02:32:42
354	18	3641	1	1	02:42:30	03:02:30
354	19	3630	1	1	03:09:30	03:10:30
354	20	3605	1	1	03:18:00	03:20:00
354	21	3725	1	1	03:50:30	03:51:30
354	22	3873	1	1	04:18:00	04:43:00
354	23	2754	1	1	05:46:00	05:46:00
354	24	2774	1	1	05:52:00	05:52:00
354	25	3032	1	0	06:15:00	
355	1	6434	0	0		15:34:00
355	2	6436	0	0	15:37:00	15:38:00
355	3	6470	0	0	15:55:00	16:00:00
355	4	1298	0	0	16:18:00	16:18:30
355	5	1308	0	0	16:33:00	16:34:00
355	6	2977	0	0	16:43:00	16:43:30
355	7	2963	0	0	16:59:00	17:00:00
355	8	2901	0	0	17:27:30	17:28:30
355	9	2913	0	0	17:37:00	17:38:00
355	10	3031	0	0	17:51:00	17:53:00
355	11	2768	0	0	17:59:00	18:20:00
355	12	2753	0	0	18:24:00	18:25:00
355	13	4884	0	0	20:19:00	20:37:00
355	14	5601	0	0	20:53:00	20:54:00
355	15	5593	0	0	21:01:30	21:02:30
355	16	5550	0	0	21:15:30	21:18:30
355	17	5495	0	0	21:37:30	21:40:30
355	18	5478	0	0	21:56:00	21:59:00
355	19	5470	0	0	22:06:00	22:08:00
355	20	5311	0	0	22:17:00	22:18:00
355	21	5302	0	0	22:24:30	22:27:00
355	22	5166	0	0	22:53:00	23:03:00
355	23	5282	0	0	23:19:30	23:20:00
355	24	5265	0	0	23:31:00	
356	1	10	0	0		18:14:00
356	2	12	0	0	18:25:00	18:26:00
356	3	639	0	0	18:48:00	18:49:00
356	4	419	0	0	19:06:00	19:11:00
356	5	1283	0	0	19:39:00	19:40:00
356	6	2513	0	0	21:03:00	21:06:00
356	7	2344	0	0	21:30:36	21:34:36
356	8	2444	0	0	22:00:12	22:01:12
356	9	2464	0	0	22:14:48	22:15:48
356	10	2715	0	0	22:29:18	22:30:18
356	11	2724	0	0	22:43:18	22:44:18
356	12	2609	0	0	23:07:30	23:08:30
356	13	2691	0	0	23:29:00	23:30:00
356	14	2836	0	0	23:42:30	23:43:30
356	15	2754	1	1	00:09:30	00:11:00
356	16	2767	1	1	00:15:00	00:16:00
356	17	3032	1	0	00:22:00	
357	1	6023	0	0		16:23:00
357	2	5979	0	0	16:28:00	16:29:00
357	3	6040	0	0	17:09:00	17:10:00
357	4	6084	0	0	17:29:00	17:30:00
357	5	6214	0	0	17:56:00	18:00:00
357	6	6286	0	0	18:49:30	18:50:30
357	7	6289	0	0	18:57:30	18:58:30
357	8	5078	0	0	19:11:30	19:12:30
357	9	5070	0	0	19:28:42	19:29:42
357	10	5060	0	0	19:37:00	19:38:00
357	11	5058	0	0	19:42:00	19:52:00
357	12	5157	0	0	20:33:30	20:34:30
357	13	5159	0	0	20:43:30	20:44:30
357	14	5161	0	0	20:54:30	20:55:30
357	15	2246	0	0	21:05:00	21:06:00
357	16	5132	0	0	21:17:00	21:18:00
357	17	5123	0	0	21:28:30	21:31:30
357	18	1768	0	0	21:34:30	21:35:30
357	19	1770	0	0	21:38:00	21:39:00
357	20	5140	0	0	22:09:00	22:10:00
357	21	5137	0	0	22:21:00	
358	1	6030	0	0		04:39:00
358	2	5808	0	0	04:53:30	04:56:30
358	3	5796	0	0	05:03:30	05:07:00
358	4	5522	0	0	05:15:00	05:16:00
358	5	5495	0	0	05:24:30	05:25:30
358	6	5477	0	0	05:41:00	05:44:00
358	7	5470	0	0	05:50:30	05:51:30
358	8	5311	0	0	06:00:00	06:01:00
358	9	5308	0	0	06:07:00	06:12:00
358	10	4838	0	0	06:42:00	06:43:00
358	11	4738	0	0	07:07:00	07:13:00
358	12	4857	0	0	07:31:30	07:32:30
358	13	4515	0	0	07:40:00	07:41:00
358	14	4688	0	0	07:56:00	08:07:00
358	15	4548	0	0	08:11:30	08:12:30
358	16	4558	0	0	08:23:30	08:24:30
358	17	3459	0	0	08:34:30	08:35:30
358	18	3456	0	0	08:43:00	08:44:06
358	19	3338	0	0	08:58:06	08:59:06
358	20	3416	0	0	09:12:06	09:13:06
358	21	2521	0	0	09:35:00	09:43:00
358	22	2386	0	0	10:25:00	10:30:00
358	23	1284	0	0	11:10:00	11:35:00
358	24	3103	0	0	13:11:00	13:20:00
358	25	3429	0	0	13:35:00	13:37:00
358	26	4056	0	0	14:05:00	
359	1	4690	0	0		09:31:00
359	2	4169	0	0	10:04:00	10:05:00
359	3	4206	0	0	10:15:30	10:16:30
359	4	4201	0	0	10:29:00	10:30:00
359	5	4105	0	0	10:42:00	10:45:00
359	6	431	0	0	11:24:00	11:26:00
359	7	429	0	0	11:43:00	11:45:00
359	8	542	0	0	13:09:00	
360	1	2107	0	0		17:40:00
360	2	2080	0	0	17:57:00	18:05:00
360	3	1838	0	0	18:14:42	18:15:42
360	4	1820	0	0	18:22:00	18:23:00
360	5	1833	0	0	18:28:00	18:29:00
360	6	1843	0	0	18:37:06	18:38:36
360	7	2061	0	0	18:49:36	18:51:06
360	8	2511	0	0	19:15:00	19:44:00
360	9	2534	0	0	20:09:00	20:10:00
360	10	2600	0	0	20:24:00	20:25:00
360	11	1008	0	0	20:39:00	20:40:00
360	12	971	0	0	21:04:00	21:06:00
360	13	767	0	0	21:35:00	21:36:00
360	14	6357	0	0	21:52:30	21:53:30
360	15	5369	0	0	22:16:00	22:21:00
360	16	5468	0	0	22:30:30	22:31:30
360	17	5577	0	0	22:37:30	22:39:30
360	18	5595	0	0	22:43:00	22:44:00
360	19	5637	0	0	22:47:00	22:48:00
360	20	4635	0	0	22:51:00	22:52:00
360	21	4589	0	0	22:59:00	
361	1	4584	0	0		06:35:00
361	2	4636	0	0	06:43:30	06:44:30
361	3	5638	0	0	06:48:06	06:49:30
361	4	5596	0	0	06:53:00	06:54:00
361	5	5576	0	0	06:58:00	07:00:00
361	6	3031	0	0	09:24:00	09:25:00
361	7	2771	0	0	09:31:00	09:40:00
361	8	2753	0	0	09:44:00	09:45:30
361	9	6031	0	0	12:27:00	12:35:00
361	10	5899	0	0	14:17:00	14:18:00
361	11	5915	0	0	14:33:00	
362	1	6030	0	0		12:12:00
362	2	5938	0	0	12:51:00	13:03:00
362	3	5945	0	0	13:14:30	13:15:30
362	4	5017	0	0	13:30:30	13:39:00
362	5	5015	0	0	13:49:00	13:53:30
362	6	5021	0	0	14:06:00	14:07:00
362	7	4973	0	0	14:35:00	14:49:00
362	8	3755	0	0	15:27:00	15:30:00
362	9	3790	0	0	15:54:00	15:56:00
362	10	3837	0	0	16:09:30	16:10:30
362	11	3977	0	0	16:40:00	16:41:00
362	12	3988	0	0	16:51:00	16:52:00
362	13	1881	0	0	17:03:00	17:03:00
362	14	4016	0	0	17:09:00	
363	1	3678	0	0		07:10:00
363	2	4160	0	0	07:57:00	07:57:30
363	3	4589	0	0	08:33:00	08:37:00
363	4	4636	0	0	08:44:30	08:45:30
363	5	5637	0	0	08:49:00	08:50:00
363	6	5595	0	0	08:54:00	08:55:00
363	7	5576	0	0	08:59:30	09:02:00
363	8	3032	0	0	11:24:00	11:25:00
363	9	2769	0	0	11:31:00	11:40:00
363	10	2753	0	0	11:44:00	11:45:00
363	11	6026	0	0	14:27:00	
364	1	332	0	0		14:45:00
364	2	336	0	0	14:51:00	14:53:00
364	3	273	0	0	15:25:00	15:27:00
364	4	277	0	0	15:52:00	15:54:00
364	5	280	0	0	16:23:00	16:27:00
364	6	270	0	0	16:38:00	16:39:00
364	7	272	0	0	16:47:00	16:48:00
364	8	941	0	0	17:02:00	17:02:00
364	9	4433	0	0	17:11:00	17:17:00
364	10	4452	0	0	17:29:30	17:30:30
364	11	4464	0	0	17:41:00	17:42:00
364	12	4366	0	0	18:01:00	18:02:00
364	13	4674	0	0	18:23:00	18:24:00
364	14	4689	0	0	18:46:00	19:10:00
364	15	3337	0	0	19:55:00	19:56:00
364	16	2513	0	0	20:29:00	20:40:00
364	17	2534	0	0	21:06:00	21:07:00
364	18	1007	0	0	21:35:00	21:36:00
364	19	971	0	0	22:01:00	22:04:00
364	20	5370	0	0	23:11:00	23:12:00
364	21	5577	0	0	23:27:00	23:30:00
364	22	5596	0	0	23:34:00	23:35:00
364	23	5638	0	0	23:38:30	23:39:30
364	24	4636	0	0	23:43:00	23:45:00
364	25	4581	0	0	23:53:00	
365	1	2518	0	0		18:46:00
365	2	2533	0	0	19:11:00	19:13:00
365	3	2599	0	0	19:27:30	19:29:00
365	4	1007	0	0	19:43:30	19:44:30
365	5	1078	0	0	20:12:00	20:14:00
365	6	1096	0	0	20:17:00	20:18:00
365	7	1104	0	0	20:21:30	20:22:30
365	8	1176	0	0	20:35:30	20:36:30
365	9	1179	0	0	20:44:30	20:45:30
365	10	1190	0	0	20:56:30	20:57:30
365	11	1255	0	0	21:19:00	21:20:00
365	12	1282	0	0	21:40:00	21:41:54
365	13	6435	0	0	22:07:00	22:07:00
365	14	6429	0	0	22:12:00	
366	1	6032	0	0		06:39:00
366	2	5807	0	0	06:56:00	06:57:00
366	3	5796	0	0	07:04:30	07:09:00
366	4	5522	0	0	07:17:30	07:18:30
366	5	5496	0	0	07:27:30	07:29:00
366	6	5434	0	0	07:48:30	07:50:30
366	7	5306	0	0	08:05:00	08:06:00
366	8	4838	0	0	08:36:00	08:39:00
366	9	4737	0	0	09:02:00	09:09:00
366	10	4858	0	0	09:28:00	09:29:00
366	11	4515	0	0	09:37:00	09:38:00
366	12	4690	0	0	09:53:00	09:58:00
366	13	4558	0	0	10:13:30	10:14:30
366	14	3460	0	0	10:25:30	10:26:30
366	15	3455	0	0	10:35:00	10:36:00
366	16	3338	0	0	10:52:00	10:53:00
366	17	3416	0	0	11:06:00	11:07:00
366	18	2521	0	0	11:29:00	11:42:00
366	19	2422	0	0	12:04:54	12:05:54
366	20	683	0	0	12:16:48	12:17:48
366	21	694	0	0	12:34:00	12:35:00
366	22	499	0	0	12:50:00	12:53:00
366	23	701	0	0	13:18:00	13:19:00
366	24	2448	0	0	13:45:00	13:48:00
366	25	3104	0	0	14:26:00	
367	1	6345	0	0		07:40:00
367	2	178	0	0	10:15:00	10:30:00
367	3	175	0	0	11:59:00	12:02:00
367	4	157	0	0	13:24:00	13:27:00
367	5	160	0	0	15:09:00	15:12:00
367	6	166	0	0	15:47:00	15:49:00
367	7	153	0	0	18:00:00	
368	1	1421	0	0		06:15:00
368	2	2155	0	0	06:18:30	06:19:00
368	3	1590	0	0	06:29:00	06:30:00
368	4	1603	0	0	06:42:30	06:43:30
368	5	1626	0	0	06:51:30	06:52:30
368	6	3022	0	0	07:04:00	07:05:00
368	7	2999	0	0	07:18:00	07:18:30
368	8	2983	0	0	07:28:00	07:28:30
368	9	2890	0	0	07:37:00	07:37:30
368	10	3032	0	0	07:55:00	07:57:00
368	11	2772	0	0	08:03:00	08:12:00
368	12	2753	0	0	08:16:00	08:17:00
368	13	2807	0	0	08:36:00	08:37:00
368	14	3673	0	0	08:48:30	08:49:30
368	15	3684	0	0	09:08:00	09:09:00
368	16	3606	0	0	09:21:00	09:25:00
368	17	3629	0	0	09:31:36	09:32:36
368	18	3634	0	0	09:46:24	09:47:24
368	19	3638	0	0	09:57:24	09:57:54
368	20	1053	0	0	10:05:18	10:06:18
368	21	1057	0	0	10:17:30	10:18:30
368	22	3516	0	0	10:53:00	10:54:30
368	23	3560	0	0	11:12:12	11:13:12
368	24	3422	0	0	11:35:30	11:36:30
368	25	4663	0	0	11:51:00	11:52:00
368	26	4648	0	0	12:23:12	12:24:12
368	27	4601	0	0	12:43:00	12:43:00
368	28	4547	0	0	12:48:24	12:48:24
368	29	4684	0	0	12:54:00	
369	1	1424	0	0		15:15:00
369	2	2160	0	0	15:19:00	15:20:00
369	3	1460	0	0	15:49:30	15:50:30
369	4	1471	0	0	16:00:00	16:01:00
369	5	129	0	0	16:18:00	16:19:00
369	6	102	0	0	16:33:00	16:36:00
369	7	208	0	0	17:01:00	17:02:00
369	8	23	0	0	17:22:30	17:23:30
369	9	3	0	0	17:42:00	17:43:00
369	10	6427	0	0	18:30:00	18:50:00
369	11	6436	0	0	18:53:00	18:54:00
369	12	57	0	0	19:27:30	19:28:30
369	13	64	0	0	19:57:36	19:58:36
369	14	6121	0	0	20:16:30	20:17:30
369	15	5886	0	0	20:36:00	20:37:00
369	16	5369	0	0	20:50:00	20:51:00
369	17	5576	0	0	21:09:00	21:13:00
369	18	5596	0	0	21:17:30	21:18:30
369	19	5638	0	0	21:22:00	21:23:00
369	20	4636	0	0	21:26:30	21:27:30
369	21	4590	0	0	21:36:00	
370	1	5916	0	0		08:27:00
370	2	5900	0	0	08:42:00	08:43:00
370	3	6030	0	0	10:23:00	10:27:00
370	4	2754	0	0	13:14:30	13:15:30
370	5	2773	0	0	13:20:00	13:29:00
370	6	3031	0	0	13:35:00	13:37:00
370	7	1255	0	0	15:02:30	15:03:00
370	8	5885	0	0	15:36:30	15:37:00
370	9	5370	0	0	15:47:30	15:48:00
370	10	5578	0	0	16:01:00	16:01:00
370	11	5595	0	0	16:07:00	16:07:00
370	12	5637	0	0	16:12:00	16:12:00
370	13	4635	0	0	16:17:00	16:17:00
370	14	4588	0	0	16:27:00	
371	1	2640	0	0		05:50:00
371	2	2631	0	0	06:02:18	06:03:18
371	3	2609	0	0	06:24:00	06:25:00
371	4	2658	0	0	06:47:30	06:51:00
371	5	2661	0	0	06:58:30	06:59:00
371	6	3646	0	0	07:15:42	07:16:42
371	7	3643	0	0	07:21:48	07:22:48
371	8	3641	0	0	07:27:30	07:30:30
371	9	3630	0	0	07:37:00	07:38:00
371	10	3606	0	0	07:45:30	07:47:30
371	11	3727	0	0	08:24:00	08:29:00
371	12	3753	0	0	08:56:00	09:00:30
371	13	4882	0	0	09:29:30	09:41:00
371	14	5602	0	0	09:57:00	09:58:00
371	15	5594	0	0	10:06:00	10:07:00
371	16	5556	0	0	10:23:00	10:27:00
371	17	5560	0	0	10:30:30	10:31:00
371	18	5563	0	0	10:37:00	10:42:00
371	19	5482	0	0	11:01:00	
372	1	3267	0	0		10:37:00
372	2	1687	0	0	10:44:00	10:44:30
372	3	3259	0	0	10:51:30	10:52:00
372	4	3246	0	0	11:00:00	11:01:00
372	5	3247	0	0	11:12:30	11:13:30
372	6	3198	0	0	11:26:30	11:27:30
372	7	3144	0	0	11:41:00	11:42:00
372	8	3191	0	0	11:58:00	11:58:30
372	9	3101	0	0	12:08:00	12:09:00
372	10	3032	0	0	12:33:30	12:33:30
372	11	2767	0	0	12:42:00	12:42:00
372	12	2753	0	0	12:52:00	
373	1	4973	0	0		13:27:00
373	2	5050	0	0	13:58:00	13:59:00
373	3	5593	0	0	14:32:00	14:33:00
373	4	2009	0	0	14:47:00	14:51:00
373	5	5360	0	0	15:03:30	15:04:00
373	6	5434	0	0	15:15:30	15:16:00
373	7	5432	0	0	15:21:30	15:22:00
373	8	5482	0	0	15:33:00	
374	1	10	0	0		18:54:00
374	2	12	0	0	19:04:00	19:06:00
374	3	640	0	0	19:28:30	19:29:30
374	4	419	0	0	19:47:00	19:48:00
374	5	69	0	0	20:05:00	20:06:00
374	6	2078	0	0	20:19:00	20:23:00
374	7	70	0	0	20:34:00	20:35:00
374	8	1284	0	0	20:49:00	20:50:00
374	9	2407	0	0	21:05:00	21:07:00
374	10	2396	0	0	21:22:00	21:23:00
374	11	2385	0	0	21:35:00	21:40:00
374	12	2378	0	0	21:56:00	21:57:00
374	13	2370	0	0	22:06:00	22:07:00
374	14	2514	0	0	22:26:00	22:51:00
374	15	2344	0	0	23:12:00	23:13:00
374	16	2444	0	0	23:33:00	23:34:00
374	17	2463	0	0	23:46:00	23:47:00
374	18	2716	1	1	00:00:00	00:01:00
374	19	2724	1	1	00:15:30	00:16:30
374	20	2609	1	1	00:39:30	00:40:30
374	21	2657	1	1	01:03:18	01:04:18
374	22	2661	1	1	01:12:12	01:13:12
374	23	3646	1	1	01:31:42	01:32:42
374	24	3641	1	1	01:41:30	01:44:30
374	25	3633	1	1	01:54:30	02:00:00
374	26	3637	1	1	02:10:00	02:11:00
374	27	1049	1	1	02:21:30	02:22:30
374	28	4906	1	1	03:33:00	03:35:00
374	29	5602	1	1	03:55:00	03:59:30
374	30	5593	1	1	04:07:00	04:08:00
374	31	5549	1	1	04:21:30	04:22:30
374	32	5521	1	1	04:36:00	04:38:30
374	33	5795	1	1	04:48:30	04:49:30
374	34	5808	1	1	04:57:00	04:58:00
374	35	6026	1	1	05:13:00	06:00:00
374	36	5851	1	1	06:34:00	06:35:00
374	37	1774	1	1	06:58:00	06:59:00
374	38	5865	1	1	07:04:30	07:05:30
374	39	2020	1	1	07:29:30	07:30:30
374	40	5900	1	1	08:03:30	08:06:00
374	41	5913	1	1	08:17:30	08:18:30
374	42	5916	1	0	08:25:00	
375	1	4469	0	0		15:49:00
375	2	4464	0	0	16:02:00	16:20:00
375	3	4438	0	0	16:22:30	16:23:30
375	4	4365	0	0	16:41:30	16:55:00
375	5	4368	0	0	17:08:00	17:09:00
375	6	4673	0	0	17:33:00	17:34:00
375	7	4687	0	0	18:03:00	
376	1	6432	0	0		11:34:00
376	2	6436	0	0	11:37:00	11:38:00
376	3	6470	0	0	11:55:00	12:00:00
376	4	1297	0	0	12:19:00	12:19:30
376	5	1307	0	0	12:34:00	12:35:00
376	6	2977	0	0	12:44:00	12:44:30
376	7	2963	0	0	13:00:00	13:01:00
376	8	2902	0	0	13:28:00	13:29:00
376	9	2913	0	0	13:37:00	13:38:30
376	10	3031	0	0	13:51:00	13:53:00
376	11	2771	0	0	13:59:00	14:08:00
376	12	2753	0	0	14:12:00	14:14:30
376	13	2763	0	0	14:21:30	14:22:30
376	14	2790	0	0	14:30:00	14:32:00
376	15	3812	0	0	14:48:00	14:49:00
376	16	3794	0	0	15:10:00	15:12:00
376	17	3755	0	0	15:36:00	15:45:00
376	18	4969	0	0	16:32:00	16:34:00
376	19	5022	0	0	17:03:00	17:03:30
376	20	5015	0	0	17:16:30	17:19:00
376	21	5945	0	0	17:49:00	17:52:00
376	22	6023	0	0	18:48:00	
377	1	4683	0	0		09:20:00
377	2	4548	0	0	09:24:36	09:25:36
377	3	4601	0	0	09:29:18	09:30:18
377	4	4648	0	0	09:49:54	09:50:54
377	5	4663	0	0	10:16:06	10:17:06
377	6	3422	0	0	10:30:12	10:31:12
377	7	3560	0	0	10:53:48	10:54:48
377	8	3516	0	0	11:11:06	11:12:36
377	9	1058	0	0	11:44:36	11:46:00
377	10	1053	0	0	11:56:54	11:57:54
377	11	3637	0	0	12:05:06	12:06:06
377	12	3633	0	0	12:15:48	12:16:48
377	13	3629	0	0	12:30:06	12:31:06
377	14	3605	0	0	12:38:30	12:41:00
377	15	3684	0	0	12:51:42	12:52:42
377	16	3674	0	0	13:11:24	13:12:24
377	17	2807	0	0	13:23:06	13:24:06
377	18	2754	0	0	13:42:30	13:44:00
377	19	2767	0	0	13:48:00	13:57:00
377	20	3032	0	0	14:03:00	14:06:00
377	21	2890	0	0	14:23:30	14:24:30
377	22	2984	0	0	14:33:00	14:34:00
377	23	2999	0	0	14:44:00	14:45:00
377	24	3022	0	0	14:59:00	15:00:00
377	25	1625	0	0	15:10:30	15:11:30
377	26	1604	0	0	15:19:30	15:20:30
377	27	1589	0	0	15:32:30	15:33:30
377	28	2155	0	0	15:43:30	15:43:30
377	29	1425	0	0	15:48:00	
378	1	6031	0	0		07:56:00
378	2	5921	0	0	08:03:12	08:11:06
378	3	2287	0	0	08:13:12	08:13:42
378	4	5925	0	0	08:19:00	08:31:00
378	5	5928	0	0	08:35:42	08:36:12
378	6	5930	0	0	08:39:18	08:39:48
378	7	5932	0	0	08:42:12	08:42:42
378	8	5933	0	0	08:46:36	08:47:06
378	9	5935	0	0	08:50:24	08:50:54
378	10	5937	0	0	08:53:00	08:55:00
378	11	5940	0	0	08:58:48	08:59:18
378	12	5941	0	0	09:01:30	09:02:00
378	13	5943	0	0	09:05:30	09:06:00
378	14	5946	0	0	09:09:48	09:10:48
378	15	5948	0	0	09:15:54	09:16:24
378	16	5033	0	0	09:22:00	09:28:00
378	17	5017	0	0	09:33:00	09:33:36
378	18	5020	0	0	09:38:18	09:38:48
378	19	5016	0	0	09:45:00	09:46:00
378	20	5021	0	0	09:58:30	09:59:30
378	21	4969	0	0	10:28:00	10:47:00
378	22	3789	0	0	12:32:00	12:34:00
378	23	3838	0	0	12:48:30	12:49:30
378	24	3978	0	0	13:16:30	13:17:30
378	25	3988	0	0	13:27:30	13:28:30
378	26	1882	0	0	13:39:30	13:39:30
378	27	4013	0	0	13:45:00	
379	1	2074	0	0		11:23:00
379	2	70	0	0	11:36:00	11:37:00
379	3	1283	0	0	11:50:00	11:51:00
379	4	2407	0	0	12:06:00	12:07:00
379	5	2395	0	0	12:21:00	12:22:00
379	6	2386	0	0	12:34:00	12:36:00
379	7	2377	0	0	12:52:00	12:53:00
379	8	2370	0	0	13:02:00	13:03:00
379	9	2522	0	0	13:20:00	13:36:00
379	10	2343	0	0	13:55:30	13:56:30
379	11	2443	0	0	14:15:30	14:17:30
379	12	2464	0	0	14:30:12	14:31:12
379	13	2716	0	0	14:44:30	14:45:30
379	14	2723	0	0	14:58:06	14:59:06
379	15	2610	0	0	15:22:00	15:23:00
379	16	2692	0	0	15:43:00	15:44:00
379	17	2836	0	0	15:56:00	15:57:00
379	18	2754	0	0	16:22:30	16:24:00
379	19	2771	0	0	16:28:00	16:41:00
379	20	3031	0	0	16:47:00	16:49:00
379	21	3120	0	0	17:29:00	17:30:00
379	22	3962	0	0	17:52:00	17:53:00
379	23	3977	0	0	18:04:00	18:05:00
379	24	3988	0	0	18:15:00	18:16:00
379	25	1882	0	0	18:27:30	18:28:30
379	26	4011	0	0	18:33:00	18:36:00
379	27	4007	0	0	18:45:00	18:46:00
379	28	4041	0	0	19:10:30	19:11:30
379	29	4054	0	0	19:22:30	19:22:30
379	30	4049	0	0	19:28:00	
380	1	2071	0	0		04:35:00
380	2	69	0	0	04:46:30	04:47:30
380	3	1284	0	0	05:01:00	05:02:00
380	4	2408	0	0	05:17:00	05:18:00
380	5	2396	0	0	05:32:00	05:33:00
380	6	2385	0	0	05:45:00	05:46:00
380	7	2377	0	0	06:01:00	06:02:00
380	8	2369	0	0	06:10:30	06:11:30
380	9	2521	0	0	06:28:30	06:31:30
380	10	3416	0	0	06:53:00	06:54:00
380	11	3337	0	0	07:07:00	07:08:00
380	12	3456	0	0	07:22:30	07:23:30
380	13	3460	0	0	07:31:00	07:32:00
380	14	4558	0	0	07:42:00	07:43:00
380	15	4685	0	0	07:58:00	08:12:00
380	16	4515	0	0	08:28:00	08:29:00
380	17	4857	0	0	08:36:00	08:39:00
380	18	4737	0	0	08:58:00	09:02:00
380	19	4838	0	0	09:28:00	09:29:00
380	20	5306	0	0	09:59:00	10:00:00
380	21	5311	0	0	10:06:00	10:07:00
380	22	5470	0	0	10:16:00	10:17:00
380	23	5475	0	0	10:24:00	10:27:00
380	24	5495	0	0	10:40:30	10:42:30
380	25	5521	0	0	10:51:00	10:53:00
380	26	5796	0	0	11:01:00	11:02:00
380	27	5808	0	0	11:09:00	11:10:00
380	28	6026	0	0	11:24:00	11:29:00
380	29	5979	0	0	11:34:00	11:36:30
380	30	5962	0	0	11:52:00	11:53:00
380	31	5973	0	0	11:59:30	12:00:30
380	32	6039	0	0	12:13:00	12:14:30
380	33	6084	0	0	12:29:00	12:30:00
380	34	6086	0	0	12:36:30	12:37:30
380	35	6091	0	0	12:42:00	12:43:00
380	36	6213	0	0	12:55:00	12:58:00
380	37	6266	0	0	13:09:00	13:10:00
380	38	6275	0	0	13:22:00	13:23:00
380	39	6293	0	0	13:32:00	13:33:00
380	40	6331	0	0	13:42:00	13:43:00
380	41	6348	0	0	13:55:30	13:55:30
380	42	6345	0	0	14:00:00	
381	1	3032	0	0		07:49:00
381	2	2774	0	0	07:55:00	08:00:00
381	3	2753	0	0	08:03:30	08:05:00
381	4	2519	0	0	10:18:00	10:30:00
381	5	2385	0	0	11:08:30	11:09:30
381	6	1283	0	0	11:49:00	11:50:00
381	7	69	0	0	12:02:30	12:02:30
381	8	2073	0	0	12:15:00	
382	1	6024	0	0		04:12:00
382	2	5937	0	0	04:43:00	04:48:30
382	3	5946	0	0	05:00:30	05:07:30
382	4	5017	0	0	05:22:30	05:24:30
382	5	5016	0	0	05:35:30	05:44:00
382	6	5021	0	0	05:57:00	05:58:00
382	7	4974	0	0	06:27:00	06:47:00
382	8	3755	0	0	07:26:00	07:28:00
382	9	3794	0	0	07:51:00	07:54:00
382	10	3838	0	0	08:08:00	08:09:00
382	11	3978	0	0	08:37:00	08:38:00
382	12	3987	0	0	08:48:00	08:49:00
382	13	1882	0	0	09:00:00	09:00:00
382	14	4016	0	0	09:06:00	
383	1	6023	0	0		15:33:00
383	2	5808	0	0	15:47:00	15:48:00
383	3	5796	0	0	15:55:00	15:56:00
383	4	5814	0	0	15:59:00	16:01:30
383	5	5776	0	0	16:15:00	16:16:00
383	6	5657	0	0	16:30:00	16:31:00
383	7	5610	0	0	17:18:00	17:19:00
383	8	938	0	0	17:40:00	18:07:00
383	9	250	0	0	18:13:00	18:16:00
383	10	251	0	0	18:22:00	18:24:00
383	11	241	0	0	18:51:00	18:53:00
383	12	247	0	0	19:22:00	19:25:00
383	13	264	0	0	19:46:00	19:48:00
383	14	284	0	0	20:09:00	20:11:00
383	15	278	0	0	20:46:00	20:48:00
383	16	274	0	0	21:09:00	21:11:00
383	17	335	0	0	21:45:00	21:46:00
383	18	332	0	0	21:52:00	
384	1	1629	0	0		15:50:00
384	2	1612	0	0	15:59:00	16:01:00
384	3	925	0	0	16:50:00	16:50:00
384	4	1751	0	0	17:07:00	17:13:00
384	5	2317	0	0	17:37:18	17:38:18
384	6	1820	0	0	17:50:00	17:51:00
384	7	2512	0	0	18:33:00	18:36:00
384	8	2715	0	0	19:21:00	19:22:00
384	9	2609	0	0	19:57:00	19:58:00
384	10	2753	0	0	20:55:00	20:55:00
384	11	2772	0	0	21:00:00	21:00:00
384	12	3032	0	0	21:19:00	
385	1	4582	0	0		12:31:00
385	2	4635	0	0	12:38:30	12:39:30
385	3	5637	0	0	12:43:00	12:44:00
385	4	5596	0	0	12:48:00	12:49:00
385	5	5577	0	0	12:53:30	12:55:30
385	6	5369	0	0	13:08:30	13:09:00
385	7	5886	0	0	13:19:30	13:20:00
385	8	1256	0	0	13:52:30	13:53:00
385	9	3031	0	0	15:23:00	15:25:00
385	10	2768	0	0	15:31:00	15:44:00
385	11	2754	0	0	15:48:00	15:49:00
385	12	5593	0	0	17:34:00	17:36:30
385	13	5563	0	0	18:00:00	18:11:30
385	14	5475	0	0	18:27:00	18:30:00
385	15	5312	0	0	18:45:00	18:45:30
385	16	5304	0	0	18:52:00	
386	1	9	0	0		11:53:00
386	2	12	0	0	12:03:00	12:05:00
386	3	639	0	0	12:28:00	12:29:00
386	4	420	0	0	12:47:00	12:48:00
386	5	69	0	0	13:05:00	13:06:00
386	6	2072	0	0	13:18:00	13:27:00
386	7	69	0	0	13:40:00	13:41:00
386	8	1283	0	0	13:55:00	13:56:00
386	9	2408	0	0	14:11:00	14:12:00
386	10	2396	0	0	14:26:00	14:27:00
386	11	2385	0	0	14:39:00	14:40:00
386	12	2377	0	0	14:55:00	14:56:00
386	13	2369	0	0	15:05:00	15:06:00
386	14	2518	0	0	15:24:00	15:40:00
386	15	2343	0	0	15:51:00	15:52:00
386	16	2444	0	0	16:11:30	16:15:30
386	17	2464	0	0	16:26:54	16:27:54
386	18	2715	0	0	16:41:00	16:44:00
386	19	2723	0	0	16:57:00	16:58:00
386	20	2609	0	0	17:22:00	17:23:00
386	21	2691	0	0	17:43:00	17:44:00
386	22	2836	0	0	17:56:00	17:57:00
386	23	2754	0	0	18:22:30	18:24:00
386	24	2773	0	0	18:28:00	18:57:00
386	25	3031	0	0	19:03:00	19:04:30
386	26	2161	0	0	20:23:00	20:24:00
386	27	1424	0	0	20:27:00	20:52:00
386	28	1499	0	0	21:09:30	21:10:30
386	29	1640	0	0	21:24:00	21:25:00
386	30	1658	0	0	21:47:30	21:48:30
386	31	350	0	0	22:11:30	22:13:30
386	32	276	0	0	22:37:00	
387	1	5665	0	0		19:37:00
387	2	5658	0	0	19:46:00	19:53:00
387	3	5775	0	0	20:07:00	20:08:00
387	4	5814	0	0	20:21:30	20:22:30
387	5	6031	0	0	20:47:00	
388	1	3032	0	0		18:49:00
388	2	2770	0	0	18:55:00	19:04:00
388	3	2753	0	0	19:08:00	19:09:00
388	4	1231	0	0	20:33:00	20:34:00
388	5	1077	0	0	21:04:00	21:05:00
388	6	745	0	0	21:28:30	21:28:30
388	7	967	0	0	21:32:30	21:32:30
388	8	978	0	0	21:38:00	
389	1	5017	0	0		06:19:00
389	2	5054	0	0	06:46:00	06:47:00
389	3	3874	0	0	07:13:00	07:14:00
389	4	3726	0	0	07:39:00	07:40:00
389	5	3606	0	0	08:07:00	08:09:00
389	6	3630	0	0	08:15:36	08:16:36
389	7	3641	0	0	08:23:00	08:29:30
389	8	3643	0	0	08:34:36	08:35:36
389	9	3645	0	0	08:40:48	08:41:48
389	10	2661	0	0	09:02:48	09:03:18
389	11	2657	0	0	09:10:48	09:11:48
389	12	2609	0	0	09:34:30	09:36:30
389	13	2724	0	0	09:59:30	10:00:30
389	14	2716	0	0	10:13:30	10:14:30
389	15	2464	0	0	10:27:30	10:28:30
389	16	2444	0	0	10:41:30	10:42:30
389	17	2343	0	0	11:02:00	11:03:00
389	18	2513	0	0	11:22:00	11:36:00
389	19	2370	0	0	11:53:00	11:54:00
389	20	2378	0	0	12:03:00	12:04:00
389	21	2386	0	0	12:20:00	12:21:00
389	22	2396	0	0	12:32:30	12:33:30
389	23	2408	0	0	12:48:00	12:49:00
389	24	1283	0	0	13:05:00	13:06:00
389	25	69	0	0	13:19:00	13:19:00
389	26	2071	0	0	13:34:00	
390	1	6345	0	0		15:05:00
390	2	6347	0	0	15:08:00	15:09:00
390	3	6294	0	0	15:30:00	15:31:00
390	4	6276	0	0	15:40:00	15:41:00
390	5	6265	0	0	15:53:00	15:54:00
390	6	6212	0	0	16:05:00	16:11:00
390	7	6083	0	0	16:33:00	16:34:00
390	8	6039	0	0	16:49:00	16:50:30
390	9	5962	0	0	17:08:00	17:09:00
390	10	5979	0	0	17:29:00	17:30:00
390	11	6030	0	0	17:35:00	17:55:00
390	12	5482	0	0	18:50:00	18:56:00
390	13	5470	0	0	19:03:00	19:04:30
390	14	5312	0	0	19:13:00	19:14:00
390	15	5305	0	0	19:20:00	19:28:00
390	16	5166	0	0	19:54:00	19:55:00
390	17	4738	0	0	20:16:00	20:18:00
390	18	4681	0	0	20:57:00	
391	1	397	0	0		14:23:00
391	2	1804	0	0	14:25:30	14:26:30
391	3	487	0	0	14:45:30	14:46:30
391	4	2400	0	0	14:58:30	14:59:30
391	5	2385	0	0	15:10:00	15:13:00
391	6	2511	0	0	15:57:00	
392	1	4584	0	0		08:53:00
392	2	4635	0	0	09:01:30	09:02:30
392	3	5638	0	0	09:07:00	09:08:00
392	4	5595	0	0	09:12:30	09:13:30
392	5	5574	0	0	09:18:00	09:20:00
392	6	5370	0	0	09:43:00	09:44:00
392	7	5886	0	0	09:59:00	10:00:00
392	8	6048	0	0	10:12:36	10:13:36
392	9	1339	0	0	10:33:30	10:34:30
392	10	1154	0	0	11:05:00	11:25:00
392	11	1189	0	0	11:58:30	12:00:00
392	12	1211	0	0	12:18:00	12:22:30
392	13	1216	0	0	12:46:00	12:47:00
392	14	2671	0	0	13:12:30	13:13:30
392	15	2667	0	0	13:45:00	14:13:00
392	16	2632	0	0	14:32:00	14:33:00
392	17	2609	0	0	14:54:00	14:55:00
392	18	2657	0	0	15:17:42	15:22:42
392	19	2661	0	0	15:30:24	15:31:24
392	20	3646	0	0	15:49:24	15:53:24
392	21	3644	0	0	15:58:30	16:00:30
392	22	3641	0	0	16:05:00	16:06:30
392	23	3634	0	0	16:16:12	16:17:12
392	24	3637	0	0	16:27:12	16:28:12
392	25	1049	0	0	16:39:00	16:40:00
392	26	4884	0	0	17:43:00	17:45:00
392	27	4906	0	0	17:49:30	17:50:30
392	28	5360	0	0	18:25:00	18:34:00
392	29	5433	0	0	18:45:00	18:46:00
392	30	5431	0	0	18:52:00	18:53:00
392	31	5479	0	0	19:11:00	
393	1	499	0	0		19:19:00
393	2	702	0	0	19:45:00	19:46:00
393	3	2447	0	0	20:18:00	20:20:00
393	4	3103	0	0	20:58:00	21:00:00
393	5	3429	0	0	21:15:00	21:34:00
393	6	3269	0	0	22:11:00	
394	1	2073	0	0		14:26:00
394	2	70	0	0	14:38:00	14:39:00
394	3	1283	0	0	14:53:00	14:54:00
394	4	2407	0	0	15:09:00	15:10:00
394	5	2395	0	0	15:25:00	15:26:00
394	6	2386	0	0	15:38:00	15:40:00
394	7	2377	0	0	15:56:00	15:57:00
394	8	2370	0	0	16:06:00	16:08:00
394	9	2514	0	0	16:25:00	16:35:00
394	10	2344	0	0	16:54:30	16:55:00
394	11	2444	0	0	17:15:00	17:16:00
394	12	2463	0	0	17:28:00	17:28:30
394	13	2716	0	0	17:41:00	17:42:00
394	14	2724	0	0	17:55:30	17:56:30
394	15	2609	0	0	18:18:00	18:19:00
394	16	2658	0	0	18:47:06	18:48:06
394	17	2661	0	0	18:55:36	18:56:06
394	18	3645	0	0	19:12:48	19:13:48
394	19	3643	0	0	19:18:54	19:19:54
394	20	3641	0	0	19:24:30	19:42:00
394	21	3629	0	0	19:48:18	19:49:18
394	22	3605	0	0	19:57:00	20:01:30
394	23	3726	0	0	20:29:00	20:30:00
394	24	3874	0	0	20:54:00	20:55:00
394	25	5054	0	0	21:22:00	21:23:00
394	26	6032	0	0	22:49:00	
395	1	6188	0	0		19:52:00
395	2	6183	0	0	20:02:30	20:03:30
395	3	6181	0	0	20:06:00	20:25:00
395	4	6195	0	0	20:35:00	20:36:00
395	5	6200	0	0	20:46:30	20:47:30
395	6	6201	0	0	20:51:00	20:52:00
395	7	6172	0	0	20:56:00	20:57:00
395	8	6167	0	0	21:03:00	21:04:00
395	9	6161	0	0	21:11:00	21:12:00
395	10	6160	0	0	21:19:00	21:26:00
395	11	6139	0	0	21:53:00	21:54:00
395	12	6130	0	0	21:58:00	21:59:00
395	13	6077	0	0	22:06:30	22:07:30
395	14	6071	0	0	22:20:00	22:21:00
395	15	6062	0	0	22:35:30	22:36:30
395	16	6039	0	0	22:55:30	22:57:00
395	17	5973	0	0	23:12:00	23:13:00
395	18	5962	0	0	23:20:30	23:21:30
395	19	5980	0	0	23:40:30	23:41:30
395	20	6030	0	0	23:46:00	
396	1	6031	0	0		11:09:00
396	2	5808	0	0	11:25:00	11:26:00
396	3	5795	0	0	11:35:00	11:36:00
396	4	5522	0	0	11:45:30	11:46:30
396	5	5550	0	0	12:00:00	12:01:00
396	6	5594	0	0	12:17:30	12:21:00
396	7	5602	0	0	12:29:00	12:30:00
396	8	4910	0	0	12:51:00	12:52:30
396	9	5404	0	0	13:30:00	13:31:00
396	10	3548	0	0	13:57:00	13:58:00
396	11	3541	0	0	14:22:00	14:23:00
396	12	3531	0	0	14:31:00	14:33:00
396	13	3535	0	0	14:47:48	14:49:48
396	14	3559	0	0	15:06:12	15:07:12
396	15	3502	0	0	15:25:36	15:26:36
396	16	3479	0	0	15:38:00	15:39:00
396	17	2470	0	0	15:59:30	16:00:30
396	18	2514	0	0	16:24:30	
397	1	3032	0	0		23:12:00
397	2	2773	0	0	23:18:00	23:28:00
397	3	2754	0	0	23:32:00	23:33:00
397	4	2807	0	0	23:51:36	23:52:36
397	5	3674	1	1	00:04:00	00:05:00
397	6	3684	1	1	00:24:00	00:25:00
397	7	3605	1	1	00:36:00	00:36:00
397	8	3611	1	0	00:43:00	
398	1	6024	0	0		06:45:00
398	2	2754	0	0	09:36:30	09:36:30
398	3	2774	0	0	09:44:30	09:44:30
398	4	3032	0	0	09:59:00	
399	1	659	0	0		05:36:00
399	2	657	0	0	06:11:00	06:13:00
399	3	656	0	0	07:58:00	08:00:00
399	4	1556	0	0	08:05:00	08:10:00
399	5	234	0	0	09:04:00	09:15:00
399	6	244	0	0	09:26:00	09:28:00
399	7	268	0	0	09:44:00	09:46:00
399	8	266	0	0	09:55:00	09:57:00
399	9	258	0	0	10:13:00	10:15:00
399	10	242	0	0	10:36:00	10:38:00
399	11	252	0	0	11:05:00	11:07:00
399	12	250	0	0	11:13:00	11:16:00
399	13	938	0	0	11:23:00	11:35:00
399	14	5610	0	0	11:53:30	11:54:30
399	15	5657	0	0	12:29:00	12:30:00
399	16	5775	0	0	12:45:00	13:03:00
399	17	5814	0	0	13:16:30	13:17:30
399	18	5795	0	0	13:21:00	13:22:00
399	19	5808	0	0	13:29:30	13:30:30
399	20	6024	0	0	13:46:00	
400	1	2748	0	0		09:40:00
400	2	2609	0	0	10:50:30	10:51:30
400	3	2515	0	0	12:58:00	13:05:00
400	4	1751	0	0	14:57:30	15:02:00
400	5	2075	0	0	16:30:00	
401	1	6345	0	0		13:44:00
401	2	6347	0	0	13:46:30	13:47:30
401	3	6331	0	0	14:00:00	14:01:00
401	4	6293	0	0	14:09:30	14:10:30
401	5	6276	0	0	14:19:30	14:20:30
401	6	6265	0	0	14:32:30	14:33:30
401	7	6215	0	0	14:45:00	14:48:00
401	8	6091	0	0	15:01:00	15:02:00
401	9	6086	0	0	15:06:30	15:07:30
401	10	6083	0	0	15:14:00	15:15:00
401	11	6040	0	0	15:31:00	15:32:30
401	12	5974	0	0	15:44:30	15:45:30
401	13	5962	0	0	15:52:00	15:53:00
401	14	5980	0	0	16:09:00	16:16:00
401	15	6026	0	0	16:21:00	16:35:00
401	16	5807	0	0	16:52:36	16:57:30
401	17	5796	0	0	17:04:30	17:07:30
401	18	5521	0	0	17:15:30	17:16:30
401	19	5496	0	0	17:25:00	17:26:30
401	20	5479	0	0	17:41:00	17:45:00
401	21	5312	0	0	17:59:30	18:00:30
401	22	5307	0	0	18:07:00	18:12:00
401	23	4838	0	0	18:42:00	18:43:30
401	24	4737	0	0	19:05:00	19:07:00
401	25	4858	0	0	19:25:00	19:26:00
401	26	4515	0	0	19:33:00	19:34:00
401	27	4685	0	0	19:50:00	20:05:00
401	28	4557	0	0	20:19:00	20:20:00
401	29	3459	0	0	20:30:00	20:31:00
401	30	3455	0	0	20:39:00	20:40:00
401	31	3338	0	0	20:54:06	20:55:06
401	32	3415	0	0	21:08:00	21:09:00
401	33	2519	0	0	21:31:00	21:41:00
401	34	2370	0	0	21:58:42	21:59:42
401	35	2378	0	0	22:08:42	22:09:42
401	36	2386	0	0	22:25:00	22:26:00
401	37	2395	0	0	22:38:00	22:39:00
401	38	2408	0	0	22:53:00	22:54:00
401	39	1283	0	0	23:09:00	23:12:00
401	40	70	0	0	23:24:00	23:24:00
401	41	2077	0	0	23:36:00	
402	1	2074	0	0		06:27:00
402	2	70	0	0	06:40:00	06:44:30
402	3	1284	0	0	06:57:00	06:58:00
402	4	2407	0	0	07:13:12	07:14:12
402	5	2396	0	0	07:28:30	07:29:30
402	6	2385	0	0	07:41:00	07:42:00
402	7	2377	0	0	07:57:30	07:58:30
402	8	2370	0	0	08:07:06	08:08:06
402	9	2522	0	0	08:25:00	08:46:00
402	10	2469	0	0	09:08:30	09:09:30
402	11	3480	0	0	09:29:00	09:30:00
402	12	3502	0	0	09:42:30	09:43:30
402	13	3560	0	0	10:00:48	10:01:48
402	14	3535	0	0	10:17:30	10:18:30
402	15	3532	0	0	10:30:00	10:31:00
402	16	4808	0	0	10:47:06	10:48:06
402	17	4794	0	0	10:59:30	11:00:30
402	18	5388	0	0	11:13:24	11:14:24
402	19	5372	0	0	11:32:00	11:33:00
402	20	5359	0	0	11:54:30	12:01:00
402	21	5433	0	0	12:11:30	12:19:00
402	22	5495	0	0	12:39:00	12:41:30
402	23	5521	0	0	12:50:00	12:51:00
402	24	5796	0	0	12:59:30	13:00:30
402	25	5808	0	0	13:07:30	13:10:30
402	26	6029	0	0	13:25:00	13:28:00
402	27	5851	0	0	14:06:00	14:07:00
402	28	1774	0	0	14:40:30	14:41:30
402	29	5865	0	0	14:46:30	14:52:30
402	30	2020	0	0	15:36:18	15:37:18
402	31	5899	0	0	16:04:06	16:14:30
402	32	5914	0	0	16:24:00	16:25:00
402	33	5915	0	0	16:31:00	
403	1	5666	0	0		05:40:00
403	2	5658	0	0	05:49:00	05:50:00
403	3	5298	0	0	06:22:30	06:23:30
403	4	5237	0	0	06:34:00	06:35:00
403	5	5281	0	0	06:54:00	06:55:00
403	6	5165	0	0	07:10:00	07:11:00
403	7	5167	0	0	07:19:00	07:21:00
403	8	4843	0	0	07:27:00	07:29:00
403	9	4738	0	0	07:39:30	07:49:30
403	10	4857	0	0	08:10:00	08:11:00
403	11	4515	0	0	08:18:30	08:19:30
403	12	4682	0	0	08:35:00	08:57:00
403	13	4557	0	0	09:13:00	09:14:00
403	14	3460	0	0	09:24:00	09:25:00
403	15	3456	0	0	09:33:00	09:37:00
403	16	3337	0	0	09:52:00	09:53:00
403	17	3415	0	0	10:06:00	10:07:00
403	18	2515	0	0	10:29:00	10:40:00
403	19	2533	0	0	11:06:00	11:07:00
403	20	2600	0	0	11:21:30	11:22:30
403	21	1007	0	0	11:37:00	11:38:00
403	22	974	0	0	12:03:00	12:09:00
403	23	767	0	0	12:41:00	12:42:00
403	24	5369	0	0	13:19:00	13:22:00
403	25	5576	0	0	13:37:30	13:41:00
403	26	5596	0	0	13:45:00	13:46:00
403	27	5638	0	0	13:49:30	13:50:30
403	28	4635	0	0	13:54:00	13:55:00
403	29	4582	0	0	14:03:00	
404	1	971	0	0		07:36:00
404	2	968	0	0	07:40:12	07:40:42
404	3	746	0	0	07:44:00	07:44:54
404	4	1078	0	0	08:12:12	08:16:00
404	5	1232	0	0	08:45:24	08:46:30
404	6	2753	0	0	10:11:00	10:11:00
404	7	2769	0	0	10:16:00	10:16:00
404	8	3031	0	0	10:27:00	
405	1	2610	0	0		06:25:00
405	2	2658	0	0	06:47:30	06:51:00
405	3	2662	0	0	06:58:30	06:59:00
405	4	3645	0	0	07:15:42	07:16:42
405	5	3644	0	0	07:21:48	07:22:48
405	6	3641	0	0	07:27:30	07:30:30
405	7	3630	0	0	07:37:00	07:38:00
405	8	3606	0	0	07:45:30	07:47:30
405	9	3727	0	0	08:24:00	08:25:00
405	10	3753	0	0	08:59:30	09:00:30
405	11	4883	0	0	09:29:30	09:41:00
405	12	5602	0	0	09:57:00	09:58:00
405	13	5593	0	0	10:06:00	10:07:00
405	14	5556	0	0	10:23:00	10:27:00
405	15	5559	0	0	10:30:30	10:31:00
405	16	5563	0	0	10:37:00	10:42:00
405	17	5482	0	0	11:01:00	
406	1	3032	0	0		06:49:00
406	2	2774	0	0	06:55:00	07:00:00
406	3	2753	0	0	07:03:30	07:05:00
406	4	2609	0	0	08:01:30	08:02:30
406	5	2716	0	0	08:38:00	08:39:00
406	6	2521	0	0	09:24:00	09:27:00
406	7	1820	0	0	10:10:00	10:11:00
406	8	2318	0	0	10:23:00	10:24:00
406	9	1752	0	0	10:47:00	10:50:00
406	10	926	0	0	11:09:00	11:12:00
406	11	1611	0	0	12:06:00	12:09:00
406	12	1630	0	0	12:16:00	
407	1	4584	0	0		17:27:00
407	2	4635	0	0	17:34:00	17:35:00
407	3	5638	0	0	17:38:00	17:39:00
407	4	5596	0	0	17:42:30	17:43:30
407	5	5577	0	0	17:47:30	17:49:30
407	6	5369	0	0	18:04:30	18:05:30
407	7	5885	0	0	18:16:00	18:17:00
407	8	1328	0	0	18:36:00	18:44:00
407	9	1255	0	0	19:01:00	19:03:00
407	10	1307	0	0	19:33:30	19:34:30
407	11	2977	0	0	19:43:06	19:44:06
407	12	2964	0	0	19:58:30	19:59:30
407	13	2902	0	0	20:27:30	20:28:30
407	14	2913	0	0	20:36:30	20:37:30
407	15	3031	0	0	20:50:00	20:53:00
407	16	2774	0	0	20:59:00	21:16:00
407	17	2754	0	0	21:20:00	21:21:30
407	18	2807	0	0	21:41:30	21:44:00
407	19	3674	0	0	21:55:30	21:58:00
407	20	3683	0	0	22:17:00	22:19:00
407	21	3605	0	0	22:30:00	22:30:00
407	22	3614	0	0	22:39:00	
408	1	332	0	0		10:49:00
408	2	336	0	0	10:55:00	10:57:00
408	3	273	0	0	11:30:00	11:32:00
408	4	278	0	0	11:52:00	11:54:00
408	5	279	0	0	12:23:00	12:27:00
408	6	269	0	0	12:38:00	12:39:00
408	7	272	0	0	12:47:00	12:48:00
408	8	941	0	0	13:02:00	13:02:00
408	9	4433	0	0	13:11:00	13:17:00
408	10	4452	0	0	13:29:30	13:30:30
408	11	4464	0	0	13:41:00	13:42:00
408	12	4366	0	0	14:01:00	14:02:00
408	13	4674	0	0	14:23:00	14:24:00
408	14	4682	0	0	14:46:00	15:10:00
408	15	3338	0	0	15:55:00	15:56:00
408	16	2511	0	0	16:28:00	16:40:00
408	17	2533	0	0	17:06:00	17:07:00
408	18	1008	0	0	17:35:00	17:36:00
408	19	970	0	0	18:01:00	18:04:00
408	20	5369	0	0	19:11:00	19:12:00
408	21	5576	0	0	19:27:00	19:30:00
408	22	5596	0	0	19:34:00	19:35:00
408	23	5638	0	0	19:38:30	19:39:30
408	24	4636	0	0	19:43:00	19:45:00
408	25	4582	0	0	19:53:00	
409	1	3031	0	0		20:49:00
409	2	2770	0	0	20:55:00	21:00:00
409	3	2754	0	0	21:03:30	21:05:00
409	4	2835	0	0	21:30:30	21:31:30
409	5	2692	0	0	21:44:30	21:45:30
409	6	2610	0	0	22:05:30	22:06:30
409	7	2723	0	0	22:29:00	22:30:00
409	8	2715	0	0	22:43:00	22:44:00
409	9	2463	0	0	22:57:30	22:58:30
409	10	2443	0	0	23:11:00	23:12:00
409	11	2343	0	0	23:31:00	23:32:00
409	12	2515	0	0	23:42:00	
410	1	3610	0	0		04:21:00
410	2	3606	0	0	04:26:30	04:31:00
410	3	3683	0	0	04:42:00	04:44:00
410	4	3673	0	0	05:03:00	05:04:00
410	5	2807	0	0	05:15:00	05:16:00
410	6	2754	0	0	05:35:00	05:36:00
410	7	2769	0	0	05:40:00	05:57:00
410	8	3032	0	0	06:03:00	06:06:00
410	9	2890	0	0	06:24:00	06:24:30
410	10	2983	0	0	06:33:30	06:34:00
410	11	2999	0	0	06:44:30	06:45:00
410	12	3021	0	0	06:59:00	07:00:00
410	13	1625	0	0	07:10:54	07:11:54
410	14	1604	0	0	07:19:30	07:20:30
410	15	1589	0	0	07:32:30	07:33:30
410	16	2156	0	0	07:43:30	07:43:30
410	17	1427	0	0	07:48:00	
411	1	1425	0	0		04:58:00
411	2	2162	0	0	05:02:00	05:03:00
411	3	1459	0	0	05:32:30	05:33:30
411	4	1471	0	0	05:43:00	05:44:00
411	5	129	0	0	06:01:00	06:02:00
411	6	102	0	0	06:15:00	06:16:00
411	7	207	0	0	06:50:00	06:50:00
411	8	23	0	0	08:20:00	08:20:00
411	9	4	0	0	08:40:00	08:41:00
411	10	6430	0	0	09:28:00	09:54:00
411	11	6435	0	0	09:57:00	09:58:00
411	12	57	0	0	10:44:30	10:45:30
411	13	63	0	0	11:09:00	11:10:00
411	14	6122	0	0	11:28:30	11:29:30
411	15	5885	0	0	11:48:30	11:49:30
411	16	5369	0	0	12:02:00	12:08:00
411	17	5576	0	0	12:26:00	12:28:00
411	18	5595	0	0	12:32:00	12:33:00
411	19	5637	0	0	12:36:30	12:37:30
411	20	4635	0	0	12:41:00	12:42:00
411	21	4582	0	0	12:50:00	12:53:00
411	22	4767	0	0	13:03:30	13:04:30
411	23	4921	0	0	13:14:00	13:16:00
411	24	4159	0	0	13:38:00	13:40:00
411	25	3678	0	0	14:38:00	14:38:00
411	26	4055	0	0	15:36:00	15:36:00
411	27	3430	0	0	16:01:00	16:02:00
411	28	3104	0	0	16:16:00	16:17:00
411	29	2883	0	0	16:37:00	16:44:00
411	30	2851	0	0	16:57:00	16:58:00
411	31	2840	0	0	17:06:00	17:07:00
411	32	2854	0	0	17:17:30	17:18:30
411	33	1283	0	0	17:35:00	17:36:00
411	34	69	0	0	17:52:00	17:52:00
411	35	2074	0	0	18:07:00	
412	1	2072	0	0		17:26:00
412	2	70	0	0	17:39:00	17:40:00
412	3	1284	0	0	17:54:00	17:55:00
412	4	2407	0	0	18:09:30	18:10:30
412	5	2395	0	0	18:24:36	18:25:36
412	6	2386	0	0	18:37:00	18:38:00
412	7	2378	0	0	18:54:00	18:55:00
412	8	2369	0	0	19:04:00	19:05:00
412	9	2517	0	0	19:22:00	19:37:00
412	10	2343	0	0	19:57:00	19:58:00
412	11	2444	0	0	20:17:00	20:18:00
412	12	2463	0	0	20:29:12	20:30:12
412	13	2715	0	0	20:43:00	20:44:00
412	14	2724	0	0	20:57:00	20:58:00
412	15	2610	0	0	21:22:00	21:23:00
412	16	2691	0	0	21:43:00	21:44:00
412	17	2835	0	0	21:56:00	21:57:00
412	18	2753	0	0	22:22:30	22:22:30
412	19	2773	0	0	22:28:00	22:28:00
412	20	3032	0	0	22:43:00	
413	1	4688	0	0		11:20:00
413	2	4548	0	0	11:24:48	11:25:48
413	3	4601	0	0	11:29:48	11:30:48
413	4	4647	0	0	11:49:30	11:50:30
413	5	4642	0	0	12:01:00	12:02:00
413	6	4663	0	0	12:16:18	12:17:18
413	7	3422	0	0	12:30:30	12:31:30
413	8	3560	0	0	12:54:30	12:55:30
413	9	3515	0	0	13:11:18	13:12:18
413	10	1058	0	0	13:45:00	13:46:00
413	11	1053	0	0	13:56:48	13:57:48
413	12	3638	0	0	14:05:18	14:05:48
413	13	3634	0	0	14:15:48	14:16:48
413	14	3629	0	0	14:30:18	14:31:18
413	15	3606	0	0	14:38:30	14:40:30
413	16	3683	0	0	14:51:30	14:52:30
413	17	3674	0	0	15:11:00	15:12:00
413	18	2808	0	0	15:22:30	15:23:30
413	19	2753	0	0	15:43:00	15:44:00
413	20	2767	0	0	15:48:00	15:57:00
413	21	3031	0	0	16:03:00	16:06:00
413	22	2889	0	0	16:24:00	16:24:30
413	23	2983	0	0	16:33:30	16:34:00
413	24	3000	0	0	16:44:30	16:45:00
413	25	3021	0	0	16:59:00	17:00:00
413	26	1626	0	0	17:10:54	17:11:54
413	27	1603	0	0	17:19:54	17:20:54
413	28	1589	0	0	17:32:54	17:33:54
413	29	2155	0	0	17:44:00	17:44:00
413	30	1423	0	0	17:48:00	
414	1	3032	0	0		11:21:00
414	2	3102	0	0	11:47:00	11:49:00
414	3	3192	0	0	11:58:00	11:58:30
414	4	3143	0	0	12:14:00	12:15:00
414	5	3197	0	0	12:28:00	12:29:00
414	6	3248	0	0	12:42:00	12:43:00
414	7	3245	0	0	12:54:30	12:55:30
414	8	3259	0	0	13:03:30	13:04:00
414	9	1687	0	0	13:11:00	13:11:30
414	10	3268	0	0	13:18:00	
415	1	6216	0	0		09:16:00
415	2	6266	0	0	09:28:00	09:29:00
415	3	6285	0	0	10:01:30	10:02:30
415	4	6290	0	0	10:08:30	10:09:30
415	5	5078	0	0	10:20:30	10:21:30
415	6	5069	0	0	10:33:00	10:34:00
415	7	5060	0	0	10:41:00	10:43:00
415	8	5058	0	0	10:46:00	10:53:00
415	9	5087	0	0	11:09:30	11:10:30
415	10	4089	0	0	11:32:30	11:34:00
415	11	4016	0	0	12:00:00	12:26:00
415	12	1882	0	0	12:31:00	12:32:00
415	13	3988	0	0	12:44:00	12:45:00
415	14	3977	0	0	12:55:30	12:56:30
415	15	3961	0	0	13:07:00	13:08:00
415	16	3119	0	0	13:31:00	13:32:06
415	17	3031	0	0	14:11:00	14:13:00
415	18	2770	0	0	14:19:00	14:32:00
415	19	2754	0	0	14:35:30	14:37:00
415	20	2836	0	0	15:02:30	15:03:30
415	21	2691	0	0	15:16:30	15:17:30
415	22	2610	0	0	15:37:00	15:38:00
415	23	1231	0	0	16:08:00	16:09:00
415	24	1219	0	0	16:28:00	16:29:00
415	25	1084	0	0	16:42:00	16:44:00
415	26	1101	0	0	17:04:00	17:05:00
415	27	745	0	0	17:13:00	17:14:00
415	28	967	0	0	17:17:30	17:18:30
415	29	971	0	0	17:23:00	17:33:00
415	30	959	0	0	17:50:00	17:52:00
415	31	513	0	0	18:07:00	18:08:00
415	32	499	0	0	18:37:00	19:16:00
415	33	527	0	0	19:50:00	19:53:00
415	34	535	0	0	20:13:00	20:14:00
415	35	543	0	0	20:31:30	20:32:30
415	36	1633	0	0	20:55:00	20:56:00
415	37	1284	0	0	21:33:00	21:34:00
415	38	70	0	0	21:54:00	21:54:00
415	39	2075	0	0	22:11:00	
416	1	2073	0	0		14:20:00
416	2	69	0	0	14:32:30	14:33:30
416	3	1283	0	0	14:49:00	14:50:00
416	4	2854	0	0	15:08:00	15:09:00
416	5	2839	0	0	15:20:00	15:22:00
416	6	2851	0	0	15:31:00	15:32:00
416	7	2884	0	0	15:45:00	15:47:00
416	8	3104	0	0	16:07:00	16:18:00
416	9	3430	0	0	16:32:00	16:34:00
416	10	4055	0	0	16:58:00	16:58:00
416	11	3678	0	0	18:00:00	18:00:00
416	12	4160	0	0	19:06:00	19:08:00
416	13	4921	0	0	19:39:00	19:40:00
416	14	4768	0	0	19:48:30	19:49:30
416	15	4587	0	0	20:02:00	20:23:00
416	16	4636	0	0	20:30:30	20:31:30
416	17	5637	0	0	20:35:00	20:36:00
416	18	5596	0	0	20:39:30	20:40:30
416	19	5578	0	0	20:45:00	20:48:00
416	20	5370	0	0	21:06:00	21:07:00
416	21	5886	0	0	21:20:00	21:21:00
416	22	6121	0	0	21:39:30	21:43:30
416	23	64	0	0	22:01:00	22:02:00
416	24	57	0	0	22:25:00	22:31:00
416	25	6436	0	0	23:06:00	23:06:00
416	26	6433	0	0	23:10:00	
417	1	5915	0	0		11:38:00
417	2	5914	0	0	11:44:00	11:59:30
417	3	5899	0	0	12:09:00	12:10:00
417	4	2019	0	0	12:32:42	12:33:42
417	5	5866	0	0	12:56:30	12:57:30
417	6	6029	0	0	14:22:00	14:27:00
417	7	5946	0	0	15:12:30	15:13:30
417	8	5016	0	0	15:48:30	15:56:00
417	9	5022	0	0	16:09:30	16:10:30
417	10	4971	0	0	16:40:00	16:42:00
417	11	3756	0	0	17:20:00	17:21:30
417	12	3793	0	0	17:45:00	17:47:00
417	13	3812	0	0	18:09:30	18:10:30
417	14	2789	0	0	18:26:30	18:29:00
417	15	2754	0	0	18:43:00	18:48:00
417	16	2769	0	0	18:52:00	19:01:00
417	17	3032	0	0	19:07:00	19:09:00
417	18	2913	0	0	19:22:30	19:23:30
417	19	2901	0	0	19:31:30	19:32:30
417	20	2963	0	0	20:00:00	20:01:00
417	21	2977	0	0	20:16:00	20:17:00
417	22	1307	0	0	20:26:00	20:27:00
417	23	1256	0	0	20:58:00	21:07:00
417	24	1328	0	0	21:24:30	21:25:30
417	25	5886	0	0	21:44:00	21:45:00
417	26	5370	0	0	21:56:30	21:57:30
417	27	5577	0	0	22:13:00	22:16:00
417	28	5596	0	0	22:20:00	22:21:00
417	29	5638	0	0	22:24:30	22:25:30
417	30	4636	0	0	22:29:00	22:31:00
417	31	4585	0	0	22:39:00	
418	1	2072	0	0		05:49:00
418	2	70	0	0	06:01:00	06:02:00
418	3	1283	0	0	06:18:00	06:19:00
418	4	2853	0	0	06:36:00	06:37:00
418	5	2840	0	0	06:47:30	06:48:30
418	6	2851	0	0	06:57:00	06:58:00
418	7	2883	0	0	07:11:00	07:12:00
418	8	3104	0	0	07:32:00	07:33:00
418	9	3430	0	0	07:54:00	08:05:00
418	10	4056	0	0	08:40:00	08:40:00
418	11	3678	0	0	09:43:00	09:43:00
418	12	4160	0	0	10:31:30	10:32:30
418	13	4921	0	0	10:53:00	10:54:00
418	14	4768	0	0	11:02:30	11:03:30
418	15	4587	0	0	11:13:00	11:16:00
418	16	4635	0	0	11:23:30	11:24:30
418	17	5637	0	0	11:28:00	11:29:00
418	18	5596	0	0	11:33:00	11:34:00
418	19	5571	0	0	11:38:00	11:40:00
418	20	5370	0	0	11:58:00	11:59:00
418	21	5885	0	0	12:11:00	12:14:00
418	22	6121	0	0	12:33:00	12:41:00
418	23	64	0	0	12:58:30	12:59:30
418	24	58	0	0	13:23:00	13:24:00
418	25	6435	0	0	14:01:30	14:01:30
418	26	6431	0	0	14:06:00	
419	1	4584	0	0		17:37:00
419	2	4635	0	0	17:44:30	17:45:30
419	3	5637	0	0	17:49:00	17:50:00
419	4	5595	0	0	17:54:00	17:55:00
419	5	5572	0	0	17:59:30	18:02:00
419	6	3032	0	0	20:24:00	20:25:00
419	7	2773	0	0	20:31:00	20:40:00
419	8	2753	0	0	20:44:00	20:45:00
419	9	6031	0	0	23:28:00	
420	1	6026	0	0		04:02:00
420	2	5550	0	0	04:52:30	04:58:30
420	3	5593	0	0	05:12:30	05:16:30
420	4	5054	0	0	05:52:00	05:53:00
420	5	3874	0	0	06:22:00	06:23:00
420	6	2754	0	0	07:14:54	07:14:54
420	7	2773	0	0	07:20:00	07:20:00
420	8	3032	0	0	07:31:00	
421	1	3032	0	0		16:21:00
421	2	2768	0	0	16:27:00	16:36:00
421	3	2753	0	0	16:40:00	16:41:30
421	4	5594	0	0	18:26:30	18:27:30
421	5	5562	0	0	18:58:00	18:59:30
421	6	5479	0	0	19:15:00	19:22:00
421	7	5515	0	0	19:43:30	19:44:30
421	8	5646	0	0	20:00:00	20:01:00
421	9	5658	0	0	20:07:12	20:08:12
421	10	5665	0	0	20:17:00	
422	1	4012	0	0		18:26:00
422	2	1882	0	0	18:31:00	18:32:00
422	3	3987	0	0	18:44:00	18:45:00
422	4	3977	0	0	18:55:30	18:56:30
422	5	3961	0	0	19:07:00	19:08:00
422	6	3120	0	0	19:32:00	19:33:00
422	7	3032	0	0	20:10:30	20:13:00
422	8	2771	0	0	20:19:00	20:32:00
422	9	2754	0	0	20:36:00	20:37:00
422	10	2835	0	0	21:02:30	21:03:30
422	11	2691	0	0	21:16:30	21:17:30
422	12	2610	0	0	21:37:00	21:38:00
422	13	1231	0	0	22:07:30	22:09:00
422	14	1219	0	0	22:27:30	22:28:00
422	15	1080	0	0	22:40:12	22:43:30
422	16	1102	0	0	23:04:00	23:05:00
422	17	745	0	0	23:13:00	23:13:00
422	18	967	0	0	23:17:00	23:17:00
422	19	976	0	0	23:22:00	
423	1	6032	0	0		19:00:00
423	2	2753	0	0	21:46:00	21:46:00
423	3	2769	0	0	21:51:48	21:51:48
423	4	3031	0	0	22:03:00	
424	1	6023	0	0		09:17:00
424	2	2753	0	0	11:59:30	12:04:00
424	3	2770	0	0	12:08:30	12:29:00
424	4	3032	0	0	12:35:00	12:37:00
424	5	1256	0	0	14:02:30	14:03:00
424	6	5886	0	0	14:36:30	14:37:00
424	7	5369	0	0	14:47:30	14:48:00
424	8	5573	0	0	15:01:00	15:01:00
424	9	5595	0	0	15:07:00	15:07:00
424	10	5638	0	0	15:12:00	15:12:00
424	11	4635	0	0	15:17:00	15:17:00
424	12	4587	0	0	15:27:00	
425	1	4582	0	0		17:17:00
425	2	4636	0	0	17:26:00	17:27:00
425	3	5637	0	0	17:31:00	17:32:00
425	4	5596	0	0	17:36:30	17:37:30
425	5	5571	0	0	17:42:00	17:53:00
425	6	5369	0	0	18:28:00	18:52:00
425	7	6384	0	0	19:11:00	19:12:00
425	8	6420	0	0	19:38:00	19:39:00
425	9	6413	0	0	19:47:00	19:48:00
425	10	6415	0	0	19:52:00	19:53:00
425	11	6401	0	0	20:00:00	20:02:00
425	12	642	0	0	20:25:30	20:27:00
425	13	615	0	0	20:50:00	20:51:00
425	14	611	0	0	21:07:00	21:08:00
425	15	617	0	0	21:16:00	21:17:00
425	16	499	0	0	21:36:00	21:37:00
425	17	519	0	0	21:56:00	21:57:00
425	18	2402	0	0	22:15:30	22:16:30
425	19	2386	0	0	22:27:00	22:31:00
425	20	2400	0	0	22:42:00	22:43:00
425	21	488	0	0	22:57:00	22:58:00
425	22	1804	0	0	23:19:00	23:19:00
425	23	398	0	0	23:23:00	
426	1	4586	0	0		18:23:00
426	2	4636	0	0	18:30:30	18:31:30
426	3	5638	0	0	18:34:30	18:35:30
426	4	5596	0	0	18:39:00	18:40:00
426	5	5574	0	0	18:44:00	18:47:00
426	6	5370	0	0	19:04:00	19:16:00
426	7	5886	0	0	19:27:00	19:31:00
426	8	1328	0	0	19:50:00	19:51:00
426	9	1255	0	0	20:07:00	20:08:00
426	10	1308	0	0	20:39:00	20:40:00
426	11	2978	0	0	20:48:30	20:49:30
426	12	2963	0	0	21:04:00	21:05:00
426	13	2901	0	0	21:32:30	21:33:30
426	14	2914	0	0	21:41:30	21:42:30
426	15	3032	0	0	21:55:00	21:57:00
426	16	2769	0	0	22:03:00	22:08:00
426	17	2753	0	0	22:12:00	22:13:30
426	18	2807	0	0	22:33:30	22:42:00
426	19	3674	0	0	22:55:00	22:56:00
426	20	3683	0	0	23:15:00	23:18:00
426	21	3606	0	0	23:30:00	23:30:00
426	22	3616	0	0	23:36:30	
427	1	5916	0	0		19:54:00
427	2	5914	0	0	20:00:30	20:01:30
427	3	5899	0	0	20:11:30	20:12:30
427	4	2019	0	0	20:35:00	20:36:00
427	5	5866	0	0	21:13:00	21:14:00
427	6	1773	0	0	21:19:30	21:20:30
427	7	5852	0	0	21:43:00	21:44:00
427	8	6023	0	0	22:17:00	22:42:00
427	9	5808	0	0	22:58:30	22:59:30
427	10	5796	0	0	23:07:00	23:08:00
427	11	5521	0	0	23:17:00	23:18:00
427	12	5550	0	0	23:31:30	23:33:00
427	13	5594	0	0	23:45:30	23:57:00
427	14	5601	1	1	00:04:30	00:05:30
427	15	4908	1	1	00:25:00	00:26:00
427	16	1050	1	1	01:32:00	01:33:00
427	17	3638	1	1	01:43:42	01:44:42
427	18	3633	1	1	01:55:00	02:02:30
427	19	3642	1	1	02:12:30	02:15:30
427	20	3646	1	1	02:25:06	02:26:06
427	21	2661	1	1	02:46:00	02:47:00
427	22	2657	1	1	02:54:48	02:55:48
427	23	2609	1	1	03:19:00	03:20:00
427	24	2723	1	1	03:44:30	03:45:30
427	25	2716	1	1	03:59:00	04:00:00
427	26	2463	1	1	04:13:00	04:14:00
427	27	2444	1	1	04:27:00	04:28:00
427	28	2344	1	1	04:48:00	04:49:00
427	29	2513	1	1	05:09:00	05:29:00
427	30	2370	1	1	05:46:30	05:48:30
427	31	2377	1	1	05:57:30	05:59:30
427	32	2386	1	1	06:15:00	06:20:00
427	33	2395	1	1	06:32:00	06:34:00
427	34	2407	1	1	06:48:06	06:51:00
427	35	1283	1	1	07:07:00	07:10:00
427	36	69	1	1	07:26:00	07:27:00
427	37	2072	1	1	07:39:00	07:56:00
427	38	69	1	1	08:08:00	08:09:00
427	39	420	1	1	08:25:00	08:26:00
427	40	639	1	1	08:44:00	08:45:00
427	41	11	1	1	09:07:00	09:08:00
427	42	10	1	0	09:19:00	
428	1	3615	0	0		16:30:00
428	2	3606	0	0	16:35:30	16:36:30
428	3	3683	0	0	16:48:12	16:49:12
428	4	3674	0	0	17:07:00	17:08:00
428	5	2808	0	0	17:19:00	17:28:00
428	6	2753	0	0	17:47:00	17:47:00
428	7	2747	0	0	17:52:00	
429	1	4015	0	0		06:26:00
429	2	1882	0	0	06:31:00	06:32:00
429	3	3987	0	0	06:44:00	06:45:00
429	4	3978	0	0	06:55:30	06:56:30
429	5	3961	0	0	07:07:00	07:08:00
429	6	3119	0	0	07:31:00	07:32:00
429	7	3032	0	0	08:11:00	08:13:00
429	8	2773	0	0	08:19:00	08:32:00
429	9	2754	0	0	08:36:00	08:37:00
429	10	2836	0	0	09:02:30	09:03:30
429	11	2691	0	0	09:16:30	09:17:30
429	12	2609	0	0	09:37:00	09:38:00
429	13	1232	0	0	10:08:00	10:09:00
429	14	1219	0	0	10:28:00	10:29:00
429	15	1081	0	0	10:42:00	10:44:00
429	16	1101	0	0	11:04:00	11:05:00
429	17	745	0	0	11:13:30	11:13:30
429	18	967	0	0	11:17:30	11:17:30
429	19	974	0	0	11:23:00	
430	1	2522	0	0		11:42:00
430	2	2469	0	0	12:06:18	12:07:48
430	3	3479	0	0	12:27:18	12:28:18
430	4	3502	0	0	12:41:30	12:42:30
430	5	3559	0	0	13:00:30	13:01:30
430	6	3536	0	0	13:18:00	13:19:00
430	7	3532	0	0	13:33:30	13:34:30
430	8	3541	0	0	13:42:18	13:43:18
430	9	3548	0	0	14:08:00	14:09:00
430	10	5403	0	0	14:35:00	14:36:00
430	11	4906	0	0	15:13:30	15:15:00
430	12	5602	0	0	15:36:30	15:37:30
430	13	5594	0	0	15:46:00	15:47:00
430	14	5550	0	0	16:01:30	16:02:30
430	15	5522	0	0	16:19:00	16:20:00
430	16	5795	0	0	16:30:00	16:31:00
430	17	5807	0	0	16:39:30	16:40:30
430	18	6024	0	0	16:57:00	
431	1	3032	0	0		10:01:00
431	2	2767	0	0	10:07:00	10:28:00
431	3	2754	0	0	10:32:00	10:33:00
431	4	6028	0	0	13:20:00	
432	1	4012	0	0		10:26:00
432	2	1882	0	0	10:31:00	10:32:00
432	3	3987	0	0	10:44:00	10:45:00
432	4	3978	0	0	10:55:30	10:56:30
432	5	3962	0	0	11:07:00	11:08:00
432	6	3119	0	0	11:31:00	11:32:00
432	7	3032	0	0	12:11:00	12:13:00
432	8	2769	0	0	12:19:00	12:32:00
432	9	2753	0	0	12:36:00	12:37:00
432	10	2836	0	0	13:02:30	13:03:30
432	11	2692	0	0	13:16:30	13:17:30
432	12	2609	0	0	13:37:00	13:38:00
432	13	1232	0	0	14:08:00	14:09:00
432	14	1220	0	0	14:28:00	14:29:00
432	15	1080	0	0	14:42:00	14:44:00
432	16	1102	0	0	15:04:00	15:05:00
432	17	746	0	0	15:13:00	15:13:00
432	18	968	0	0	15:17:30	15:17:30
432	19	969	0	0	15:23:00	
433	1	2076	0	0		09:27:00
433	2	69	0	0	09:38:30	09:39:30
433	3	1283	0	0	09:53:00	09:54:00
433	4	2407	0	0	10:09:00	10:10:00
433	5	2395	0	0	10:24:30	10:25:30
433	6	2385	0	0	10:37:00	10:38:00
433	7	2378	0	0	10:54:00	10:55:00
433	8	2370	0	0	11:04:00	11:05:00
433	9	2515	0	0	11:22:00	11:35:00
433	10	2343	0	0	11:54:36	11:56:30
433	11	2443	0	0	12:16:00	12:17:30
433	12	2464	0	0	12:29:30	12:30:30
433	13	2716	0	0	12:44:00	12:45:30
433	14	2724	0	0	12:58:30	12:59:30
433	15	2610	0	0	13:23:18	13:24:18
433	16	2692	0	0	13:44:24	13:45:24
433	17	2836	0	0	13:57:12	13:58:12
433	18	2754	0	0	14:22:30	14:24:00
433	19	2768	0	0	14:28:00	14:57:00
433	20	3032	0	0	15:03:00	15:04:30
433	21	2159	0	0	16:23:00	16:24:00
433	22	1424	0	0	16:27:00	16:52:00
433	23	1640	0	0	17:29:30	17:30:30
433	24	1657	0	0	17:52:30	17:53:30
433	25	349	0	0	18:16:30	18:17:30
433	26	276	0	0	18:39:30	19:08:00
433	27	325	0	0	19:31:00	19:40:00
433	28	922	0	0	19:55:00	
434	1	398	0	0		04:47:00
434	2	1999	0	0	05:11:00	05:12:00
434	3	2059	0	0	05:29:30	05:30:30
434	4	1820	0	0	05:57:00	
435	1	3032	0	0		08:09:00
435	2	2769	0	0	08:15:00	08:28:00
435	3	2753	0	0	08:32:00	08:33:00
435	4	3873	0	0	09:30:00	09:36:00
435	5	5053	0	0	10:02:30	10:03:30
435	6	5593	0	0	10:33:30	10:34:30
435	7	5555	0	0	10:55:00	10:56:00
435	8	5563	0	0	11:04:30	11:05:30
435	9	5476	0	0	11:20:00	11:23:00
435	10	5445	0	0	11:32:30	11:36:00
435	11	5516	0	0	11:45:00	11:47:00
435	12	5646	0	0	12:05:00	12:06:30
435	13	5609	0	0	12:47:00	12:48:00
435	14	937	0	0	13:09:00	13:34:00
435	15	249	0	0	13:41:00	13:43:00
435	16	252	0	0	13:49:00	13:51:00
435	17	242	0	0	14:18:00	14:20:00
435	18	257	0	0	14:40:00	14:42:00
435	19	265	0	0	14:57:00	14:59:00
435	20	267	0	0	15:09:00	15:11:00
435	21	244	0	0	15:27:00	15:29:00
435	22	234	0	0	15:40:00	15:53:00
435	23	371	0	0	16:05:00	16:09:00
435	24	374	0	0	17:07:00	17:17:00
435	25	375	0	0	18:09:00	18:11:00
435	26	377	0	0	18:37:00	18:40:00
435	27	361	0	0	18:50:00	18:51:00
435	28	359	0	0	19:01:00	19:02:00
435	29	358	0	0	19:15:00	19:23:00
435	30	354	0	0	20:18:00	
436	1	4683	0	0		20:41:00
436	2	4515	0	0	20:55:30	20:56:30
436	3	4858	0	0	21:04:00	21:05:00
436	4	4737	0	0	21:23:30	21:25:00
436	5	5372	0	0	22:06:00	22:08:00
436	6	4909	0	0	22:28:00	22:30:00
436	7	4928	0	0	22:57:00	22:58:00
436	8	5050	0	0	23:11:30	23:12:30
436	9	4971	0	0	23:43:00	
437	1	4011	0	0		04:58:00
437	2	4021	0	0	05:23:00	05:24:00
437	3	3211	0	0	05:42:30	05:43:30
437	4	3205	0	0	06:02:00	06:03:00
437	5	3197	0	0	06:19:00	06:26:00
437	6	3144	0	0	06:40:00	06:41:00
437	7	3191	0	0	06:57:00	06:58:00
437	8	3101	0	0	07:08:00	07:09:00
437	9	3032	0	0	07:37:30	
438	1	4585	0	0		16:03:00
438	2	4635	0	0	16:10:30	16:12:30
438	3	5637	0	0	16:16:00	16:17:00
438	4	5596	0	0	16:20:30	16:21:30
438	5	5578	0	0	16:26:00	16:29:00
438	6	5370	0	0	16:46:00	16:47:00
438	7	973	0	0	17:54:00	17:57:00
438	8	1007	0	0	18:23:00	18:24:00
438	9	2533	0	0	18:53:00	18:54:00
438	10	2516	0	0	19:20:00	19:31:00
438	11	3337	0	0	20:03:00	20:04:00
438	12	4690	0	0	20:49:00	
439	1	4687	0	0		06:32:00
439	2	4737	0	0	07:10:30	07:12:00
439	3	5372	0	0	07:44:30	07:45:30
439	4	4903	0	0	08:06:30	08:07:30
439	5	2754	0	0	10:00:30	10:00:30
439	6	2774	0	0	10:08:00	10:08:00
439	7	3031	0	0	10:19:00	
440	1	6031	0	0		07:56:00
440	2	5979	0	0	08:01:00	08:02:00
440	3	6039	0	0	08:39:00	08:42:00
440	4	6083	0	0	09:00:00	09:01:00
440	5	6212	0	0	09:26:00	09:28:00
440	6	6285	0	0	10:23:00	10:24:00
440	7	6289	0	0	10:30:30	10:31:30
440	8	5078	0	0	10:44:30	10:45:30
440	9	5070	0	0	10:59:30	11:00:30
440	10	5059	0	0	11:08:30	11:09:30
440	11	5057	0	0	11:12:30	11:22:30
440	12	5157	0	0	12:02:42	12:03:42
440	13	5159	0	0	12:12:30	12:13:30
440	14	5161	0	0	12:23:30	12:24:30
440	15	2245	0	0	12:33:30	12:34:30
440	16	5132	0	0	12:45:30	12:46:30
440	17	5123	0	0	12:57:00	12:58:00
440	18	1767	0	0	13:01:00	13:02:00
440	19	1769	0	0	13:04:30	13:05:30
440	20	5140	0	0	13:35:30	13:36:30
440	21	5138	0	0	13:48:00	
441	1	5915	0	0		13:22:00
441	2	5900	0	0	13:36:30	13:38:00
441	3	6023	0	0	15:25:00	15:28:00
441	4	2753	0	0	18:19:00	18:20:00
441	5	2771	0	0	18:24:00	18:29:00
441	6	3031	0	0	18:35:00	18:36:00
441	7	5579	0	0	20:57:30	20:57:30
441	8	5596	0	0	21:06:00	21:06:00
441	9	5638	0	0	21:10:30	21:10:30
441	10	4635	0	0	21:15:00	21:15:00
441	11	4590	0	0	21:24:00	
442	1	976	0	0		12:29:00
442	2	968	0	0	12:33:06	12:33:42
442	3	746	0	0	12:37:00	12:37:30
442	4	1101	0	0	12:45:06	12:46:30
442	5	1078	0	0	13:07:00	13:20:00
442	6	1219	0	0	13:31:00	13:31:30
442	7	1231	0	0	13:50:24	13:51:30
442	8	2609	0	0	14:22:00	14:23:00
442	9	2691	0	0	14:43:00	14:44:00
442	10	2835	0	0	14:56:06	14:57:06
442	11	2754	0	0	15:23:00	15:24:00
442	12	2770	0	0	15:28:00	15:41:00
442	13	3031	0	0	15:47:00	15:51:00
442	14	3119	0	0	16:30:00	16:31:00
442	15	3962	0	0	16:52:30	16:53:30
442	16	3978	0	0	17:04:30	17:05:30
442	17	3987	0	0	17:15:30	17:16:30
442	18	1882	0	0	17:29:00	17:29:00
442	19	4011	0	0	17:35:00	
443	1	4015	0	0		12:32:00
443	2	1882	0	0	12:37:00	12:38:00
443	3	3988	0	0	12:49:30	12:50:00
443	4	3978	0	0	13:00:30	13:01:30
443	5	3837	0	0	13:31:30	13:32:30
443	6	3792	0	0	13:47:00	13:49:00
443	7	3756	0	0	14:13:00	14:15:00
443	8	4969	0	0	14:56:00	15:06:00
443	9	5050	0	0	15:37:30	15:38:30
443	10	4928	0	0	15:52:30	15:53:00
443	11	4905	0	0	16:21:00	16:24:00
443	12	5371	0	0	16:44:30	16:48:30
443	13	4737	0	0	17:27:00	17:29:00
443	14	4858	0	0	17:47:00	17:48:30
443	15	4515	0	0	17:56:00	17:57:00
443	16	4690	0	0	18:12:00	
444	1	5666	0	0		07:24:00
444	2	5657	0	0	07:34:00	07:41:00
444	3	5776	0	0	07:56:00	07:59:00
444	4	5813	0	0	08:13:00	08:14:00
444	5	6028	0	0	08:39:00	
445	1	6029	0	0		09:27:00
445	2	5980	0	0	09:31:30	09:32:30
445	3	6039	0	0	10:09:30	10:10:30
445	4	6061	0	0	10:30:00	10:31:00
445	5	6071	0	0	10:44:30	10:45:30
445	6	6144	0	0	11:23:30	11:24:30
445	7	6151	0	0	11:34:30	11:35:30
445	8	6309	0	0	11:58:00	
446	1	6031	0	0		09:40:00
446	2	5980	0	0	09:44:00	09:45:00
446	3	6039	0	0	10:25:00	10:26:30
446	4	6062	0	0	10:45:30	10:46:30
446	5	6071	0	0	11:00:00	11:01:00
446	6	6078	0	0	11:13:30	11:14:30
446	7	6130	0	0	11:22:30	11:25:00
446	8	6140	0	0	11:29:00	11:30:00
446	9	6159	0	0	11:59:00	12:00:00
446	10	6161	0	0	12:07:00	12:08:00
446	11	6168	0	0	12:15:00	12:16:00
446	12	6171	0	0	12:22:00	12:23:00
446	13	6201	0	0	12:27:00	12:28:00
446	14	6200	0	0	12:31:30	12:32:30
446	15	6195	0	0	12:41:30	12:42:30
446	16	6182	0	0	12:53:00	13:12:00
446	17	6183	0	0	13:14:30	13:15:30
446	18	6187	0	0	13:26:00	
447	1	2753	0	0		23:40:00
447	2	2771	0	0	23:44:00	23:49:00
447	3	3032	0	0	23:55:00	23:59:00
447	4	2913	1	1	00:11:00	00:13:00
447	5	2902	1	1	00:20:30	00:22:30
447	6	2964	1	1	00:50:00	00:51:00
447	7	2978	1	1	01:05:00	01:06:00
447	8	1307	1	1	01:15:00	01:16:00
447	9	1297	1	1	01:30:30	01:31:30
447	10	6469	1	1	01:49:00	01:50:00
447	11	6436	1	1	02:08:00	02:08:00
447	12	6433	1	0	02:12:00	
448	1	6025	0	0		06:39:00
448	2	5808	0	0	06:56:00	06:57:00
448	3	5796	0	0	07:04:30	07:09:00
448	4	5522	0	0	07:17:30	07:18:30
448	5	5495	0	0	07:27:30	07:29:00
448	6	5434	0	0	07:48:24	07:50:30
448	7	5301	0	0	08:05:00	08:06:00
448	8	4837	0	0	08:36:00	08:39:00
448	9	4737	0	0	09:02:00	09:09:00
448	10	4857	0	0	09:28:00	09:29:00
448	11	4516	0	0	09:37:00	09:38:00
448	12	4688	0	0	09:53:00	09:58:00
448	13	4558	0	0	10:13:30	10:14:30
448	14	3459	0	0	10:25:30	10:26:30
448	15	3456	0	0	10:35:00	10:36:00
448	16	3337	0	0	10:52:00	10:53:00
448	17	3416	0	0	11:06:00	11:07:00
448	18	2522	0	0	11:29:00	11:42:00
448	19	2386	0	0	12:25:00	12:30:00
448	20	1283	0	0	13:10:00	13:30:00
448	21	3104	0	0	15:08:00	
449	1	4684	0	0		05:20:00
449	2	4548	0	0	05:25:00	05:26:00
449	3	4602	0	0	05:30:00	05:31:00
449	4	4648	0	0	05:51:00	05:52:00
449	5	4642	0	0	06:02:00	06:03:00
449	6	3421	0	0	06:29:12	06:30:12
449	7	3560	0	0	06:52:30	06:53:30
449	8	3515	0	0	07:09:30	07:11:00
449	9	1058	0	0	07:44:00	07:45:00
449	10	1054	0	0	07:55:48	07:56:48
449	11	3638	0	0	08:04:06	08:05:06
449	12	3633	0	0	08:14:54	08:15:54
449	13	3629	0	0	08:29:30	08:30:30
449	14	3605	0	0	08:38:00	08:40:00
449	15	3683	0	0	08:51:00	08:52:00
449	16	3673	0	0	09:10:30	09:11:30
449	17	2807	0	0	09:22:18	09:23:18
449	18	2753	0	0	09:42:30	09:44:00
449	19	2768	0	0	09:48:00	09:57:00
449	20	3032	0	0	10:03:00	10:06:00
449	21	2890	0	0	10:23:30	10:24:30
449	22	2983	0	0	10:33:00	10:34:00
449	23	3000	0	0	10:44:00	10:45:00
449	24	3021	0	0	10:59:00	11:00:00
449	25	1626	0	0	11:10:30	11:11:30
449	26	1604	0	0	11:19:30	11:20:30
449	27	1589	0	0	11:32:30	11:33:30
449	28	2161	0	0	11:43:30	11:43:30
449	29	1421	0	0	11:48:00	
450	1	1424	0	0		20:15:00
450	2	2155	0	0	20:19:00	20:19:30
450	3	1590	0	0	20:29:30	20:30:30
450	4	1604	0	0	20:42:30	20:43:30
450	5	1625	0	0	20:51:30	20:52:30
450	6	3021	0	0	21:04:00	21:05:00
450	7	3000	0	0	21:18:00	21:18:30
450	8	2983	0	0	21:28:00	21:28:30
450	9	2889	0	0	21:36:30	21:37:00
450	10	3031	0	0	21:55:00	22:01:00
450	11	2768	0	0	22:07:00	22:28:00
450	12	2754	0	0	22:32:00	22:33:30
450	13	2807	0	0	22:54:00	22:55:00
450	14	3674	0	0	23:06:30	23:08:30
450	15	3683	0	0	23:27:30	23:30:30
450	16	3606	0	0	23:42:00	23:42:00
450	17	3616	0	0	23:49:00	
451	1	6433	0	0		17:34:00
451	2	6435	0	0	17:37:00	17:38:00
451	3	6470	0	0	17:55:00	18:00:00
451	4	1297	0	0	18:18:00	18:18:30
451	5	1308	0	0	18:34:00	18:35:00
451	6	2977	0	0	18:44:00	18:44:30
451	7	2963	0	0	18:59:00	19:00:00
451	8	2902	0	0	19:28:00	19:29:00
451	9	2914	0	0	19:37:30	19:38:30
451	10	3032	0	0	19:51:00	19:53:00
451	11	2771	0	0	19:59:00	20:15:00
451	12	2754	0	0	20:19:00	20:20:00
451	13	2807	0	0	20:39:06	20:40:06
451	14	3673	0	0	20:51:00	20:52:00
451	15	3684	0	0	21:11:00	21:12:00
451	16	3605	0	0	21:23:00	21:23:00
451	17	3613	0	0	21:30:00	
452	1	2753	0	0		05:31:30
452	2	2774	0	0	05:36:00	05:39:00
452	3	3032	0	0	05:45:00	05:47:00
452	4	3119	0	0	06:27:30	06:28:30
452	5	3962	0	0	06:52:00	06:53:00
452	6	3977	0	0	07:04:00	07:05:00
452	7	3988	0	0	07:15:00	07:16:00
452	8	1882	0	0	07:27:30	07:28:30
452	9	4013	0	0	07:33:00	07:58:00
452	10	4090	0	0	08:27:30	08:28:30
452	11	5087	0	0	08:50:30	08:51:30
452	12	5057	0	0	09:08:30	09:10:30
452	13	5060	0	0	09:13:00	09:14:30
452	14	5069	0	0	09:21:30	09:22:30
452	15	5078	0	0	09:31:00	09:32:00
452	16	6290	0	0	09:43:00	09:44:00
452	17	6285	0	0	09:50:06	09:51:06
452	18	6265	0	0	10:24:00	10:27:00
452	19	6214	0	0	10:42:00	
453	1	276	0	0		07:00:00
453	2	325	0	0	07:21:00	07:23:00
453	3	921	0	0	07:38:00	
454	1	3479	0	0		05:09:00
454	2	2470	0	0	05:28:00	05:29:00
454	3	2512	0	0	05:52:00	05:55:00
454	4	2386	0	0	06:39:00	06:40:00
454	5	2399	0	0	06:49:30	06:50:30
454	6	487	0	0	07:03:00	07:04:00
454	7	1804	0	0	07:23:00	07:24:00
454	8	397	0	0	07:27:00	
455	1	6346	0	0		08:22:00
455	2	6348	0	0	08:24:30	08:25:30
455	3	6294	0	0	08:46:00	08:47:00
455	4	6276	0	0	08:56:00	08:57:00
455	5	6266	0	0	09:09:00	09:10:00
455	6	6214	0	0	09:22:00	09:26:00
455	7	6083	0	0	09:48:30	09:49:30
455	8	6040	0	0	10:05:00	10:06:30
455	9	5961	0	0	10:24:00	10:25:00
455	10	5980	0	0	10:41:00	10:48:00
455	11	6030	0	0	10:53:00	11:04:00
455	12	5807	0	0	11:19:00	11:20:00
455	13	5795	0	0	11:28:00	11:29:00
455	14	5814	0	0	11:32:30	11:33:30
455	15	5776	0	0	11:48:00	11:49:00
455	16	5657	0	0	12:05:00	12:17:00
455	17	5610	0	0	12:56:30	13:03:30
455	18	937	0	0	13:24:00	14:07:00
455	19	249	0	0	14:13:00	14:16:00
455	20	251	0	0	14:22:00	14:24:00
455	21	242	0	0	14:51:00	14:53:00
455	22	247	0	0	15:22:00	15:25:00
455	23	263	0	0	15:46:00	15:48:00
455	24	284	0	0	16:09:00	16:11:00
455	25	278	0	0	16:46:00	16:48:00
455	26	274	0	0	17:09:00	17:11:00
455	27	335	0	0	17:45:00	17:46:00
455	28	331	0	0	17:52:00	
456	1	6345	0	0		05:50:00
456	2	6348	0	0	05:52:30	05:53:30
456	3	6332	0	0	06:05:30	06:06:30
456	4	6293	0	0	06:15:00	06:16:00
456	5	6276	0	0	06:25:00	06:26:00
456	6	6266	0	0	06:38:00	06:39:00
456	7	6215	0	0	06:52:00	06:55:00
456	8	6092	0	0	07:07:30	07:08:30
456	9	6085	0	0	07:13:00	07:14:00
456	10	6084	0	0	07:20:30	07:21:30
456	11	6040	0	0	07:37:30	07:39:00
456	12	5974	0	0	07:51:30	07:52:30
456	13	5961	0	0	07:59:30	08:00:30
456	14	5979	0	0	08:16:30	08:17:30
456	15	6024	0	0	08:22:00	08:39:00
456	16	5807	0	0	08:53:30	08:55:00
456	17	5795	0	0	09:02:00	09:04:00
456	18	5521	0	0	09:12:30	09:13:30
456	19	5496	0	0	09:22:30	09:23:30
456	20	5475	0	0	09:39:00	09:45:00
456	21	5311	0	0	10:00:00	10:01:00
456	22	5301	0	0	10:07:00	10:13:00
456	23	4838	0	0	10:41:30	10:44:00
456	24	4738	0	0	11:07:00	11:09:00
456	25	4857	0	0	11:28:00	11:29:00
456	26	4516	0	0	11:37:00	11:38:00
456	27	4686	0	0	11:53:00	12:00:00
456	28	4558	0	0	12:15:30	12:16:30
456	29	3460	0	0	12:26:30	12:28:30
456	30	3456	0	0	12:36:18	12:37:18
456	31	3337	0	0	12:52:00	12:53:00
456	32	3416	0	0	13:05:30	13:06:30
456	33	2514	0	0	13:29:00	13:35:00
456	34	2385	0	0	14:14:00	14:15:00
456	35	1283	0	0	14:55:00	15:25:00
456	36	3103	0	0	16:41:00	16:45:00
456	37	3430	0	0	16:59:00	17:02:00
456	38	4055	0	0	17:33:00	
457	1	6346	0	0		09:56:00
457	2	6347	0	0	09:59:00	10:00:00
457	3	6332	0	0	10:12:00	10:13:00
457	4	6293	0	0	10:21:00	10:22:00
457	5	6276	0	0	10:31:00	10:32:00
457	6	6265	0	0	10:44:00	10:45:00
457	7	6216	0	0	10:57:00	11:00:00
457	8	6091	0	0	11:13:00	11:14:00
457	9	6085	0	0	11:18:30	11:19:30
457	10	6083	0	0	11:26:00	11:27:00
457	11	6039	0	0	11:41:30	11:43:00
457	12	5973	0	0	11:55:00	11:56:00
457	13	5961	0	0	12:02:30	12:03:30
457	14	5980	0	0	12:20:00	12:22:00
457	15	6023	0	0	12:27:00	12:40:00
457	16	5808	0	0	12:55:30	12:56:30
457	17	5795	0	0	13:04:00	13:09:00
457	18	5521	0	0	13:17:30	13:21:00
457	19	5496	0	0	13:33:00	13:34:30
457	20	5433	0	0	13:53:30	13:56:30
457	21	5304	0	0	14:11:00	14:12:00
457	22	4837	0	0	14:41:30	14:43:00
457	23	4737	0	0	15:06:00	15:09:00
457	24	4858	0	0	15:29:00	15:31:00
457	25	4516	0	0	15:39:00	15:41:00
457	26	4687	0	0	15:57:00	16:02:00
457	27	4558	0	0	16:16:18	16:17:18
457	28	3459	0	0	16:27:30	16:28:30
457	29	3455	0	0	16:36:30	16:37:30
457	30	3338	0	0	16:52:00	16:53:00
457	31	3416	0	0	17:06:00	17:07:00
457	32	2518	0	0	17:29:00	17:44:00
457	33	2385	0	0	18:26:00	18:30:00
457	34	1284	0	0	19:11:00	19:31:00
457	35	3103	0	0	20:55:00	20:56:00
457	36	3430	0	0	21:10:00	21:11:00
457	37	4055	0	0	21:39:00	
458	1	398	0	0		05:47:00
458	2	1804	0	0	05:49:30	05:50:30
458	3	488	0	0	06:12:00	06:13:00
458	4	2400	0	0	06:26:30	06:27:30
458	5	2386	0	0	06:39:00	06:46:00
458	6	2401	0	0	06:56:00	06:57:00
458	7	520	0	0	07:16:00	07:17:00
458	8	499	0	0	07:35:00	07:36:00
458	9	617	0	0	07:54:00	07:55:00
458	10	611	0	0	08:03:00	08:04:00
458	11	615	0	0	08:21:00	08:22:00
458	12	641	0	0	08:45:00	08:46:00
458	13	6402	0	0	09:08:00	09:10:00
458	14	6415	0	0	09:16:30	09:17:30
458	15	6414	0	0	09:21:30	09:22:30
458	16	6420	0	0	09:30:30	09:31:30
458	17	6384	0	0	09:49:30	09:50:30
458	18	5369	0	0	10:10:00	10:31:30
458	19	5577	0	0	11:00:00	11:02:00
458	20	5595	0	0	11:06:30	11:07:30
458	21	5638	0	0	11:11:42	11:12:42
458	22	4636	0	0	11:16:30	11:17:30
458	23	4586	0	0	11:27:00	
459	1	3614	0	0		05:32:00
459	2	3606	0	0	05:38:30	05:39:30
459	3	3683	0	0	05:50:30	05:51:30
459	4	3673	0	0	06:10:30	06:11:30
459	5	2807	0	0	06:22:24	06:23:24
459	6	2753	0	0	06:42:30	06:44:00
459	7	2772	0	0	06:48:00	07:01:00
459	8	3032	0	0	07:07:00	07:09:00
459	9	2914	0	0	07:21:30	07:22:30
459	10	2902	0	0	07:30:30	07:31:30
459	11	2963	0	0	07:58:30	07:59:30
459	12	2978	0	0	08:14:30	08:15:30
459	13	1307	0	0	08:25:00	08:26:00
459	14	1256	0	0	08:57:00	09:10:00
459	15	1327	0	0	09:26:30	09:27:30
459	16	5885	0	0	09:46:00	09:47:00
459	17	5369	0	0	09:58:00	09:59:00
459	18	5580	0	0	10:14:30	10:17:30
459	19	5595	0	0	10:21:30	10:22:30
459	20	5637	0	0	10:26:00	10:27:00
459	21	4635	0	0	10:30:30	10:31:30
459	22	4584	0	0	10:40:00	
460	1	2754	0	0		06:56:00
460	2	2768	0	0	07:00:30	07:17:00
460	3	3031	0	0	07:23:00	07:24:00
460	4	3102	0	0	07:48:00	07:49:00
460	5	3192	0	0	07:58:00	07:58:30
460	6	3144	0	0	08:14:00	08:15:00
460	7	3197	0	0	08:28:00	08:29:00
460	8	3247	0	0	08:42:00	08:43:00
460	9	3245	0	0	08:54:30	08:55:30
460	10	3259	0	0	09:03:30	09:04:00
460	11	1687	0	0	09:11:30	09:12:00
460	12	3268	0	0	09:19:00	
461	1	2519	0	0		09:10:00
461	2	500	0	0	10:44:00	11:09:00
461	3	2448	0	0	12:02:00	12:03:00
461	4	3104	0	0	12:55:00	12:59:00
461	5	3430	0	0	13:23:00	13:53:00
461	6	3279	0	0	14:27:00	14:28:00
461	7	3270	0	0	14:40:00	
462	1	3610	0	0		04:56:00
462	2	3606	0	0	05:01:30	05:05:30
462	3	3684	0	0	05:18:30	05:20:00
462	4	3673	0	0	05:39:30	05:40:30
462	5	2807	0	0	05:51:12	05:52:12
462	6	2754	0	0	06:11:00	06:11:00
462	7	2769	0	0	06:16:00	
463	1	4585	0	0		16:49:00
463	2	4635	0	0	16:56:30	16:57:30
463	3	5637	0	0	17:01:00	17:02:00
463	4	5595	0	0	17:06:00	17:07:00
463	5	5577	0	0	17:11:00	17:14:00
463	6	5468	0	0	17:20:30	17:21:30
463	7	5369	0	0	17:32:00	17:33:00
463	8	6357	0	0	17:55:30	17:56:00
463	9	768	0	0	18:12:30	18:13:30
463	10	977	0	0	18:49:00	18:59:00
463	11	968	0	0	19:03:12	19:03:42
463	12	746	0	0	19:07:00	19:07:30
463	13	1102	0	0	19:15:30	19:16:30
463	14	1081	0	0	19:37:00	19:39:00
463	15	1219	0	0	19:50:00	19:50:30
463	16	1231	0	0	20:09:30	20:10:30
463	17	2609	0	0	20:40:30	20:41:30
463	18	2657	0	0	21:10:36	21:11:06
463	19	2661	0	0	21:18:36	21:19:06
463	20	3645	0	0	21:35:48	21:36:48
463	21	3644	0	0	21:41:54	21:42:54
463	22	3642	0	0	21:47:30	21:47:30
463	23	3630	0	0	21:55:54	21:55:54
463	24	3605	0	0	22:11:30	22:11:30
463	25	3613	0	0	22:20:00	
464	1	1630	0	0		11:50:00
464	2	1611	0	0	11:59:00	12:00:00
464	3	925	0	0	12:50:00	12:50:00
464	4	1751	0	0	13:07:00	13:13:00
464	5	2317	0	0	13:37:18	13:38:18
464	6	1819	0	0	13:50:00	13:51:00
464	7	2515	0	0	14:33:00	14:36:00
464	8	2715	0	0	15:21:00	15:22:00
464	9	2609	0	0	15:57:00	15:58:00
464	10	2754	0	0	16:55:00	16:55:00
464	11	2769	0	0	17:00:00	17:00:00
464	12	3032	0	0	17:15:00	
465	1	1421	0	0		19:33:00
465	2	2158	0	0	19:36:30	19:37:00
465	3	3031	0	0	20:56:00	20:56:00
465	4	2768	0	0	21:03:00	
466	1	5915	0	0		11:06:00
466	2	5914	0	0	11:12:00	11:13:00
466	3	5900	0	0	11:28:00	11:32:30
466	4	5866	0	0	12:29:30	12:30:30
466	5	5851	0	0	13:02:30	13:13:30
466	6	6031	0	0	13:59:00	14:13:00
466	7	5808	0	0	14:31:00	14:32:00
466	8	5795	0	0	14:38:48	14:39:48
466	9	5522	0	0	14:48:00	14:58:00
466	10	5496	0	0	15:06:30	15:08:00
466	11	5434	0	0	15:26:30	15:27:30
466	12	5359	0	0	15:39:00	15:40:00
466	13	5371	0	0	16:01:00	16:22:00
466	14	5388	0	0	16:40:00	16:41:00
466	15	4793	0	0	16:55:00	16:56:00
466	16	4808	0	0	17:07:00	17:08:00
466	17	3531	0	0	17:24:18	17:25:18
466	18	3536	0	0	17:36:48	17:37:48
466	19	3559	0	0	17:54:06	17:55:06
466	20	3501	0	0	18:15:00	18:16:00
466	21	3480	0	0	18:27:00	18:28:00
466	22	2470	0	0	18:47:24	18:49:24
466	23	2521	0	0	19:11:00	19:35:00
466	24	2369	0	0	19:52:12	19:53:12
466	25	2378	0	0	20:02:00	20:03:00
466	26	2385	0	0	20:19:00	20:20:00
466	27	2396	0	0	20:31:06	20:32:06
466	28	2408	0	0	20:47:00	20:48:00
466	29	1283	0	0	21:04:00	21:05:00
466	30	70	0	0	21:18:00	21:18:00
466	31	2073	0	0	21:33:00	
467	1	6346	0	0		05:56:00
467	2	6347	0	0	05:59:00	06:00:00
467	3	6332	0	0	06:12:00	06:13:00
467	4	6294	0	0	06:21:00	06:22:00
467	5	6275	0	0	06:31:00	06:32:00
467	6	6286	0	0	06:52:00	06:53:00
467	7	6289	0	0	06:59:00	07:00:00
467	8	5078	0	0	07:12:00	07:13:00
467	9	5069	0	0	07:24:30	07:25:30
467	10	5060	0	0	07:31:06	07:32:06
467	11	5057	0	0	07:35:00	07:38:00
467	12	5097	0	0	08:04:00	08:06:00
467	13	3895	0	0	08:40:30	08:41:30
467	14	3772	0	0	09:00:00	09:09:00
467	15	3794	0	0	09:46:00	09:49:00
467	16	3811	0	0	10:10:00	10:11:00
467	17	2790	0	0	10:26:00	10:27:00
467	18	2763	0	0	10:34:30	10:36:30
467	19	2754	0	0	10:45:00	10:48:00
467	20	2769	0	0	10:52:00	10:57:00
467	21	3031	0	0	11:03:00	
468	1	3032	0	0		15:49:00
468	2	2770	0	0	15:55:00	16:00:00
468	3	2753	0	0	16:04:00	16:05:00
468	4	2513	0	0	18:16:30	18:23:30
468	5	2385	0	0	19:02:00	19:03:00
468	6	1284	0	0	19:42:00	19:43:00
468	7	69	0	0	19:57:00	19:57:00
468	8	2078	0	0	20:10:00	
469	1	2521	0	0		15:45:00
469	2	2754	0	0	18:10:00	18:10:00
469	3	2768	0	0	18:14:30	18:14:30
469	4	3031	0	0	18:23:00	
470	1	3031	0	0		07:33:00
470	2	2768	0	0	07:39:00	07:44:00
470	3	2754	0	0	07:48:00	07:49:30
470	4	4909	0	0	09:43:00	09:44:00
470	5	5371	0	0	10:04:30	10:05:30
470	6	4737	0	0	10:37:00	10:39:00
470	7	4679	0	0	11:18:00	
471	1	3269	0	0		09:36:00
471	2	3279	0	0	09:48:00	09:49:00
471	3	3429	0	0	10:14:00	10:15:00
471	4	4055	0	0	10:37:00	10:37:00
471	5	3678	0	0	11:40:00	11:40:00
471	6	4159	0	0	12:30:00	12:31:00
471	7	4921	0	0	12:54:00	12:55:00
471	8	4767	0	0	13:03:30	13:05:30
471	9	4582	0	0	13:15:00	13:19:00
471	10	4636	0	0	13:27:00	13:29:00
471	11	5637	0	0	13:32:30	13:33:30
471	12	5595	0	0	13:37:30	13:38:30
471	13	5573	0	0	13:43:00	13:46:00
471	14	5370	0	0	14:02:00	14:03:00
471	15	5886	0	0	14:13:30	14:14:30
471	16	1327	0	0	14:33:00	14:41:00
471	17	1256	0	0	14:58:00	14:59:00
471	18	1308	0	0	15:28:30	15:29:30
471	19	2978	0	0	15:38:30	15:39:30
471	20	2963	0	0	15:56:00	15:57:00
471	21	2901	0	0	16:26:00	16:27:00
471	22	2913	0	0	16:35:00	16:36:00
471	23	3032	0	0	16:49:00	16:53:00
471	24	2768	0	0	16:59:00	17:12:00
471	25	2753	0	0	17:16:00	17:17:00
471	26	2807	0	0	17:36:30	17:37:30
471	27	3673	0	0	17:49:00	17:51:00
471	28	3684	0	0	18:11:00	18:13:00
471	29	3605	0	0	18:25:30	18:25:30
471	30	3615	0	0	18:34:00	
472	1	3269	0	0		12:00:00
472	2	3279	0	0	12:11:00	12:12:00
472	3	3429	0	0	12:38:00	13:22:00
472	4	3103	0	0	13:36:00	13:38:00
472	5	2447	0	0	14:33:00	14:45:00
472	6	500	0	0	15:48:00	15:50:00
472	7	2517	0	0	17:51:00	17:53:00
472	8	3641	0	0	21:18:00	21:19:00
472	9	3658	0	0	21:51:30	21:52:30
472	10	2754	0	0	23:09:00	23:10:00
472	11	2747	0	0	23:12:00	
473	1	1427	0	0		06:21:00
473	2	2156	0	0	06:24:30	06:25:30
473	3	1578	0	0	06:54:00	06:55:00
473	4	1717	0	0	07:15:00	07:16:00
473	5	1697	0	0	07:35:00	07:36:00
473	6	1711	0	0	07:48:00	07:49:00
473	7	1715	0	0	07:58:30	07:59:30
473	8	3178	0	0	08:06:00	08:07:00
473	9	3172	0	0	08:17:30	08:18:30
473	10	3143	0	0	08:40:00	08:41:00
473	11	3192	0	0	08:57:30	08:58:30
473	12	3101	0	0	09:07:48	09:10:00
473	13	3032	0	0	09:39:00	
474	1	4011	0	0		10:46:00
474	2	1881	0	0	10:50:30	10:51:30
474	3	3987	0	0	11:03:00	11:04:00
474	4	3977	0	0	11:13:30	11:14:30
474	5	3838	0	0	11:45:00	11:46:00
474	6	3793	0	0	12:00:00	12:02:00
474	7	3756	0	0	12:26:00	12:28:00
474	8	4973	0	0	13:08:00	13:21:00
474	9	5021	0	0	13:49:30	13:50:30
474	10	5016	0	0	14:03:30	14:04:30
474	11	5945	0	0	14:30:12	14:31:12
474	12	6027	0	0	15:41:00	
475	1	6431	0	0		13:32:00
475	2	6436	0	0	13:35:00	13:36:00
475	3	6469	0	0	13:53:30	13:58:30
475	4	1298	0	0	14:15:36	14:16:06
475	5	1308	0	0	14:33:00	14:34:00
475	6	2978	0	0	14:43:00	14:43:30
475	7	2964	0	0	14:59:00	15:00:00
475	8	2901	0	0	15:26:30	15:27:30
475	9	2913	0	0	15:35:00	15:36:00
475	10	3031	0	0	15:49:00	15:53:00
475	11	2769	0	0	15:59:00	16:08:00
475	12	2754	0	0	16:12:00	16:14:30
475	13	2763	0	0	16:21:30	16:22:30
475	14	2790	0	0	16:30:00	16:32:00
475	15	3812	0	0	16:48:00	16:49:00
475	16	3794	0	0	17:10:00	17:16:00
475	17	3756	0	0	17:40:00	17:42:00
475	18	4969	0	0	18:30:00	18:32:00
475	19	5021	0	0	19:01:00	19:01:30
475	20	5016	0	0	19:14:30	19:23:00
475	21	5946	0	0	20:06:30	20:07:00
475	22	6025	0	0	20:54:00	
476	1	6024	0	0		04:19:00
476	2	5980	0	0	04:23:00	04:24:00
476	3	5961	0	0	04:43:00	04:44:00
476	4	5973	0	0	04:52:00	04:53:00
476	5	6040	0	0	05:08:00	05:11:00
476	6	6062	0	0	05:31:00	05:32:00
476	7	6072	0	0	05:52:42	05:53:42
476	8	6078	0	0	06:05:48	06:06:48
476	9	6130	0	0	06:15:30	06:23:00
476	10	6140	0	0	06:27:00	06:28:00
476	11	6160	0	0	06:56:30	07:12:00
476	12	6162	0	0	07:19:00	07:24:00
476	13	6167	0	0	07:31:00	07:32:00
476	14	6171	0	0	07:37:42	07:38:42
476	15	6202	0	0	07:43:00	07:44:00
476	16	6200	0	0	07:47:30	07:48:30
476	17	6196	0	0	07:57:30	07:58:30
476	18	6182	0	0	08:09:00	08:28:00
476	19	6183	0	0	08:30:30	08:31:30
476	20	6188	0	0	08:42:00	
477	1	3031	0	0		15:05:00
477	2	2773	0	0	15:11:00	15:16:00
477	3	2753	0	0	15:20:00	15:21:30
477	4	3873	0	0	16:13:00	16:14:00
477	5	5053	0	0	16:41:00	16:42:00
477	6	5594	0	0	17:15:00	17:16:00
477	7	5549	0	0	17:29:30	17:30:30
477	8	6026	0	0	18:25:00	
478	1	5765	0	0		15:39:00
478	2	5774	0	0	15:44:30	15:46:00
478	3	5764	0	0	15:49:00	15:50:30
478	4	5753	0	0	15:58:00	15:59:00
478	5	5631	0	0	16:05:00	16:06:00
478	6	5657	0	0	16:52:00	16:53:30
478	7	5776	0	0	17:08:30	17:09:30
478	8	2154	0	0	17:25:12	17:26:12
478	9	6025	0	0	18:16:00	18:24:00
478	10	5946	0	0	19:35:12	19:36:12
478	11	5054	0	0	20:19:00	20:23:00
478	12	3873	0	0	20:50:00	20:57:30
478	13	2806	0	0	21:38:00	21:39:00
478	14	2753	0	0	21:52:00	21:52:00
478	15	2770	0	0	21:57:00	21:57:00
478	16	3031	0	0	22:07:00	
479	1	6023	0	0		10:20:00
479	2	5807	0	0	10:34:00	10:35:00
479	3	5795	0	0	10:42:00	10:43:00
479	4	5813	0	0	10:46:00	10:47:00
479	5	5776	0	0	11:00:30	11:01:30
479	6	5657	0	0	11:16:00	11:17:00
479	7	5610	0	0	11:52:30	11:56:00
479	8	938	0	0	12:13:00	12:34:00
479	9	249	0	0	12:41:00	12:43:00
479	10	251	0	0	12:49:00	12:51:00
479	11	241	0	0	13:18:00	13:20:00
479	12	258	0	0	13:40:00	13:42:00
479	13	265	0	0	13:57:00	13:59:00
479	14	267	0	0	14:09:00	14:11:00
479	15	243	0	0	14:27:00	14:29:00
479	16	234	0	0	14:40:00	14:55:00
479	17	1555	0	0	15:49:00	16:02:00
479	18	655	0	0	16:07:00	16:10:00
479	19	627	0	0	16:27:00	
480	1	3269	0	0		07:45:00
480	2	3429	0	0	08:29:00	08:55:00
480	3	3104	0	0	09:16:00	09:17:00
480	4	2513	0	0	12:32:00	12:38:00
480	5	3415	0	0	12:59:00	13:00:00
480	6	3338	0	0	13:13:00	13:14:00
480	7	3455	0	0	13:28:30	13:29:30
480	8	3460	0	0	13:37:30	13:38:30
480	9	4558	0	0	13:49:00	13:50:30
480	10	4685	0	0	14:06:00	14:14:00
480	11	4516	0	0	14:29:00	14:30:30
480	12	4858	0	0	14:37:30	14:38:30
480	13	4738	0	0	15:00:00	15:05:00
480	14	4838	0	0	15:28:00	15:32:00
480	15	5302	0	0	16:01:00	16:05:30
480	16	5433	0	0	16:20:00	16:23:00
480	17	5495	0	0	16:43:00	16:46:00
480	18	5521	0	0	16:55:00	17:07:30
480	19	5795	0	0	17:16:00	17:17:00
480	20	5807	0	0	17:24:00	17:25:00
480	21	6023	0	0	17:40:00	17:45:00
480	22	5980	0	0	17:49:30	17:52:30
480	23	5962	0	0	18:08:00	18:09:00
480	24	5974	0	0	18:15:24	18:16:24
480	25	6040	0	0	18:28:00	18:29:00
480	26	6084	0	0	18:44:00	18:45:00
480	27	6085	0	0	18:51:30	18:52:30
480	28	6092	0	0	18:57:00	18:58:00
480	29	6212	0	0	19:11:00	19:14:00
480	30	6266	0	0	19:26:00	19:27:00
480	31	6275	0	0	19:39:30	19:41:30
480	32	6294	0	0	19:50:30	19:52:30
480	33	6331	0	0	20:00:30	20:01:30
480	34	6347	0	0	20:14:00	20:14:00
480	35	6346	0	0	20:18:00	
481	1	4688	0	0		06:12:00
481	2	4515	0	0	06:26:30	06:27:30
481	3	4857	0	0	06:35:00	06:36:00
481	4	4738	0	0	06:54:30	06:59:30
481	5	5165	0	0	07:26:30	07:31:30
481	6	5302	0	0	07:57:00	08:07:00
481	7	5434	0	0	08:22:00	08:23:30
481	8	5496	0	0	08:44:00	08:46:00
481	9	5522	0	0	08:54:30	08:56:30
481	10	5796	0	0	09:05:00	09:07:00
481	11	5808	0	0	09:14:00	09:17:00
481	12	6025	0	0	09:31:00	09:36:00
481	13	5979	0	0	09:40:30	09:41:30
481	14	5962	0	0	09:57:00	09:58:00
481	15	5974	0	0	10:04:30	10:05:30
481	16	6039	0	0	10:18:00	10:19:30
481	17	6084	0	0	10:34:00	10:35:00
481	18	6085	0	0	10:42:00	10:43:00
481	19	6091	0	0	10:48:00	10:49:00
481	20	6211	0	0	11:01:00	11:04:00
481	21	6266	0	0	11:15:00	11:16:00
481	22	6276	0	0	11:28:00	11:29:00
481	23	6293	0	0	11:38:00	11:39:00
481	24	6331	0	0	11:47:30	11:48:30
481	25	6348	0	0	12:01:00	12:01:00
481	26	6345	0	0	12:05:00	
482	1	3610	0	0		06:31:00
482	2	3605	0	0	06:37:00	06:38:30
482	3	3683	0	0	06:49:30	06:50:30
482	4	3673	0	0	07:09:30	07:11:00
482	5	2808	0	0	07:22:30	07:24:00
482	6	2753	0	0	07:42:30	07:44:00
482	7	2770	0	0	07:48:00	07:53:00
482	8	3031	0	0	07:59:00	08:09:00
482	9	2913	0	0	08:22:00	08:23:00
482	10	2902	0	0	08:30:30	08:31:30
482	11	2963	0	0	08:58:30	08:59:30
482	12	2977	0	0	09:14:00	09:14:30
482	13	1308	0	0	09:24:00	09:25:00
482	14	1297	0	0	09:39:30	09:40:00
482	15	6469	0	0	09:58:00	09:58:30
482	16	6436	0	0	10:15:30	10:15:30
482	17	6428	0	0	10:21:00	
483	1	4683	0	0		06:04:00
483	2	3455	0	0	06:34:00	06:38:00
483	3	3338	0	0	06:53:30	06:58:00
483	4	3416	0	0	07:11:00	07:12:00
483	5	2517	0	0	07:33:06	07:36:00
483	6	2369	0	0	07:53:18	07:54:18
483	7	2378	0	0	08:03:12	08:04:12
483	8	2386	0	0	08:20:00	08:21:00
483	9	2396	0	0	08:32:36	08:33:36
483	10	2407	0	0	08:48:00	08:49:00
483	11	1283	0	0	09:04:24	09:05:24
483	12	70	0	0	09:18:00	09:18:00
483	13	2077	0	0	09:33:00	
484	1	5915	0	0		15:57:00
484	2	5899	0	0	16:12:00	16:13:00
484	3	6023	0	0	17:56:00	18:00:00
484	4	2754	0	0	20:42:30	20:42:30
484	5	2774	0	0	20:48:00	20:48:00
484	6	3031	0	0	20:59:00	
485	1	4585	0	0		19:18:00
485	2	4635	0	0	19:26:00	19:28:00
485	3	5637	0	0	19:31:30	19:32:30
485	4	5596	0	0	19:36:00	19:37:00
485	5	5572	0	0	19:41:00	19:44:00
485	6	5369	0	0	20:00:00	20:01:00
485	7	5885	0	0	20:12:00	20:13:00
485	8	1327	0	0	20:32:00	20:41:00
485	9	1255	0	0	20:58:00	21:00:00
485	10	1307	0	0	21:30:30	21:31:30
485	11	2978	0	0	21:40:30	21:48:30
485	12	2964	0	0	22:04:00	22:05:00
485	13	2901	0	0	22:32:30	22:33:30
485	14	2914	0	0	22:41:36	22:42:36
485	15	3032	0	0	22:55:00	22:58:00
485	16	2772	0	0	23:04:00	23:32:00
485	17	2754	0	0	23:36:00	23:38:00
485	18	4903	1	1	01:36:00	01:56:00
485	19	5602	1	1	02:20:30	02:21:30
485	20	5593	1	1	02:29:00	02:30:00
485	21	5549	1	1	02:43:30	02:51:00
485	22	5521	1	1	03:04:00	03:06:30
485	23	5795	1	1	03:16:00	03:17:00
485	24	5808	1	1	03:24:30	03:25:30
485	25	6024	1	1	03:41:00	03:56:00
485	26	5851	1	1	04:28:00	04:29:00
485	27	1773	1	1	04:51:00	04:52:00
485	28	5866	1	1	04:57:00	04:58:00
485	29	2019	1	1	05:21:00	05:22:00
485	30	5900	1	1	05:51:00	05:52:00
485	31	5913	1	1	06:02:00	06:03:00
485	32	5916	1	0	06:09:00	
486	1	2772	0	0		06:57:00
486	2	3031	0	0	07:03:00	07:04:00
486	3	2159	0	0	08:23:30	08:23:30
486	4	1423	0	0	08:27:30	
487	1	2072	0	0		09:33:00
487	2	70	0	0	09:45:30	09:46:30
487	3	1284	0	0	10:03:00	10:11:00
487	4	2854	0	0	10:30:00	10:31:00
487	5	2839	0	0	10:42:00	10:45:00
487	6	2851	0	0	10:54:00	10:55:00
487	7	2883	0	0	11:08:00	11:09:00
487	8	3104	0	0	11:34:00	11:44:00
487	9	3430	0	0	11:58:00	12:00:00
487	10	4056	0	0	12:25:00	12:25:00
487	11	3678	0	0	13:25:00	13:25:00
487	12	4160	0	0	14:24:00	14:26:00
487	13	4921	0	0	14:51:00	14:52:00
487	14	4767	0	0	15:01:00	15:02:00
487	15	4590	0	0	15:12:00	15:37:00
487	16	4636	0	0	15:45:00	15:46:00
487	17	5637	0	0	15:50:00	15:51:00
487	18	5596	0	0	15:55:00	15:56:00
487	19	5575	0	0	16:01:00	16:05:00
487	20	5370	0	0	16:28:00	16:29:00
487	21	5886	0	0	16:41:00	16:42:00
487	22	6121	0	0	17:01:00	17:04:30
487	23	64	0	0	17:22:00	17:23:00
487	24	58	0	0	17:47:00	17:53:30
487	25	6436	0	0	18:28:30	18:29:30
487	26	6432	0	0	18:33:00	18:38:00
487	27	3	0	0	19:24:00	19:25:00
487	28	24	0	0	19:45:00	19:46:00
487	29	208	0	0	20:07:00	20:08:00
487	30	102	0	0	20:41:30	20:42:30
487	31	129	0	0	20:57:00	21:01:30
487	32	1471	0	0	21:18:30	21:19:30
487	33	1459	0	0	21:29:00	21:30:00
487	34	2155	0	0	21:59:00	21:59:00
487	35	1423	0	0	22:04:00	
488	1	4680	0	0		07:10:00
488	2	3338	0	0	07:54:00	07:55:00
488	3	2517	0	0	08:29:00	08:40:00
488	4	2533	0	0	09:05:30	09:06:30
488	5	1008	0	0	09:35:00	09:36:00
488	6	970	0	0	10:01:00	10:04:00
488	7	5369	0	0	11:12:00	11:13:00
488	8	5577	0	0	11:28:00	11:31:00
488	9	5596	0	0	11:35:00	11:36:00
488	10	5637	0	0	11:39:18	11:40:18
488	11	4636	0	0	11:43:30	11:44:30
488	12	4588	0	0	11:52:00	
489	1	3616	0	0		06:48:00
489	2	3606	0	0	06:54:30	06:55:30
489	3	3683	0	0	07:08:00	07:09:00
489	4	3673	0	0	07:31:00	07:32:30
489	5	2807	0	0	07:46:00	07:47:30
489	6	2753	0	0	08:10:30	08:10:30
489	7	2773	0	0	08:16:00	08:16:00
489	8	3032	0	0	08:27:00	
490	1	3031	0	0		05:57:00
490	2	2773	0	0	06:03:00	06:08:00
490	3	2754	0	0	06:12:00	06:13:00
490	4	4969	0	0	08:24:00	08:28:00
490	5	5022	0	0	08:56:00	08:56:30
490	6	5016	0	0	09:09:30	09:10:00
490	7	5946	0	0	09:36:36	09:37:06
490	8	6026	0	0	10:28:00	
491	1	3032	0	0		05:49:00
491	2	2768	0	0	05:55:00	06:00:00
491	3	2754	0	0	06:03:30	06:05:00
491	4	2518	0	0	08:19:00	08:22:00
491	5	3337	0	0	08:53:00	08:54:00
491	6	4687	0	0	09:38:00	
492	1	3267	0	0		17:45:00
492	2	1688	0	0	17:51:30	17:52:30
492	3	3259	0	0	17:59:30	18:00:30
492	4	3245	0	0	18:08:30	18:09:30
492	5	3248	0	0	18:21:30	18:22:30
492	6	3197	0	0	18:36:00	18:37:00
492	7	3144	0	0	18:51:00	18:52:00
492	8	3191	0	0	19:08:30	19:09:30
492	9	3102	0	0	19:19:00	19:20:00
492	10	3032	0	0	19:40:00	19:41:00
492	11	2774	0	0	19:47:00	19:52:00
492	12	2753	0	0	19:56:00	
493	1	4581	0	0		18:23:00
493	2	4635	0	0	18:30:30	18:31:30
493	3	5637	0	0	18:34:30	18:35:30
493	4	5596	0	0	18:39:00	18:40:00
493	5	5575	0	0	18:44:00	18:47:00
493	6	5370	0	0	19:04:00	19:16:00
493	7	5885	0	0	19:27:00	19:31:00
493	8	1327	0	0	19:50:00	19:51:00
493	9	1255	0	0	20:07:00	20:08:00
493	10	1307	0	0	20:39:00	20:40:00
493	11	2978	0	0	20:48:30	20:49:30
493	12	2964	0	0	21:04:00	21:05:00
493	13	2901	0	0	21:32:30	21:33:30
493	14	2914	0	0	21:41:30	21:42:30
493	15	3032	0	0	21:55:00	21:57:00
493	16	2774	0	0	22:03:00	22:08:00
493	17	2754	0	0	22:12:00	
494	1	5478	0	0		17:20:00
494	2	5496	0	0	17:34:00	17:39:00
494	3	5549	0	0	18:00:00	18:01:30
494	4	5593	0	0	18:13:30	18:15:00
494	5	5601	0	0	18:23:00	18:25:00
494	6	4887	0	0	18:40:00	18:42:00
494	7	3754	0	0	19:10:30	19:12:30
494	8	3728	0	0	19:41:30	19:48:00
494	9	3605	0	0	20:24:00	20:26:00
494	10	3629	0	0	20:32:36	20:33:36
494	11	3642	0	0	20:40:00	20:46:00
494	12	3644	0	0	20:50:30	20:51:30
494	13	3646	0	0	20:56:42	20:57:42
494	14	2662	0	0	21:15:30	21:21:00
494	15	2657	0	0	21:28:30	21:29:00
494	16	2610	0	0	21:52:00	21:53:00
494	17	2632	0	0	22:13:30	22:14:30
494	18	2640	0	0	22:28:00	
495	1	4581	0	0		13:52:00
495	2	4635	0	0	13:59:00	14:00:30
495	3	5637	0	0	14:03:30	14:04:30
495	4	5595	0	0	14:08:00	14:09:00
495	5	5576	0	0	14:13:00	14:16:00
495	6	3032	0	0	16:55:00	17:01:00
495	7	2767	0	0	17:07:00	17:16:00
495	8	2753	0	0	17:20:00	17:21:30
495	9	5594	0	0	19:07:30	19:08:30
495	10	5562	0	0	19:34:30	19:38:00
495	11	5482	0	0	19:54:00	20:09:00
495	12	5516	0	0	20:31:36	20:36:30
495	13	5645	0	0	20:54:00	20:55:00
495	14	5658	0	0	21:02:00	21:03:00
495	15	5666	0	0	21:12:00	
496	1	5265	0	0		04:56:00
496	2	5282	0	0	05:08:00	05:08:30
496	3	5165	0	0	05:24:00	05:34:00
496	4	5308	0	0	06:01:00	06:02:00
496	5	5311	0	0	06:08:00	06:09:00
496	6	5475	0	0	06:24:00	06:27:00
496	7	5495	0	0	06:41:00	06:43:00
496	8	5549	0	0	07:04:00	07:05:30
496	9	5594	0	0	07:18:00	07:23:00
496	10	5601	0	0	07:30:00	07:31:00
496	11	4887	0	0	07:46:00	07:56:00
496	12	2753	0	0	09:50:30	09:51:30
496	13	2772	0	0	09:55:30	10:01:00
496	14	3031	0	0	10:07:00	10:09:00
496	15	2913	0	0	10:22:00	10:23:00
496	16	2901	0	0	10:30:30	10:31:30
496	17	2964	0	0	10:57:30	10:58:30
496	18	2978	0	0	11:13:30	11:14:00
496	19	1307	0	0	11:24:00	11:25:00
496	20	1298	0	0	11:39:30	11:40:00
496	21	6470	0	0	11:58:00	11:58:30
496	22	6435	0	0	12:15:30	12:15:30
496	23	6434	0	0	12:21:00	
497	1	2774	0	0		10:49:00
497	2	3032	0	0	10:55:00	11:02:00
497	3	2914	0	0	11:19:00	11:19:30
497	4	2902	0	0	11:27:30	11:28:00
497	5	2964	0	0	12:05:00	12:06:00
497	6	2978	0	0	12:32:30	12:33:30
497	7	1308	0	0	12:43:00	12:44:00
497	8	1297	0	0	12:58:00	12:59:00
497	9	6469	0	0	13:17:00	13:18:00
497	10	6436	0	0	13:36:00	13:36:00
497	11	6433	0	0	13:40:00	
498	1	3104	0	0		12:57:00
498	2	1283	0	0	14:09:00	14:29:00
498	3	2385	0	0	15:09:00	15:19:00
498	4	2519	0	0	16:17:00	16:31:00
498	5	3416	0	0	16:52:00	16:53:00
498	6	3338	0	0	17:06:00	17:07:00
498	7	3456	0	0	17:23:00	17:24:00
498	8	3460	0	0	17:32:24	17:33:24
498	9	4558	0	0	17:43:42	17:44:42
498	10	4690	0	0	18:00:00	18:13:00
498	11	4515	0	0	18:28:00	18:29:00
498	12	4857	0	0	18:37:00	18:38:00
498	13	4737	0	0	18:57:00	19:00:00
498	14	4837	0	0	19:24:00	19:30:00
498	15	5301	0	0	20:03:00	20:06:00
498	16	5312	0	0	20:12:30	20:13:30
498	17	5476	0	0	20:30:00	20:34:00
498	18	5496	0	0	20:50:30	20:52:00
498	19	5521	0	0	21:01:00	21:05:00
498	20	5796	0	0	21:14:00	21:15:30
498	21	5807	0	0	21:23:30	21:24:30
498	22	6027	0	0	21:46:00	
499	1	4685	0	0		13:30:00
499	2	4169	0	0	14:03:00	14:04:00
499	3	4205	0	0	14:14:30	14:15:30
499	4	4202	0	0	14:28:00	14:29:00
499	5	4106	0	0	14:41:00	14:45:00
499	6	431	0	0	15:24:00	15:26:00
499	7	429	0	0	15:43:00	15:45:00
499	8	542	0	0	17:17:00	
500	1	6211	0	0		06:00:00
500	2	6084	0	0	06:22:30	06:23:00
500	3	6040	0	0	06:38:30	06:39:30
500	4	5962	0	0	06:57:42	06:58:12
500	5	5980	0	0	07:14:30	07:15:00
500	6	6023	0	0	07:20:00	07:25:00
500	7	2754	0	0	10:14:30	10:15:30
500	8	2770	0	0	10:20:00	10:29:00
500	9	3032	0	0	10:35:00	10:37:00
500	10	1256	0	0	12:02:30	12:03:00
500	11	5886	0	0	12:36:30	12:37:00
500	12	5370	0	0	12:47:30	12:48:00
500	13	5577	0	0	13:01:00	13:01:00
500	14	5595	0	0	13:07:00	13:07:00
500	15	5637	0	0	13:12:00	13:12:00
500	16	4636	0	0	13:17:00	13:17:00
500	17	4581	0	0	13:27:00	
501	1	6427	0	0		07:34:00
501	2	6435	0	0	07:37:00	07:38:00
501	3	6469	0	0	07:55:30	07:56:00
501	4	1298	0	0	08:14:00	08:14:30
501	5	1308	0	0	08:29:00	08:35:18
501	6	2978	0	0	08:44:18	08:44:48
501	7	2963	0	0	08:59:48	09:00:48
501	8	2902	0	0	09:28:00	09:29:00
501	9	2913	0	0	09:37:30	09:38:30
501	10	3032	0	0	09:51:00	09:53:00
501	11	2770	0	0	09:59:00	10:08:00
501	12	2754	0	0	10:12:00	10:14:30
501	13	2763	0	0	10:21:30	10:22:30
501	14	2790	0	0	10:30:00	10:32:30
501	15	3811	0	0	10:48:00	10:49:00
501	16	3794	0	0	11:10:00	11:14:00
501	17	3756	0	0	11:39:00	11:45:00
501	18	4974	0	0	12:43:00	12:45:00
501	19	5021	0	0	13:13:00	13:13:30
501	20	5016	0	0	13:26:30	13:27:00
501	21	5946	0	0	13:51:48	13:58:48
501	22	6031	0	0	14:57:00	
502	1	5137	0	0		04:44:00
502	2	5140	0	0	04:58:00	04:59:00
502	3	1769	0	0	05:31:30	05:32:30
502	4	1767	0	0	05:35:30	05:36:30
502	5	5123	0	0	05:39:30	05:41:00
502	6	5131	0	0	05:52:00	06:17:00
502	7	1726	0	0	06:37:30	06:38:30
502	8	4060	0	0	06:51:00	06:52:00
502	9	4007	0	0	07:39:00	07:40:00
502	10	4013	0	0	07:51:00	
503	1	4584	0	0		08:53:00
503	2	4635	0	0	09:01:30	09:02:30
503	3	5637	0	0	09:07:00	09:08:00
503	4	5595	0	0	09:12:30	09:13:30
503	5	5577	0	0	09:18:00	09:20:00
503	6	5369	0	0	09:43:00	09:44:00
503	7	5885	0	0	09:59:00	10:00:00
503	8	6047	0	0	10:12:36	10:13:36
503	9	1339	0	0	10:33:30	10:34:30
503	10	1154	0	0	11:05:00	11:25:00
503	11	1189	0	0	11:58:30	12:00:00
503	12	1211	0	0	12:18:00	12:22:30
503	13	1216	0	0	12:46:00	12:47:00
503	14	2672	0	0	13:12:30	13:13:30
503	15	2667	0	0	13:45:00	13:45:00
503	16	2609	0	0	15:20:00	15:20:00
503	17	2657	0	0	15:49:00	15:55:30
503	18	2662	0	0	16:03:12	16:04:12
503	19	3645	0	0	16:26:12	16:27:12
503	20	3643	0	0	16:32:18	16:33:18
503	21	3642	0	0	16:37:30	16:38:30
503	22	3634	0	0	16:48:12	16:49:12
503	23	3637	0	0	16:59:12	17:00:12
503	24	1050	0	0	17:11:00	17:12:00
503	25	4882	0	0	18:15:00	18:17:00
503	26	4905	0	0	18:21:30	18:22:30
503	27	5359	0	0	18:57:00	18:59:00
503	28	5433	0	0	19:10:00	19:12:00
503	29	5431	0	0	19:18:00	19:19:00
503	30	5482	0	0	19:29:00	
504	1	4590	0	0		15:31:00
504	2	4635	0	0	15:38:30	15:39:30
504	3	5637	0	0	15:43:00	15:44:00
504	4	5595	0	0	15:48:00	15:49:00
504	5	5575	0	0	15:53:30	15:55:30
504	6	5370	0	0	16:08:30	16:09:00
504	7	5885	0	0	16:19:30	16:20:00
504	8	1255	0	0	16:52:30	16:53:00
504	9	3031	0	0	18:23:00	18:25:00
504	10	2774	0	0	18:31:00	18:40:00
504	11	2754	0	0	18:44:00	18:45:00
504	12	6026	0	0	21:31:00	21:34:00
504	13	5980	0	0	21:39:00	21:39:30
504	14	5961	0	0	21:56:00	21:56:30
504	15	6040	0	0	22:14:00	22:15:00
504	16	6083	0	0	22:31:00	22:31:30
504	17	6214	0	0	22:54:00	
505	1	3031	0	0		19:29:00
505	2	2774	0	0	19:35:00	19:40:00
505	3	2753	0	0	19:44:00	19:45:00
505	4	6026	0	0	22:33:00	
506	1	4587	0	0		17:53:00
506	2	4636	0	0	18:00:30	18:01:30
506	3	5638	0	0	18:05:00	18:06:00
506	4	5596	0	0	18:09:30	18:10:30
506	5	5573	0	0	18:15:00	18:18:00
506	6	5369	0	0	18:33:00	18:34:00
506	7	5886	0	0	18:45:00	18:46:00
506	8	1327	0	0	19:05:00	19:06:00
506	9	1255	0	0	19:23:00	19:24:00
506	10	1307	0	0	19:54:30	19:55:30
506	11	2977	0	0	20:04:00	20:05:00
506	12	2964	0	0	20:19:30	20:20:30
506	13	2902	0	0	20:48:00	20:49:00
506	14	2914	0	0	20:58:00	21:00:00
506	15	3031	0	0	21:28:00	21:28:00
506	16	2769	0	0	21:39:00	21:39:00
506	17	2754	0	0	21:48:00	
507	1	4680	0	0		05:03:00
507	2	4557	0	0	05:17:00	05:18:00
507	3	3459	0	0	05:28:00	05:29:00
507	4	3455	0	0	05:37:00	05:38:00
507	5	3337	0	0	05:53:00	05:54:00
507	6	3415	0	0	06:07:00	06:08:00
507	7	2516	0	0	06:29:00	06:40:00
507	8	2533	0	0	07:05:00	07:06:00
507	9	2599	0	0	07:20:30	07:21:30
507	10	1007	0	0	07:36:00	07:37:00
507	11	974	0	0	08:02:00	08:05:00
507	12	767	0	0	08:34:00	08:38:00
507	13	5369	0	0	09:15:00	09:18:00
507	14	5572	0	0	09:33:00	09:37:00
507	15	5595	0	0	09:41:00	09:42:00
507	16	5638	0	0	09:45:00	09:46:00
507	17	4636	0	0	09:49:00	09:50:00
507	18	4588	0	0	09:58:00	
508	1	4584	0	0		06:50:00
508	2	4635	0	0	06:59:30	07:00:30
508	3	5638	0	0	07:05:00	07:06:00
508	4	5596	0	0	07:10:30	07:11:30
508	5	5578	0	0	07:16:00	07:19:00
508	6	5370	0	0	07:43:00	08:05:00
508	7	6384	0	0	08:24:30	08:25:30
508	8	6420	0	0	08:44:00	08:45:00
508	9	6413	0	0	08:53:00	08:54:00
508	10	6416	0	0	08:58:00	08:59:00
508	11	6401	0	0	09:06:00	09:10:00
508	12	641	0	0	09:34:00	09:35:00
508	13	616	0	0	09:58:30	09:59:30
508	14	612	0	0	10:15:30	10:16:30
508	15	617	0	0	10:24:00	10:25:00
508	16	500	0	0	10:43:00	11:02:00
508	17	519	0	0	11:21:00	11:22:00
508	18	2401	0	0	11:40:00	11:41:00
508	19	2386	0	0	11:51:00	11:52:00
508	20	2400	0	0	12:04:00	12:05:00
508	21	488	0	0	12:18:30	12:19:30
508	22	1804	0	0	12:40:30	12:41:30
508	23	398	0	0	12:44:00	12:48:00
508	24	422	0	0	13:07:30	13:08:30
508	25	351	0	0	13:26:00	
509	1	3032	0	0		03:07:00
509	2	2773	0	0	03:13:00	03:15:00
509	3	2753	0	0	03:18:30	03:19:30
509	4	6032	0	0	06:41:12	06:44:00
509	5	5900	0	0	09:57:48	10:01:00
509	6	5914	0	0	10:10:24	10:11:30
509	7	5915	0	0	10:17:06	
510	1	1630	0	0		07:48:00
510	2	1611	0	0	07:59:00	08:00:00
510	3	925	0	0	08:47:00	08:50:00
510	4	1752	0	0	09:07:00	09:13:00
510	5	2318	0	0	09:37:18	09:38:18
510	6	1820	0	0	09:50:00	09:51:00
510	7	2520	0	0	10:33:00	10:36:00
510	8	2716	0	0	11:21:00	11:22:00
510	9	2610	0	0	11:57:00	11:58:00
510	10	2753	0	0	12:55:00	12:55:00
510	11	2768	0	0	13:00:00	13:00:00
510	12	3031	0	0	13:15:00	
511	1	154	0	0		11:06:00
511	2	160	0	0	13:52:00	13:54:00
511	3	157	0	0	15:27:00	15:32:00
511	4	176	0	0	16:53:00	16:55:00
511	5	177	0	0	18:24:00	19:13:00
511	6	6345	0	0	19:55:00	
512	1	5665	0	0		15:54:00
512	2	5658	0	0	16:03:00	16:10:00
512	3	5776	0	0	16:25:30	16:26:30
512	4	5813	0	0	16:42:00	16:43:00
512	5	6028	0	0	17:16:00	
513	1	6428	0	0		19:52:00
513	2	6435	0	0	19:55:00	19:56:00
513	3	6470	0	0	20:21:00	20:22:00
513	4	1297	0	0	20:40:30	20:51:30
513	5	1308	0	0	21:05:00	21:06:00
513	6	2977	0	0	21:14:30	21:15:30
513	7	2964	0	0	21:29:30	21:30:30
513	8	2902	0	0	21:58:30	21:59:30
513	9	2913	0	0	22:07:30	22:12:30
513	10	3031	0	0	22:29:00	22:29:00
513	11	2771	0	0	22:41:00	22:41:00
513	12	2754	0	0	22:48:00	
514	1	3612	0	0		17:43:00
514	2	3605	0	0	17:47:24	17:48:24
514	3	2753	0	0	18:43:00	18:43:00
514	4	2771	0	0	18:48:00	18:48:00
514	5	3031	0	0	18:59:00	
515	1	978	0	0		07:36:00
515	2	968	0	0	07:40:12	07:40:42
515	3	746	0	0	07:44:00	07:44:30
515	4	1082	0	0	08:12:00	08:16:00
515	5	1232	0	0	08:45:24	08:46:30
515	6	2753	0	0	10:11:00	10:11:00
515	7	2770	0	0	10:16:00	
516	1	2071	0	0		05:43:00
516	2	70	0	0	05:54:30	05:55:30
516	3	1284	0	0	06:10:00	06:11:00
516	4	2385	0	0	06:49:00	06:50:00
516	5	2515	0	0	07:29:00	07:41:00
516	6	2754	0	0	09:54:30	09:54:30
516	7	2768	0	0	09:59:30	09:59:30
516	8	3031	0	0	10:15:00	
517	1	354	0	0		07:55:00
517	2	357	0	0	08:37:00	08:44:00
517	3	360	0	0	08:56:00	08:57:00
517	4	362	0	0	09:08:00	09:09:00
517	5	377	0	0	09:19:00	09:23:00
517	6	375	0	0	09:48:00	09:51:00
517	7	374	0	0	10:44:00	10:46:00
517	8	371	0	0	11:53:00	11:55:00
517	9	233	0	0	12:06:00	12:15:00
517	10	244	0	0	12:26:00	12:28:00
517	11	268	0	0	12:44:00	12:46:00
517	12	265	0	0	12:55:00	12:57:00
517	13	258	0	0	13:13:00	13:15:00
517	14	241	0	0	13:36:00	13:38:00
517	15	251	0	0	14:05:00	14:07:00
517	16	250	0	0	14:13:00	14:16:00
517	17	937	0	0	14:23:00	14:51:00
517	18	5609	0	0	15:12:00	15:13:00
517	19	5646	0	0	16:05:30	16:06:30
517	20	5515	0	0	16:26:00	16:34:00
517	21	5481	0	0	16:53:00	16:58:00
517	22	5563	0	0	17:12:00	17:16:00
517	23	5556	0	0	17:25:30	17:31:00
517	24	5594	0	0	17:47:30	17:48:30
517	25	5054	0	0	18:19:00	18:20:00
517	26	3874	0	0	18:47:00	18:48:00
517	27	2753	0	0	19:39:00	19:40:00
517	28	2771	0	0	19:44:00	19:49:00
517	29	3031	0	0	19:55:00	
518	1	3032	0	0		06:01:00
518	2	2767	0	0	06:07:00	06:12:00
518	3	2754	0	0	06:16:00	06:17:00
518	4	2808	0	0	06:36:06	06:37:06
518	5	3674	0	0	06:48:18	06:49:18
518	6	3684	0	0	07:08:06	07:09:06
518	7	3605	0	0	07:23:00	07:25:00
518	8	3630	0	0	07:31:36	07:32:36
518	9	3633	0	0	07:46:24	07:47:24
518	10	3637	0	0	07:57:24	07:57:54
518	11	1053	0	0	08:05:18	08:06:18
518	12	1057	0	0	08:17:30	08:18:30
518	13	3515	0	0	08:54:00	08:55:30
518	14	3559	0	0	09:13:12	09:14:12
518	15	3421	0	0	09:36:24	09:37:24
518	16	4664	0	0	09:51:30	09:52:30
518	17	4642	0	0	10:15:00	10:16:00
518	18	4647	0	0	10:25:30	10:26:30
518	19	4601	0	0	10:45:24	10:45:24
518	20	4547	0	0	10:50:30	10:50:30
518	21	4682	0	0	10:56:00	
519	1	4586	0	0		18:31:00
519	2	4635	0	0	18:38:36	18:39:36
519	3	5637	0	0	18:43:00	18:44:00
519	4	5596	0	0	18:48:00	18:49:00
519	5	5571	0	0	18:53:30	18:55:30
519	6	5369	0	0	19:08:30	19:09:00
519	7	5885	0	0	19:19:30	19:20:00
519	8	1256	0	0	19:52:30	19:53:00
519	9	3031	0	0	21:23:00	21:23:00
519	10	2771	0	0	21:31:00	21:31:00
519	11	2754	0	0	21:40:00	
520	1	1032	0	0		16:30:00
520	2	4013	0	0	19:54:00	
521	1	397	0	0		18:24:00
521	2	1803	0	0	18:27:00	18:28:00
521	3	488	0	0	18:48:00	18:49:00
521	4	2399	0	0	19:01:00	19:02:00
521	5	2385	0	0	19:12:00	19:13:00
521	6	2516	0	0	19:57:00	20:03:00
521	7	2469	0	0	20:27:00	20:28:30
521	8	3480	0	0	20:48:00	
522	1	1556	0	0		08:10:00
522	2	233	0	0	09:04:00	09:15:00
522	3	243	0	0	09:26:00	09:28:00
522	4	268	0	0	09:44:00	09:46:00
522	5	266	0	0	09:55:00	09:57:00
522	6	258	0	0	10:13:00	10:15:00
522	7	242	0	0	10:36:00	10:38:00
522	8	252	0	0	11:05:00	11:07:00
522	9	249	0	0	11:13:00	11:16:00
522	10	937	0	0	11:23:00	11:35:00
522	11	5610	0	0	11:53:30	11:54:30
522	12	5658	0	0	12:29:00	12:30:00
522	13	5775	0	0	12:45:00	13:03:00
522	14	5814	0	0	13:16:30	13:17:30
522	15	5795	0	0	13:21:00	13:22:00
522	16	5807	0	0	13:29:30	13:30:30
522	17	6024	0	0	13:46:00	
523	1	659	0	0		05:36:00
523	2	658	0	0	06:11:00	06:13:00
523	3	655	0	0	07:58:00	08:00:00
523	4	1555	0	0	08:05:00	08:10:00
523	5	233	0	0	09:04:00	09:15:00
523	6	243	0	0	09:26:00	09:28:00
523	7	268	0	0	09:44:00	09:46:00
523	8	266	0	0	09:55:00	09:57:00
523	9	257	0	0	10:13:00	10:15:00
523	10	242	0	0	10:36:00	10:38:00
523	11	251	0	0	11:05:00	11:07:00
523	12	250	0	0	11:13:00	11:16:00
523	13	937	0	0	11:37:00	11:37:00
523	14	5210	0	0	11:43:00	11:44:00
523	15	5266	0	0	11:57:30	11:58:30
523	16	5166	0	0	12:24:00	12:25:42
523	17	4737	0	0	12:46:30	12:48:30
523	18	4687	0	0	13:27:00	
524	1	3031	0	0		21:21:00
524	2	2769	0	0	21:27:00	21:30:00
524	3	2753	0	0	21:34:00	21:35:00
524	4	2836	0	0	22:00:18	22:01:18
524	5	2692	0	0	22:13:42	22:24:00
524	6	2610	0	0	22:47:00	22:48:00
524	7	1231	0	0	23:17:30	23:18:30
524	8	1220	0	0	23:37:30	23:38:30
524	9	1080	0	0	23:51:00	23:53:00
524	10	1101	1	1	00:14:54	00:15:54
524	11	746	1	1	00:23:30	00:23:30
524	12	968	1	1	00:27:30	00:27:30
524	13	971	1	0	00:33:00	
525	1	2521	0	0		12:29:00
525	2	2386	0	0	13:13:00	13:14:00
525	3	2399	0	0	13:23:30	13:24:30
525	4	487	0	0	13:37:00	13:38:00
525	5	1804	0	0	13:57:30	13:58:30
525	6	397	0	0	14:01:00	
526	1	6024	0	0		09:58:00
526	2	5813	0	0	10:26:30	10:27:30
526	3	5775	0	0	10:41:30	10:42:30
526	4	5658	0	0	10:58:00	11:10:00
526	5	5665	0	0	11:19:00	
527	1	1630	0	0		14:52:00
527	2	1611	0	0	14:59:00	15:00:00
527	3	926	0	0	15:50:00	15:50:00
527	4	1752	0	0	16:07:00	16:13:00
527	5	2318	0	0	16:37:18	16:38:18
527	6	1820	0	0	16:50:00	16:51:00
527	7	2512	0	0	17:33:00	17:36:00
527	8	2533	0	0	18:01:30	18:02:30
527	9	1008	0	0	18:29:30	18:30:30
527	10	975	0	0	18:55:00	18:58:00
527	11	5369	0	0	20:03:00	20:04:00
527	12	5573	0	0	20:18:30	20:21:30
527	13	5596	0	0	20:25:00	20:26:00
527	14	5638	0	0	20:29:00	20:30:00
527	15	4636	0	0	20:33:30	20:35:30
527	16	4581	0	0	20:43:00	
528	1	6214	0	0		05:12:00
528	2	6266	0	0	05:24:00	05:27:00
528	3	6286	0	0	06:00:00	06:03:00
528	4	6289	0	0	06:09:00	06:11:00
528	5	5077	0	0	06:22:00	06:25:00
528	6	5070	0	0	06:36:00	06:37:00
528	7	5060	0	0	06:44:00	06:45:00
528	8	5057	0	0	06:47:30	06:49:30
528	9	5088	0	0	07:05:30	07:06:30
528	10	4089	0	0	07:28:30	07:29:30
528	11	4014	0	0	07:56:00	08:26:00
528	12	1881	0	0	08:31:00	08:32:00
528	13	3988	0	0	08:44:00	08:45:00
528	14	3978	0	0	08:55:30	08:56:30
528	15	3962	0	0	09:07:00	09:08:00
528	16	3119	0	0	09:31:00	09:33:00
528	17	3031	0	0	10:11:00	10:13:00
528	18	2770	0	0	10:19:00	10:32:00
528	19	2753	0	0	10:35:30	10:37:00
528	20	2835	0	0	11:02:30	11:03:30
528	21	2691	0	0	11:16:30	11:17:30
528	22	2609	0	0	11:37:00	11:38:00
528	23	1231	0	0	12:08:00	12:09:00
528	24	1220	0	0	12:28:00	12:29:00
528	25	1080	0	0	12:42:00	12:44:00
528	26	1101	0	0	13:04:00	13:05:00
528	27	745	0	0	13:13:00	13:13:00
528	28	968	0	0	13:17:30	13:17:30
528	29	972	0	0	13:23:00	
529	1	6310	0	0		06:40:00
529	2	6152	0	0	07:02:00	07:03:00
529	3	6144	0	0	07:12:30	07:13:30
529	4	6071	0	0	07:58:30	07:59:30
529	5	6061	0	0	08:13:00	08:14:00
529	6	6040	0	0	08:33:30	08:34:30
529	7	5980	0	0	09:13:00	09:14:00
529	8	6026	0	0	09:20:00	
530	1	5211	0	0		16:20:00
530	2	5197	0	0	16:30:00	16:31:00
530	3	5202	0	0	16:35:00	16:36:00
530	4	5200	0	0	16:43:30	16:49:00
530	5	5186	0	0	16:55:00	16:56:00
530	6	5187	0	0	17:04:00	17:07:00
530	7	5163	0	0	17:18:30	17:19:30
530	8	4583	0	0	17:50:00	18:15:00
530	9	4636	0	0	18:22:30	18:24:30
530	10	5638	0	0	18:28:00	18:29:00
530	11	5595	0	0	18:32:30	18:33:30
530	12	5573	0	0	18:38:00	18:43:00
530	13	5370	0	0	18:57:00	19:02:00
530	14	5885	0	0	19:13:00	19:14:00
530	15	1255	0	0	19:47:00	19:48:00
530	16	3032	0	0	21:20:30	21:29:00
530	17	2770	0	0	21:35:00	21:40:00
530	18	2754	0	0	21:44:00	
531	1	2513	0	0		03:44:00
531	2	2343	0	0	03:54:30	03:55:30
531	3	2444	0	0	04:15:00	04:16:00
531	4	2464	0	0	04:28:00	04:29:00
531	5	2716	0	0	04:42:00	04:43:00
531	6	2723	0	0	04:56:00	04:57:00
531	7	2609	0	0	05:21:00	05:23:00
531	8	2692	0	0	05:43:00	05:44:00
531	9	2835	0	0	05:56:00	05:57:00
531	10	2753	0	0	06:22:30	06:22:30
531	11	2767	0	0	06:28:00	06:28:00
531	12	3032	0	0	06:43:00	
532	1	2518	0	0		05:42:00
532	2	2385	0	0	06:23:00	06:34:00
532	3	1284	0	0	07:15:00	07:42:00
532	4	3103	0	0	08:55:00	09:01:00
532	5	3430	0	0	09:15:00	09:20:00
532	6	4055	0	0	09:51:00	
533	1	6023	0	0		16:29:00
533	2	2753	0	0	19:14:30	19:20:00
533	3	2771	0	0	19:24:30	19:29:00
533	4	3031	0	0	19:35:00	19:37:00
533	5	1255	0	0	21:02:30	21:03:00
533	6	5885	0	0	21:36:30	21:37:00
533	7	5369	0	0	21:47:30	21:48:00
533	8	5572	0	0	22:01:00	22:01:00
533	9	5596	0	0	22:07:00	22:07:00
533	10	5638	0	0	22:12:00	22:12:00
533	11	4636	0	0	22:17:00	22:17:00
533	12	4588	0	0	22:27:00	
534	1	628	0	0		11:33:00
534	2	656	0	0	11:50:00	11:53:00
534	3	1556	0	0	11:58:00	12:10:00
534	4	234	0	0	13:04:00	13:15:00
534	5	244	0	0	13:26:00	13:28:00
534	6	268	0	0	13:44:00	13:46:00
534	7	265	0	0	13:55:00	13:57:00
534	8	258	0	0	14:13:00	14:15:00
534	9	242	0	0	14:36:00	14:38:00
534	10	252	0	0	15:06:00	15:08:00
534	11	250	0	0	15:14:00	15:16:00
534	12	937	0	0	15:23:00	15:42:00
534	13	5610	0	0	16:10:00	16:21:00
534	14	5657	0	0	17:07:06	17:08:06
534	15	5775	0	0	17:22:30	17:23:30
534	16	5980	0	0	18:18:00	
535	1	3267	0	0		06:39:00
535	2	1687	0	0	06:45:12	06:46:12
535	3	3260	0	0	06:53:00	06:54:00
535	4	3246	0	0	07:02:00	07:03:00
535	5	3247	0	0	07:14:00	07:15:00
535	6	3197	0	0	07:27:30	07:28:30
535	7	3144	0	0	07:41:30	07:42:30
535	8	3192	0	0	07:57:00	07:59:00
535	9	3101	0	0	08:08:00	08:09:00
535	10	3031	0	0	08:34:00	08:34:00
535	11	2770	0	0	08:42:00	08:42:00
535	12	2754	0	0	08:52:00	
536	1	3267	0	0		14:37:00
536	2	1688	0	0	14:43:30	14:44:00
536	3	3260	0	0	14:51:00	14:51:30
536	4	3245	0	0	15:00:00	15:01:00
536	5	3248	0	0	15:12:30	15:13:30
536	6	3198	0	0	15:26:30	15:27:30
536	7	3144	0	0	15:41:00	15:42:00
536	8	3192	0	0	15:58:00	15:58:30
536	9	3102	0	0	16:08:00	16:09:00
536	10	3032	0	0	16:33:30	16:33:30
536	11	2771	0	0	16:43:00	16:43:00
536	12	2753	0	0	16:52:00	
537	1	2511	0	0		13:51:00
537	2	2344	0	0	14:01:00	14:04:00
537	3	2443	0	0	14:24:30	14:29:00
537	4	2464	0	0	14:49:18	14:51:12
537	5	2716	0	0	15:04:30	15:11:30
537	6	2724	0	0	15:26:30	15:29:00
537	7	2610	0	0	15:53:00	16:05:30
537	8	2691	0	0	16:25:30	16:26:30
537	9	2835	0	0	16:39:00	16:40:00
537	10	2754	0	0	17:06:06	17:08:00
537	11	2773	0	0	17:12:00	17:17:00
537	12	3031	0	0	17:23:00	17:24:00
537	13	3102	0	0	17:50:00	17:51:00
537	14	3191	0	0	17:59:06	18:00:06
537	15	3144	0	0	18:14:48	18:15:48
537	16	3197	0	0	18:28:24	18:29:24
537	17	3248	0	0	18:42:00	18:43:00
537	18	3246	0	0	18:54:00	18:55:00
537	19	3260	0	0	19:03:00	19:04:00
537	20	1687	0	0	19:10:30	19:11:30
537	21	3268	0	0	19:18:00	
538	1	4581	0	0		11:31:00
538	2	4636	0	0	11:38:30	11:39:30
538	3	5637	0	0	11:43:00	11:44:00
538	4	5595	0	0	11:48:00	11:49:00
538	5	5575	0	0	11:53:30	11:55:30
538	6	5369	0	0	12:08:30	12:09:00
538	7	5885	0	0	12:19:30	12:20:00
538	8	1256	0	0	12:52:30	12:53:00
538	9	3032	0	0	14:23:00	14:25:00
538	10	2767	0	0	14:31:00	14:44:00
538	11	2754	0	0	14:48:00	14:49:00
538	12	6028	0	0	17:33:00	17:35:00
538	13	5899	0	0	19:16:00	19:17:00
538	14	5915	0	0	19:32:00	
539	1	6312	0	0		06:12:00
539	2	6307	0	0	06:21:00	06:22:00
539	3	6310	0	0	06:38:00	06:40:00
539	4	6152	0	0	07:02:00	07:03:00
539	5	6143	0	0	07:12:30	07:13:30
539	6	6071	0	0	07:58:30	07:59:30
539	7	6062	0	0	08:13:00	08:14:00
539	8	6039	0	0	08:33:30	08:34:30
539	9	5979	0	0	09:13:00	09:14:00
539	10	6029	0	0	09:20:00	
540	1	3031	0	0		05:09:00
540	2	2771	0	0	05:15:00	05:20:00
540	3	2753	0	0	05:23:30	05:26:00
540	4	4903	0	0	07:20:30	07:25:00
540	5	5372	0	0	07:45:30	07:48:00
540	6	4738	0	0	08:34:30	08:41:30
540	7	4857	0	0	09:02:00	09:03:00
540	8	4516	0	0	09:10:00	09:11:00
540	9	4685	0	0	09:26:00	09:46:00
540	10	4230	0	0	10:16:00	10:20:00
540	11	4235	0	0	10:27:30	10:28:30
540	12	4240	0	0	10:42:00	10:45:00
540	13	4278	0	0	10:55:00	10:58:00
540	14	4306	0	0	11:23:00	11:24:00
540	15	4313	0	0	11:44:00	11:44:00
540	16	4352	0	0	12:39:00	12:39:00
540	17	4354	0	0	12:44:00	12:44:00
540	18	4355	0	0	12:51:00	
541	1	2521	0	0		14:27:00
541	2	3337	0	0	15:01:00	15:02:00
541	3	4683	0	0	15:50:00	15:59:00
541	4	4737	0	0	16:54:00	16:59:00
541	5	5307	0	0	17:55:30	17:57:00
541	6	5433	0	0	18:11:30	18:12:30
541	7	5496	0	0	18:34:00	18:35:00
541	8	6027	0	0	19:24:00	
542	1	713	0	0		12:28:00
542	2	640	0	0	12:47:00	12:56:00
542	3	70	0	0	13:41:00	13:41:30
542	4	2073	0	0	13:55:00	
543	1	2077	0	0		17:08:00
543	2	70	0	0	17:21:00	17:22:00
543	3	1283	0	0	17:38:00	17:40:00
543	4	2853	0	0	17:59:00	18:00:00
543	5	2840	0	0	18:10:00	18:11:00
543	6	2852	0	0	18:19:30	18:20:30
543	7	2884	0	0	18:34:00	18:35:00
543	8	3104	0	0	18:55:00	19:01:00
543	9	3430	0	0	19:16:00	19:18:00
543	10	4056	0	0	19:40:00	19:40:00
543	11	3678	0	0	20:49:00	20:49:00
543	12	4160	0	0	21:37:00	21:39:00
543	13	4922	0	0	21:59:00	22:05:00
543	14	4768	0	0	22:13:30	22:14:30
543	15	4581	0	0	22:24:00	22:26:00
543	16	4635	0	0	22:33:30	22:34:30
543	17	5638	0	0	22:38:00	22:39:00
543	18	5595	0	0	22:43:00	22:44:00
543	19	5573	0	0	22:48:00	
544	1	3268	0	0		18:37:00
544	2	1687	0	0	18:43:30	18:44:00
544	3	3260	0	0	18:51:00	18:52:00
544	4	3245	0	0	19:00:00	19:01:00
544	5	3248	0	0	19:12:30	19:13:30
544	6	3197	0	0	19:26:30	19:27:30
544	7	3144	0	0	19:41:00	19:42:00
544	8	3191	0	0	19:58:00	19:58:30
544	9	3102	0	0	20:08:00	20:09:00
544	10	3031	0	0	20:33:00	20:33:00
544	11	2774	0	0	20:40:30	20:40:30
544	12	2754	0	0	20:48:00	
545	1	5301	0	0		06:24:00
545	2	5311	0	0	06:30:30	06:31:00
545	3	5475	0	0	06:48:00	06:51:00
545	4	5563	0	0	07:05:30	07:10:00
545	5	5593	0	0	07:34:30	07:35:00
545	6	2754	0	0	09:18:30	09:19:30
545	7	2768	0	0	09:24:00	09:29:00
545	8	3032	0	0	09:35:00	09:37:00
545	9	1256	0	0	11:02:30	11:03:00
545	10	5886	0	0	11:36:30	11:37:00
545	11	5369	0	0	11:47:30	11:48:00
545	12	5572	0	0	12:01:00	12:01:00
545	13	5595	0	0	12:07:00	12:07:00
545	14	5637	0	0	12:12:00	12:12:00
545	15	4635	0	0	12:17:00	12:17:00
545	16	4589	0	0	12:27:00	
546	1	3032	0	0		14:49:00
546	2	2769	0	0	14:55:00	15:00:00
546	3	2753	0	0	15:03:30	15:05:00
546	4	2609	0	0	16:01:30	16:02:30
546	5	2716	0	0	16:38:00	16:39:00
546	6	2521	0	0	17:24:00	17:27:00
546	7	1820	0	0	18:10:00	18:11:00
546	8	2317	0	0	18:23:00	18:24:00
546	9	1752	0	0	18:47:00	18:50:00
546	10	925	0	0	19:09:00	19:09:00
546	11	1611	0	0	20:06:00	20:09:00
546	12	1629	0	0	20:16:00	
547	1	4581	0	0		14:31:00
547	2	4635	0	0	14:38:30	14:39:30
547	3	5637	0	0	14:43:00	14:44:00
547	4	5595	0	0	14:48:00	14:49:00
547	5	5574	0	0	14:53:30	14:55:30
547	6	5369	0	0	15:08:30	15:09:00
547	7	5885	0	0	15:19:30	15:20:00
547	8	1256	0	0	15:52:30	15:53:00
547	9	3031	0	0	17:23:00	17:25:00
547	10	2774	0	0	17:31:00	17:44:00
547	11	2754	0	0	17:48:00	17:49:00
547	12	6023	0	0	20:38:00	
548	1	3031	0	0		13:49:00
548	2	2771	0	0	13:55:00	14:00:00
548	3	2754	0	0	14:03:30	14:05:00
548	4	2610	0	0	15:01:30	15:02:30
548	5	2715	0	0	15:38:00	15:39:00
548	6	2514	0	0	16:24:00	16:27:00
548	7	3338	0	0	16:59:00	17:00:00
548	8	4688	0	0	17:44:00	
549	1	5666	0	0		11:32:00
549	2	5657	0	0	11:41:00	11:49:00
549	3	5776	0	0	12:03:12	12:04:12
549	4	6025	0	0	13:07:00	
550	1	2521	0	0		05:40:00
550	2	2533	0	0	06:05:30	06:06:30
550	3	2599	0	0	06:21:00	06:22:00
550	4	1007	0	0	06:36:00	06:37:00
550	5	972	0	0	07:01:30	07:03:30
550	6	767	0	0	07:33:00	07:34:00
550	7	6357	0	0	07:50:30	07:51:18
550	8	6326	0	0	08:01:30	08:02:00
550	9	5370	0	0	08:15:00	08:20:00
550	10	5468	0	0	08:30:12	08:30:42
550	11	5575	0	0	08:37:00	08:39:00
550	12	5595	0	0	08:42:30	08:43:30
550	13	5638	0	0	08:46:42	08:47:42
550	14	4636	0	0	08:51:00	08:52:00
550	15	4585	0	0	09:00:00	
551	1	4056	0	0		09:53:00
551	2	3430	0	0	10:32:00	10:33:00
551	3	3103	0	0	10:47:00	10:48:00
551	4	1284	0	0	12:15:00	12:45:00
551	5	2386	0	0	13:25:00	13:38:00
551	6	2517	0	0	14:18:00	14:31:00
551	7	3415	0	0	14:52:00	14:53:00
551	8	3337	0	0	15:06:00	15:07:00
551	9	3456	0	0	15:22:00	15:24:00
551	10	3460	0	0	15:32:00	15:33:00
551	11	4557	0	0	15:43:00	15:44:00
551	12	4689	0	0	15:59:00	16:13:00
551	13	4516	0	0	16:27:30	16:32:30
551	14	4857	0	0	16:40:00	16:41:00
551	15	4738	0	0	17:03:00	17:10:00
551	16	4837	0	0	17:35:00	17:39:00
551	17	5308	0	0	18:10:00	18:11:00
551	18	5433	0	0	18:25:00	18:27:30
551	19	5496	0	0	18:47:30	18:50:30
551	20	5521	0	0	18:59:00	19:07:00
551	21	5796	0	0	19:15:30	19:16:30
551	22	5808	0	0	19:24:00	19:25:00
551	23	6027	0	0	19:40:00	19:45:00
551	24	5979	0	0	19:49:30	19:53:30
551	25	5961	0	0	20:09:30	20:10:30
551	26	5974	0	0	20:17:30	20:18:30
551	27	6039	0	0	20:31:30	20:33:00
551	28	6084	0	0	20:48:00	20:49:00
551	29	6086	0	0	20:56:00	20:57:00
551	30	6091	0	0	21:02:00	21:03:00
551	31	6212	0	0	21:16:00	21:19:00
551	32	6265	0	0	21:30:00	21:31:00
551	33	6276	0	0	21:43:00	21:44:00
551	34	6294	0	0	21:53:00	21:54:00
551	35	6332	0	0	22:03:00	22:04:00
551	36	6347	0	0	22:16:30	22:16:30
551	37	6346	0	0	22:21:00	
552	1	3268	0	0		14:37:00
552	2	1688	0	0	14:43:30	14:44:00
552	3	3259	0	0	14:51:00	14:51:30
552	4	3245	0	0	15:00:00	15:01:00
552	5	3248	0	0	15:12:30	15:13:30
552	6	3198	0	0	15:26:30	15:27:30
552	7	3143	0	0	15:41:00	15:42:00
552	8	3192	0	0	15:58:00	15:58:30
552	9	3101	0	0	16:08:00	16:09:00
552	10	3032	0	0	16:32:00	
553	1	978	0	0		20:03:00
553	2	968	0	0	20:07:12	20:07:42
553	3	746	0	0	20:11:00	20:12:00
553	4	1101	0	0	20:19:36	20:20:36
553	5	1077	0	0	20:42:00	20:47:00
553	6	1219	0	0	20:58:00	21:00:30
553	7	1231	0	0	21:21:00	21:23:00
553	8	2609	0	0	21:54:00	22:02:00
553	9	2691	0	0	22:22:00	22:24:00
553	10	2835	0	0	22:37:00	22:40:00
553	11	2754	0	0	23:09:00	23:10:00
553	12	2774	0	0	23:14:00	23:36:00
553	13	3032	0	0	23:42:00	
554	1	4682	0	0		05:56:00
554	2	4557	0	0	06:10:00	06:11:00
554	3	3459	0	0	06:21:00	06:22:00
554	4	3455	0	0	06:30:00	06:31:06
554	5	3338	0	0	06:47:06	06:50:06
554	6	3416	0	0	07:04:06	07:08:06
554	7	2512	0	0	07:29:06	07:41:36
554	8	2385	0	0	08:24:00	08:28:00
554	9	1283	0	0	09:08:00	09:30:00
554	10	3103	0	0	10:39:00	
555	1	2071	0	0		09:59:00
555	2	2385	0	0	11:15:00	11:18:00
555	3	2518	0	0	12:05:30	12:26:00
555	4	2610	0	0	14:29:00	14:30:00
555	5	2747	0	0	15:41:00	
556	1	3611	0	0		15:32:30
556	2	3606	0	0	15:38:00	15:39:00
556	3	3683	0	0	15:51:00	15:52:30
556	4	3674	0	0	16:11:00	16:12:30
556	5	2808	0	0	16:23:00	16:24:00
556	6	2753	0	0	16:42:30	16:44:00
556	7	2770	0	0	16:48:00	17:01:00
556	8	3031	0	0	17:07:00	17:09:00
556	9	2914	0	0	17:22:30	17:23:30
556	10	2902	0	0	17:31:30	17:32:30
556	11	2964	0	0	18:00:00	18:01:00
556	12	2978	0	0	18:15:30	18:16:30
556	13	1307	0	0	18:26:00	18:27:00
556	14	1255	0	0	18:57:30	19:08:00
556	15	1327	0	0	19:24:00	19:25:00
556	16	5886	0	0	19:43:00	19:44:00
556	17	5369	0	0	19:55:00	19:57:00
556	18	5572	0	0	20:12:00	20:15:00
556	19	5595	0	0	20:19:00	20:20:00
556	20	5637	0	0	20:23:30	20:24:30
556	21	4635	0	0	20:28:00	20:29:00
556	22	4581	0	0	20:37:00	
557	1	6187	0	0		10:16:00
557	2	6183	0	0	10:26:30	10:27:30
557	3	6182	0	0	10:30:00	10:49:00
557	4	6196	0	0	11:00:00	11:01:00
557	5	6199	0	0	11:10:30	11:11:30
557	6	6202	0	0	11:17:00	11:18:00
557	7	6171	0	0	11:22:30	11:23:30
557	8	6168	0	0	11:29:30	11:30:30
557	9	6161	0	0	11:37:30	11:38:30
557	10	6159	0	0	11:51:06	11:52:06
557	11	6140	0	0	12:19:30	12:20:30
557	12	6130	0	0	12:24:30	12:25:30
557	13	6078	0	0	12:33:00	12:34:00
557	14	6071	0	0	12:46:30	12:47:30
557	15	6061	0	0	13:00:30	13:01:30
557	16	6040	0	0	13:20:30	13:22:00
557	17	5980	0	0	14:01:30	14:02:30
557	18	6029	0	0	14:07:00	
558	1	397	0	0		15:00:00
558	2	1999	0	0	15:23:00	15:24:00
558	3	2059	0	0	15:42:00	15:47:00
558	4	1820	0	0	16:14:00	
559	1	541	0	0		10:55:00
559	2	483	0	0	11:29:00	11:31:00
559	3	436	0	0	11:47:00	11:55:00
559	4	429	0	0	12:15:00	12:17:00
559	5	431	0	0	12:34:00	12:36:00
559	6	4106	0	0	13:14:06	13:16:00
559	7	4201	0	0	13:28:00	13:29:30
559	8	4205	0	0	13:42:00	13:43:00
559	9	4170	0	0	13:54:00	13:56:00
559	10	4683	0	0	14:35:00	
560	1	5481	0	0		08:33:00
560	2	5432	0	0	08:43:00	08:44:00
560	3	5433	0	0	08:49:48	08:50:48
560	4	5359	0	0	09:01:30	09:02:30
560	5	4907	0	0	09:38:30	09:53:00
560	6	4882	0	0	09:57:30	10:01:00
560	7	1049	0	0	11:02:00	11:03:00
560	8	3638	0	0	11:13:30	11:14:30
560	9	3634	0	0	11:24:36	11:25:36
560	10	3641	0	0	11:35:30	11:49:00
560	11	3643	0	0	11:53:30	11:54:30
560	12	3646	0	0	11:59:48	12:01:48
560	13	2662	0	0	12:20:48	12:21:48
560	14	2657	0	0	12:29:24	12:31:24
560	15	2609	0	0	12:54:00	12:54:00
560	16	2668	0	0	14:13:00	14:13:00
560	17	2672	0	0	14:45:00	14:46:00
560	18	1216	0	0	15:12:00	15:13:00
560	19	1211	0	0	15:37:00	15:38:00
560	20	1190	0	0	15:57:30	16:10:00
560	21	1153	0	0	16:41:00	17:01:00
560	22	1339	0	0	17:30:30	17:31:30
560	23	6047	0	0	17:51:00	17:52:00
560	24	5886	0	0	18:04:00	18:05:00
560	25	5369	0	0	18:19:30	18:20:30
560	26	5576	0	0	18:42:30	18:44:30
560	27	5596	0	0	18:49:00	18:50:00
560	28	5637	0	0	18:54:00	18:55:00
560	29	4635	0	0	18:59:00	19:00:00
560	30	4586	0	0	19:09:00	
561	1	3031	0	0		04:01:00
561	2	2773	0	0	04:07:00	04:12:00
561	3	2753	0	0	04:16:00	04:17:00
561	4	2808	0	0	04:36:06	04:37:06
561	5	3673	0	0	04:48:30	04:49:30
561	6	3684	0	0	05:08:18	05:09:18
561	7	3605	0	0	05:20:00	05:24:00
561	8	3629	0	0	05:30:36	05:31:36
561	9	3633	0	0	05:45:24	05:46:24
561	10	3638	0	0	05:56:24	05:56:54
561	11	1053	0	0	06:04:18	06:05:18
561	12	1058	0	0	06:16:30	06:17:30
561	13	3516	0	0	06:52:00	06:53:00
561	14	3560	0	0	07:11:00	07:12:00
561	15	3422	0	0	07:34:24	07:35:24
561	16	4663	0	0	07:49:42	07:50:42
561	17	4641	0	0	08:12:48	08:13:18
561	18	4647	0	0	08:22:30	08:23:30
561	19	4601	0	0	08:42:00	08:42:00
561	20	4547	0	0	08:48:30	08:48:30
561	21	4687	0	0	08:55:00	
562	1	2754	0	0		15:08:00
562	2	2767	0	0	15:12:00	15:17:00
562	3	3032	0	0	15:22:30	15:23:30
562	4	3101	0	0	15:48:30	15:49:30
562	5	3192	0	0	15:58:12	15:58:42
562	6	3144	0	0	16:14:00	16:15:00
562	7	3197	0	0	16:28:00	16:29:00
562	8	3248	0	0	16:42:00	16:43:00
562	9	3246	0	0	16:54:30	16:55:30
562	10	3259	0	0	17:03:30	17:04:00
562	11	1687	0	0	17:11:42	17:12:12
562	12	3268	0	0	17:19:00	
563	1	5476	0	0		17:20:00
563	2	5496	0	0	17:34:00	17:39:00
563	3	5550	0	0	18:00:00	18:01:30
563	4	5593	0	0	18:13:30	18:15:00
563	5	5602	0	0	18:23:00	18:25:00
563	6	4887	0	0	18:40:00	18:42:00
563	7	3753	0	0	19:10:30	19:11:30
563	8	3727	0	0	19:47:30	19:49:00
563	9	3605	0	0	20:24:00	20:26:00
563	10	3629	0	0	20:32:36	20:33:36
563	11	3641	0	0	20:40:00	20:46:00
563	12	3643	0	0	20:50:30	20:51:30
563	13	3646	0	0	20:56:42	20:57:42
563	14	2661	0	0	21:15:30	21:21:00
563	15	2657	0	0	21:28:30	21:29:00
563	16	2609	0	0	21:52:00	
564	1	4581	0	0		13:31:00
564	2	4635	0	0	13:38:30	13:39:30
564	3	5637	0	0	13:43:00	13:44:00
564	4	5595	0	0	13:48:00	13:49:00
564	5	5578	0	0	13:53:30	13:55:30
564	6	5369	0	0	14:08:30	14:09:00
564	7	5886	0	0	14:19:30	14:20:00
564	8	1255	0	0	14:52:30	14:53:00
564	9	3032	0	0	16:23:00	16:25:00
564	10	2772	0	0	16:31:00	16:40:00
564	11	2753	0	0	16:44:00	16:45:00
564	12	6027	0	0	19:30:00	
565	1	4055	0	0		18:51:00
565	2	3430	0	0	19:14:00	19:18:00
565	3	3104	0	0	19:32:00	19:33:00
565	4	1283	0	0	20:42:00	21:02:00
565	5	2385	0	0	21:42:00	21:43:00
565	6	2512	0	0	22:31:30	
566	1	2075	0	0		07:47:00
566	2	69	0	0	07:59:00	08:00:00
566	3	1284	0	0	08:14:00	08:15:00
566	4	2386	0	0	08:54:30	08:55:30
566	5	2514	0	0	09:34:00	09:41:00
566	6	2754	0	0	11:53:30	11:53:30
566	7	2771	0	0	11:58:36	11:58:36
566	8	3032	0	0	12:15:00	
567	1	6031	0	0		18:19:00
567	2	5980	0	0	18:23:30	18:24:30
567	3	6039	0	0	19:09:00	19:20:00
567	4	6062	0	0	19:41:00	19:42:00
567	5	6072	0	0	19:55:30	19:56:30
567	6	6143	0	0	20:41:30	20:42:30
567	7	6151	0	0	20:52:00	20:53:00
567	8	6310	0	0	21:15:00	21:16:00
567	9	6308	0	0	21:31:30	21:32:30
567	10	6312	0	0	21:41:00	
568	1	3032	0	0		16:49:00
568	2	2768	0	0	16:55:00	17:00:00
568	3	2753	0	0	17:03:30	17:05:00
568	4	2609	0	0	18:01:30	18:02:30
568	5	2715	0	0	18:38:00	18:39:00
568	6	2515	0	0	19:24:00	19:27:00
568	7	1819	0	0	20:10:00	20:11:00
568	8	2317	0	0	20:23:00	20:24:00
568	9	1752	0	0	20:47:00	20:50:00
568	10	925	0	0	21:09:00	21:12:00
568	11	1641	0	0	22:02:00	
569	1	2753	0	0		06:19:30
569	2	2774	0	0	06:24:00	06:29:00
569	3	3032	0	0	06:35:00	06:37:00
569	4	1255	0	0	08:02:30	08:03:00
569	5	5885	0	0	08:36:30	08:37:00
569	6	5370	0	0	08:47:30	08:48:00
569	7	5571	0	0	09:01:00	09:01:00
569	8	5596	0	0	09:07:00	09:07:00
569	9	5638	0	0	09:12:00	09:12:00
569	10	4636	0	0	09:17:00	09:17:00
569	11	4585	0	0	09:27:00	
570	1	6311	0	0		16:16:00
570	2	6307	0	0	16:24:30	16:25:30
570	3	6310	0	0	16:41:00	16:42:00
570	4	6152	0	0	17:04:00	17:05:00
570	5	6144	0	0	17:15:00	17:16:00
570	6	6071	0	0	18:01:00	18:02:00
570	7	6062	0	0	18:15:30	18:16:30
570	8	6040	0	0	18:37:00	18:38:00
570	9	5980	0	0	19:15:00	19:15:00
570	10	6023	0	0	19:21:00	
571	1	3031	0	0		03:42:00
571	2	2770	0	0	03:48:00	03:51:00
571	3	2754	0	0	03:55:00	03:56:00
571	4	2835	0	0	04:21:30	04:22:30
571	5	2692	0	0	04:35:00	04:36:00
571	6	2609	0	0	04:56:00	04:57:00
571	7	2724	0	0	05:20:00	05:21:00
571	8	2715	0	0	05:35:00	05:36:30
571	9	2464	0	0	05:51:00	05:52:00
571	10	2443	0	0	06:06:00	06:08:00
571	11	2344	0	0	06:28:30	06:29:30
571	12	2515	0	0	06:50:00	06:55:00
571	13	2369	0	0	07:13:00	07:20:00
571	14	2377	0	0	07:29:00	07:36:00
571	15	2386	0	0	07:52:00	08:12:00
571	16	2396	0	0	08:24:00	08:27:00
571	17	2408	0	0	08:41:00	08:44:00
571	18	1283	0	0	08:59:00	09:10:00
571	19	419	0	0	09:44:00	09:45:00
571	20	640	0	0	10:04:00	10:06:00
571	21	12	0	0	10:28:00	10:29:00
571	22	10	0	0	10:40:00	
572	1	4685	0	0		14:08:00
572	2	4738	0	0	14:47:00	14:55:00
572	3	5165	0	0	15:17:30	15:25:00
572	4	5266	0	0	15:50:00	15:51:00
572	5	5210	0	0	16:04:00	16:05:00
572	6	937	0	0	16:11:00	16:11:00
572	7	249	0	0	16:41:00	16:43:00
572	8	251	0	0	16:49:00	16:51:00
572	9	242	0	0	17:18:00	17:20:00
572	10	258	0	0	17:40:00	17:42:00
572	11	265	0	0	17:57:00	17:59:00
572	12	267	0	0	18:09:00	18:11:00
572	13	244	0	0	18:27:00	18:29:00
572	14	234	0	0	18:40:00	18:55:00
572	15	1556	0	0	19:49:00	19:55:00
572	16	655	0	0	20:00:00	20:02:00
572	17	658	0	0	21:41:00	21:43:00
572	18	660	0	0	22:19:00	
573	1	154	0	0		19:30:00
573	2	166	0	0	21:06:00	21:07:00
573	3	159	0	0	21:47:00	21:50:00
573	4	157	0	0	23:21:00	23:24:00
573	5	176	1	1	00:42:00	00:45:00
573	6	178	1	1	02:13:00	02:53:00
573	7	6346	1	0	03:30:00	
574	1	3031	0	0		16:33:00
574	2	2774	0	0	16:39:00	16:44:00
574	3	2754	0	0	16:48:00	16:49:00
574	4	4903	0	0	18:40:30	18:41:30
574	5	5372	0	0	19:02:00	19:03:00
574	6	4737	0	0	19:35:30	19:37:00
574	7	4686	0	0	20:16:00	
575	1	2753	0	0		18:15:00
575	2	2772	0	0	18:20:00	18:25:00
575	3	3032	0	0	18:31:00	18:40:00
575	4	3119	0	0	19:25:00	19:26:00
575	5	3962	0	0	19:55:00	19:56:00
575	6	3977	0	0	20:10:00	20:11:00
575	7	3987	0	0	20:28:00	20:29:00
575	8	1882	0	0	20:44:30	20:45:30
575	9	4015	0	0	20:51:00	20:55:00
575	10	4008	0	0	21:05:48	21:06:48
575	11	4041	0	0	21:34:30	21:35:30
575	12	4054	0	0	21:49:00	21:50:00
575	13	4049	0	0	21:54:00	21:58:00
575	14	4058	0	0	22:17:00	22:17:00
575	15	170	1	1	03:46:00	04:07:00
575	16	154	1	0	10:45:00	
576	1	5578	0	0		04:58:00
576	2	5595	0	0	05:02:00	05:03:00
576	3	5637	0	0	05:06:30	05:07:30
576	4	4635	0	0	05:11:00	05:12:00
576	5	4583	0	0	05:20:00	05:24:00
576	6	4767	0	0	05:34:00	05:35:00
576	7	4921	0	0	05:44:00	05:45:00
576	8	4159	0	0	06:08:00	06:09:00
576	9	3677	0	0	07:03:00	07:03:00
576	10	4055	0	0	08:12:00	08:12:00
576	11	3430	0	0	08:44:00	08:45:00
576	12	3104	0	0	08:59:00	09:01:00
576	13	2883	0	0	09:31:30	09:32:30
576	14	2851	0	0	09:45:30	09:46:30
576	15	2839	0	0	09:54:00	09:55:00
576	16	2854	0	0	10:05:00	10:06:00
576	17	1284	0	0	10:23:00	10:30:00
576	18	69	0	0	10:46:00	10:46:00
576	19	2076	0	0	11:04:00	
577	1	3103	0	0		17:12:00
577	2	1283	0	0	18:22:00	18:48:00
577	3	2386	0	0	19:28:00	19:29:00
577	4	2512	0	0	20:19:00	20:31:00
577	5	3415	0	0	20:52:00	20:53:00
577	6	3338	0	0	21:06:00	21:07:00
577	7	3455	0	0	21:21:30	21:22:30
577	8	3459	0	0	21:30:30	21:31:30
577	9	4557	0	0	21:41:30	21:42:30
577	10	4682	0	0	21:58:00	
578	1	2076	0	0		09:00:00
578	2	70	0	0	09:13:00	09:13:30
578	3	10	0	0	10:20:00	10:20:00
578	4	41	0	0	10:27:00	10:52:00
578	5	10	0	0	10:55:00	10:55:00
578	6	640	0	0	11:25:00	11:45:00
578	7	713	0	0	12:05:00	
579	1	659	0	0		05:36:00
579	2	658	0	0	06:11:00	06:13:00
579	3	656	0	0	07:58:00	08:00:00
579	4	1556	0	0	08:05:00	08:10:00
579	5	234	0	0	09:04:00	09:15:00
579	6	244	0	0	09:26:00	09:28:00
579	7	268	0	0	09:44:00	09:46:00
579	8	266	0	0	09:55:00	09:57:00
579	9	257	0	0	10:13:00	10:15:00
579	10	241	0	0	10:36:00	10:38:00
579	11	252	0	0	11:05:00	11:07:00
579	12	249	0	0	11:13:00	11:16:00
579	13	938	0	0	11:23:00	11:35:00
579	14	5609	0	0	11:53:30	11:54:30
579	15	5657	0	0	12:29:00	12:30:00
579	16	5775	0	0	12:45:00	13:03:00
579	17	5813	0	0	13:16:30	13:17:30
579	18	5796	0	0	13:21:00	13:22:00
579	19	5808	0	0	13:29:30	13:30:30
579	20	6026	0	0	13:46:00	
580	1	4685	0	0		05:16:00
580	2	3337	0	0	05:59:30	06:00:30
580	3	2521	0	0	06:33:00	06:36:00
580	4	2715	0	0	07:20:30	07:21:30
580	5	2610	0	0	07:57:00	07:58:00
580	6	2753	0	0	08:54:30	08:54:30
580	7	2768	0	0	09:00:00	09:00:00
580	8	3031	0	0	09:15:00	
581	1	6310	0	0		16:42:00
581	2	6151	0	0	17:04:00	17:05:00
581	3	6143	0	0	17:15:00	17:16:00
581	4	6072	0	0	18:01:00	18:02:00
581	5	6062	0	0	18:15:30	18:16:30
581	6	6040	0	0	18:37:00	18:38:00
581	7	5980	0	0	19:15:00	19:15:00
581	8	6026	0	0	19:21:00	
582	1	6032	0	0		13:56:00
582	2	5808	0	0	14:12:00	14:16:30
582	3	5795	0	0	14:23:30	14:24:30
582	4	5814	0	0	14:27:30	14:28:30
582	5	5775	0	0	14:41:30	14:43:00
582	6	5658	0	0	14:57:00	15:00:00
582	7	5609	0	0	15:48:36	15:52:00
582	8	938	0	0	16:12:00	16:34:00
582	9	250	0	0	16:41:00	16:43:00
582	10	251	0	0	16:49:00	16:51:00
582	11	241	0	0	17:18:00	17:20:00
582	12	258	0	0	17:40:00	17:42:00
582	13	266	0	0	17:57:00	17:59:00
582	14	268	0	0	18:09:00	18:11:00
582	15	243	0	0	18:27:00	18:29:00
582	16	234	0	0	18:40:00	18:55:00
582	17	1555	0	0	19:49:00	
583	1	3032	0	0		15:01:00
583	2	2774	0	0	15:07:00	15:12:00
583	3	2753	0	0	15:16:00	15:17:00
583	4	6030	0	0	18:13:00	
584	1	2517	0	0		15:39:00
584	2	2385	0	0	16:23:30	16:24:30
584	3	2399	0	0	16:34:00	16:35:00
584	4	487	0	0	16:47:24	16:48:24
584	5	1804	0	0	17:07:00	17:08:00
584	6	397	0	0	17:12:00	
585	1	398	0	0		19:48:00
585	2	1804	0	0	19:50:30	19:51:30
585	3	488	0	0	20:11:00	20:12:00
585	4	2400	0	0	20:24:00	20:25:00
585	5	2385	0	0	20:35:00	20:36:00
585	6	2512	0	0	21:20:30	21:31:00
585	7	2470	0	0	21:54:06	21:55:06
585	8	3480	0	0	22:19:00	
586	1	4687	0	0		09:55:00
586	2	4673	0	0	10:23:30	10:25:00
586	3	4368	0	0	10:48:30	10:49:30
586	4	4365	0	0	11:04:00	11:08:00
586	5	4437	0	0	11:28:00	11:32:30
586	6	4464	0	0	11:35:30	11:57:00
586	7	4469	0	0	12:12:00	
587	1	6025	0	0		08:27:00
587	2	5476	0	0	10:02:00	10:06:00
587	3	5312	0	0	10:22:00	10:23:00
587	4	5305	0	0	10:29:30	10:35:00
587	5	4738	0	0	11:27:00	11:29:00
587	6	4690	0	0	12:10:00	12:22:00
587	7	3337	0	0	13:13:00	13:14:00
587	8	2514	0	0	13:50:00	
588	1	4011	0	0		20:10:00
588	2	4008	0	0	20:21:00	20:22:00
588	3	4059	0	0	21:06:00	21:07:00
588	4	1725	0	0	21:19:42	21:20:42
588	5	5131	0	0	21:45:00	22:10:00
588	6	5123	0	0	22:21:00	22:22:30
588	7	1768	0	0	22:26:00	22:27:00
588	8	1770	0	0	22:30:00	22:31:00
588	9	5140	0	0	23:03:00	23:04:00
588	10	5137	0	0	23:17:00	
589	1	398	0	0		07:55:00
589	2	1803	0	0	07:57:30	07:58:30
589	3	488	0	0	08:18:00	08:19:00
589	4	2399	0	0	08:31:00	08:32:00
589	5	2386	0	0	08:42:00	08:43:00
589	6	2516	0	0	09:27:00	
590	1	4015	0	0		08:06:00
590	2	1031	0	0	13:09:00	
591	1	4055	0	0		13:30:00
591	2	3429	0	0	13:54:00	13:57:00
591	3	3104	0	0	14:20:00	14:21:00
591	4	1284	0	0	15:50:00	16:32:00
591	5	2386	0	0	17:13:00	17:14:00
591	6	2522	0	0	18:04:00	18:31:00
591	7	3416	0	0	18:52:00	18:53:00
591	8	3338	0	0	19:06:00	19:07:00
591	9	3456	0	0	19:21:30	19:22:30
591	10	3460	0	0	19:30:30	19:31:30
591	11	4557	0	0	19:41:30	19:42:30
591	12	4547	0	0	19:54:24	19:55:24
591	13	4690	0	0	20:00:00	20:15:00
591	14	4515	0	0	20:29:30	20:30:30
591	15	4857	0	0	20:38:00	20:39:00
591	16	4737	0	0	20:57:00	21:02:00
591	17	4838	0	0	21:26:30	21:29:00
591	18	5308	0	0	22:00:00	22:04:00
591	19	5434	0	0	22:18:00	22:22:30
591	20	5496	0	0	22:42:30	22:49:30
591	21	5522	0	0	22:58:00	23:00:00
591	22	5795	0	0	23:08:00	23:10:00
591	23	5808	0	0	23:17:30	23:18:30
591	24	6024	0	0	23:33:00	
592	1	541	0	0		10:57:00
592	2	430	0	0	12:15:00	12:17:00
592	3	432	0	0	12:34:00	12:36:00
592	4	4106	0	0	13:14:06	13:16:00
592	5	4201	0	0	13:28:00	13:29:30
592	6	4206	0	0	13:42:00	13:43:00
592	7	4170	0	0	13:54:00	13:56:00
592	8	4684	0	0	14:35:00	
593	1	6029	0	0		05:31:00
593	2	2754	0	0	08:14:30	08:15:30
593	3	2769	0	0	08:20:00	08:29:00
593	4	3031	0	0	08:35:00	08:36:00
593	5	5571	0	0	10:54:30	10:54:30
593	6	5595	0	0	11:00:30	11:00:30
593	7	5638	0	0	11:05:30	11:05:30
593	8	4636	0	0	11:10:30	11:10:30
593	9	4590	0	0	11:20:00	
594	1	2754	0	0		07:19:30
594	2	2768	0	0	07:24:00	07:29:00
594	3	3032	0	0	07:35:00	07:37:00
594	4	1256	0	0	09:02:30	09:03:00
594	5	5885	0	0	09:36:30	09:37:00
594	6	5369	0	0	09:47:30	09:48:00
594	7	5575	0	0	10:01:00	10:01:00
594	8	5596	0	0	10:07:00	10:07:00
594	9	5638	0	0	10:12:00	10:12:00
594	10	4636	0	0	10:17:00	10:17:00
594	11	4584	0	0	10:27:00	
\.

COPY sklady_segmenty (id_trasy, id_wagonu, od_postoju, do_postoju, numer_kolejnosci) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	1	1		1
1	2	1		2
1	3	1		3
1	4	1		4
1	5	1		5
1	6	1		6
1	7	1		7
1	1958	7		8
2	8	1		1
2	9	1		2
2	10	1		3
2	11	1		4
2	12	1		5
3	13	1		1
3	14	1		2
3	15	1		3
3	16	1		4
3	17	1		5
3	18	1		6
3	19	1		7
4	20	1		1
4	21	1		2
4	22	1		3
4	23	1		4
4	24	1		5
4	25	1		6
4	26	1		7
5	27	1		1
5	28	1		2
5	29	1		3
5	30	1		4
5	31	1		5
5	32	1		6
6	33	1		1
6	34	1		2
6	35	1		3
6	36	1		4
6	37	1		5
7	38	1		1
7	39	1		2
7	40	1		3
7	41	1		4
7	42	1		5
7	43	1		6
8	44	1		1
8	45	1		2
8	46	1		3
8	47	1		4
8	48	1		5
8	49	1		6
9	50	1		1
9	51	1		2
9	52	1		3
9	53	1		4
9	54	1		5
9	55	1		6
10	56	1		1
10	57	1		2
10	58	1		3
10	59	1		4
10	60	1		5
11	61	1		1
11	62	1		2
11	63	1		3
11	64	1		4
11	65	1		5
12	66	1		1
12	67	1		2
12	68	1		3
12	69	1		4
12	70	1		5
12	71	1		6
13	72	1		1
13	73	1		2
13	74	1		3
13	75	1		4
13	76	1		5
13	77	1		6
14	78	1		1
14	79	1		2
14	80	1		3
14	81	1		4
14	82	1		5
15	83	1		1
15	84	1		2
15	85	1		3
15	86	1		4
15	87	1		5
15	88	1		6
15	89	1	9	7
16	90	1		1
16	91	1		2
16	92	1		3
16	93	1		4
16	94	1		5
16	95	1		6
17	96	1		1
17	97	1		2
17	98	1		3
17	99	1		4
17	100	1		5
17	101	1		6
18	102	1		1
18	103	1		2
18	104	1		3
18	105	1		4
18	106	1		5
18	107	1		6
18	108	1		7
19	109	1		1
19	110	1		2
19	111	1		3
19	112	1		4
19	113	1		5
19	114	1		6
19	115	1		7
20	116	1		1
20	117	1		2
20	118	1		3
20	119	1		4
20	120	1		5
21	121	1		1
21	122	1		2
21	123	1		3
21	124	1		4
21	125	1		5
22	126	1		1
22	127	1		2
22	128	1		3
22	129	1		4
22	130	1		5
23	131	1		1
23	132	1		2
23	133	1		3
23	134	1		4
23	135	1		5
23	136	1	11	6
24	137	1		1
24	138	1		2
24	139	1		3
24	140	1		4
24	141	1		5
24	142	1		6
25	143	1		1
25	144	1		2
25	145	1		3
25	146	1		4
25	147	1		5
26	148	1		1
26	149	1		2
26	150	1		3
26	151	1		4
26	152	1		5
26	153	1		6
26	154	1		7
27	155	1		1
27	156	1		2
27	157	1		3
27	158	1		4
27	159	1		5
27	160	1		6
27	161	1		7
28	162	1		1
28	163	1		2
28	164	1		3
28	165	1		4
28	166	1		5
29	167	1		1
29	168	1		2
29	169	1		3
29	170	1		4
29	171	1		5
29	172	1		6
29	173	1		7
30	174	1		1
30	175	1		2
30	176	1		3
30	177	1		4
30	178	1		5
30	179	1		6
30	180	1		7
31	181	1		1
31	182	1		2
31	183	1		3
31	184	1		4
31	185	1		5
31	186	1		6
32	187	1		1
32	188	1		2
32	189	1		3
32	190	1		4
32	191	1		5
33	192	1		1
33	193	1		2
33	194	1		3
33	195	1		4
33	196	1		5
34	197	1		1
34	198	1		2
34	199	1		3
34	200	1		4
34	201	1		5
35	202	1		1
35	203	1		2
35	204	1		3
35	205	1		4
35	206	1		5
35	207	1		6
36	208	1		1
36	209	1		2
36	210	1		3
36	211	1		4
36	212	1		5
37	213	1		1
37	214	1		2
37	215	1		3
37	216	1		4
37	217	1		5
37	218	1		6
37	219	1		7
38	220	1		1
38	221	1		2
38	222	1		3
38	223	1		4
38	224	1		5
39	225	1		1
39	226	1		2
39	227	1		3
39	228	1		4
39	229	1		5
39	1516	6		6
40	230	1		1
40	231	1		2
40	232	1		3
40	233	1		4
40	234	1		5
41	235	1		1
41	236	1		2
41	237	1		3
41	238	1		4
41	239	1		5
41	240	1		6
42	241	1		1
42	242	1		2
42	243	1		3
42	244	1		4
42	245	1		5
42	246	1		6
43	247	1		1
43	248	1		2
43	249	1		3
43	250	1		4
43	251	1		5
43	252	1		6
43	253	1		7
44	254	1		1
44	255	1		2
44	256	1		3
44	257	1		4
44	258	1		5
44	259	1		6
44	260	1		7
45	261	1		1
45	262	1		2
45	263	1		3
45	264	1		4
45	265	1		5
45	266	1		6
45	267	1		7
46	268	1		1
46	269	1		2
46	270	1		3
46	271	1		4
46	272	1		5
46	273	1		6
47	274	1		1
47	275	1		2
47	276	1		3
47	277	1		4
47	278	1		5
47	279	1		6
48	280	1		1
48	281	1		2
48	282	1		3
48	283	1		4
48	284	1		5
49	285	1		1
49	286	1		2
49	287	1		3
49	288	1		4
49	289	1		5
49	290	1		6
50	291	1		1
50	292	1		2
50	293	1		3
50	294	1		4
50	295	1		5
50	296	1		6
51	297	1		1
51	298	1		2
51	299	1		3
51	300	1		4
51	301	1		5
52	302	1		1
52	303	1		2
52	304	1		3
52	305	1		4
52	306	1		5
52	3346	7		6
53	307	1		1
53	308	1		2
53	309	1		3
53	310	1		4
53	311	1		5
53	312	1		6
54	313	1		1
54	314	1		2
54	315	1		3
54	316	1		4
54	317	1		5
54	318	1		6
55	319	1		1
55	320	1		2
55	321	1		3
55	322	1		4
55	323	1		5
56	324	1		1
56	325	1		2
56	326	1		3
56	327	1		4
56	328	1		5
56	329	1		6
56	330	1		7
57	331	1		1
57	332	1		2
57	333	1		3
57	334	1		4
57	335	1		5
58	336	1		1
58	337	1		2
58	338	1		3
58	339	1		4
58	340	1		5
58	341	1		6
58	342	1		7
59	343	1		1
59	344	1		2
59	345	1		3
59	346	1		4
59	347	1		5
59	348	1		6
59	349	1		7
60	350	1		1
60	351	1		2
60	352	1		3
60	353	1		4
60	354	1		5
60	355	1		6
61	356	1		1
61	357	1		2
61	358	1		3
61	359	1		4
61	360	1		5
62	361	1		1
62	362	1		2
62	363	1		3
62	364	1		4
62	365	1		5
62	136	7		6
63	366	1		1
63	367	1		2
63	368	1		3
63	369	1		4
63	370	1		5
63	371	1		6
64	372	1		1
64	373	1		2
64	374	1		3
64	375	1		4
64	376	1		5
65	377	1		1
65	378	1		2
65	379	1		3
65	380	1		4
65	381	1		5
65	382	1		6
66	383	1		1
66	384	1		2
66	385	1		3
66	386	1		4
66	387	1		5
66	388	1		6
66	389	1		7
67	390	1		1
67	391	1		2
67	392	1		3
67	393	1		4
67	394	1		5
68	395	1		1
68	396	1		2
68	397	1		3
68	398	1		4
68	399	1		5
68	400	1		6
69	401	1		1
69	402	1		2
69	403	1		3
69	404	1		4
69	405	1		5
70	406	1		1
70	407	1		2
70	408	1		3
70	409	1		4
70	410	1		5
70	411	1		6
71	412	1		1
71	413	1		2
71	414	1		3
71	415	1		4
71	416	1		5
71	417	1		6
72	418	1		1
72	419	1		2
72	420	1		3
72	421	1		4
72	422	1		5
72	423	1		6
73	424	1		1
73	425	1		2
73	426	1		3
73	427	1		4
73	428	1		5
73	429	1		6
74	430	1		1
74	431	1		2
74	432	1		3
74	433	1		4
74	434	1		5
74	435	1		6
75	436	1		1
75	437	1		2
75	438	1		3
75	439	1		4
75	440	1		5
75	441	1		6
76	442	1		1
76	443	1		2
76	444	1		3
76	445	1		4
76	446	1		5
76	447	1		6
77	448	1		1
77	449	1		2
77	450	1		3
77	451	1		4
77	452	1		5
77	453	1		6
78	454	1		1
78	455	1		2
78	456	1		3
78	457	1		4
78	458	1		5
79	459	1		1
79	460	1		2
79	461	1		3
79	462	1		4
79	463	1		5
80	464	1		1
80	465	1		2
80	466	1		3
80	467	1		4
80	468	1		5
80	469	1		6
81	470	1		1
81	471	1		2
81	472	1		3
81	473	1		4
81	474	1		5
81	475	1		6
81	476	1		7
82	477	1		1
82	478	1		2
82	479	1		3
82	480	1		4
82	481	1		5
82	482	1		6
82	483	1		7
83	484	1		1
83	485	1		2
83	486	1		3
83	487	1		4
83	488	1		5
83	489	1		6
84	490	1		1
84	491	1		2
84	492	1		3
84	493	1		4
84	494	1		5
84	495	1		6
85	496	1		1
85	497	1		2
85	498	1		3
85	499	1		4
85	500	1		5
86	501	1		1
86	502	1		2
86	503	1		3
86	504	1		4
86	505	1		5
87	506	1		1
87	507	1		2
87	508	1		3
87	509	1		4
87	510	1		5
87	511	1		6
88	512	1		1
88	513	1		2
88	514	1		3
88	515	1		4
88	516	1		5
88	517	1		6
89	518	1		1
89	519	1		2
89	520	1		3
89	521	1		4
89	522	1		5
89	523	1		6
90	524	1		1
90	525	1		2
90	526	1		3
90	527	1		4
90	528	1		5
90	529	1		6
90	530	1		7
91	531	1		1
91	532	1		2
91	533	1		3
91	534	1		4
91	535	1		5
91	536	1		6
92	537	1		1
92	538	1		2
92	539	1		3
92	540	1		4
92	541	1		5
92	542	1		6
92	543	1		7
93	544	1		1
93	545	1		2
93	546	1		3
93	547	1		4
93	548	1		5
93	549	1		6
93	550	1	7	7
94	551	1		1
94	552	1		2
94	553	1		3
94	554	1		4
94	555	1		5
95	556	1		1
95	557	1		2
95	558	1		3
95	559	1		4
95	560	1		5
95	561	1		6
96	562	1		1
96	563	1		2
96	564	1		3
96	565	1		4
96	566	1		5
96	567	1		6
97	568	1		1
97	569	1		2
97	570	1		3
97	571	1		4
97	572	1		5
97	573	1		6
98	574	1		1
98	575	1		2
98	576	1		3
98	577	1		4
98	578	1		5
98	579	1		6
98	580	1		7
99	581	1		1
99	582	1		2
99	583	1		3
99	584	1		4
99	585	1		5
99	586	1		6
99	1331	6		7
100	587	1		1
100	588	1		2
100	589	1		3
100	590	1		4
100	591	1		5
100	592	1		6
100	593	1		7
101	594	1		1
101	595	1		2
101	596	1		3
101	597	1		4
101	598	1		5
101	599	1		6
101	600	1		7
102	601	1		1
102	602	1		2
102	603	1		3
102	604	1		4
102	605	1		5
102	606	1		6
102	607	1		7
103	608	1		1
103	609	1		2
103	610	1		3
103	611	1		4
103	612	1		5
103	613	1		6
103	614	1		7
104	615	1		1
104	616	1		2
104	617	1		3
104	618	1		4
104	619	1		5
105	620	1		1
105	621	1		2
105	622	1		3
105	623	1		4
105	624	1		5
105	625	1		6
106	626	1		1
106	627	1		2
106	628	1		3
106	629	1		4
106	630	1		5
106	3457	1		6
107	631	1		1
107	632	1		2
107	633	1		3
107	634	1		4
107	635	1		5
108	636	1		1
108	637	1		2
108	638	1		3
108	639	1		4
108	640	1		5
108	641	1		6
109	642	1		1
109	643	1		2
109	644	1		3
109	645	1		4
109	646	1		5
109	647	1		6
110	648	1		1
110	649	1		2
110	650	1		3
110	651	1		4
110	652	1		5
110	653	1		6
111	654	1		1
111	655	1		2
111	656	1		3
111	657	1		4
111	658	1		5
112	659	1		1
112	660	1		2
112	661	1		3
112	662	1		4
112	663	1		5
112	664	1		6
112	665	1		7
113	666	1		1
113	667	1		2
113	668	1		3
113	669	1		4
113	670	1		5
114	671	1		1
114	672	1		2
114	673	1		3
114	674	1		4
114	675	1		5
114	676	1		6
115	677	1		1
115	678	1		2
115	679	1		3
115	680	1		4
115	681	1		5
115	682	1		6
115	683	1		7
116	684	1		1
116	685	1		2
116	686	1		3
116	687	1		4
116	688	1		5
116	689	1		6
116	690	1		7
117	691	1		1
117	692	1		2
117	693	1		3
117	694	1		4
117	695	1		5
118	696	1		1
118	697	1		2
118	698	1		3
118	699	1		4
118	700	1		5
118	701	1		6
119	702	1		1
119	703	1		2
119	704	1		3
119	705	1		4
119	706	1		5
119	707	1		6
120	708	1		1
120	709	1		2
120	710	1		3
120	711	1		4
120	712	1		5
120	713	1		6
121	714	1		1
121	715	1		2
121	716	1		3
121	717	1		4
121	718	1		5
122	719	1		1
122	720	1		2
122	721	1		3
122	722	1		4
122	723	1		5
122	724	1		6
123	725	1		1
123	726	1		2
123	727	1		3
123	728	1		4
123	729	1		5
123	730	1		6
124	731	1		1
124	732	1		2
124	733	1		3
124	734	1		4
124	735	1		5
124	736	1		6
124	737	1		7
125	738	1		1
125	739	1		2
125	740	1		3
125	741	1		4
125	742	1		5
125	743	1		6
125	744	1		7
126	745	1		1
126	746	1		2
126	747	1		3
126	748	1		4
126	749	1		5
126	750	1		6
127	751	1		1
127	752	1		2
127	753	1		3
127	754	1		4
127	755	1		5
127	756	1		6
128	757	1		1
128	758	1		2
128	759	1		3
128	760	1		4
128	761	1		5
129	762	1		1
129	763	1		2
129	764	1		3
129	765	1		4
129	766	1		5
129	767	1		6
130	768	1		1
130	769	1		2
130	770	1		3
130	771	1		4
130	772	1		5
131	773	1		1
131	774	1		2
131	775	1		3
131	776	1		4
131	777	1		5
131	778	1		6
131	779	1		7
132	780	1		1
132	781	1		2
132	782	1		3
132	783	1		4
132	784	1		5
133	785	1		1
133	786	1		2
133	787	1		3
133	788	1		4
133	789	1		5
134	790	1		1
134	791	1		2
134	792	1		3
134	793	1		4
134	794	1		5
135	795	1		1
135	796	1		2
135	797	1		3
135	798	1		4
135	799	1		5
135	800	1		6
136	801	1		1
136	802	1		2
136	803	1		3
136	804	1		4
136	805	1		5
136	806	1		6
137	807	1		1
137	808	1		2
137	809	1		3
137	810	1		4
137	811	1		5
137	812	1		6
138	813	1		1
138	814	1		2
138	815	1		3
138	816	1		4
138	817	1		5
138	818	1		6
139	819	1		1
139	820	1		2
139	821	1		3
139	822	1		4
139	823	1		5
140	824	1		1
140	825	1		2
140	826	1		3
140	827	1		4
140	828	1		5
141	829	1		1
141	830	1		2
141	831	1		3
141	832	1		4
141	833	1		5
141	834	1		6
142	835	1		1
142	836	1		2
142	837	1		3
142	838	1		4
142	839	1		5
143	840	1		1
143	841	1		2
143	842	1		3
143	843	1		4
143	844	1		5
143	845	1		6
144	846	1		1
144	847	1		2
144	848	1		3
144	849	1		4
144	850	1		5
144	851	1		6
145	852	1		1
145	853	1		2
145	854	1		3
145	855	1		4
145	856	1		5
145	857	1		6
145	858	1		7
146	859	1		1
146	860	1		2
146	861	1		3
146	862	1		4
146	863	1		5
146	864	1		6
146	865	1		7
147	866	1		1
147	867	1		2
147	868	1		3
147	869	1		4
147	870	1	7	5
148	871	1		1
148	872	1		2
148	873	1		3
148	874	1		4
148	875	1		5
148	876	1		6
149	877	1		1
149	878	1		2
149	879	1		3
149	880	1		4
149	881	1		5
150	882	1		1
150	883	1		2
150	884	1		3
150	885	1		4
150	886	1		5
150	887	1		6
151	888	1		1
151	889	1		2
151	890	1		3
151	891	1		4
151	892	1		5
151	893	1		6
152	894	1		1
152	895	1		2
152	896	1		3
152	897	1		4
152	898	1		5
152	870	8		6
153	899	1		1
153	900	1		2
153	901	1		3
153	902	1		4
153	903	1		5
154	904	1		1
154	905	1		2
154	906	1		3
154	907	1		4
154	908	1		5
154	909	1		6
155	910	1		1
155	911	1		2
155	912	1		3
155	913	1		4
155	914	1		5
155	915	1		6
155	3031	1		7
156	916	1		1
156	917	1		2
156	918	1		3
156	919	1		4
156	920	1		5
156	921	1		6
157	922	1		1
157	923	1		2
157	924	1		3
157	925	1		4
157	926	1		5
157	927	1		6
157	928	1		7
158	929	1		1
158	930	1		2
158	931	1		3
158	932	1		4
158	933	1		5
159	934	1		1
159	935	1		2
159	936	1		3
159	937	1		4
159	938	1		5
159	939	1		6
159	940	1		7
160	941	1		1
160	942	1		2
160	943	1		3
160	944	1		4
160	945	1		5
161	946	1		1
161	947	1		2
161	948	1		3
161	949	1		4
161	950	1		5
162	951	1		1
162	952	1		2
162	953	1		3
162	954	1		4
162	955	1		5
162	956	1		6
162	957	1		7
163	958	1		1
163	959	1		2
163	960	1		3
163	961	1		4
163	962	1		5
163	963	1		6
163	964	1		7
164	965	1		1
164	966	1		2
164	967	1		3
164	968	1		4
164	969	1		5
164	970	1		6
165	971	1		1
165	972	1		2
165	973	1		3
165	974	1		4
165	975	1		5
166	976	1		1
166	977	1		2
166	978	1		3
166	979	1		4
166	980	1		5
166	981	1		6
167	982	1		1
167	983	1		2
167	984	1		3
167	985	1		4
167	986	1		5
167	987	1		6
168	988	1		1
168	989	1		2
168	990	1		3
168	991	1		4
168	992	1		5
168	993	1		6
168	994	1		7
169	995	1		1
169	996	1		2
169	997	1		3
169	998	1		4
169	999	1		5
169	1000	1		6
169	1001	1		7
170	1002	1		1
170	1003	1		2
170	1004	1		3
170	1005	1		4
170	1006	1		5
170	1007	1		6
171	1008	1		1
171	1009	1		2
171	1010	1		3
171	1011	1		4
171	1012	1		5
171	1013	1		6
171	1014	1		7
172	1015	1		1
172	1016	1		2
172	1017	1		3
172	1018	1		4
172	1019	1		5
172	1020	1		6
173	1021	1		1
173	1022	1		2
173	1023	1		3
173	1024	1		4
173	1025	1		5
173	1026	1		6
174	1027	1		1
174	1028	1		2
174	1029	1		3
174	1030	1		4
174	1031	1		5
174	1032	1		6
174	1033	1		7
175	1034	1		1
175	1035	1		2
175	1036	1		3
175	1037	1		4
175	1038	1		5
175	1039	1		6
176	1040	1		1
176	1041	1		2
176	1042	1		3
176	1043	1		4
176	1044	1		5
176	1045	1		6
177	1046	1		1
177	1047	1		2
177	1048	1		3
177	1049	1		4
177	1050	1		5
177	1051	1	8	6
178	1052	1		1
178	1053	1		2
178	1054	1		3
178	1055	1		4
178	1056	1		5
178	1057	1		6
178	1058	1		7
179	1059	1		1
179	1060	1		2
179	1061	1		3
179	1062	1		4
179	1063	1		5
179	1064	1		6
180	1065	1		1
180	1066	1		2
180	1067	1		3
180	1068	1		4
180	1069	1		5
180	1070	1		6
181	1071	1		1
181	1072	1		2
181	1073	1		3
181	1074	1		4
181	1075	1	10	5
182	1076	1		1
182	1077	1		2
182	1078	1		3
182	1079	1		4
182	1080	1		5
182	1081	1		6
182	1082	1		7
183	1083	1		1
183	1084	1		2
183	1085	1		3
183	1086	1		4
183	1087	1		5
184	1088	1		1
184	1089	1		2
184	1090	1		3
184	1091	1		4
184	1092	1		5
184	1093	1		6
185	1094	1		1
185	1095	1		2
185	1096	1		3
185	1097	1		4
185	1098	1		5
186	1099	1		1
186	1100	1		2
186	1101	1		3
186	1102	1		4
186	1103	1		5
186	1104	1		6
187	1105	1		1
187	1106	1		2
187	1107	1		3
187	1108	1		4
187	1109	1		5
187	1110	1		6
188	1111	1		1
188	1112	1		2
188	1113	1		3
188	1114	1		4
188	1115	1		5
188	1116	1		6
189	1117	1		1
189	1118	1		2
189	1119	1		3
189	1120	1		4
189	1121	1		5
189	1122	1		6
189	1123	1		7
190	1124	1		1
190	1125	1		2
190	1126	1		3
190	1127	1		4
190	1128	1		5
191	1129	1		1
191	1130	1		2
191	1131	1		3
191	1132	1		4
191	1133	1		5
192	1134	1		1
192	1135	1		2
192	1136	1		3
192	1137	1		4
192	1138	1		5
193	1139	1		1
193	1140	1		2
193	1141	1		3
193	1142	1		4
193	1143	1	8	5
194	1144	1		1
194	1145	1		2
194	1146	1		3
194	1147	1		4
194	1148	1		5
194	1149	1		6
194	1150	1		7
195	1151	1		1
195	1152	1		2
195	1153	1		3
195	1154	1		4
195	1155	1		5
195	1156	1		6
196	1157	1		1
196	1158	1		2
196	1159	1		3
196	1160	1		4
196	1161	1		5
196	1162	1		6
196	1163	1		7
197	1164	1		1
197	1165	1		2
197	1166	1		3
197	1167	1		4
197	1168	1		5
197	1169	1		6
198	1170	1		1
198	1171	1		2
198	1172	1		3
198	1173	1		4
198	1174	1		5
198	1175	1		6
199	1176	1		1
199	1177	1		2
199	1178	1		3
199	1179	1		4
199	1180	1		5
199	1181	1		6
199	1182	1		7
200	1183	1		1
200	1184	1		2
200	1185	1		3
200	1186	1		4
200	1187	1		5
200	1188	1		6
201	1189	1		1
201	1190	1		2
201	1191	1		3
201	1192	1		4
201	1193	1		5
201	1194	1		6
202	1195	1		1
202	1196	1		2
202	1197	1		3
202	1198	1		4
202	1199	1		5
202	1200	1		6
203	1201	1		1
203	1202	1		2
203	1203	1		3
203	1204	1		4
203	1205	1		5
204	1206	1		1
204	1207	1		2
204	1208	1		3
204	1209	1		4
204	1210	1		5
204	1211	1	26	6
205	1212	1		1
205	1213	1		2
205	1214	1		3
205	1215	1		4
205	1216	1		5
206	1217	1		1
206	1218	1		2
206	1219	1		3
206	1220	1		4
206	1221	1		5
207	1222	1		1
207	1223	1		2
207	1224	1		3
207	1225	1		4
207	1226	1		5
207	1227	1	12	6
208	1228	1		1
208	1229	1		2
208	1230	1		3
208	1231	1		4
208	1232	1		5
209	1233	1		1
209	1234	1		2
209	1235	1		3
209	1236	1		4
209	1237	1		5
209	1238	1		6
210	1239	1		1
210	1240	1		2
210	1241	1		3
210	1242	1		4
210	1243	1		5
210	1244	1		6
211	1245	1		1
211	1246	1		2
211	1247	1		3
211	1248	1		4
211	1249	1		5
211	1250	1		6
212	1251	1		1
212	1252	1		2
212	1253	1		3
212	1254	1		4
212	1255	1		5
213	1256	1		1
213	1257	1		2
213	1258	1		3
213	1259	1		4
213	1260	1		5
213	1261	1		6
214	1262	1		1
214	1263	1		2
214	1264	1		3
214	1265	1		4
214	1266	1		5
214	1267	1		6
215	1268	1		1
215	1269	1		2
215	1270	1		3
215	1271	1		4
215	1272	1		5
215	1273	1		6
215	1274	1		7
215	1211	1		8
216	1275	1		1
216	1276	1		2
216	1277	1		3
216	1278	1		4
216	1279	1		5
216	1280	1		6
217	1281	1		1
217	1282	1		2
217	1283	1		3
217	1284	1		4
217	1285	1		5
217	1286	1		6
218	1287	1		1
218	1288	1		2
218	1289	1		3
218	1290	1		4
218	1291	1		5
218	1292	1		6
219	1293	1		1
219	1294	1		2
219	1295	1		3
219	1296	1		4
219	1297	1		5
219	1298	1		6
219	1299	1		7
220	1300	1		1
220	1301	1		2
220	1302	1		3
220	1303	1		4
220	1304	1		5
220	1305	1		6
220	1306	1		7
221	1307	1		1
221	1308	1		2
221	1309	1		3
221	1310	1		4
221	1311	1		5
221	1312	1		6
222	1313	1		1
222	1314	1		2
222	1315	1		3
222	1316	1		4
222	1317	1		5
222	1318	1		6
222	1319	1		7
223	1320	1		1
223	1321	1		2
223	1322	1		3
223	1323	1		4
223	1324	1		5
223	1325	1		6
224	1326	1		1
224	1327	1		2
224	1328	1		3
224	1329	1		4
224	1330	1		5
224	1331	1	11	6
225	1332	1		1
225	1333	1		2
225	1334	1		3
225	1335	1		4
225	1336	1		5
225	1337	1		6
226	1338	1		1
226	1339	1		2
226	1340	1		3
226	1341	1		4
226	1342	1		5
226	1343	1		6
227	1344	1		1
227	1345	1		2
227	1346	1		3
227	1347	1		4
227	1348	1		5
227	1349	1		6
227	89	8		7
228	1350	1		1
228	1351	1		2
228	1352	1		3
228	1353	1		4
228	1354	1		5
229	1355	1		1
229	1356	1		2
229	1357	1		3
229	1358	1		4
229	1359	1		5
229	1360	1		6
229	1361	1		7
230	1362	1		1
230	1363	1		2
230	1364	1		3
230	1365	1		4
230	1366	1		5
230	1367	1		6
231	1368	1		1
231	1369	1		2
231	1370	1		3
231	1371	1		4
231	1372	1		5
232	1373	1		1
232	1374	1		2
232	1375	1		3
232	1376	1		4
232	1377	1		5
232	1378	1		6
232	1379	1		7
233	1380	1		1
233	1381	1		2
233	1382	1		3
233	1383	1		4
233	1384	1		5
233	1385	1		6
234	1386	1		1
234	1387	1		2
234	1388	1		3
234	1389	1		4
234	1390	1		5
234	1391	1		6
235	1392	1		1
235	1393	1		2
235	1394	1		3
235	1395	1		4
235	1396	1		5
235	1397	1		6
235	1051	7		7
236	1398	1		1
236	1399	1		2
236	1400	1		3
236	1401	1		4
236	1402	1		5
236	1403	1		6
237	1404	1		1
237	1405	1		2
237	1406	1		3
237	1407	1		4
237	1408	1		5
237	1409	1		6
238	1410	1		1
238	1411	1		2
238	1412	1		3
238	1413	1		4
238	1414	1		5
238	1415	1		6
238	1416	1		7
239	1417	1		1
239	1418	1		2
239	1419	1		3
239	1420	1		4
239	1421	1		5
240	1422	1		1
240	1423	1		2
240	1424	1		3
240	1425	1		4
240	1426	1		5
240	1427	1		6
241	1428	1		1
241	1429	1		2
241	1430	1		3
241	1431	1		4
241	1432	1		5
242	1433	1		1
242	1434	1		2
242	1435	1		3
242	1436	1		4
242	1437	1		5
242	1438	1		6
243	1439	1		1
243	1440	1		2
243	1441	1		3
243	1442	1		4
243	1443	1		5
243	1444	1		6
243	1445	1		7
244	1446	1		1
244	1447	1		2
244	1448	1		3
244	1449	1		4
244	1450	1		5
244	1451	1		6
245	1452	1		1
245	1453	1		2
245	1454	1		3
245	1455	1		4
245	1456	1		5
246	1457	1		1
246	1458	1		2
246	1459	1		3
246	1460	1		4
246	1461	1		5
246	1462	1		6
247	1463	1		1
247	1464	1		2
247	1465	1		3
247	1466	1		4
247	1467	1		5
247	1468	1		6
248	1469	1		1
248	1470	1		2
248	1471	1		3
248	1472	1		4
248	1473	1		5
248	1474	1		6
249	1475	1		1
249	1476	1		2
249	1477	1		3
249	1478	1		4
249	1479	1		5
249	3153	11		6
250	1480	1		1
250	1481	1		2
250	1482	1		3
250	1483	1		4
250	1484	1		5
250	1485	1		6
251	1486	1		1
251	1487	1		2
251	1488	1		3
251	1489	1		4
251	1490	1		5
252	1491	1		1
252	1492	1		2
252	1493	1		3
252	1494	1		4
252	1495	1		5
252	1496	1		6
252	2273	1		7
253	1497	1		1
253	1498	1		2
253	1499	1		3
253	1500	1		4
253	1501	1		5
253	1502	1		6
254	1503	1		1
254	1504	1		2
254	1505	1		3
254	1506	1		4
254	1507	1		5
254	1508	1		6
254	1509	1		7
255	1510	1		1
255	1511	1		2
255	1512	1		3
255	1513	1		4
255	1514	1		5
255	1515	1		6
255	1516	1	26	7
256	1517	1		1
256	1518	1		2
256	1519	1		3
256	1520	1		4
256	1521	1		5
256	1522	1		6
257	1523	1		1
257	1524	1		2
257	1525	1		3
257	1526	1		4
257	1527	1		5
258	1528	1		1
258	1529	1		2
258	1530	1		3
258	1531	1		4
258	1532	1		5
259	1533	1		1
259	1534	1		2
259	1535	1		3
259	1536	1		4
259	1537	1		5
260	1538	1		1
260	1539	1		2
260	1540	1		3
260	1541	1		4
260	1542	1		5
260	1543	1		6
261	1544	1		1
261	1545	1		2
261	1546	1		3
261	1547	1		4
261	1548	1		5
261	1549	1		6
261	1550	1		7
262	1551	1		1
262	1552	1		2
262	1553	1		3
262	1554	1		4
262	1555	1		5
262	1556	1		6
263	1557	1		1
263	1558	1		2
263	1559	1		3
263	1560	1		4
263	1561	1		5
264	1562	1		1
264	1563	1		2
264	1564	1		3
264	1565	1		4
264	1566	1		5
264	1567	1		6
265	1568	1		1
265	1569	1		2
265	1570	1		3
265	1571	1		4
265	1572	1		5
265	1573	1		6
265	1574	1		7
266	1575	1		1
266	1576	1		2
266	1577	1		3
266	1578	1		4
266	1579	1		5
266	1580	1		6
267	1581	1		1
267	1582	1		2
267	1583	1		3
267	1584	1		4
267	1585	1		5
267	1586	1		6
268	1587	1		1
268	1588	1		2
268	1589	1		3
268	1590	1		4
268	1591	1		5
269	1592	1		1
269	1593	1		2
269	1594	1		3
269	1595	1		4
269	1596	1		5
270	1597	1		1
270	1598	1		2
270	1599	1		3
270	1600	1		4
270	1601	1		5
271	1602	1		1
271	1603	1		2
271	1604	1		3
271	1605	1		4
271	1606	1		5
271	1607	1		6
272	1608	1		1
272	1609	1		2
272	1610	1		3
272	1611	1		4
272	1612	1		5
272	1613	1		6
273	1614	1		1
273	1615	1		2
273	1616	1		3
273	1617	1		4
273	1618	1		5
273	1619	1		6
274	1620	1		1
274	1621	1		2
274	1622	1		3
274	1623	1		4
274	1624	1		5
274	1625	1		6
275	1626	1		1
275	1627	1		2
275	1628	1		3
275	1629	1		4
275	1630	1		5
275	1631	1		6
276	1632	1		1
276	1633	1		2
276	1634	1		3
276	1635	1		4
276	1636	1		5
276	1637	1		6
277	1638	1		1
277	1639	1		2
277	1640	1		3
277	1641	1		4
277	1642	1		5
277	1643	1		6
278	1644	1		1
278	1645	1		2
278	1646	1		3
278	1647	1		4
278	1648	1		5
278	1649	1		6
279	1650	1		1
279	1651	1		2
279	1652	1		3
279	1653	1		4
279	1654	1		5
279	1655	1		6
280	1656	1		1
280	1657	1		2
280	1658	1		3
280	1659	1		4
280	1660	1		5
280	1661	1		6
280	1662	1		7
281	1663	1		1
281	1664	1		2
281	1665	1		3
281	1666	1		4
281	1667	1		5
282	1668	1		1
282	1669	1		2
282	1670	1		3
282	1671	1		4
282	1672	1		5
282	1673	1		6
283	1674	1		1
283	1675	1		2
283	1676	1		3
283	1677	1		4
283	1678	1		5
283	1679	1		6
283	1680	1		7
284	1681	1		1
284	1682	1		2
284	1683	1		3
284	1684	1		4
284	1685	1		5
284	1686	1		6
285	1687	1		1
285	1688	1		2
285	1689	1		3
285	1690	1		4
285	1691	1		5
285	1692	1		6
285	1693	1		7
286	1694	1		1
286	1695	1		2
286	1696	1		3
286	1697	1		4
286	1698	1		5
287	1699	1		1
287	1700	1		2
287	1701	1		3
287	1702	1		4
287	1703	1		5
287	1704	1		6
288	1705	1		1
288	1706	1		2
288	1707	1		3
288	1708	1		4
288	1709	1		5
288	1710	1		6
289	1711	1		1
289	1712	1		2
289	1713	1		3
289	1714	1		4
289	1715	1		5
289	1716	1		6
290	1717	1		1
290	1718	1		2
290	1719	1		3
290	1720	1		4
290	1721	1		5
291	1722	1		1
291	1723	1		2
291	1724	1		3
291	1725	1		4
291	1726	1		5
291	1727	1		6
291	1728	1		7
292	1729	1		1
292	1730	1		2
292	1731	1		3
292	1732	1		4
292	1733	1		5
292	1734	1		6
293	1735	1		1
293	1736	1		2
293	1737	1		3
293	1738	1		4
293	1739	1		5
293	1740	1		6
294	1741	1		1
294	1742	1		2
294	1743	1		3
294	1744	1		4
294	1745	1		5
294	1746	1		6
294	1747	1		7
295	1748	1		1
295	1749	1		2
295	1750	1		3
295	1751	1		4
295	1752	1		5
295	1753	1		6
295	1754	1		7
296	1755	1		1
296	1756	1		2
296	1757	1		3
296	1758	1		4
296	1759	1		5
296	1760	1		6
296	1761	1		7
297	1762	1		1
297	1763	1		2
297	1764	1		3
297	1765	1		4
297	1766	1		5
297	1767	1		6
298	1768	1		1
298	1769	1		2
298	1770	1		3
298	1771	1		4
298	1772	1		5
298	1773	1		6
298	1774	1		7
299	1775	1		1
299	1776	1		2
299	1777	1		3
299	1778	1		4
299	1779	1		5
299	1780	1		6
300	1781	1		1
300	1782	1		2
300	1783	1		3
300	1784	1		4
300	1785	1		5
300	1786	1		6
301	1787	1		1
301	1788	1		2
301	1789	1		3
301	1790	1		4
301	1791	1		5
301	1792	1		6
301	1793	1		7
302	1794	1		1
302	1795	1		2
302	1796	1		3
302	1797	1		4
302	1798	1		5
302	1799	1		6
303	1800	1		1
303	1801	1		2
303	1802	1		3
303	1803	1		4
303	1804	1		5
303	1805	1		6
303	1806	1		7
304	1807	1		1
304	1808	1		2
304	1809	1		3
304	1810	1		4
304	1811	1		5
304	1812	1		6
305	1813	1		1
305	1814	1		2
305	1815	1		3
305	1816	1		4
305	1817	1		5
305	1818	1		6
306	1819	1		1
306	1820	1		2
306	1821	1		3
306	1822	1		4
306	1823	1		5
306	1824	1		6
307	1825	1		1
307	1826	1		2
307	1827	1		3
307	1828	1		4
307	1829	1		5
307	1830	1		6
308	1831	1		1
308	1832	1		2
308	1833	1		3
308	1834	1		4
308	1835	1		5
308	1836	1		6
309	1837	1		1
309	1838	1		2
309	1839	1		3
309	1840	1		4
309	1841	1		5
309	1842	1		6
310	1843	1		1
310	1844	1		2
310	1845	1		3
310	1846	1		4
310	1847	1		5
310	1848	1		6
311	1849	1		1
311	1850	1		2
311	1851	1		3
311	1852	1		4
311	1853	1		5
312	1854	1		1
312	1855	1		2
312	1856	1		3
312	1857	1		4
312	1858	1		5
313	1859	1		1
313	1860	1		2
313	1861	1		3
313	1862	1		4
313	1863	1		5
313	1864	1		6
313	1865	1		7
314	1866	1		1
314	1867	1		2
314	1868	1		3
314	1869	1		4
314	1870	1		5
314	1871	1		6
315	1872	1		1
315	1873	1		2
315	1874	1		3
315	1875	1		4
315	1876	1		5
315	1877	1		6
315	1878	1		7
316	1879	1		1
316	1880	1		2
316	1881	1		3
316	1882	1		4
316	1883	1		5
316	1884	1		6
317	1885	1		1
317	1886	1		2
317	1887	1		3
317	1888	1		4
317	1889	1		5
317	1890	1		6
317	1891	1		7
318	1892	1		1
318	1893	1		2
318	1894	1		3
318	1895	1		4
318	1896	1		5
319	1897	1		1
319	1898	1		2
319	1899	1		3
319	1900	1		4
319	1901	1		5
319	1902	1		6
320	1903	1		1
320	1904	1		2
320	1905	1		3
320	1906	1		4
320	1907	1		5
320	1908	1		6
320	1909	1		7
321	1910	1		1
321	1911	1		2
321	1912	1		3
321	1913	1		4
321	1914	1		5
321	1915	1		6
321	1916	1		7
322	1917	1		1
322	1918	1		2
322	1919	1		3
322	1920	1		4
322	1921	1		5
322	1922	1		6
323	1923	1		1
323	1924	1		2
323	1925	1		3
323	1926	1		4
323	1927	1		5
324	1928	1		1
324	1929	1		2
324	1930	1		3
324	1931	1		4
324	1932	1		5
324	1933	1		6
325	1934	1		1
325	1935	1		2
325	1936	1		3
325	1937	1		4
325	1938	1		5
325	1939	1		6
325	1940	1		7
326	1941	1		1
326	1942	1		2
326	1943	1		3
326	1944	1		4
326	1945	1		5
326	1946	1		6
326	1947	1		7
327	1948	1		1
327	1949	1		2
327	1950	1		3
327	1951	1		4
327	1952	1		5
327	1953	1		6
328	1954	1		1
328	1955	1		2
328	1956	1		3
328	1957	1		4
328	1958	1	3	5
329	1959	1		1
329	1960	1		2
329	1961	1		3
329	1962	1		4
329	1963	1		5
329	1964	1		6
330	1965	1		1
330	1966	1		2
330	1967	1		3
330	1968	1		4
330	1969	1		5
330	1970	1		6
330	1971	1		7
331	1972	1		1
331	1973	1		2
331	1974	1		3
331	1975	1		4
331	1976	1		5
331	1977	1		6
332	1978	1		1
332	1979	1		2
332	1980	1		3
332	1981	1		4
332	1982	1		5
332	1983	1		6
332	1984	1		7
333	1985	1		1
333	1986	1		2
333	1987	1		3
333	1988	1		4
333	1989	1		5
333	1990	1		6
334	1991	1		1
334	1992	1		2
334	1993	1		3
334	1994	1		4
334	1995	1		5
334	1996	1		6
335	1997	1		1
335	1998	1		2
335	1999	1		3
335	2000	1		4
335	2001	1		5
336	2002	1		1
336	2003	1		2
336	2004	1		3
336	2005	1		4
336	2006	1		5
336	2007	1		6
337	2008	1		1
337	2009	1		2
337	2010	1		3
337	2011	1		4
337	2012	1		5
338	2013	1		1
338	2014	1		2
338	2015	1		3
338	2016	1		4
338	2017	1		5
338	2018	1		6
339	2019	1		1
339	2020	1		2
339	2021	1		3
339	2022	1		4
339	2023	1		5
339	2024	1		6
340	2025	1		1
340	2026	1		2
340	2027	1		3
340	2028	1		4
340	2029	1		5
340	2030	1		6
341	2031	1		1
341	2032	1		2
341	2033	1		3
341	2034	1		4
341	2035	1		5
341	2036	1		6
342	2037	1		1
342	2038	1		2
342	2039	1		3
342	2040	1		4
342	2041	1		5
342	2042	1		6
343	2043	1		1
343	2044	1		2
343	2045	1		3
343	2046	1		4
343	2047	1		5
344	2048	1		1
344	2049	1		2
344	2050	1		3
344	2051	1		4
344	2052	1		5
344	2053	1		6
344	2054	1		7
345	2055	1		1
345	2056	1		2
345	2057	1		3
345	2058	1		4
345	2059	1		5
345	2060	1		6
346	2061	1		1
346	2062	1		2
346	2063	1		3
346	2064	1		4
347	2065	1		1
347	2066	1		2
347	2067	1		3
347	2068	1		4
347	2069	1		5
347	2070	1		6
348	2071	1		1
348	2072	1		2
348	2073	1		3
348	2074	1		4
348	2075	1		5
348	2076	1		6
348	2077	1		7
349	2078	1		1
349	2079	1		2
349	2080	1		3
349	2081	1		4
349	2082	1		5
350	2083	1		1
350	2084	1		2
350	2085	1		3
350	2086	1		4
350	2087	1		5
350	2088	1		6
351	2089	1		1
351	2090	1		2
351	2091	1		3
351	2092	1		4
351	2093	1		5
351	2094	1		6
352	2095	1		1
352	2096	1		2
352	2097	1		3
352	2098	1		4
353	2099	1		1
353	2100	1		2
353	2101	1		3
353	2102	1		4
353	2103	1		5
353	2104	1		6
354	2105	1		1
354	2106	1		2
354	2107	1		3
354	2108	1		4
354	2109	1		5
355	2110	1		1
355	2111	1		2
355	2112	1		3
355	2113	1		4
355	2114	1		5
356	2115	1		1
356	2116	1		2
356	2117	1		3
356	2118	1		4
356	2119	1		5
356	2120	1		6
357	2121	1		1
357	2122	1		2
357	2123	1		3
357	2124	1		4
357	2125	1		5
357	2126	1		6
358	2127	1		1
358	2128	1		2
358	2129	1		3
358	2130	1		4
358	2131	1		5
359	2132	1		1
359	2133	1		2
359	2134	1		3
359	2135	1		4
359	2136	1		5
359	2137	1		6
360	2138	1		1
360	2139	1		2
360	2140	1		3
360	2141	1		4
360	2142	1		5
360	2143	1		6
361	2144	1		1
361	2145	1		2
361	2146	1		3
361	2147	1		4
361	2148	1		5
361	2149	1		6
362	2150	1		1
362	2151	1		2
362	2152	1		3
362	2153	1		4
362	2154	1		5
362	2155	1		6
362	2156	1		7
363	2157	1		1
363	2158	1		2
363	2159	1		3
363	2160	1		4
363	2161	1		5
363	2162	1		6
363	2163	1		7
364	2164	1		1
364	2165	1		2
364	2166	1		3
364	2167	1		4
364	2168	1		5
364	2169	1		6
365	2170	1		1
365	2171	1		2
365	2172	1		3
365	2173	1		4
365	2174	1		5
365	2175	1		6
365	2176	1		7
366	2177	1		1
366	2178	1		2
366	2179	1		3
366	2180	1		4
366	2181	1		5
366	2182	1		6
367	2183	1		1
367	2184	1		2
367	2185	1		3
367	2186	1		4
367	2187	1		5
368	2188	1		1
368	2189	1		2
368	2190	1		3
368	2191	1		4
368	2192	1		5
368	2193	1		6
369	2194	1		1
369	2195	1		2
369	2196	1		3
369	2197	1		4
369	2198	1		5
370	2199	1		1
370	2200	1		2
370	2201	1		3
370	2202	1		4
370	2203	1		5
370	2204	1		6
371	2205	1		1
371	2206	1		2
371	2207	1		3
371	2208	1		4
371	2209	1		5
371	2210	1		6
371	2211	1		7
372	2212	1		1
372	2213	1		2
372	2214	1		3
372	2215	1		4
372	2216	1		5
372	2217	1		6
373	2218	1		1
373	2219	1		2
373	2220	1		3
373	2221	1		4
373	2222	1		5
373	2223	1		6
374	2224	1		1
374	2225	1		2
374	2226	1		3
374	2227	1		4
374	2228	1		5
374	2229	1		6
374	2230	1		7
375	2231	1		1
375	2232	1		2
375	2233	1		3
375	2234	1		4
375	2235	1		5
376	2236	1		1
376	2237	1		2
376	2238	1		3
376	2239	1		4
376	2240	1		5
377	2241	1		1
377	2242	1		2
377	2243	1		3
377	2244	1		4
377	2245	1		5
377	2246	1		6
377	2247	1		7
378	2248	1		1
378	2249	1		2
378	2250	1		3
378	2251	1		4
378	2252	1		5
378	2253	1		6
379	2254	1		1
379	2255	1		2
379	2256	1		3
379	2257	1		4
379	2258	1		5
379	2259	1		6
380	2260	1		1
380	2261	1		2
380	2262	1		3
380	2263	1		4
380	2264	1		5
380	2265	1		6
380	2266	1		7
380	2701	9		8
381	2267	1		1
381	2268	1		2
381	2269	1		3
381	2270	1		4
381	2271	1		5
381	2272	1		6
381	2273	1	8	7
382	2274	1		1
382	2275	1		2
382	2276	1		3
382	2277	1		4
382	2278	1		5
382	2279	1		6
382	2280	1		7
383	2281	1		1
383	2282	1		2
383	2283	1		3
383	2284	1		4
383	2285	1		5
383	2286	1		6
384	2287	1		1
384	2288	1		2
384	2289	1		3
384	2290	1		4
384	2291	1		5
384	2292	1		6
385	2293	1		1
385	2294	1		2
385	2295	1		3
385	2296	1		4
385	2297	1		5
385	2298	1		6
386	2299	1		1
386	2300	1		2
386	2301	1		3
386	2302	1		4
386	2303	1		5
386	2304	1		6
386	2305	1		7
387	2306	1		1
387	2307	1		2
387	2308	1		3
387	2309	1		4
387	2310	1		5
387	2311	1		6
388	2312	1		1
388	2313	1		2
388	2314	1		3
388	2315	1		4
388	2316	1		5
389	2317	1		1
389	2318	1		2
389	2319	1		3
389	2320	1		4
389	2321	1		5
389	2322	1		6
389	2323	1		7
390	2324	1		1
390	2325	1		2
390	2326	1		3
390	2327	1		4
390	2328	1		5
391	2329	1		1
391	2330	1		2
391	2331	1		3
391	2332	1		4
391	2333	1		5
391	2334	1		6
391	2335	1		7
392	2336	1		1
392	2337	1		2
392	2338	1		3
392	2339	1		4
392	2340	1		5
392	2341	1		6
393	2342	1		1
393	2343	1		2
393	2344	1		3
393	2345	1		4
393	2346	1		5
394	2347	1		1
394	2348	1		2
394	2349	1		3
394	2350	1		4
394	2351	1		5
394	2352	1		6
395	2353	1		1
395	2354	1		2
395	2355	1		3
395	2356	1		4
395	2357	1		5
396	2358	1		1
396	2359	1		2
396	2360	1		3
396	2361	1		4
396	2362	1		5
396	2363	1		6
397	2364	1		1
397	2365	1		2
397	2366	1		3
397	2367	1		4
397	2368	1		5
397	2369	1		6
398	2370	1		1
398	2371	1		2
398	2372	1		3
398	2373	1		4
398	2374	1		5
398	2375	1		6
399	2376	1		1
399	2377	1		2
399	2378	1		3
399	2379	1		4
399	2380	1		5
400	2381	1		1
400	2382	1		2
400	2383	1		3
400	2384	1		4
400	2385	1		5
401	2386	1		1
401	2387	1		2
401	2388	1		3
401	2389	1		4
401	2390	1		5
401	2391	1		6
401	2392	1		7
402	2393	1		1
402	2394	1		2
402	2395	1		3
402	2396	1		4
402	2397	1		5
402	2398	1		6
403	2399	1		1
403	2400	1		2
403	2401	1		3
403	2402	1		4
403	2403	1		5
403	2404	1		6
403	550	12		7
404	2405	1		1
404	2406	1		2
404	2407	1		3
404	2408	1		4
404	2409	1		5
404	2410	1		6
405	2411	1		1
405	2412	1		2
405	2413	1		3
405	2414	1		4
405	2415	1		5
405	2416	1		6
406	2417	1		1
406	2418	1		2
406	2419	1		3
406	2420	1		4
406	2421	1		5
406	2422	1		6
407	2423	1		1
407	2424	1		2
407	2425	1		3
407	2426	1		4
407	2427	1		5
407	2428	1		6
408	2429	1		1
408	2430	1		2
408	2431	1		3
408	2432	1		4
408	2433	1		5
408	2434	1		6
409	2435	1		1
409	2436	1		2
409	2437	1		3
409	2438	1		4
409	2439	1		5
409	2440	1		6
410	2441	1		1
410	2442	1		2
410	2443	1		3
410	2444	1		4
410	2445	1		5
411	2446	1		1
411	2447	1		2
411	2448	1		3
411	2449	1		4
411	2450	1		5
411	2451	1		6
412	2452	1		1
412	2453	1		2
412	2454	1		3
412	2455	1		4
412	2456	1		5
412	2457	1		6
413	2458	1		1
413	2459	1		2
413	2460	1		3
413	2461	1		4
413	2462	1		5
413	2463	1		6
414	2464	1		1
414	2465	1		2
414	2466	1		3
414	2467	1		4
414	2468	1		5
414	2469	1		6
415	2470	1		1
415	2471	1		2
415	2472	1		3
415	2473	1		4
415	2474	1		5
416	2475	1		1
416	2476	1		2
416	2477	1		3
416	2478	1		4
416	2479	1		5
416	2480	1		6
416	3231	1		7
417	2481	1		1
417	2482	1		2
417	2483	1		3
417	2484	1		4
417	2485	1		5
418	2486	1		1
418	2487	1		2
418	2488	1		3
418	2489	1		4
418	2490	1		5
419	2491	1		1
419	2492	1		2
419	2493	1		3
419	2494	1		4
419	2495	1		5
419	2496	1		6
419	2497	1		7
420	2498	1		1
420	2499	1		2
420	2500	1		3
420	2501	1		4
420	2502	1		5
421	2503	1		1
421	2504	1		2
421	2505	1		3
421	2506	1		4
421	2507	1		5
421	2508	1		6
422	2509	1		1
422	2510	1		2
422	2511	1		3
422	2512	1		4
422	2513	1		5
423	2514	1		1
423	2515	1		2
423	2516	1		3
423	2517	1		4
423	2518	1		5
423	2519	1		6
424	2520	1		1
424	2521	1		2
424	2522	1		3
424	2523	1		4
424	2524	1		5
424	2525	1		6
425	2526	1		1
425	2527	1		2
425	2528	1		3
425	2529	1		4
425	2530	1		5
425	2531	1		6
426	2532	1		1
426	2533	1		2
426	2534	1		3
426	2535	1		4
426	2536	1		5
426	2537	1		6
427	2538	1		1
427	2539	1		2
427	2540	1		3
427	2541	1		4
427	2542	1		5
428	2543	1		1
428	2544	1		2
428	2545	1		3
428	2546	1		4
428	2547	1		5
429	2548	1		1
429	2549	1		2
429	2550	1		3
429	2551	1		4
429	2552	1		5
429	2553	1		6
429	2554	1		7
430	2555	1		1
430	2556	1		2
430	2557	1		3
430	2558	1		4
430	2559	1		5
430	2560	1		6
431	2561	1		1
431	2562	1		2
431	2563	1		3
431	2564	1		4
431	2565	1		5
431	2566	1		6
432	2567	1		1
432	2568	1		2
432	2569	1		3
432	2570	1		4
432	2571	1		5
432	2572	1		6
433	2573	1		1
433	2574	1		2
433	2575	1		3
433	2576	1		4
433	2577	1		5
433	2578	1		6
433	2579	1		7
434	2580	1		1
434	2581	1		2
434	2582	1		3
434	2583	1		4
434	2584	1		5
434	2585	1		6
435	2586	1		1
435	2587	1		2
435	2588	1		3
435	2589	1		4
435	2590	1		5
436	2591	1		1
436	2592	1		2
436	2593	1		3
436	2594	1		4
436	2595	1		5
437	2596	1		1
437	2597	1		2
437	2598	1		3
437	2599	1		4
437	2600	1		5
438	2601	1		1
438	2602	1		2
438	2603	1		3
438	2604	1		4
438	2605	1		5
439	2606	1		1
439	2607	1		2
439	2608	1		3
439	2609	1		4
439	2610	1		5
439	2611	1		6
440	2612	1		1
440	2613	1		2
440	2614	1		3
440	2615	1		4
440	2616	1		5
440	2617	1		6
440	2618	1		7
441	2619	1		1
441	2620	1		2
441	2621	1		3
441	2622	1		4
441	2623	1		5
441	2624	1		6
442	2625	1		1
442	2626	1		2
442	2627	1		3
442	2628	1		4
442	2629	1		5
442	2630	1		6
442	2631	1		7
443	2632	1		1
443	2633	1		2
443	2634	1		3
443	2635	1		4
443	2636	1		5
444	2637	1		1
444	2638	1		2
444	2639	1		3
444	2640	1		4
444	2641	1		5
444	2642	1		6
444	2643	1		7
445	2644	1		1
445	2645	1		2
445	2646	1		3
445	2647	1		4
445	2648	1		5
445	2649	1		6
446	2650	1		1
446	2651	1		2
446	2652	1		3
446	2653	1		4
446	2654	1		5
446	2655	1		6
446	1143	1		7
447	2656	1		1
447	2657	1		2
447	2658	1		3
447	2659	1		4
447	2660	1		5
447	2661	1		6
448	2662	1		1
448	2663	1		2
448	2664	1		3
448	2665	1		4
448	2666	1		5
449	2667	1		1
449	2668	1		2
449	2669	1		3
449	2670	1		4
449	2671	1		5
449	2672	1		6
450	2673	1		1
450	2674	1		2
450	2675	1		3
450	2676	1		4
450	2677	1		5
451	2678	1		1
451	2679	1		2
451	2680	1		3
451	2681	1		4
451	2682	1		5
451	2683	1		6
452	2684	1		1
452	2685	1		2
452	2686	1		3
452	2687	1		4
452	2688	1		5
452	2689	1		6
453	2690	1		1
453	2691	1		2
453	2692	1		3
453	2693	1		4
453	2694	1		5
454	2695	1		1
454	2696	1		2
454	2697	1		3
454	2698	1		4
454	2699	1		5
454	2700	1		6
454	2701	1	3	7
455	2702	1		1
455	2703	1		2
455	2704	1		3
455	2705	1		4
455	2706	1		5
455	2707	1		6
456	2708	1		1
456	2709	1		2
456	2710	1		3
456	2711	1		4
456	2712	1		5
456	2713	1		6
456	2714	1		7
457	2715	1		1
457	2716	1		2
457	2717	1		3
457	2718	1		4
457	2719	1		5
457	2720	1		6
458	2721	1		1
458	2722	1		2
458	2723	1		3
458	2724	1		4
458	2725	1		5
458	2726	1		6
459	2727	1		1
459	2728	1		2
459	2729	1		3
459	2730	1		4
459	2731	1		5
460	2732	1		1
460	2733	1		2
460	2734	1		3
460	2735	1		4
460	2736	1		5
461	2737	1		1
461	2738	1		2
461	2739	1		3
461	2740	1		4
461	2741	1		5
462	2742	1		1
462	2743	1		2
462	2744	1		3
462	2745	1		4
462	2746	1		5
462	2747	1		6
462	2748	1		7
463	2749	1		1
463	2750	1		2
463	2751	1		3
463	2752	1		4
463	2753	1		5
463	2754	1		6
464	2755	1		1
464	2756	1		2
464	2757	1		3
464	2758	1		4
464	2759	1		5
464	2760	1		6
465	2761	1		1
465	2762	1		2
465	2763	1		3
465	2764	1		4
465	2765	1		5
465	2766	1		6
465	2767	1		7
466	2768	1		1
466	2769	1		2
466	2770	1		3
466	2771	1		4
466	2772	1		5
467	2773	1		1
467	2774	1		2
467	2775	1		3
467	2776	1		4
467	2777	1		5
467	2778	1		6
468	2779	1		1
468	2780	1		2
468	2781	1		3
468	2782	1		4
468	2783	1		5
468	2784	1		6
468	2785	1		7
469	2786	1		1
469	2787	1		2
469	2788	1		3
469	2789	1		4
469	2790	1		5
469	2791	1		6
469	2792	1		7
470	2793	1		1
470	2794	1		2
470	2795	1		3
470	2796	1		4
470	2797	1		5
470	2798	1		6
470	2799	1		7
471	2800	1		1
471	2801	1		2
471	2802	1		3
471	2803	1		4
471	2804	1		5
471	2805	1		6
472	2806	1		1
472	2807	1		2
472	2808	1		3
472	2809	1		4
472	2810	1		5
473	2811	1		1
473	2812	1		2
473	2813	1		3
473	2814	1		4
473	2815	1		5
474	2816	1		1
474	2817	1		2
474	2818	1		3
474	2819	1		4
474	2820	1		5
474	2821	1		6
475	2822	1		1
475	2823	1		2
475	2824	1		3
475	2825	1		4
475	2826	1		5
475	2827	1		6
475	2828	1		7
476	2829	1		1
476	2830	1		2
476	2831	1		3
476	2832	1		4
476	2833	1		5
476	2834	1		6
477	2835	1		1
477	2836	1		2
477	2837	1		3
477	2838	1		4
477	2839	1		5
477	2840	1		6
478	2841	1		1
478	2842	1		2
478	2843	1		3
478	2844	1		4
478	2845	1		5
478	2846	1		6
478	2847	1		7
479	2848	1		1
479	2849	1		2
479	2850	1		3
479	2851	1		4
479	2852	1		5
479	2853	1		6
480	2854	1		1
480	2855	1		2
480	2856	1		3
480	2857	1		4
480	2858	1		5
480	2859	1		6
481	2860	1		1
481	2861	1		2
481	2862	1		3
481	2863	1		4
481	2864	1		5
481	2865	1		6
482	2866	1		1
482	2867	1		2
482	2868	1		3
482	2869	1		4
482	2870	1		5
482	2871	1		6
483	2872	1		1
483	2873	1		2
483	2874	1		3
483	2875	1		4
483	2876	1		5
483	2877	1		6
484	2878	1		1
484	2879	1		2
484	2880	1		3
484	2881	1		4
484	2882	1		5
484	2883	1		6
484	2884	1		7
485	2885	1		1
485	2886	1		2
485	2887	1		3
485	2888	1		4
485	2889	1		5
485	2890	1		6
486	2891	1		1
486	2892	1		2
486	2893	1		3
486	2894	1		4
486	2895	1		5
487	2896	1		1
487	2897	1		2
487	2898	1		3
487	2899	1		4
487	2900	1		5
487	2901	1		6
488	2902	1		1
488	2903	1		2
488	2904	1		3
488	2905	1		4
488	2906	1		5
489	2907	1		1
489	2908	1		2
489	2909	1		3
489	2910	1		4
489	2911	1		5
489	2912	1		6
490	2913	1		1
490	2914	1		2
490	2915	1		3
490	2916	1		4
490	2917	1		5
490	2918	1		6
490	2919	1		7
491	2920	1		1
491	2921	1		2
491	2922	1		3
491	2923	1		4
491	2924	1		5
491	2925	1		6
491	2926	1		7
492	2927	1		1
492	2928	1		2
492	2929	1		3
492	2930	1		4
492	2931	1		5
493	2932	1		1
493	2933	1		2
493	2934	1		3
493	2935	1		4
493	2936	1		5
494	2937	1		1
494	2938	1		2
494	2939	1		3
494	2940	1		4
494	2941	1		5
495	2942	1		1
495	2943	1		2
495	2944	1		3
495	2945	1		4
495	2946	1		5
495	2947	1		6
496	2948	1		1
496	2949	1		2
496	2950	1		3
496	2951	1		4
496	2952	1		5
496	2953	1		6
496	2954	1		7
497	2955	1		1
497	2956	1		2
497	2957	1		3
497	2958	1		4
497	2959	1		5
498	2960	1		1
498	2961	1		2
498	2962	1		3
498	2963	1		4
498	2964	1		5
498	2965	1		6
499	2966	1		1
499	2967	1		2
499	2968	1		3
499	2969	1		4
499	2970	1		5
500	2971	1		1
500	2972	1		2
500	2973	1		3
500	2974	1		4
500	2975	1		5
500	2976	1		6
500	2977	1		7
501	2978	1		1
501	2979	1		2
501	2980	1		3
501	2981	1		4
501	2982	1		5
501	2983	1		6
502	2984	1		1
502	2985	1		2
502	2986	1		3
502	2987	1		4
502	2988	1		5
503	2989	1		1
503	2990	1		2
503	2991	1		3
503	2992	1		4
503	2993	1		5
504	2994	1		1
504	2995	1		2
504	2996	1		3
504	2997	1		4
504	2998	1		5
504	2999	1		6
504	3000	1		7
505	3001	1		1
505	3002	1		2
505	3003	1		3
505	3004	1		4
505	3005	1		5
505	3006	1		6
505	3007	1		7
506	3008	1		1
506	3009	1		2
506	3010	1		3
506	3011	1		4
506	3012	1		5
506	3013	1		6
507	3014	1		1
507	3015	1		2
507	3016	1		3
507	3017	1		4
507	3018	1		5
507	3019	1	7	6
508	3020	1		1
508	3021	1		2
508	3022	1		3
508	3023	1		4
508	3024	1		5
508	3025	1		6
509	3026	1		1
509	3027	1		2
509	3028	1		3
509	3029	1		4
509	3030	1		5
509	3031	1	4	6
510	3032	1		1
510	3033	1		2
510	3034	1		3
510	3035	1		4
510	3036	1		5
510	3037	1		6
511	3038	1		1
511	3039	1		2
511	3040	1		3
511	3041	1		4
511	3042	1		5
512	3043	1		1
512	3044	1		2
512	3045	1		3
512	3046	1		4
512	3047	1		5
512	3048	1		6
512	3049	1		7
513	3050	1		1
513	3051	1		2
513	3052	1		3
513	3053	1		4
513	3054	1		5
513	3055	1		6
513	3056	1		7
514	3057	1		1
514	3058	1		2
514	3059	1		3
514	3060	1		4
514	3061	1		5
514	3062	1		6
515	3063	1		1
515	3064	1		2
515	3065	1		3
515	3066	1		4
515	3067	1		5
516	3068	1		1
516	3069	1		2
516	3070	1		3
516	3071	1		4
516	3072	1		5
516	3073	1		6
516	3074	1		7
516	1075	5		8
517	3075	1		1
517	3076	1		2
517	3077	1		3
517	3078	1		4
517	3079	1		5
517	3080	1		6
518	3081	1		1
518	3082	1		2
518	3083	1		3
518	3084	1		4
518	3085	1		5
518	3086	1		6
518	3087	1		7
519	3088	1		1
519	3089	1		2
519	3090	1		3
519	3091	1		4
519	3092	1		5
519	3093	1		6
519	3094	1		7
520	3095	1		1
520	3096	1		2
520	3097	1		3
520	3098	1		4
520	3099	1		5
520	3100	1		6
521	3101	1		1
521	3102	1		2
521	3103	1		3
521	3104	1		4
521	3105	1		5
522	3106	1		1
522	3107	1		2
522	3108	1		3
522	3109	1		4
522	3110	1		5
523	3111	1		1
523	3112	1		2
523	3113	1		3
523	3114	1		4
523	3115	1		5
524	3116	1		1
524	3117	1		2
524	3118	1		3
524	3119	1		4
524	3120	1		5
524	3121	1		6
524	3122	1		7
525	3123	1		1
525	3124	1		2
525	3125	1		3
525	3126	1		4
525	3127	1		5
525	3128	1		6
525	3129	1		7
526	3130	1		1
526	3131	1		2
526	3132	1		3
526	3133	1		4
526	3134	1		5
526	3135	1		6
527	3136	1		1
527	3137	1		2
527	3138	1		3
527	3139	1		4
527	3140	1		5
527	3141	1		6
528	3142	1		1
528	3143	1		2
528	3144	1		3
528	3145	1		4
528	3146	1		5
528	3147	1		6
529	3148	1		1
529	3149	1		2
529	3150	1		3
529	3151	1		4
529	3152	1		5
529	3153	1	8	6
530	3154	1		1
530	3155	1		2
530	3156	1		3
530	3157	1		4
530	3158	1		5
530	3159	1		6
531	3160	1		1
531	3161	1		2
531	3162	1		3
531	3163	1		4
531	3164	1		5
532	3165	1		1
532	3166	1		2
532	3167	1		3
532	3168	1		4
532	3169	1		5
533	3170	1		1
533	3171	1		2
533	3172	1		3
533	3173	1		4
533	3174	1		5
533	3175	1		6
534	3176	1		1
534	3177	1		2
534	3178	1		3
534	3179	1		4
534	3180	1		5
534	3181	1		6
535	3182	1		1
535	3183	1		2
535	3184	1		3
535	3185	1		4
535	3186	1		5
535	3187	1		6
536	3188	1		1
536	3189	1		2
536	3190	1		3
536	3191	1		4
536	3192	1		5
536	3193	1		6
537	3194	1		1
537	3195	1		2
537	3196	1		3
537	3197	1		4
537	3198	1		5
537	3199	1		6
538	3200	1		1
538	3201	1		2
538	3202	1		3
538	3203	1		4
538	3204	1		5
538	3205	1		6
538	3206	1		7
539	3207	1		1
539	3208	1		2
539	3209	1		3
539	3210	1		4
539	3211	1		5
539	3212	1		6
539	3213	1		7
540	3214	1		1
540	3215	1		2
540	3216	1		3
540	3217	1		4
540	3218	1		5
540	3219	1		6
540	3220	1		7
541	3221	1		1
541	3222	1		2
541	3223	1		3
541	3224	1		4
541	3225	1		5
541	3226	1		6
542	3227	1		1
542	3228	1		2
542	3229	1		3
542	3230	1		4
542	3231	1	4	5
543	3232	1		1
543	3233	1		2
543	3234	1		3
543	3235	1		4
543	3236	1		5
543	3237	1		6
543	3238	1		7
544	3239	1		1
544	3240	1		2
544	3241	1		3
544	3242	1		4
544	3243	1		5
544	3244	1		6
544	3245	1		7
545	3246	1		1
545	3247	1		2
545	3248	1		3
545	3249	1		4
545	3250	1		5
545	3251	1		6
546	3252	1		1
546	3253	1		2
546	3254	1		3
546	3255	1		4
546	3256	1		5
546	3257	1		6
547	3258	1		1
547	3259	1		2
547	3260	1		3
547	3261	1		4
547	3262	1		5
547	3263	1		6
548	3264	1		1
548	3265	1		2
548	3266	1		3
548	3267	1		4
548	3268	1		5
548	3269	1		6
549	3270	1		1
549	3271	1		2
549	3272	1		3
549	3273	1		4
549	3274	1		5
549	3275	1		6
550	3276	1		1
550	3277	1		2
550	3278	1		3
550	3279	1		4
550	3280	1		5
550	3281	1		6
551	3282	1		1
551	3283	1		2
551	3284	1		3
551	3285	1		4
551	3286	1		5
551	3287	1		6
552	3288	1		1
552	3289	1		2
552	3290	1		3
552	3291	1		4
552	3292	1		5
552	3293	1		6
553	3294	1		1
553	3295	1		2
553	3296	1		3
553	3297	1		4
553	3298	1		5
553	3299	1		6
554	3300	1		1
554	3301	1		2
554	3302	1		3
554	3303	1		4
554	3304	1		5
554	3305	1		6
555	3306	1		1
555	3307	1		2
555	3308	1		3
555	3309	1		4
555	3310	1		5
555	1227	1		6
556	3311	1		1
556	3312	1		2
556	3313	1		3
556	3314	1		4
556	3315	1		5
556	3316	1		6
557	3317	1		1
557	3318	1		2
557	3319	1		3
557	3320	1		4
557	3321	1		5
557	3322	1		6
558	3323	1		1
558	3324	1		2
558	3325	1		3
558	3326	1		4
558	3327	1		5
558	3328	1		6
559	3329	1		1
559	3330	1		2
559	3331	1		3
559	3332	1		4
559	3333	1		5
559	3334	1		6
560	3335	1		1
560	3336	1		2
560	3337	1		3
560	3338	1		4
560	3339	1		5
560	3340	1		6
561	3341	1		1
561	3342	1		2
561	3343	1		3
561	3344	1		4
561	3345	1		5
561	3346	1	21	6
562	3347	1		1
562	3348	1		2
562	3349	1		3
562	3350	1		4
562	3351	1		5
563	3352	1		1
563	3353	1		2
563	3354	1		3
563	3355	1		4
563	3356	1		5
563	3357	1		6
563	3358	1		7
564	3359	1		1
564	3360	1		2
564	3361	1		3
564	3362	1		4
564	3363	1		5
564	3364	1		6
565	3365	1		1
565	3366	1		2
565	3367	1		3
565	3368	1		4
565	3369	1		5
565	3370	1		6
565	3371	1		7
566	3372	1		1
566	3373	1		2
566	3374	1		3
566	3375	1		4
566	3376	1		5
566	3377	1		6
567	3378	1		1
567	3379	1		2
567	3380	1		3
567	3381	1		4
567	3382	1		5
568	3383	1		1
568	3384	1		2
568	3385	1		3
568	3386	1		4
568	3387	1		5
568	3388	1		6
569	3389	1		1
569	3390	1		2
569	3391	1		3
569	3392	1		4
569	3393	1		5
569	3394	1		6
570	3395	1		1
570	3396	1		2
570	3397	1		3
570	3398	1		4
570	3399	1		5
570	3400	1		6
571	3401	1		1
571	3402	1		2
571	3403	1		3
571	3404	1		4
571	3405	1		5
571	3019	12		6
572	3406	1		1
572	3407	1		2
572	3408	1		3
572	3409	1		4
572	3410	1		5
572	3411	1		6
573	3412	1		1
573	3413	1		2
573	3414	1		3
573	3415	1		4
573	3416	1		5
574	3417	1		1
574	3418	1		2
574	3419	1		3
574	3420	1		4
574	3421	1		5
574	3422	1		6
575	3423	1		1
575	3424	1		2
575	3425	1		3
575	3426	1		4
575	3427	1		5
575	3428	1		6
576	3429	1		1
576	3430	1		2
576	3431	1		3
576	3432	1		4
576	3433	1		5
577	3434	1		1
577	3435	1		2
577	3436	1		3
577	3437	1		4
577	3438	1		5
577	3439	1		6
577	3440	1		7
578	3441	1		1
578	3442	1		2
578	3443	1		3
578	3444	1		4
578	3445	1		5
579	3446	1		1
579	3447	1		2
579	3448	1		3
579	3449	1		4
579	3450	1		5
579	3451	1		6
580	3452	1		1
580	3453	1		2
580	3454	1		3
580	3455	1		4
580	3456	1		5
580	3457	1	3	6
581	3458	1		1
581	3459	1		2
581	3460	1		3
581	3461	1		4
581	3462	1		5
581	3463	1		6
582	3464	1		1
582	3465	1		2
582	3466	1		3
582	3467	1		4
582	3468	1		5
583	3469	1		1
583	3470	1		2
583	3471	1		3
583	3472	1		4
583	3473	1		5
583	3474	1		6
584	3475	1		1
584	3476	1		2
584	3477	1		3
584	3478	1		4
584	3479	1		5
585	3480	1		1
585	3481	1		2
585	3482	1		3
585	3483	1		4
585	3484	1		5
585	3485	1		6
586	3486	1		1
586	3487	1		2
586	3488	1		3
586	3489	1		4
586	3490	1		5
586	3491	1		6
587	3492	1		1
587	3493	1		2
587	3494	1		3
587	3495	1		4
587	3496	1		5
587	3497	1		6
588	3498	1		1
588	3499	1		2
588	3500	1		3
588	3501	1		4
588	3502	1		5
588	3503	1		6
589	3504	1		1
589	3505	1		2
589	3506	1		3
589	3507	1		4
589	3508	1		5
589	3509	1		6
589	3510	1		7
590	3511	1		1
590	3512	1		2
590	3513	1		3
590	3514	1		4
590	3515	1		5
590	3516	1		6
591	3517	1		1
591	3518	1		2
591	3519	1		3
591	3520	1		4
591	3521	1		5
591	3522	1		6
591	3523	1		7
592	3524	1		1
592	3525	1		2
592	3526	1		3
592	3527	1		4
592	3528	1		5
593	3529	1		1
593	3530	1		2
593	3531	1		3
593	3532	1		4
593	3533	1		5
593	3534	1		6
593	3535	1		7
594	3536	1		1
594	3537	1		2
594	3538	1		3
594	3539	1		4
594	3540	1		5
594	3541	1		6
594	3542	1		7
\.

COPY zmiany_skladu (id_zmiany, id_trasy, numer_postoju, id_wagonu, typ_operacji, id_trasy_docelowej, opis) FROM STDIN WITH (FORMAT csv, DELIMITER E'\t', NULL '');
1	509	4	3031	ODPIĘCIE	155	Odpięcie wagonu i przekazanie do pociągu PUŁASKI_37102_3
2	155	1	3031	PRZYPIĘCIE	509	Przypięcie wagonu przejętego z pociągu SZPIGLASOWY_WIERCH_13160_1
3	23	11	136	ODPIĘCIE	62	Odpięcie wagonu i przekazanie do pociągu GROTTGER_6304_5
4	62	7	136	PRZYPIĘCIE	23	Przypięcie wagonu przejętego z pociągu WAWEL_37002_3
5	224	11	1331	ODPIĘCIE	99	Odpięcie wagonu i przekazanie do pociągu MALINOWSKI_1312_3
6	99	6	1331	PRZYPIĘCIE	224	Przypięcie wagonu przejętego z pociągu REYMONT_1329
7	193	8	1143	ODPIĘCIE	446	Odpięcie wagonu i przekazanie do pociągu MALINOWSKI_30101
8	446	1	1143	PRZYPIĘCIE	193	Przypięcie wagonu przejętego z pociągu WITKACY_3560_1
9	529	8	3153	ODPIĘCIE	249	Odpięcie wagonu i przekazanie do pociągu WYCZÓŁKOWSKI_134_VIA_REGIA_380
10	249	11	3153	PRZYPIĘCIE	529	Przypięcie wagonu przejętego z pociągu WETLINA_33110_1
11	454	3	2701	ODPIĘCIE	380	Odpięcie wagonu i przekazanie do pociągu ŚLĄZAK_8330_1
12	380	9	2701	PRZYPIĘCIE	454	Przypięcie wagonu przejętego z pociągu IC_78105
13	507	7	3019	ODPIĘCIE	571	Odpięcie wagonu i przekazanie do pociągu LATARNIK_1852_3
14	571	12	3019	PRZYPIĘCIE	507	Przypięcie wagonu przejętego z pociągu LEDNICA_6500_1
15	580	3	3457	ODPIĘCIE	106	Odpięcie wagonu i przekazanie do pociągu CEGIELSKI_7320_1
16	106	1	3457	PRZYPIĘCIE	580	Przypięcie wagonu przejętego z pociągu LECH_6112_3
17	177	8	1051	ODPIĘCIE	235	Odpięcie wagonu i przekazanie do pociągu BOSMAN_6813
18	235	7	1051	PRZYPIĘCIE	177	Przypięcie wagonu przejętego z pociągu LUBUSZANIN_7110_1
19	181	10	1075	ODPIĘCIE	516	Odpięcie wagonu i przekazanie do pociągu CHROBRY_8100_1
20	516	5	1075	PRZYPIĘCIE	181	Przypięcie wagonu przejętego z pociągu BALTIC_EXPRESS_56000_1
21	328	3	1958	ODPIĘCIE	1	Odpięcie wagonu i przekazanie do pociągu KONOPNICKA_6146_7
22	1	7	1958	PRZYPIĘCIE	328	Przypięcie wagonu przejętego z pociągu DANUBIUS_74000_1
23	147	7	870	ODPIĘCIE	152	Odpięcie wagonu i przekazanie do pociągu HALNY_73150_1
24	152	8	870	PRZYPIĘCIE	147	Przypięcie wagonu przejętego z pociągu ODRA_37004_5
25	15	9	89	ODPIĘCIE	227	Odpięcie wagonu i przekazanie do pociągu ŁUŻYCE_6144_5
26	227	8	89	PRZYPIĘCIE	15	Przypięcie wagonu przejętego z pociągu ŁYSICA_2621
27	93	7	550	ODPIĘCIE	403	Odpięcie wagonu i przekazanie do pociągu HEWELIUSZ_4510_1
28	403	12	550	PRZYPIĘCIE	93	Przypięcie wagonu przejętego z pociągu HEWELIUSZ_66100
29	561	21	3346	ODPIĘCIE	52	Odpięcie wagonu i przekazanie do pociągu CHEŁMOŃSKI_132_SAXONIA_3802_3
30	52	7	3346	PRZYPIĘCIE	561	Przypięcie wagonu przejętego z pociągu ASNYK_1620_1
31	207	12	1227	ODPIĘCIE	555	Odpięcie wagonu i przekazanie do pociągu STOŁECZNY_81140
32	555	1	1227	PRZYPIĘCIE	207	Przypięcie wagonu przejętego z pociągu SWAROŻYC_68102_3
33	381	8	2273	ODPIĘCIE	252	Odpięcie wagonu i przekazanie do pociągu BRYZA_85104_5
34	252	1	2273	PRZYPIĘCIE	381	Przypięcie wagonu przejętego z pociągu BOLESŁAW_PRUS_1804_5
35	542	4	3231	ODPIĘCIE	416	Odpięcie wagonu i przekazanie do pociągu ŻUŁAWY_85102_3
36	416	1	3231	PRZYPIĘCIE	542	Przypięcie wagonu przejętego z pociągu PAPRYKARZ_88142_3
37	255	26	1516	ODPIĘCIE	39	Odpięcie wagonu i przekazanie do pociągu CHEŁMOŃSKI_133_SAXONIA_8302_3
38	39	6	1516	PRZYPIĘCIE	255	Przypięcie wagonu przejętego z pociągu PODLASIAK_1812_3
39	204	26	1211	ODPIĘCIE	215	Odpięcie wagonu i przekazanie do pociągu BOLESŁAW_PRUS_8104_5
40	215	1	1211	PRZYPIĘCIE	204	Przypięcie wagonu przejętego z pociągu BRYZA_58104_5
\.

COMMIT;

SELECT setval('seq_pociagi', (SELECT MAX(id_pociagu) FROM pociagi));
SELECT setval('seq_trasy', (SELECT MAX(id_trasy) FROM trasy));
SELECT setval('seq_wagony', (SELECT MAX(id_wagonu) FROM wagony));
SELECT setval('seq_zmiany_skladu', (SELECT MAX(id_zmiany) FROM zmiany_skladu));

-- Po załadowaniu uruchom: psql -U pociag -d kolei_db -f baza_danych/triggery.sql
