--
-- PostgreSQL database dump
--

-- Dumped from database version 13.20
-- Dumped by pg_dump version 13.20

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
-- Name: artists; Type: TABLE; Schema: public; Owner: lundt2
--

CREATE TABLE public.artists (
    artists text,
    id integer NOT NULL
);


ALTER TABLE public.artists OWNER TO lundt2;

--
-- Name: designers; Type: TABLE; Schema: public; Owner: lundt2
--

CREATE TABLE public.designers (
    designers text,
    id integer NOT NULL
);


ALTER TABLE public.designers OWNER TO lundt2;

--
-- Name: games; Type: TABLE; Schema: public; Owner: lundt2
--

CREATE TABLE public.games (
    id integer NOT NULL,
    name text,
    designer text,
    publisher text,
    artist text,
    yearpublished integer,
    minplayers integer,
    maxplayers integer,
    playtime integer,
    minplaytime integer,
    maxplaytime integer,
    age integer,
    rating integer,
    average double precision,
    bayesavg double precision,
    rank integer,
    rankwg double precision,
    numcomments integer,
    numweights integer,
    averageweight double precision,
    stddev double precision,
    median double precision,
    owned integer,
    trading integer,
    wanting integer,
    wishing integer,
    userrating text,
    img text,
    category text,
    mechanic text,
    comment text,
    player1 text,
    player2 text,
    player3 text,
    player4 text,
    player5 text,
    player6 text,
    player7 text,
    player8 text,
    player9 text,
    player10 text,
    player11 text,
    player12 text,
    player13 text,
    player14 text,
    player15 text,
    player16 text,
    player17 text,
    player18 text,
    player19 text,
    player20 text,
    dsc text,
    exp text,
    basegame integer,
    basegamename text,
    reimplementname text,
    reimplemented text,
    reimplementedname text,
    contains text,
    containsname text,
    iscontained text,
    integration text,
    integrationname text,
    accessories text,
    accessoriesname text,
    numplays integer,
    price double precision,
    userweight double precision,
    wishpriority double precision,
    expansions text,
    domain text,
    family text,
    agepoll double precision,
    nameothers text,
    comments text,
    thumbsgl text,
    soldgl text,
    pricegl text,
    currencygl text,
    usergl text,
    tags text,
    tagsuser text
);


ALTER TABLE public.games OWNER TO lundt2;

--
-- Name: names; Type: TABLE; Schema: public; Owner: lundt2
--

CREATE TABLE public.names (
    name text,
    id integer NOT NULL
);


ALTER TABLE public.names OWNER TO lundt2;

--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: lundt2
--

COPY public.artists (artists, id) FROM stdin;
William Bricker	0
Gavan Brown	1
Jakub Dzikowski	2
Chris Quilliams	3
Steffen Bieker	4
Alexandr Elichev	5
Scott Schomburg	6
Clay Brooks	7
Isaac Fryxelius	8
John Howe	9
Matt Allsopp	10
Kat G Birmelin	11
Jason Behnke	12
Francesca Baerald	13
Dennis Lohausen	14
Viktor Csete	15
Filip Murmak	16
Julien Delval	17
Beth Sobel	18
Andreas Resch	19
Jakub Rozalski	20
Noah Adelman	21
Antje Stephan	22
Miguel Coimbra	23
John Camacho	24
Štěpán Drašťák	25
Piotr Foksowicz	26
Marina Fahrenbach	27
Ana Maria Martinez Jaramillo	28
Christopher Hosch	29
Ondřej Hrdina	30
Kyle Ferrin	31
Anthony LeTourneau	32
Klemens Franz	33
J. Lonnee	34
Mauro Alocci	35
Eric Hibbeler	36
Joshua Gerald Balvin	37
Marco Armbruster	38
Andrew Bosley	39
Jacqui Davis	40
Vincent Dutrait	41
Scott Altmann	42
	43
Allison Litchfield	44
Snow Conrad	45
Ian O'Toole	46
Cole Wehrle	47
Milan Vavroň	48
Dimitris Anastasiadis	49
Franz Vohwinkel	50
Nicolas Fructus	51
Dan Gerlach	52
Javier González Cava	53
Villő Farkas	54
Justin Adams	55
Bruce Brenneise	56
Henning Ludvigsen	57
Ryan Laukat	58
Atha Kanaani	59
Álvaro Calvo Escudero	60
Dan Hallagan	61
Josh Cappel	62
Cristi Balanescu	63
Domonkos Bence	64
Fiore GmbH	65
Mihajlo Dimitrievski	66
Matthias Catrein	67
Arden Beckwith	68
Bruno Balixa	69
Danny Beck	70
Zeen Chin	71
Antoine Bauza	72
Martin Hoffmann	73
Philippe Guérin	74
Clément Masson	75
Maëva da Silva	76
Joan Guardiet	77
Rayph Beisner	78
Cyrille Daujean	79
Ossi Hiekkala	80
Gjermund Bohne	81
Gong Studios	82
Paolo Voto	83
Eric Belisle	84
Doris Matthäus	85
Odysseas Stamoglou	86
Kei Kajino (梶野 桂)	87
Richard Cortes	88
Micaela Dawn	89
Bartek Jędrzejewski	90
James Masino	91
Dimitri Chappuis	92
Tomasz Bentkowski	93
Tyler Johnson	94
Fabien Fulchiron	95
Davide Tosello	96
Dimitri Bielak	97
Kevin Childress	98
Anders Finér	99
James Brady	100
Merilliza Chan	101
Juliet Breese	102
Bascu	103
Harald Lieske	104
Cyril Demaegd	105
Leonardo Borazio	106
Alexandre Roche	107
atelier198	108
Sean Brown	109
Jo Hartwig	110
Manny Trembley	111
Adrian Smith	112
Clémentine Campardou	113
Ludovic Roudy	114
The Creation Studio	115
Piotr Gacek	116
Stéphane Gantiez	117
Éric Azagury	118
Jose David Lanza Cebrian	119
Fifty-Nine Parks Print Series	120
Sam Phillips	121
Taira Akitsu	122
Rob Alexander	123
Luis Francisco	124
Vito Gesualdi	125
Victor Adame	126
Dragolisco	127
David Cochard	128
Anthony Wolff	129
Josh J. Carlson	130
Roland MacDonald	131
Yoma	132
Even Mehl Amundsen	133
Michael Menzel	134
Brigette Indelicato	135
Bernard Bittler	136
Jason Coates	137
Leon Schiffer	138
Cody Miller	139
Delia Arnone	140
Anne Heidsieck	141
M81 Studio	142
Borja Pindado Arribas	143
Ilya Baranovsky	144
Tim Arney-O'Neil	145
Toni Llobet	146
John Yianni	147
Karolina Kijak	148
Chema Román	149
Alex Aparin	150
Peter Wocken	151
Rodger B. MacGowan	152
Keith Curtis	153
Andrew Navaro	154
Chris Walton	155
Carole Carrion	156
Prospero Hall	157
Kurt Miller	158
Dominik Mayer	159
Jake Murray	160
Heiko Eller	161
Barbro Hennius	162
Tomasz Jedruszek	163
Brian Brinlee	164
Marcel Gröber	165
Ervin	166
Ted Alspach	167
Pascal Quidault	168
JJ Ariosa	169
Jan Lipiński	170
David Richards	171
Kerri Aitken	172
Daniel Solis	173
Jean-Marie Minguez	174
Charles Kibler	175
Kris Burm	176
Petr Boháček	177
Mikkel Bertelsen	178
Mackenzie Schubert	179
Lee Brimmicombe-Wood	180
Kwanchai Moriya	181
Tomáš Kučerovský	182
Anthony Cournoyer	183
Julius Abrea	184
Justin Chan	185
Maisherly Chan	186
Oliver Barrett	187
Marcin Adamski	188
Nan Rangsima	189
Daniel Goll	190
Miguel Valenzuela Beltrán	191
Arnaud Demaegd	192
Ed Carter (III)	193
Lukas Siegmon	194
Sören Meding	195
Randy Delven	196
Naomi Robinson	197
Lina Cossette	198
Oliver Freudenreich	199
Mike Atkinson	200
Fahed Alrajil	201
Cécile Gariépy	202
Maxime Morin	203
Sergio Chaves	204
Edu Valls	205
Matt Kindt	206
Aga Jakimiec	207
Giorgio De Michele	208
Erik Evensen	209
David Bock	210
Ryan Barger	211
Marie Bergeron	212
Lucien Derainne	213
Édouard Guiton	214
Alexander Jung	215
David Cicurel	216
Cyril Bouquet	217
Antonis Papantoniou	218
John Austin	219
Zoe Robinson	220
Stephen Gibson	221
Anton Fadeev	222
Sébastien Bizos	223
Ben Carre	224
Kev Adams	225
Marie Cardouat	226
Régis Bonnessée	227
Volkan Baga	228
Clark Huggins	229
(Uncredited)	230
Clau Souza	231
Andrea Cofrancesco	232
Bogna Gawrońska	233
Jun Kondo	234
Jeroen Kesselaar	235
Anne Pätzke	236
Óscar Aguado	237
Jared Blando	238
Martin Abel	239
Radim Pech	240
Ynze Moedt	241
Osamu Inoue (井上磨)	242
Paul Niemeyer	243
Kali Fitzgerald	244
Benoit Billion	245
David Ausloos	246
Paul Riebe	247
Mateusz Bielski	248
Mariusz Gandzel	249
Giorgio Baroni	250
Paul Mafayon	251
Chris Beck	252
Christian Fiore	253
Mathieu Leyssenne	254
Patrick Soeder	255
Samuel Gonzalo García	256
Karolina Jędrzejak	257
Roman Bednář	258
Jaroslav Jurica	259
Piotr Burzykowski	260
Sandara Tang	261
Silvia Christoph	262
Gerralt Landman	263
Virginia Critchfield	264
Alanna Cervenak	265
Ben Nelson	266
Tom Garden	267
Josefin Strand	268
Joshua Panelo	269
Denis Martynets	270
Sergey Dulin	271
Gianluca Santopietro	272
Hannah Cardoso	273
Agnieszka Dabrowiecka	274
Michał Długaj	275
Gaël Lannurien	276
Joe Van Wetering	277
Patricia Limberger	278
Valerio Buonfantino	279
Xavier Collette	280
Igor Burlakov	281
Eric Elwell	282
Dorien Boekhorst	283
Pierô	284
Don Eskridge	285
Luís Brueh	286
Taylor Bennett	287
Erfian Asafat	288
Jiahui Eva Gao	289
Ben Zweifel	290
Viktor Miller Gausa	291
Patryk Jędraszek	292
Grzegorz Bobrowski	293
Mad4GameStyle	294
Kirk W. Buckendorf	295
Davey Baker	296
Jon Hodgson	297
Pauline Detraz	298
Drew Baker	299
Gabriel Butik	300
Dommiy	301
Alan D'Amico	302
Preston Stone	303
Rose Kipik	304
Biboun	305
Migy Blanco	306
Tavis Coburn	307
Banu Andaru	308
Bernd Brunnhofer	309
Terry Leeds	310
Lars-Arne "Maura" Kalusky	311
Charles Woods	312
Steve Finn	313
Ed Dovey	314
Ben Goldman	315
Georges Clarenko	316
Bartek Fedyczak	317
Sofie Hannibal	318
Mario Barbati	319
Looky	320
Fábio Fontes	321
Jason Boles	322
Josh Emrich	323
Wilhelm Su	324
Loïc Billiau	325
Oliver Schlemmer	326
John Blanche	327
Michal Peichl	328
Pierre Benigni	329
Mariano Iannelli	330
Simon Caruso	331
Jason Engle	332
Jean du Poël	333
Lamaro Smith	334
Zoë van Dijk	335
Cody Jones	336
Daarken	337
Dávid Jablonovský	338
James Churchill	339
Bertrand Benoit	340
Jean Baer	341
Marc Aspinall	342
Chaykov	343
Stephen Baker	344
Clark Miller	345
Nicolás Eskubi	346
Maren Gutt	347
Björn Pertoft	348
Alex Hansen	349
Ian Parovel	350
Peter Dennis	351
Herman Haverkort	352
Fernando Armentano	353
Annick Lobet	354
Joseph Z Chen	355
Ralf Berszuck	356
Kristen Pauline	357
Dylan Mangini	358
John Gravato	359
Luan Huynh	360
Isidre Monés	361
Steve Fastner	362
Giulia Ghigini	363
Antonio Dessi	364
Scott Okumura	365
Irina Kuzmina	366
John Guytan	367
C. B. Canga	368
Damien Mammoliti	369
Christopher Burdett	370
Jesper Ejsing	371
Wayne England	372
Guillaume Ducos	373
Nolan Nasser	374
Anca Gavril	375
Richard Edwards	376
Jörg Asselborn	377
Antoine Carrion	378
Marc André	379
Marta Tranquilli	380
Jennifer Easley	381
Gaël Goumon	382
Sketchgoblin	383
Donal Hegarty	384
Jay Little	385
Laura Michaud	386
Michaela Kienle	387
Ewa Labak	388
Stéphane Escapa	389
Elaine Ryan	390
Jarek Nocoń	391
Marius Janusonis	392
Chris Lawson	393
Carl Critchlow	394
WiL Springer	395
Tignous	396
Peter Bergting	397
John McCambridge	398
Claus Stephan	399
Jennifer L. Meyer	400
Mads Berg	401
Vincent Boulanger	402
Gus Batts	403
Florian de Gesincourt	404
Peter Gifford	405
Adam Rebottaro	406
Zuzanna Kołakowska	407
Eric J. Carter	408
Víctor Pérez Corbella	409
Adam P. McIver	410
Alé Garza	411
Philipp Ach	412
Noah Bradley	413
Katie Dillon	414
Timur Baskakov	415
Phil Eklund	416
Brian Schomburg	417
Anh Le Art	418
Laurent Bazart	419
Shawna J.C. Tenney	420
Dominique Ferland	421
Victor Boden	422
Collateral Damage Studios	423
Saeed Jalabi	424
Behnam Balali	425
Antonio De Luca	426
Hans-Jörg Brehm	427
Gary Chalk	428
Ryan Goldsberry	429
Aaron Nakahara	430
Xavier Carrascosa	431
David Cherry	432
Scott Nicely	433
Christine Bielke	434
Dallas Mehlhoff	435
Guido Favaro	436
Daniel Zrom	437
Marlies Barends	438
Lucas Graciano	439
Jacques Bredy	440
Taylor Ingvarsson	441
Stephan Lorenz	442
Anna H Lindberg	443
Francesco Ciampi	444
Karim Chakroun	445
Jun Sasaki	446
Nicolas Caniaux	447
Georges Bouchelaghem	448
Dennis Crabapple McClain	449
Deirdre de Barra	450
Kaya	451
Apolline Etienne	452
John Vetter	453
Lucas Durham	454
Laura Bevon	455
Chad Jensen	456
Manuel Casasola Merkle	457
Sabrina Miramon	458
Gyom	459
Arnaud Boudoiron	460
Barbara Gołębiewska	461
Ryo Nyamo	462
Erik Frobom	463
Justin Schultz	464
Dave Dobyski	465
Diana Franco Campos	466
Tony Boydell	467
Cyrille Bertin	468
Eric Sabee	469
James Colmer	470
Mila Harbar	471
Alessandra Cimatoribus	472
Martin Mottet	473
Etienne Hebinger	474
Jonas Hassibi	475
Nina Allen	476
Joe Youst	477
Xavier Gueniffey Durin	478
Pavel Zhovba	479
Thander Lin	480
Jérémie Fleury	481
Daan van Paridon	482
Matthew Bishop	483
Sophia Kang	484
Matt Bradbury	485
Roman Kucharski	486
\.


--
-- Data for Name: designers; Type: TABLE DATA; Schema: public; Owner: lundt2
--

COPY public.designers (designers, id) FROM stdin;
Jacob Fryxelius	0
Gavan Brown	1
Stefan Feld	2
Rob Daviau	3
Mathias Wigge	4
Isaac Childres	5
Dane Beltrami	6
Paul Dennen	7
Roberto Di Meglio	8
Corey Konieczka	9
R. Eric Reuss	10
Jens Drögemüller	11
Ananda Gupta	12
Vlaada Chvátil	13
Jamey Stegmaier	14
Alexander Pfister	15
Touko Tahkokallio	16
Antoine Bauza	17
Martin Wallace	18
Elwen	19
Ryan Lopez DeVinaspre	20
Adam Kwapiński	21
Andy Clautice	22
Uwe Rosenberg	23
Mac Gerdts	24
Elizabeth Hargrave	25
Nate French	26
Cole Wehrle	27
Josh J. Carlson	28
Reiner Stockhausen	29
Tommaso Battista	30
Luc Rémond	31
Donald X. Vaccarino	32
Thomas Sing	33
James A. Wilson	34
Chris Dupuis	35
Asger Harding Granerud	36
Michael Boggs	37
(Uncredited)	38
Jeroen Doumen	39
Vital Lacerda	40
Vladimír Suchý	41
Vangelis Bagiartakis	42
Andreas Seyfarth	43
Randy Flynn	44
Dávid Turczi	45
Gary Dworetsky	46
Eric M. Lang	47
Jamie Jolly	48
Patrick Leder	49
Ryan Laukat	50
Helge Ostertag	51
Dan Hallagan	52
Matt Leacock	53
Gernot Köpke	54
Virginio Gigli	55
Nikki Valens	56
Simone Luciani	57
Friedemann Friese	58
Tomáš Holek	59
Wolfgang Warsch	60
Juma Al-JouJou	61
S J Macdonald	62
Justin Kemppainen	63
Richard Garfield	64
Chris Cantrell	65
Adam Poots	66
Thomas Lehmann	67
Michael Kiesling	68
Bruno Cathala	69
Andreas Steding	70
Johan Benvenuto	71
Isra C.	72
Helge Meissner	73
Jenny Iglesias	74
Peter Lee	75
Wolfgang Kramer	76
Daniele Tascini	77
Kei Kajino (梶野 桂)	78
Dennis K. Chan	79
Steven Medway	80
Chad Jensen	81
Matthew O'Malley	82
Joanna Kijanka	83
Evan Derrick	84
Alan R. Moon	85
Thomas Dagenais-Lespérance	86
Marc André	87
Christian Martinez	88
Richard Amann	89
Nigel Buckle	90
Xavier Georges	91
Krzysztof Piskorski	92
Reiner Knizia	93
Luke Laurie	94
Sebastian Bleasdale	95
Shem Phillips	96
William Attia	97
Sébastien Dujardin	98
Flaminia Brasini	99
Nathan I. Hajek	100
Christian T. Petersen	101
John Bohrer	102
Helmut Ohley	103
Tim Eisner	104
Connie Vogelmann	105
Ludovic Roudy	106
Hisashi Hayashi	107
Jesús Torres Castro	108
Samuel Bailey	109
Andrzej Betkiewicz	110
Ole Steiness	111
Henry Audubon	112
Inka Brand	113
Wei-Hwa Huang	114
Bobby Hill	115
Andreas Steiger	116
Jordy Adan	117
Robert Dougherty	118
Frank West	119
Matúš Kotry	120
Matthias Cramer	121
Frédéric Guérard	122
Adam Carlson	123
Trevor Benjamin	124
Klaus-Jürgen Wrede	125
Ryan Lambert	126
Bernd Brunnhofer	127
Jacques Bariot	128
Raymond Edwards	129
Sydney Engelstein	130
Carl de Visser	131
Rüdiger Dorn	132
Ben Cichoski	133
Jay Little	134
Devin Low	135
Cody Miller	136
Daniel Piechnick	137
Sébastien Pauchon	138
Benoit Turpin	139
Maxime Tardif	140
Alexis Allard	141
Bill Eberle	142
Michał Oracz	143
Kosch	144
John Yianni	145
Richard Borg	146
Klemens Kalicki	147
Daniel Clark (I)	148
Adrian Adamescu	149
Matt Calkins	150
Ted Alspach	151
John D. Clair	152
Don Eskridge	153
Prospero Hall	154
Glenn Drover	155
Peter Rustemeyer	156
Caleb Grace	157
Nick Brachmann	158
Christian Marcussen	159
Roberto Fraga	160
Tim Burrell-Saward	161
Jonathan Gilmour-Long	162
Urs Hostettler	163
Serge Laget	164
Ted Raicer	165
Kris Burm	166
Tomáš Uhlíř	167
Mikkel Bertelsen	168
Rustan Håkansson	169
Kevin Russ	170
Mike Boxleiter	171
Steffen Bogen	172
Michael Keller (II)	173
Ira Fay	174
Bruce Glassco	175
Emerson Matsuuchi	176
Kota Nakayama (中山 宏太)	177
Tobey Ho	178
Phil Walker-Harding	179
Johannes Sich	180
Raphaël Guiton	181
Andreas Pelikan	182
Keith Matejka	183
Ed Carter (III)	184
Hervé Lemaître	185
Gord!	186
Bruce Shelley	187
François Romain	188
Dirk Henn	189
Mattox Shuler	190
Kai Starck	191
Alex Hague	192
Johannes Goupy	193
Germán P. Millán	194
Jay Cormier	195
Christian Leonhard	196
Stan Kordonskiy	197
Jakub Łapot	198
Dave Beck	199
Brent Beck	200
Kevin Wilson	201
Cédrick Chaboussit	202
Dave Chalker	203
Andrea Chiarvesio	204
David Cicurel	205
Hal Duncan	206
Mr. Bistro	207
Fabien Gridel	208
Paolo Mori	209
Nate Chatellier	210
Peggy Chassenet	211
Sandy Petersen	212
Jean-Louis Roubira	213
Régis Bonnessée	214
Klaus Teuber	215
Chris Handy (I)	216
Seiji Kanai	217
Thiago Aranha	218
Łukasz Woźniak	219
Tom Jolly	220
Shimpei Sato	221
Richard Launius	222
Stefan Dorra	223
Colby Dauch	224
Sid Sackson	225
Muneyuki Yokouchi (横内宗幸)	226
Peer Sylvester	227
Julian Courtland-Smith	228
Michael Palm	229
Ignacy Trzewiczek	230
Kara Centell-Dunk	231
Chris Taylor (I)	232
Hjalmar Hach	233
Frank Brooks	234
Scott Almes	235
Karsten Hartwig	236
Ron Gonzalo García	237
Michał Gołąb Gołębiowski	238
Michal Mikeš	239
Tory Niemann	240
Manny Vega	241
Philippe Keyaerts	242
Matthew Dunstan	243
Tim Fowers	244
Carl Chudyk	245
Kasper Aagaard	246
Phil Eklund	247
Skaff Elias	248
Dan Cassar	249
Ivan Lashin	250
TauCeti Deichmann	251
Gabriele Mari	252
Sean Fletcher	253
Jon Perry	254
Oleksandr Nevskiy	255
Luís Brueh	256
Eric Hong	257
James Kniffen	258
Marco Maggi	259
Mark Simonitch	260
Michael Rieneck	261
Jules Messaud	262
Bryan Pope	263
Laskas	264
Paul Salomon	265
Koota Yamada	266
Hervé Marly	267
Peter McPherson	268
Karl-Heinz Schmiel	269
Tony Fanchi	270
Etienne Espreman	271
Aaron Dill	272
Steve Finn	273
Francis Tresham	274
Kamil 'Sanex' Cieśla	275
Dominic Crapuchettes	276
Benoit Vogt	277
Ed Beach	278
Tom Mattson	279
Simone Romano	280
Nicolas Normandon	281
Kristian Amundsen Østby	282
D. Brad Talton Jr.	283
Unai Rubio	284
Wilhelm Su	285
Steven Aramini	286
Wolfgang Panning	287
Richard Halliwell	288
Suzanne Goldberg	289
Ross Arnold	290
Kevin Lanzing	291
Brett Sobol	292
Nuno Bizarro Sentieiro	293
Maxime Rambourg	294
Alex Olteanu	295
Mike Elliott	296
Jean du Poël	297
Noah Cohen	298
Jerry Hawthorne	299
Philip duBarry	300
Maikel Cheney	301
Croc	302
Josh Wood	303
Brandon Tibbetts	304
Stephen Baker	305
Lauren Banerd	306
Hermann Luttmann	307
Charlie Bink	308
Don Greenwood	309
Kasper Kjær Christiansen	310
Zé Mendes	311
Thorsten Gimmler	312
Bruno Faidutti	313
Clayton Helme	314
Christophe Raimbault	315
François Gandon	316
Ryan Courtney	317
Marco Montanaro	318
Annick Lobet	319
Benjamin Schwer	320
Joseph Z Chen	321
Ondřej Bystroň	322
Mark Herman	323
Molly Johnson	324
Jeff Chin	325
James Ernest	326
Stefano Castelli	327
Ivan Tuzovsky	328
Sérgio Halaban	329
Jason Hager	330
Manuel Rozoy	331
Viktor Kobilke	332
Jervis Johnson	333
Marcin Wełnicki	334
Nick Bentley	335
Gavin Birnbaum	336
Thomas Dupont	337
Trey Chambers	338
Jason C. Hill	339
Tido Lorenz	340
Paul Abrahams	341
Volko Ruhnke	342
宮野 華也 (Kaya Miyano)	343
Grégory Grard	344
Bryan Bornmueller	345
Beau Beckett	346
Brian Lewis	347
Ben Pinchback	348
Gerard Ascensi	349
Brian Mayer	350
Lukas Litzsinger	351
Fabien Riffaud	352
Malcolm Braff	353
Isaias Vallejo	354
Michael Menzel	355
Joshua Buergel	356
Marcus Carleson	357
Christophe Boelinger	358
Galen Ciscell	359
Alice Carroll	360
Jim Krohn	361
Anthony J. Gallela	362
Christopher Badell	363
Michael Adams	364
Mike Fitzgerald	365
Dani Garcia	366
Seth Jaffee	367
Charlie Catino	368
Mike Selinker	369
Matt Eklund	370
James Hata	371
T. C. Petty III	372
Mathieu Casnin	373
Clay Blankenship	374
Roberta Taylor	375
Craig Besinque	376
Acchittocca	377
Bruce Allen	378
Joshua Van Laningham	379
Konstantinos Kokkinis	380
Rikki Tahta	381
Ian Brody	382
Jo Hartwig	383
Andreas Odendahl	384
Gary Arant	385
Tim Puls	386
Jeff Grossman	387
Robert Vaughn	388
Michael Schacht	389
Peter Hawes	390
Gabriele Ausiello	391
Peter Prinz	392
Tom Dalgliesh	393
Jun Sasaki	394
Laurent Lavaur	395
Frédéric Henry	396
Eric Zimmerman	397
Aske Christiansen	398
Peter Sarrett	399
Alexandar Ortloff-Tang	400
Jim Cartwright	401
Sir John Suckling	402
Marcel-André Casasola Merkle	403
Aaron Donogh	404
James M. Hewitt	405
Kasper Lapp	406
Fabio Lopiano	407
Dimitri Perrier	408
Grant Rodiek	409
Yasutaka Ikeda	410
Mark K. Swanson	411
Ralph Bienert	412
Richard Berthold	413
Tim Pinder	414
Tony Boydell	415
Aristide Bruyant	416
Hervé Rigal	417
Alex Davy	418
John Fiorillo	419
Scott Caputo	420
Aurélien Picolet	421
Marc Paquien	422
Nicolas Robert	423
John H. Butterfield	424
Isaac Vega	425
Klaus Zoch	426
Kevin Bishop	427
Jamie Bloom	428
Shadi Torbey	429
Stefan Risthaus	430
Jake Staines	431
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: lundt2
--

COPY public.games (id, name, designer, publisher, artist, yearpublished, minplayers, maxplayers, playtime, minplaytime, maxplaytime, age, rating, average, bayesavg, rank, rankwg, numcomments, numweights, averageweight, stddev, median, owned, trading, wanting, wishing, userrating, img, category, mechanic, comment, player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18, player19, player20, dsc, exp, basegame, basegamename, reimplementname, reimplemented, reimplementedname, contains, containsname, iscontained, integration, integrationname, accessories, accessoriesname, numplays, price, userweight, wishpriority, expansions, domain, family, agepoll, nameothers, comments, thumbsgl, soldgl, pricegl, currencygl, usergl, tags, tagsuser) FROM stdin;
\.


--
-- Data for Name: names; Type: TABLE DATA; Schema: public; Owner: lundt2
--

COPY public.names (name, id) FROM stdin;
Terraforming Mars: Prelude	0
Brass: Birmingham	1
The Castles of Burgundy: Special Edition	2
Pandemic Legacy: Season 1	3
Ark Nova	4
Gloomhaven	5
Twilight Imperium: Fourth Edition	6
Dune: Imperium	7
Terraforming Mars	8
War of the Ring: Second Edition	9
Star Wars: Rebellion	10
Spirit Island: Jagged Earth	11
Spirit Island	12
Gloomhaven: Jaws of the Lion	13
Dune: Imperium - Uprising	14
Gaia Project	15
Spirit Island: Branch & Claw	16
Dune: Imperium - Rise of Ix	17
Twilight Struggle	18
Through the Ages: A New Story of Civilization	19
The Castles of Burgundy	20
Viticulture: Tuscany Essential Edition	21
Great Western Trail	22
Scythe	23
Eclipse: Second Dawn for the Galaxy	24
7 Wonders Duel	25
Brass: Lancashire	26
Mage Knight: Ultimate Edition	27
Lost Ruins of Arnak: Expedition Leaders	28
Scythe: The Rise of Fenris	29
Nemesis	30
Frosthaven	31
Clank! Legacy: Acquisitions Incorporated	32
A Feast for Odin	33
Concordia	34
Wingspan: European Expansion	35
Wingspan: Oceania Expansion	36
Great Western Trail: Second Edition	37
Arkham Horror: The Card Game	38
Lost Ruins of Arnak	39
Root	40
Ark Nova: Marine Worlds	41
Too Many Bones	42
Terra Mystica	43
Wingspan	44
Terraforming Mars: Hellas & Elysium	45
Orléans	46
Mage Knight Board Game	47
Barrage	48
Sky Team	49
Dominion: Prosperity	50
The Crew: Mission Deep Sea	51
Everdell	52
Viticulture Essential Edition	53
The Lord of the Rings: Duel for Middle-earth	54
Lords of Waterdeep: Scoundrels of Skullport	55
Heat: Pedal to the Metal	56
Marvel Champions: The Card Game	57
Scythe: Invaders from Afar	58
Crokinole	59
Food Chain Magnate	60
Kanban EV	61
Pax Pamir: Second Edition	62
Underwater Cities	63
Hegemony: Lead Your Class to Victory	64
Puerto Rico	65
Cascadia	66
Cthulhu: Death May Die	67
Pandemic Legacy: Season 0	68
Root: The Riverfolk Expansion	69
Caverna: The Cave Farmers	70
Anachrony	71
Star Wars: Rebellion - Rise of the Empire	72
On Mars	73
Slay the Spire: The Board Game	74
Blood Rage	75
Agricola	76
Oathsworn: Into the Deepwood	77
Root: The Underworld Expansion	78
Sleeping Gods	79
Lisboa	80
Pandemic Legacy: Season 2	81
Age of Innovation	82
Obsession	83
Pandemic: On the Brink	84
A Feast for Odin: The Norwegians	85
Grand Austria Hotel	86
Mansions of Madness: Second Edition	87
Tzolk'in: The Mayan Calendar	88
Power Grid	89
SETI: Search for Extraterrestrial Intelligence	90
Quacks	91
Clans of Caledonia	92
Le Havre	93
Maracaibo	94
Paladins of the West Kingdom	95
Dominion: Seaside	96
The Gallerist	97
Clank!: Catacombs	98
Star Wars: Imperial Assault	99
Android: Netrunner	100
Mechs vs. Minions	101
Agricola (Revised Edition)	102
The Crew: The Quest for Planet Nine	103
Kingdom Death: Monster	104
7 Wonders Duel: Pantheon	105
Race for the Galaxy	106
Azul	107
Five Tribes: The Djinns of Naqala	108
Hansa Teutonica: Big Box	109
Harmonies	110
The White Castle	111
Clank!: A Deck-Building Adventure	112
Race for the Galaxy: The Gathering Storm	113
Ticket to Ride Legacy: Legends of the West	114
Eclipse: New Dawn for the Galaxy	115
Fields of Arle	116
Revive	117
Aeon's End	118
Darwin's Journey	119
Lords of Waterdeep	120
El Grande	121
Wingspan Asia	122
Teotihuacan: City of Gods	123
Great Western Trail: New Zealand	124
SCOUT	125
Beyond the Sun	126
Concordia Venus	127
Through the Ages: A Story of Civilization	128
Blood on the Clocktower	129
Dominant Species	130
The Search for Planet X	131
7 Wonders	132
Robinson Crusoe: Adventures on the Cursed Island	133
The Voyages of Marco Polo	134
Final Girl	135
Ticket to Ride: USA 1910	136
Decrypto	137
Splendor Duel	138
Inis	139
Trickerion: Legends of Illusion	140
Voidfall	141
Battlestar Galactica: The Board Game	142
Mage Knight Board Game: The Lost Legion Expansion	143
Carnegie	144
Architects of the West Kingdom	145
Eldritch Horror: Forsaken Lore	146
Tainted Grail: The Fall of Avalon	147
The Quest for El Dorado	148
Twilight Imperium: Third Edition - Shattered Empire	149
Dwellings of Eldervale	150
Keyflower	151
Raiders of the North Sea	152
Tigris & Euphrates	153
Dominion: Intrigue	154
Caylus	155
Arcs	156
Ra	157
Troyes	158
Lorenzo il Magnifico	159
Eldritch Horror	160
Nemesis: Lockdown	161
Mombasa	162
The Lord of the Rings: Journeys in Middle-Earth	163
Terraforming Mars: Colonies	164
Patchwork	165
Twilight Imperium: Third Edition	166
Age of Steam	167
7 Wonders: Leaders	168
Dominion	169
Trajan	170
Everdell: The Complete Collection	171
Russian Railroads	172
Aeon's End: War Eternal	173
Twilight Imperium: Fourth Edition - Prophecy of Kings	174
Hansa Teutonica	175
Wonderland's War	176
Rising Sun	177
Wyrmspan	178
The 7th Continent	179
Vinhos: Deluxe Edition	180
Dune: Imperium - Immortality	181
Yokohama	182
Iberia	183
Clank! In! Space!: A Deck-Building Adventure	184
Forbidden Stars	185
ISS Vanguard	186
Codenames	187
Just One	188
Champions of Midgard	189
PARKS	190
Rajas of the Ganges	191
Roll for the Galaxy	192
Pandemic	193
Hadrian's Wall	194
Nucleum	195
Targi	196
Terra Mystica: Fire & Ice	197
Tyrants of the Underdark	198
Cartographers	199
Star Realms	200
Magic: The Gathering	201
Res Arcana	202
Ticket to Ride: 10th Anniversary	203
The Isle of Cats	204
Alchemists	205
Watergate	206
It's a Wonderful World	207
Ticket to Ride: Europe	208
Too Many Bones: Undertow	209
Undaunted: Normandy	210
Carcassonne: Expansion 1 - Inns & Cathedrals	211
Planet Unknown	212
The Lord of the Rings: The Card Game	213
Arkham Horror: The Card Game (Revised Edition)	214
Stone Age	215
Praga Caput Regni	216
Kemet	217
War Chest	218
Dominion (Second Edition)	219
Sherlock Holmes Consulting Detective: The Thames Murders & Other Cases	220
Terraforming Mars: Ares Expedition	221
Endeavor: Age of Sail	222
Istanbul	223
Legendary Encounters: An Alien Deck Building Game	224
Viscounts of the West Kingdom	225
Glen More II: Chronicles	226
Marco Polo II: In the Service of the Khan	227
Unmatched: Cobble & Fog	228
7 Wonders: Cities	229
Star Wars: X-Wing Miniatures Game	230
That's Pretty Clever!	231
Legendary: A Marvel Deck Building Game - Dark City	232
Xia: Legends of a Drift System	233
Radlands	234
The Quacks of Quedlinburg: The Herb Witches	235
Jaipur	236
Great Western Trail: Rails to the North	237
Welcome To...	238
Earth	239
Concordia: Salsa	240
Welcome to the Moon	241
Star Wars: Outer Rim	242
Dune	243
Chaos in the Old World	244
War of the Ring	245
This War of Mine: The Board Game	246
Forest Shuffle	247
Great Western Trail: Argentina	248
Hive Pocket	249
Memoir '44	250
Meadow	251
The Red Cathedral	252
Descent: Journeys in the Dark (Second Edition)	253
Carcassonne: Expansion 2 - Traders & Builders	254
Agricola: Farmers of the Moor	255
Sagrada	256
7 Wonders (Second Edition)	257
Sekigahara: The Unification of Japan	258
Castles of Mad King Ludwig	259
Cosmic Encounter	260
Space Base	261
Modern Art	262
Champions of Midgard: Valhalla	263
The Resistance: Avalon	264
Horrified	265
Railways of the World	266
Paleo	267
Star Wars: The Deckbuilding Game	268
A Game of Thrones: The Board Game (Second Edition)	269
Azul: Summer Pavilion	270
Go	271
Root: The Marauder Expansion	272
Arkham Horror: The Card Game - The Dunwich Legacy: Expansion	273
Dominion: Dark Ages	274
Ticket to Ride: Nordic Countries	275
Ora et Labora	276
Carcassonne	277
Clash of Cultures: Monumental Edition	278
Captain Sonar	279
Commands & Colors: Ancients	280
Suburbia	281
Splendor	282
Eclipse: Rise of the Ancients	283
Village	284
Return to Dark Tower	285
Ankh: Gods of Egypt	286
Orléans: Trade & Intrigue	287
John Company: Second Edition	288
Dead of Winter: A Crossroads Game	289
Ticket to Ride Map Collection 5: United Kingdom & Pennsylvania	290
Tichu	291
Aeon's End: Legacy	292
Nidavellir	293
The Taverns of Tiefenthal	294
Star Realms: Colony Wars	295
Paths of Glory	296
Dominion: Hinterlands	297
YINSH	298
Ticket to Ride	299
Coimbra	300
Under Falling Skies	301
KLASK	302
Root: The Exiles and Partisans Deck	303
Nations	304
My City	305
Trickerion: Collector's Edition	306
Near and Far	307
Calico	308
Cyclades	309
Secret Hitler	310
Combat Commander: Europe	311
Race for the Galaxy: Rebel vs Imperium	312
Dinosaur Island	313
Camel Up (Second Edition)	314
La Granja	315
Codenames: Duet	316
Xia: Embers of a Forsaken Star	317
Fantasy Realms	318
7 Wonders Duel: Agora	319
Legendary: A Marvel Deck Building Game	320
Century: Golem Edition	321
Hanamikoji	322
Unmatched: Battle of Legends, Volume One	323
Deception: Murder in Hong Kong	324
Sushi Go Party!	325
MicroMacro: Crime City	326
Zombicide: Black Plague	327
Samurai	328
Isle of Skye: From Chieftain to King	329
Flamme Rouge	330
The Princes of Florence	331
Roll Player	332
Glory to Rome	333
King of Tokyo: Power Up!	334
Hallertau	335
Western Legends	336
Ticket to Ride: Europe - 15th Anniversary	337
Pulsar 2849	338
Hero Realms	339
Everdell: Spirecrest	340
Kanban: Driver's Edition	341
Tapestry	342
Santorini	343
Goa: A New Expedition	344
1830: Railways & Robber Barons	345
Rococo: Deluxe Edition	346
Anno 1800: The Board Game	347
Orléans: Invasion	348
So Clover!	349
Shogun	350
Galaxy Trucker	351
Endeavor: Deep Sea	352
PARKS: Nightfall	353
Scythe: The Wind Gambit	354
Monikers	355
Tzolk'in: The Mayan Calendar - Tribes & Prophecies	356
Faraway	357
Andromeda's Edge	358
Viticulture	359
Bitoku	360
Mind MGMT: The Psychic Espionage “Game.”	361
1960: The Making of the President	362
Kemet: Blood and Sand	363
Endless Winter: Paleoamericans	364
Detective: A Modern Crime Board Game	365
Tiletum	366
Distilled	367
Skull King	368
Cosmic Encounter: Cosmic Incursion	369
Roll Player: Monsters & Minions	370
Lewis & Clark: The Expedition	371
Thunder Road: Vendetta	372
Ultimate Railroads	373
Sea Salt & Paper	374
Marvel United	375
Bora Bora	376
Five Tribes: The Artisans of Naqala	377
Chronicles of Crime	378
Oath	379
Kingdomino	380
Star Realms: Frontiers	381
Battle Line	382
Aeon's End: The New Age	383
Steam	384
Battlestar Galactica: The Board Game - Pegasus Expansion	385
Apiary	386
Rococo	387
Hive	388
Cryptid	389
Foundations of Rome	390
Forgotten Waters	391
Turing Machine	392
Ethnos	393
Dice Throne: Season Two - Battle Chest	394
T.I.M.E Stories	395
Cthulhu Wars	396
Dixit: Odyssey	397
Seasons	398
CATAN: Cities & Knights	399
Eldritch Horror: Strange Remnants	400
Telestrations	401
Long Shot: The Dice Game	402
Ticket to Ride Map Collection 2: India & Switzerland	403
Love Letter	404
Arcadia Quest	405
Arkham Horror (Third Edition)	406
The Witcher: Old World	407
Imperium: Classics	408
The Manhattan Project: Energy Empire	409
Onitama	410
Lost Cities	411
Arkham Horror: Dunwich Horror Expansion	412
Indonesia	413
Everdell: Bellfaire	414
Imperial	415
Navegador	416
Istanbul: Big Box	417
Carcassonne Big Box 6	418
Raiders of the North Sea: Hall of Heroes	419
For Sale	420
Dungeon Petz	421
Cloudspire	422
Summoner Wars (Second Edition)	423
Space Alert	424
The Great Zimbabwe	425
Clank!: Sunken Treasures	426
Acquire	427
El Grande Big Box	428
Cat in the Box: Deluxe Edition	429
Age of Empires III: The Age of Discovery	430
Power Grid Deluxe: Europe/North America	431
Pandemic: In the Lab	432
Wayfarers of the South Tigris	433
The King Is Dead: Second Edition	434
Survive: Escape from Atlantis!	435
Dorfromantik: The Board Game	436
Dixit: Quest	437
Imperial Settlers	438
Mansions of Madness: Second Edition - Beyond the Threshold: Expansion	439
Tikal	440
Glass Road	441
Nemo's War (Second Edition)	442
Eldritch Horror: Mountains of Madness	443
Mansions of Madness: Second Edition - Streets of Arkham: Expansion	444
Century: Spice Road	445
The King's Dilemma	446
Bunny Kingdom	447
Fury of Dracula (Third/Fourth Edition)	448
Battlestar Galactica: The Board Game - Exodus Expansion	449
Bruges	450
Heaven & Ale	451
Imperial 2030	452
Roll for the Galaxy: Ambition	453
Tiny Epic Galaxies	454
Chinatown	455
Summoner Wars: Master Set	456
Nusfjord	457
Awkward Guests: The Walton Case	458
Destinies	459
Underwater Cities: New Discoveries	460
Lost Ruins of Arnak: The Missing Expedition	461
Project L	462
Terraforming Mars: Venus Next	463
Alien Frontiers	464
Runewars	465
Flamecraft	466
Exit: The Game - The Abandoned Cabin	467
Small World	468
The Lord of the Rings: The Card Game - Revised Core Set	469
Raiders of Scythia	470
The Guild of Merchant Explorers	471
Burgle Bros.	472
Innovation	473
Viticulture: Tuscany	474
Bonfire	475
Above and Below	476
Merchants & Marauders	477
Neuroshima Hex	478
Twilight Imperium: Third Edition - Shards of the Throne	479
Pax Renaissance: 2nd Edition	480
Dead of Winter: The Long Night	481
Mindbug: First Contact	482
Arboretum	483
Furnace	484
Sidereal Confluence	485
Marvel United: X-Men	486
Antiquity	487
Bärenpark	488
Mission: Red Planet (Second/Third Edition)	489
Sid Meier's Civilization: The Board Game	490
Letters from Whitechapel	491
Dixit	492
Gizmos	493
Frostpunk: The Board Game	494
Dungeon Lords	495
Expeditions	496
Dead Reckoning	497
Tekhenu: Obelisk of the Sun	498
Ginkgopolis	499
Harry Potter: Hogwarts Battle	500
BattleLore: Second Edition	501
Marrakesh	502
Air, Land, & Sea	503
Takenoko	504
Abyss	505
Mysterium	506
Unmatched: Robin Hood vs. Bigfoot	507
Ticket to Ride Map Collection 1: Asia + Legendary Asia	508
Carpe Diem	509
Schotten Totten	510
San Juan	511
Ghost Stories	512
Agricola: All Creatures Big and Small	513
The Resistance	514
Keep the Heroes Out!	515
Dominion: Cornucopia	516
Blood Bowl: Team Manager - The Card Game	517
Res Arcana: Lux et Tenebrae	518
The Vale of Eternity	519
Star Wars: Armada	520
Smartphone Inc.	521
Lords of Hellas	522
51st State: Master Set	523
Twice as Clever!	524
Dune: War for Arrakis	525
Hannibal: Rome vs. Carthage	526
Altiplano	527
Notre Dame	528
The Pillars of the Earth	529
The Godfather: Corleone's Empire	530
Fall of Rome	531
Newton	532
Kingsburg: To Forge a Realm	533
Ready Set Bet	534
Cartographers Heroes	535
At the Gates of Loyang	536
Saint Petersburg	537
War of the Ring: Lords of Middle-earth	538
Akropolis	539
Mage Wars Arena	540
Gùgōng	541
Chess	542
Unconscious Mind	543
Dice Throne: Season One ReRolled	544
Honey Buzz	545
Arkham Horror	546
King of Tokyo	547
IKI	548
Dominion: Adventures	549
Blitzkrieg!: World War Two in 20 Minutes	550
Descent: Legends of the Dark	551
Skull	552
Dice Forge	553
Pan Am	554
Ticket to Ride: Europa 1912	555
Boonlake	556
London (Second Edition)	557
Downforce	558
Tiny Towns	559
Ticket to Ride: Märklin	560
In the Year of the Dragon	561
Endeavor	562
Cubitos	563
Die Macher	564
Star Wars: Outer Rim - Unfinished Business	565
Dominion: Empires	566
Codenames: Pictures	567
Imperial Struggle	568
Azul: Stained Glass of Sintra	569
Bruxelles 1893	570
San Juan (Second Edition)	571
Power Grid: Benelux/Central Europe	572
Spartacus: A Game of Blood and Treachery	573
King of Tokyo: Dark Edition	574
Imperium: Legends	575
Galaxy Trucker: Anniversary Edition	576
Firefly: The Game	577
Biblios	578
Civilization	579
The Great Wall	580
Evolution: Climate	581
Mythic Battles: Pantheon	582
Here I Stand	583
Everdell: Collector's Edition	584
Unsettled	585
Wavelength	586
Sword & Sorcery	587
T.I.M.E Stories: The Marcy Case	588
Santa Maria	589
Millennium Blades	590
Suburbia: Collector's Edition	591
Legacy of Yu	592
Caper: Europe	593
For Northwood! A Solo Trick-Taking Game	594
Sprawlopolis	595
Fresco	596
Space Hulk (Third Edition)	597
Sherlock Holmes Consulting Detective: Jack the Ripper & West End Adventures	598
Civolution	599
Blood Rage: 5th Player Expansion	600
Tyrants of the Underdark: Board Game	601
Woodcraft	602
Flash Point: Fire Rescue	603
Commands & Colors: Napoleonics	604
Clash of Cultures	605
Macao	606
Scythe: Encounters	607
Kingsburg	608
Stockpile	609
Nippon	610
The LOOP	611
Flamme Rouge: Peloton	612
7 Wonders: Wonder Pack	613
Arkham Horror: The Card Game - The Path to Carcosa: Expansion	614
Massive Darkness 2: Hellscape	615
Thunderstone Quest	616
PitchCar	617
Libertalia: Winds of Galecrest	618
Zombicide: 2nd Edition	619
Unmatched: Battle of Legends, Volume Two	620
Mice and Mystics	621
Black Orchestra	622
Lord of the Rings: The Confrontation	623
Through the Ages: New Leaders and Wonders	624
Mandala	625
Feed the Kraken	626
Claustrophobia	627
Reign of Cthulhu	628
Unmatched: Little Red Riding Hood vs. Beowulf	629
MicroMacro: Crime City - Full House	630
Let's Go! To Japan	631
The Manhattan Project	632
Heroscape Master Set: Rise of the Valkyrie	633
Advanced Civilization	634
Dawn of the Zeds (Third Edition)	635
Trekking Through History	636
Advanced Squad Leader	637
Pagan: Fate of Roanoke	638
World Wonders	639
Lancaster	640
High Society	641
Galaxy Trucker: The Big Expansion	642
Small World: Be Not Afraid...	643
Bohnanza	644
No Thanks!	645
Citadels	646
Middara: Unintentional Malum - Act 1	647
Colt Express	648
Quadropolis	649
Glen More	650
A Few Acres of Snow	651
Pipeline	652
Bus	653
Black Rose Wars	654
Zombie Kidz Evolution	655
Hadara	656
Fantastic Factories	657
Undaunted: North Africa	658
Imperial Settlers: Empires of the North	659
Kutná Hora: The City of Silver	660
Fire in the Lake	661
Mystic Vale	662
Stuffed Fables	663
Point Salad	664
Through the Desert	665
Shadows over Camelot	666
Spirit Island: Nature Incarnate	667
Friday	668
Canvas	669
Amun-Re	670
Lords of Vegas	671
Eldritch Horror: Under the Pyramids	672
Exit: The Game - Dead Man on the Orient Express	673
Hanabi	674
Potion Explosion	675
Junk Art	676
Amerigo	677
BattleLore	678
Power Grid: China/Korea	679
Betrayal Legacy	680
Aquatica	681
Pandemic: The Cure	682
Sheriff of Nottingham	683
Horizons of Spirit Island	684
Forbidden Desert	685
Unmatched Adventures: Tales to Amaze	686
Marvel Dice Throne	687
T.I.M.E Stories: A Prophecy of Dragons	688
Power Grid: France/Italy	689
Deus	690
Skymines	691
Mansions of Madness	692
Power Grid: The New Power Plants - Set 1	693
Descent: Journeys in the Dark	694
Istanbul: Mocha & Baksheesh	695
Blood Bowl (Third Edition)	696
Aeon Trespass: Odyssey	697
Oceans	698
Spirit Island: Promo Pack 1	699
Thurn and Taxis	700
CATAN	701
QE	702
Risk Legacy	703
Imhotep	704
Charterstone	705
CATAN: Seafarers	706
Alhambra	707
Knarr	708
Splendor: Marvel	709
Raptor	710
Marvel Champions: The Card Game - The Rise of Red Skull	711
Railroad Ink: Deep Blue Edition	712
Argent: The Consortium	713
Memoir '44: Eastern Front	714
Shadows of Brimstone: City of the Ancients	715
Viticulture: Visit from the Rhine Valley	716
Next Station: London	717
Regicide	718
Port Royal	719
Anachrony: Infinity Box	720
Labyrinth: The War on Terror, 2001 - ?	721
Mansions of Madness: Second Edition - Horrific Journeys: Expansion	722
Star Wars: X-Wing (Second Edition)	723
Small World: Cursed!	724
Legendary: A Marvel Deck Building Game - Guardians of the Galaxy	725
Arkham Horror: Innsmouth Horror Expansion	726
Trio	727
Ingenious	728
Escape Plan	729
Unfathomable	730
Terraforming Mars: Big Box	731
Scholars of the South Tigris	732
Etherfields	733
Castle Combo	734
The Fellowship of the Ring: Trick-Taking Game	735
1775: Rebellion	736
Las Vegas	737
Small World Underground	738
Dinosaur Island: Rawr 'n Write	739
Fleet: The Dice Game	740
TZAAR	741
Nova Luna	742
Race for the Galaxy: The Brink of War	743
1846: The Race for the Midwest	744
Raiders of the North Sea: Fields of Fame	745
Lacrimosa	746
Freedom: The Underground Railroad	747
Blood Bowl: Living Rulebook	748
Blackout: Hong Kong	749
Eldritch Horror: Signs of Carcosa	750
Love Letter: Premium Edition	751
Runebound (Third Edition)	752
Camel Up	753
The Grizzled	754
RoboRally	755
Discworld: Ankh-Morpork	756
Sushi Go!	757
Wabash Cannonball	758
Libertalia	759
Final Girl: The Happy Trails Horror	760
Galaxy Trucker (Second Edition)	761
Jamaica	762
Airlines Europe	763
Valeria: Card Kingdoms	764
Root: The Vagabond Pack	765
First Class: All Aboard the Orient Express!	766
Marvel Champions: The Card Game - Captain America Hero Pack	767
Elysium	768
Last Will	769
Karuba	770
London	771
Legends of Andor	772
The Fox in the Forest	773
Suburbia Inc	774
Daybreak	775
Obsession: Upstairs, Downstairs	776
HITSTER	777
Archipelago	778
Atlantis Rising (Second Edition)	779
One Night Ultimate Werewolf	780
Vikings	781
Euphoria: Build a Better Dystopia	782
Detective: City of Angels	783
Warp's Edge	784
Unlock!: Escape Adventures	785
Space Empires 4X	786
Tales of the Arabian Nights	787
Taj Mahal	788
StarCraft: The Board Game	789
Madeira	790
DVONN	791
In the Hall of the Mountain King	792
Sentinels of the Multiverse	793
Time's Up! Title Recall!	794
Carcassonne: Hunters and Gatherers	795
Everdell: Pearlbrook	796
Draftosaurus	797
Baseball Highlights: 2045	798
Barcelona	799
Terraforming Mars: Turmoil	800
Dominion: Guilds	801
Legendary: A Marvel Deck Building Game - Paint the Town Red	802
Blood Rage: Mystics of Midgard	803
Broom Service	804
Champions of Midgard: The Dark Mountains	805
Crusaders: Thy Will Be Done	806
Unmatched Game System	807
Architects of the West Kingdom: Age of Artisans	808
Nexus Ops	809
Legendary: A Marvel Deck Building Game - Fantastic Four	810
Village: Inn	811
Azul: Queen's Garden	812
Anachrony: Exosuit Commander Pack	813
Arydia: The Paths We Dare Tread	814
Queendomino	815
Unmatched: Jurassic Park - InGen vs Raptors	816
Eldritch Horror: Cities in Ruin	817
Pathfinder Adventure Card Game: Rise of the Runelords - Base Set	818
Star Trek: Ascendancy	819
Colosseum	820
Take 5	821
Pax Porfiriana	822
Dice Throne: Season One	823
Vinhos	824
Chaos in the Old World: The Horned Rat Expansion	825
My Father's Work	826
Unlock!: Heroic Adventures	827
Small World: Grand Dames of Small World	828
Creature Comforts	829
Ezra and Nehemiah	830
Ticket to Ride: Switzerland	831
Triumph & Tragedy: European Balance of Power 1936-1945	832
Carcassonne: 20th Anniversary Edition	833
Bomb Busters	834
Egizia	835
Tobago	836
Roads & Boats	837
Bullet♥︎	838
Project: ELITE	839
Mansions of Madness: Second Edition - Sanctum of Twilight: Expansion	840
Everdell: Newleaf	841
AquaSphere	842
Weather Machine	843
Coup	844
War of the Ring: The Card Game	845
Alhambra: Big Box	846
HeroQuest	847
Cooper Island	848
BattleCON: Devastation of Indines	849
Paperback	850
Shards of Infinity	851
The Elder Scrolls: Betrayal of the Second Era	852
The Colonists	853
Cuba Libre	854
Medici	855
Arkham Horror: The King in Yellow Expansion	856
Silver & Gold	857
Viticulture: Moor Visitors Expansion	858
Elder Sign: Unseen Forces	859
Cosmic Encounter: Cosmic Conflict	860
Coloretto	861
Struggle of Empires	862
Automobile	863
Marvel Champions: The Card Game - Doctor Strange Hero Pack	864
7 Wonders: Armada	865
The Lord of the Rings: Journeys in Middle-earth - Shadowed Paths Expansion	866
Cyclades: Hades	867
Three Sisters	868
Francis Drake	869
Whitehall Mystery	870
Zombicide: Green Horde	871
First Rat	872
Thebes	873
The Battle of Five Armies	874
Carson City	875
Zombicide	876
A Game of Thrones	877
Battlestar Galactica: The Board Game - Daybreak Expansion	878
Mille Fiori	879
High Frontier 4 All	880
Evolution	881
Golem	882
Barrage: The Leeghwater Project	883
Gears of War: The Board Game	884
Mosaic: A Story of Civilization	885
Beer & Bread	886
Yellow & Yangtze	887
Telestrations: 12 Player Party Pack	888
Hammer of the Scots	889
A Fake Artist Goes to New York	890
Formula D	891
Conan	892
The Downfall of Pompeii	893
Quantum	894
Betrayal at House on the Hill	895
Brian Boru: High King of Ireland	896
A Game of Thrones: The Card Game (Second Edition)	897
Living Forest	898
Time's Up!	899
Star Wars: The Clone Wars	900
Star Wars: Destiny	901
Russian Railroads: German Railroads	902
Between Two Castles of Mad King Ludwig	903
Star Wars: Unlimited	904
Mare Nostrum: Empires	905
Dominant Species: Marine	906
Cribbage	907
Taluva	908
Cacao	909
Sid Meier's Civilization: The Board Game - Fame and Fortune	910
Photosynthesis	911
Takenoko: Chibis	912
Kingdom Builder	913
Disney Villainous: Wicked to the Core	914
Blood Bowl (2016 Edition)	915
Sagrada: 5-6 Player Expansion	916
Magic Maze	917
Elder Sign	918
Clank!: The Mummy's Curse	919
Verdant	920
Bloodborne: The Board Game	921
Chronicles of Crime: 1400	922
Civilization: A New Dawn	923
Merv: The Heart of the Silk Road	924
The Adventures of Robin Hood	925
Mr. Jack	926
Trails of Tucana	927
Federation	928
Trains	929
Fort	930
Shikoku 1889	931
Rising Sun: Daimyo Box	932
Twilight Inscription	933
Mysterium: Hidden Signs	934
One Night Ultimate Werewolf: Daybreak	935
Feudum	936
Pirates of Maracaibo	937
Railroad Ink Challenge: Lush Green Edition	938
The 7th Citadel	939
The Republic of Rome	940
Churchill	941
Can't Stop	942
La Granja: Deluxe Master Set	943
Sub Terra	944
Pax Renaissance	945
Snowdonia	946
Disney Villainous: Evil Comes Prepared	947
Unlock!: Timeless Adventures	948
Shakespeare	949
Star Wars: X-Wing Miniatures Game - The Force Awakens Core Set	950
Dice Throne Adventures	951
Summoner Wars	952
Escape: The Curse of the Temple	953
The Oracle of Delphi	954
Ascension: Deckbuilding Game	955
Ticket to Ride: Rails & Sails	956
AuZtralia	957
Whistle Mountain	958
Torres	959
The Magnificent	960
Top Ten	961
7 Wonders: Architects	962
Belfort	963
Babylonia	964
Cuba	965
Treasure Island	966
Mexica	967
The Bloody Inn	968
Azul: Master Chocolatier	969
Tapestry: Plans and Ploys	970
D-Day at Omaha Beach	971
KeyForge: Call of the Archons	972
Oh My Goods!	973
Tokaido	974
Fromage	975
Ashes Reborn: Rise of the Phoenixborn	976
Yamataï	977
The Estates	978
The Shipwreck Arcana	979
Life of the Amazonia	980
Love Letter: Batman	981
Onirim (Second Edition)	982
Res Arcana: Perlae Imperii	983
Space Hulk: Death Angel - The Card Game	984
Luna	985
Caesar!: Seize Rome in 20 Minutes!	986
Carson City: Big Box	987
Century: A New World	988
Carcassonne: The Castle	989
Arkwright	990
Maquis	991
\.


--
-- PostgreSQL database dump complete
--

