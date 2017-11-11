--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: umito
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO umito;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: umito
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO umito;

--
-- Name: ufos; Type: TABLE; Schema: public; Owner: umito
--

CREATE TABLE ufos (
    id bigint NOT NULL,
    sight_date text,
    city text,
    state text,
    shape text,
    duration text,
    summary text,
    latitude text,
    longitude text
);


ALTER TABLE ufos OWNER TO umito;

--
-- Name: ufos_id_seq; Type: SEQUENCE; Schema: public; Owner: umito
--

CREATE SEQUENCE ufos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ufos_id_seq OWNER TO umito;

--
-- Name: ufos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: umito
--

ALTER SEQUENCE ufos_id_seq OWNED BY ufos.id;


--
-- Name: ufos id; Type: DEFAULT; Schema: public; Owner: umito
--

ALTER TABLE ONLY ufos ALTER COLUMN id SET DEFAULT nextval('ufos_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: umito
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2017-10-18 22:19:04.745792	2017-10-18 22:19:04.745792
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: umito
--

COPY schema_migrations (version) FROM stdin;
20170516233532
\.


--
-- Data for Name: ufos; Type: TABLE DATA; Schema: public; Owner: umito
--

COPY ufos (id, sight_date, city, state, shape, duration, summary, latitude, longitude) FROM stdin;
1	9/27/2014 21:15:00	Adair Village	OR	Flash	2 seconds	Bright flare in Western Oregon sky and meteor.	44.6707	-123.2179
2	9/20/2014 22:30:00	Adair Village	OR	Flash	2 seconds	Bright Flare of light - Western, OR	44.6707	-123.2179
3	9/18/2014 20:45:00	Adair Village	OR	Flash	5 minutes	Flare of light seen twice in five mins, same spot, accompanied by two meteors - Western OR	44.6707	-123.2179
4	9/7/2016 20:45:00	Adrian	OR	Circle	5 minutes	Red blinking lights on the skyline at dusk.	43.7407	-117.0718
5	1/31/2017 22:15:00	Albany	OR	Sphere	2 seconds	Odd swarelling movement.at end of it's path.	44.6350	-123.1059
6	8/18/2016 21:45:00	Albany	OR	Circle	Ongoing	Circle aircraft, with three non-blinking lights, passed over very slowly.	44.6350	-123.1059
7	8/13/2016 0:47:00	Albany	OR	Rectangle	20 seconds	Large reddish orange craft moving SW at fast rate of speed. Heard roaring almost like engine. Noisy neighborhood though.	44.6350	-123.1059
8	3/19/2016 20:13:00	Albany	OR	Triangle	20 minutes	Oregon UFO spotted near I-5 North towards Salem.	44.6350	-123.1059
9	10/13/2015 21:05:00	Albany	OR	Light	5 minutes	Two fast moving white lights in the sky.	44.6350	-123.1059
10	10/13/2015 4:45:00	Albany	OR	Circle	20 seconds	UFO came out of teleportation	44.6350	-123.1059
11	10/12/2015 5:25:00	Albany	OR	Diamond	10 seconds	Red diamond shape UFO flying fairly slow in North Albany, Oregon.	44.6350	-123.1059
12	9/24/2015 21:00:00	Albany	OR	Circle	10 minutes	Two bright white lights moving very fast eventually stopping next to a third into a triangle formation	44.6350	-123.1059
13	6/19/2015 19:45:00	Albany	OR	Rectangle	60 seconds	Large rectangle shaped craft. Large white lights at each end, moving very slowly, at low altitude, and no sound.	44.6350	-123.1059
14	3/2/2015 23:15:00	Albany	OR	Other	10 minutes	11 orange colored singular lights/crafts seen by 3	44.6350	-123.1059
15	10/28/2014 10:10:00	Albany	OR	Changing	3 minutes	Illuminated object moving south, stopped in sky over Albany, Oregon.	44.6350	-123.1059
16	10/16/2014 5:48:00	Albany	OR	Fireball	2-5 minutes	Bright orange light moved accros sky in Albany OR	44.6350	-123.1059
17	7/5/2014 22:03:00	Albany	OR	Light	10 seconds	Unknown object (light) seen over Albany, Oregon on July 5th, shortly after 10 pm.	44.6350	-123.1059
18	12/31/2013 20:30:00	Albany	OR	Circle	15 minutes	New Years Eve 2013 sighting of four orange lights in Albany Oregon.	44.6350	-123.1059
19	11/23/2013 23:30:00	Albany	OR	Circle	>1 hour	5 bright flashing lights, blue, red, green and white.	44.6350	-123.1059
20	11/10/2013 0:20:00	Albany	OR	Circle	5	Five orange globes in the sky. Soft looking. Moving slowly across the sky.	44.6350	-123.1059
21	10/4/2013 20:00:00	Albany	OR	Fireball	10 minutes	Woman and adult daughter witness cluster of orange lights near the Albany Hospital.	44.6350	-123.1059
22	7/3/2013 0:00:00	Albany	OR	Unknown	5 minutes	Unknown Lights	44.6350	-123.1059
23	5/7/2013 23:30:00	Albany	OR	Formation	\N	Orange orbs over Corvallis, OR	44.6350	-123.1059
24	3/20/2013 23:12:00	Albany	OR	Cylinder	10 minutes	((HOAX??)) One quick sighting.	44.6350	-123.1059
25	8/11/2012 10:00:00	Albany	OR	Light	5 or 10 seconds	White Light Moving Fast	44.6350	-123.1059
26	7/25/2012 20:10:00	Albany	OR	Cross	20 seconds	Looking up at moon. Looks liked a foot off it from my eye.	44.6350	-123.1059
27	11/9/2011 4:30:00	Albany	OR	Circle	30 seconds	Two bright orbs dropped from the sky and glided incredibly fast across the entire sky, going south over Oregon.	44.6350	-123.1059
28	9/28/2011 16:15:00	Albany	OR	Oval	3 minutes	UFO witnessed by skeptical man and nephew in Northwest.	44.6350	-123.1059
29	11/3/2010 21:00:00	Albany	OR	Triangle	6 - 10 seconds	triangle of lights moving across sky.	44.6350	-123.1059
30	7/18/2009 21:15:00	Albany	OR	Changing	5 minutes	UFO over I-5 near Albany, Oregon on 7/18/2009.	44.6350	-123.1059
31	7/8/2009 22:00:00	Albany	OR	Circle	2 minutes	2 star like objects moving through sky completely quiet	44.6350	-123.1059
32	2/16/2008 18:30:00	Albany	OR	Circle	~ 1 min	Tuesday, February 19, 2008 On February 16, 2008 approximately 6:30 pm three children ages 12 to 13 were outside talking on the neighbo	44.6350	-123.1059
33	9/15/2007 22:00:00	Albany	OR	Formation	few seconds	Red & orange brightly lit object glides by home seen through window	44.6350	-123.1059
34	5/7/2007 0:00:00	Albany	OR	Triangle	4-5 seconds	We saw something unusual and unforgetable along the river in Albany, Oregon	44.6350	-123.1059
35	9/8/2005 21:10:00	Albany	OR	Oval	4 seconds	Probably a meteor	44.6350	-123.1059
36	8/19/2004 23:30:00	Albany	OR	Triangle	1 minute	The craft seemed 6-12,000 ft high but was hard to tell. It was aclear night and my nephew saw the lights first thinking they were satel	44.6350	-123.1059
37	4/8/2004 22:24:00	Albany	OR	Egg	Bright Flashes	Bright flashes hovering and an egg shaped aircraft went from hovering it high speed instantly.	44.6350	-123.1059
38	12/31/2003 23:40:00	Albany	OR	Formation	5 minutes	Albany, OR Lights in the sky.	44.6350	-123.1059
39	1/17/2003 20:20:00	Albany	OR	Light	5 min	red light in sky changed direction twice before stopping and 5-6 other small red lights fell from the bottom; one veering suddenly east	44.6350	-123.1059
40	10/12/1999 5:11:00	Albany	OR	Fireball	2min	Two fireballs in northwest sky	44.6350	-123.1059
41	9/8/1999 22:00:00	Albany	OR	Triangle	appox 10-15 sec	The craft was flying at approx. 200 feet with no lights on. It had no sound at all and we were able to see it clearly. It appeared to	44.6350	-123.1059
42	8/15/1999 23:11:00	Albany	OR	Sphere	6 minutes	Glowing sphere, DEFINATELY not a plane or helicopter.	44.6350	-123.1059
43	8/6/1998 21:45:00	Albany	OR	Cone	45 seconds	we saw 2 objects in the sky over albany or that stood still then took off in the sky we were driving north on I5 just inside city limit	44.6350	-123.1059
44	3/16/1998 20:30:00	Albany	OR	Cigar	8-10 minutes	The object was a cross between cigar and cylinder. Red tip, blue back. Traveling at high rate of speed at same altitude as plane (Apr	44.6350	-123.1059
45	7/1/1996 19:00:00	Albany	OR	Egg	5 minutes	In the early evening, I saw a white, egg-shaped object making its way across the sky.	44.6350	-123.1059
46	4/27/1996 22:30:00	Albany	OR	\N	7 min.	Man at hwy.rest stopwitnesses black, delta-shaped obj. hovering motionless. Obj. shoots "confined beam" down to ground! Humming.	44.6350	-123.1059
47	4/1/1995 18:00:00	Albany	OR	Other	1 or 2 minutes	There were bright bursts of color in a concentrated area of cloud for a couple of minutes.	44.6350	-123.1059
48	7/11/1991 13:00:00	Albany	OR	Egg	10-15 minutes	three black egg shapes	44.6350	-123.1059
49	8/2/1997 11:45:00	Albany (about 10 minutes from)	OR	Oval	7 seconds	Oval shaped silver object sighted in the sky at 11:45am off of interstate 5.	44.6350	-123.1059
50	2/25/2017 21:30:00	Albany (near)	OR	Rectangle	5 minutes	Two strange bright white lights hovering high above interstate	44.6350	-123.1059
51	8/3/2011 22:00:00	Albert Lake	OR	Sphere	15 minutes	Multiple bright spheres above the desert moveing in patterns	43.4496	-119.1377
52	9/28/2014 20:00:00	Alfalfa	OR	Circle	all night	The bright orange light was on the ground coming our way.	44.0767	-121.0147
53	11/4/1995 23:45:00	Alfalfa	OR	\N	10 sec.	Young man (MUFON trainee) & girlfriend witness a "straight, triangular beam of light" projected down (?) from cloudy sky.	44.0767	-121.0147
54	8/25/2016 21:00:00	Aloha	OR	Circle	\N	Red round light bouncing around the sky quickly	45.4943	-122.8670
55	9/28/2015 20:00:00	Aloha	OR	Light	30 seconds	Light, orange, red, fast speed.	45.4943	-122.8670
56	12/14/2014 22:25:00	Aloha	OR	Flash	3 seconds	Driving in my car sitting on 198th facing tv hwy at the light. Saw what looked like a shooting star, but then it paused in the sky, an	45.4943	-122.8670
57	4/6/2014 22:18:00	Aloha	OR	Oval	8 minutes	Witnessed 3 glowing orange orbs fly in a straight line directly overhead in a steady direction, one after another with about 30 seconds	45.4943	-122.8670
58	5/4/2013 21:00:00	Aloha	OR	Formation	2-3 minutes	Three Bright white lights in Triangular formation	45.4943	-122.8670
59	8/13/2011 21:15:00	Aloha	OR	Light	4 mins	Three red lights over Aloha Oregon	45.4943	-122.8670
60	7/13/2011 11:00:00	Aloha	OR	Circle	2 minutes	UFO sighting after power outage	45.4943	-122.8670
61	9/26/2007 23:00:00	Aloha	OR	Diamond	5 minutes	I was walking from my house, the local shopping center, and I looked up and saw what I at first thought was bright star, or maybe an a	45.4943	-122.8670
62	10/21/2006 19:35:00	Aloha	OR	Light	Aprox. 1 min	Bright light over Aloha, OR, travelling fast	45.4943	-122.8670
63	5/13/2006 13:00:00	Aloha	OR	Oval	1 second	Oval Shaped Object in the sky above residential neighborhood	45.4943	-122.8670
64	1/21/2004 18:23:00	Aloha	OR	Circle	3 minutes	This was no sattelite!	45.4943	-122.8670
65	6/4/2003 21:55:00	Aloha	OR	Fireball	15 seconds	Fireball seen behind trees moving vertically then up into the sky	45.4943	-122.8670
66	4/4/2003 18:35:00	Aloha	OR	Sphere	2 seconds	Large sphere entering clouds at high rate of speed.	45.4943	-122.8670
67	11/3/2002 0:25:00	Aloha	OR	Other	10-15 SEC.	TWO SILENT ORANGE DIMOND SHAPE UFO's STARTTLED MAN IN ALOHA OREGON	45.4943	-122.8670
68	8/13/2002 23:44:00	Aloha	OR	Light	ongoing	Very bright pulsing light in northern sky, moving slowly to NE in a side to side up and down and zigzag fashion.	45.4943	-122.8670
69	7/15/2002 7:45:00	Aloha	OR	Circle	5 minutes	Oregon UFO Review Case: Three crafts seen overhead.	45.4943	-122.8670
70	5/20/2001 19:50:00	Aloha	OR	Diamond	12 min	Slow moving orange dimond.	45.4943	-122.8670
71	7/15/2000 22:00:00	Aloha	OR	Light	15 seconds	This was a stationary large white light that then moved slowly south then picked up speed quickly disapeared.	45.4943	-122.8670
72	6/25/2000 19:15:00	Aloha	OR	Cigar	8-9 minutes	A tube like object slowly moving south at a steady speed until it disapeared.	45.4943	-122.8670
73	7/29/1998 0:15:00	Aloha	OR	Light	50 minutes	Looked like lights of a small plane approaching a local airport. But the object stayed in almost the same place for over 50 minutes mo	45.4943	-122.8670
74	9/8/1999 21:00:00	Alsea	OR	Formation	less than 5 min	3 satelite-like objects flying in tight formation over Oregon.	44.3819	-123.5970
75	9/8/1999 20:00:00	Alsea	OR	Light	3-4 minutes	Report(s) explained as NOSS satellite array	44.3819	-123.5970
76	6/20/2012 19:00:00	Alsea (above)	OR	Light	1 minute	Two bright balls of light ascending over forested area.	44.3819	-123.5970
77	9/9/2012 10:20:00	Alvadore	OR	Circle	40	Moving and hovering object with several colors	44.1268	-123.2645
78	6/19/1999 22:00:00	Alvord (Dry Lake area)	OR	Unknown	15 seconds	Saw 2 events. Two Days apart. First. Line of red lights rising from behind mountain range, hover and descend. Second. Greenish glowing	42.5354	-118.4560
79	2/19/2008 5:05:00	Amity	OR	\N	seconds	Bright flash of light seen northeast of Amity, Oregon on the morning of 02/19/08. ((NUFORC Note: Dramatic meteor at 05:28 hrs.. PD))	45.1157	-123.2073
80	7/6/2001 1:12:00	Amity	OR	Light	hours	strange lights in evening sky	45.1157	-123.2073
81	2/4/2001 20:00:00	Amity	OR	Disk	HOURS	PLEASE HELP US FIND OUT WHAT WE ARE SEEING IN OUR SKY THAT THE LOCAL UFO HOT LINE DIDN,T FEEL LIKE TALKING TO US ABOUT.	45.1157	-123.2073
82	10/20/1999 22:30:00	Amity	OR	Circle	5 seconds	Appear to be an orange fireball moving west and quite low in the sky. Could not est. size.	45.1157	-123.2073
83	7/7/2014 0:00:00	Applegate	OR	Unknown	~5 minutes	Neon green meteorite falling behind mountain followed by direct appearance of red blinking craft over mountain.	42.2571	-123.1684
84	7/14/2006 0:00:00	Applegate	OR	Unknown	?	((HOAX??)) It was around midnight and I was floating in my tent and so was my girlfriend at the time.	42.2571	-123.1684
85	2/19/2015 11:55:00	Arlington	OR	Disk	12 seconds	I clearly witnessed a UFO sighting for 12+ seconds on the Columbia River near Arlington, OR on 02/19/15.	45.7168	-120.2009
86	2/10/2016 5:00:00	Ashland	OR	Triangle	10 minutes	Bright point of light resembling satellite but followed by triangular illuminated shape.	42.1946	-122.7095
87	9/5/2015 23:30:00	Ashland	OR	Disk	3 minutes	9/2015, 2 boys in Southern Oregon have a close encounter with a flying metallic disc that interacts with them	42.1946	-122.7095
88	7/4/2015 21:45:00	Ashland	OR	Light	1 minute	Fireworks and sighting.	42.1946	-122.7095
89	10/11/2014 21:30:00	Ashland	OR	Triangle	2 minutes	Three bright orange lights appeared in the SSW. They did not move or change their formation. After about 2 minutes observation the	42.1946	-122.7095
90	11/22/2012 18:30:00	Ashland	OR	Circle	A few minutes	Circular object directly overhead (far), bright red with yellow center, hung in fixed position for a few mins then moved and went dark.	42.1946	-122.7095
91	10/12/2012 17:00:00	Ashland	OR	Cylinder	40 seconds	Airliner and UFOs.	42.1946	-122.7095
92	6/18/2008 23:00:00	Ashland	OR	Light	hours upon hours	What everyone sees and only few notice.	42.1946	-122.7095
93	10/13/2007 15:30:00	Ashland	OR	Light	1/2 hour	very bright greenish blue light the size of a large star moving slowly NW to SE and back again gaining altitude for 1/2 hour at 3:30	42.1946	-122.7095
94	6/18/2005 11:00:00	Ashland	OR	Sphere	30 Seconds	Brown spherical UFO seen in broad daylight	42.1946	-122.7095
95	4/11/2005 2:00:00	Ashland	OR	Changing	about ten minutes	a changing ball of light/object that vanished entirely after a few minutes	42.1946	-122.7095
96	3/12/2005 12:15:00	Ashland	OR	Sphere	3 minutes	Bright star-like object appears during the day.	42.1946	-122.7095
97	6/20/2004 23:00:00	Ashland	OR	Light	1 hour	strange distant lights moving in zig zag patterns from south to north, one after another aprox. 1 minute apart. ((Satellites??))	42.1946	-122.7095
98	8/5/2003 4:30:00	Ashland	OR	Oval	5 sec	3 oval electric blue objects	42.1946	-122.7095
99	5/31/2003 13:00:00	Ashland	OR	Changing	30 minutes	Ground-moving small black boomerang shaped unidentified object observed with witnesses in broad daylight near Ashland, Or.	42.1946	-122.7095
100	8/28/2002 21:30:00	Ashland	OR	Light	:45	miltiple UFO sighting over Ashland Oregon 8/28/02	42.1946	-122.7095
101	8/10/2002 23:00:00	Ashland	OR	Unknown	2 minutes	I think we posess the ability for a satelite to change course and since I canot corroborate it, to me it is unidentified	42.1946	-122.7095
102	7/30/2000 23:38:00	Ashland	OR	Disk	30 sec	Large object just hovered over the vehicle for about 30 sec	42.1946	-122.7095
103	10/31/1999 20:00:00	Ashland	OR	Other	UNKNOWN	EWENT ALONG WITH THE EARTH CURVATURE OF THE EARTH,BETWEEN 2 MOUNTAINS LAND,ORE SOUTWEST ORIENTATION.NEVER SEEN A YELLOW HOLOGRAM BEFOR	42.1946	-122.7095
104	10/11/1999 21:10:00	Ashland	OR	Triangle	30-45 sec.	I was looking into the sky towards the high east watching what appeared to be a passenger jet cross the sky when my periphial vision ca	42.1946	-122.7095
105	7/24/1999 22:20:00	Ashland	OR	Light	1-2 minutes	A light drifted from west to east, roughly following the Rogue Valley corridor.	42.1946	-122.7095
106	10/10/2016 20:00:00	Astoria	OR	Circle	2 minutes	My daughter and I saw a round light floating across the sky above the Columbia river through our living room window, I ran outside to g	46.1879	-123.8313
107	8/25/2016 23:00:00	Astoria	OR	Circle	3 seconds	Large yellow orb crossed the sky twice heading east.	46.1879	-123.8313
108	10/28/2015 21:30:00	Astoria	OR	Formation	3 days	3-5 red, green and white lights flying in formation mimicking a plane or helicopter flying less than 100 ft above and made no sound.	46.1879	-123.8313
109	9/30/2015 19:15:00	Astoria	OR	Other	2 minutes	Six to eight red lights/globes observed for about 2 minutes/no sound/video obtained.	46.1879	-123.8313
110	8/14/2015 0:20:00	Astoria	OR	Fireball	2 minutes	Bright flaming orange orb, with blue pulses of light emitted every few minutes, flying over the water and was completely silent.	46.1879	-123.8313
111	7/7/2015 23:00:00	Astoria	OR	Formation	5 minutes	Two bright lights traveling in formation.	46.1879	-123.8313
112	3/13/2015 23:50:00	Astoria	OR	Circle	3 minutes	Glowing red object. Looked like several lights to naked eye. Photo weird.	46.1879	-123.8313
113	8/11/2014 0:39:00	Astoria	OR	Light	2 minutes	Orange light over Astoria, Oregon.	46.1879	-123.8313
114	8/8/2013 21:11:00	Astoria	OR	Light	2 minutes	Orb following space station. ((NUFORC Note: Japanese HTV-4 craft flying close to the ISS. PD))	46.1879	-123.8313
115	1/16/2013 23:20:00	Astoria	OR	Chevron	10 mintues	Red Crescent like object hovered, glowing, and then coalesced into a ball and vanished.	46.1879	-123.8313
116	1/15/2012 18:40:00	Astoria	OR	Other	39 min	Fixed bright yellow light mass, emanating multiple sharp, pointed rays all around it. ((NUFORC Note: Venus?? PD))	46.1879	-123.8313
117	3/29/2009 22:00:00	Astoria	OR	Light	30 seconds	Three separate lights dart across night sky on same trajectory , as if chasing after one and another, but they turned.	46.1879	-123.8313
118	12/4/2008 17:00:00	Astoria	OR	Sphere	20 seconds	This is simply a sighting of strange object in our local evening sky sky	46.1879	-123.8313
119	12/22/2001 12:30:00	Astoria	OR	Sphere	5 minutes	Eight small, silver- colored spherical objects over Columbia River	46.1879	-123.8313
120	11/17/2000 20:18:00	Astoria	OR	Light	2 sec	Point source of light making abrupt changes in direction captured on video	46.1879	-123.8313
121	10/13/1996 15:00:00	Astoria (Outside of)	OR	Circle	30 seconds	large metallic object crashed in woods in astoria oregon.	46.1879	-123.8313
122	3/18/2015 19:22:00	Athena	OR	Triangle	20 minutes	Started out like a narrow vertical smoke stream, then separated into two sections. The upper section move upward then changed form,then	45.8118	-118.4905
123	12/24/2013 21:00:00	Athena	OR	Cross	30 minutes	THERE'S SHIPS UP THERE.	45.8118	-118.4905
124	9/19/2016 22:00:00	Aumsville	OR	Cross	7 minutes	Light Object.	44.8410	-122.8709
125	5/24/2015 22:30:00	Aumsville	OR	Fireball	2 minutes	We simply saw what we thought was a helicopter out our window, but when I went outside it looked like a torch flying through the air. T	44.8410	-122.8709
126	5/4/2013 21:10:00	Aurora	OR	Triangle	2 minutes	Three lights forming an equalateral triangle appeared and then disappeared while never changing position.	45.2310	-122.7559
127	8/20/2011 21:20:00	Aurora	OR	Circle	\N	Small colored lights moving erratically near the I-5 interstate in Oregon.	45.2310	-122.7559
128	7/14/2008 10:30:00	Aurora	OR	Other	2 minutes	On July 14, 2008 at 10:30 am I was driving my company van south on HWY 99 coming into Aurora, Oregon. I looked to the left (southeast)	45.2310	-122.7559
129	5/15/1974 21:00:00	Aurora	OR	Disk	2 minutes	Flying Saucer hovers above car.	45.2310	-122.7559
130	7/15/2000 16:00:00	Aurora/Woodburn	OR	Sphere	20-30 min	I was on I-5 South around Aurora to Woodburn. The craft was a white sphere approximetly 5-10 miles away on the left side of the road. I	45.2310	-122.7559
131	6/15/1967 23:00:00	Baker City	OR	Disk	30 minutes	Disk shaped object with different colored revolving lights	44.7749	-117.8344
132	5/16/2015 10:15:00	Baker City	OR	Circle	10 minutes	8-10 round orange lights. 3 in V formation.	44.7749	-117.8344
133	10/7/2014 20:05:00	Baker City	OR	\N	10 seconds	Red blinking light with 2 green circular lights on either side	44.7749	-117.8344
134	8/19/2011 0:50:00	Baker City	OR	Fireball	10 seconds	Fireball, space debris, or unknown object .	44.7749	-117.8344
135	8/19/2006 21:26:00	Baker City	OR	Triangle	10-15 seconds	12 V Shaped Lights in Sky	44.7749	-117.8344
136	8/10/2005 21:00:00	Baker City	OR	Disk	6 secs	low-flying disk with radical "Z" turn	44.7749	-117.8344
137	6/22/2005 22:30:00	Baker City	OR	Light	7 minutes	Three lights in triangular formation.	44.7749	-117.8344
138	1/15/2005 12:00:00	Baker City	OR	Other	everyday	Lessons learned	44.7749	-117.8344
139	4/10/2004 23:50:00	Baker City	OR	Chevron	25 seconds+/-	Transparent grayish chevron-shaped obect changes to 6 individual green lights that reconverge to form 1 green light	44.7749	-117.8344
140	9/28/2003 19:29:00	Baker City	OR	Rectangle	15-20 sec.	Panel of light surgically zig/zagged across sky. Here to gone in 2 seconds flat. Impressed the hell out of us. WE WANT 1	44.7749	-117.8344
141	8/12/2002 2:43:00	Baker City	OR	Formation	8 minutes	3 objects in triangular pattern traverse sky with pattern change occuring.	44.7749	-117.8344
142	5/30/1989 21:00:00	Baker City	OR	Unknown	10 - 15 minutes?	Two humanoid shapes visible inside lit window of craft.	44.7749	-117.8344
143	3/24/1979 22:00:00	Baker City	OR	Cigar	12 seconds	Large, cigar-shaped craft w / windows travelling south to NNE near Baker, Oregon @ appx. 22:00 on March 24th, 1979.	44.7749	-117.8344
144	6/2/2005 12:00:00	Baker City (presumed location)	OR	Cigar	5-10 seconds	Large wingless crafts are practicing for T-bone accident with passenger jet... or maybe just having a good time.	44.7749	-117.8344
145	4/17/2015 12:40:00	Baker City/La Grande (between)	OR	Changing	5 minutes	Grey cloud turns white and then shows points of light, banks and then disappears only to reappear closer.	44.7749	-117.8344
146	2/28/2016 20:01:00	Bandon	OR	Oval	2.5 hours	Bright white hovering oval light with spires shooting out from it. Looks like a star, but doesn't twinkle. Isn't a planet.	43.1190	-124.4084
147	9/22/2015 22:55:00	Bandon	OR	Sphere	5 minutes	Red and white light flying erratically and very fast	43.1190	-124.4084
148	7/31/2015 21:34:00	Bandon	OR	Circle	3 minutes	Daughter and I were sitting in her room and heard this super loud firecracker yet metallic metal steel drum boom kind of sound outside.	43.1190	-124.4084
149	5/11/2013 21:25:00	Bandon	OR	Sphere	12 minutes	Glowing orbs over the pacific in Bandon, Oregon.	43.1190	-124.4084
150	5/11/2013 21:00:00	Bandon	OR	Sphere	5 minutes	Two sets of three fire orange orbs were seen traveling northeast rising and disappearing in the clouds.	43.1190	-124.4084
151	8/13/2012 21:45:00	Bandon	OR	Changing	5 minutes	8/13/2012 21:45 pm Bandon, Oregon star like craft hovers for 1 min. then bright color flashes and huge wall of flames pours out of it	43.1190	-124.4084
152	1/20/2010 18:45:00	Bandon	OR	Other	15 minutes	Close Encounter of the 5th Kind. ((NUFORC Note: Possibly not a serious-minded report. PD))	43.1190	-124.4084
153	6/1/1984 21:00:00	Bandon	OR	Rectangle	5	oregon coast rectangle football field sized white square lights	43.1190	-124.4084
154	8/12/1980 22:00:00	Bandon	OR	Disk	4-8 seconds	Father & son saw big glowing white disk approach thru clouds from S, depart thru clear sky to SW.	43.1190	-124.4084
155	6/24/2015 16:50:00	Banks	OR	Other	1 minute	Liquid metal bus saucer morphs eastward in Oregon sky.	45.6187	-123.1143
156	6/16/2015 8:05:00	Banks	OR	Circle	1 minute	Orb shaped object in south eastern sky over Oregon. ((NUFORC Note: Lens flare. PD))	45.6187	-123.1143
157	2/6/2015 7:30:00	Banks	OR	Circle	1 hour	((HOAX??)) Multiple flying objects with lights flashing, that stoped in a specific spot.	45.6187	-123.1143
158	8/9/2014 4:04:00	Banks	OR	Circle	10 minutes	Very large bright orb lighting up the entire surroundings. Then suddenly gone.	45.6187	-123.1143
159	6/13/2011 21:00:00	Banks	OR	Sphere	5 MIN	LARGE WHITE BALL OF WHITE LIGHT HOVERING OVER NEAR CEDAR CANYON RD AND HWY 6 AREA OF BANKS, OREGON. WHEN APPROACHED BY A JET IT LEFT IN	45.6187	-123.1143
160	10/19/2007 15:00:00	Banks	OR	Sphere	8 Seconds	SR-71's over Washington County? I dont think so!	45.6187	-123.1143
161	9/19/2002 11:00:00	Banks	OR	Other	3 minutes	Wing shaped UFO spotted above the Banks city area.	45.6187	-123.1143
162	6/1/2002 22:00:00	Banks	OR	Light	10 minutes	Oregon UFO Review Case: Lights during road trip as phoned into OUFOR.	45.6187	-123.1143
163	7/21/2001 0:30:00	Barview	OR	Triangle	2-3 minutes	Large, triangular shaped object, three points of fient light as if stars.	43.3543	-124.3132
164	5/17/2000 21:54:00	Bay City	OR	Oval	15 seconds	Two large oval lights, side by side, like giant headlights in the sky. There was aircraft noise at 10:02pm I saw the lights at 9:45pm	45.5226	-123.8893
165	8/12/1996 19:00:00	Bayview	OR	Disk	2+ hours	What happen in barview jetty oregon 1996	44.4423	-124.0351
166	9/15/1977 0:00:00	Beatty	OR	Light	5-8 min	A bright object flying in the sky turned 90 deg on the fly came toward us then glowed brightly for maybe 8 min then flew away from us a	42.4418	-121.2708
167	1/1/2004 18:00:00	Beatty (near)	OR	\N	\N	Unusual object.	42.4418	-121.2708
168	7/24/2009 0:01:00	Beaver Creek	OR	Changing	0:00 3:00am	Saw glowing red object.It moved back and fourth at treetop level.It remained hovering for 3 hrs. ((NUFORC Note: Star?? PD))	45.2879	-122.5353
169	4/24/1995 22:14:00	Beaver Creek	OR	\N	30 min.	Five witnesses rept. observing strange light in eastern sky. Saw it on 21FE and 22FE, as well. (Possible star?)	45.2879	-122.5353
170	6/15/1976 22:00:00	Beaver Creek	OR	Disk	one minute	Craft appears from over the top of house and stops over yard as kids are looking out the window at bed time.	45.2879	-122.5353
171	5/4/2017 15:00:00	Beaverton	OR	Disk	Not sure	Hat-shaped tan object caught on cell phone camera by accident.	45.4871	-122.8037
172	11/23/2016 22:30:00	Beaverton	OR	Disk	60 seconds	Massive green rotating disc-shaped lights over Portland	45.4871	-122.8037
173	9/28/2016 19:50:00	Beaverton	OR	Disk	2 minutes	The object was flying South, about as high as an airplane but looked different enough from a plane that it caught our eye and we contin	45.4871	-122.8037
174	9/27/2016 19:50:00	Beaverton	OR	Disk	2 minutes	We were headed east on Sexton Mountain Drive and I see this unusual light/object flying in the sky. I tell my husband to pull over, gra	45.4871	-122.8037
175	9/21/2016 18:00:00	Beaverton	OR	Circle	5 seconds	Bright blue ball of light! ((anonymous report))	45.4871	-122.8037
176	8/16/2016 19:00:00	Beaverton	OR	Light	2 minutes	Bright unidentifiable flying object that faded to blend in with the sky.	45.4871	-122.8037
177	2/10/2016 7:15:00	Beaverton	OR	Disk	~10 minutes	White to yellow disc object in NE sky that split into two pieces.	45.4871	-122.8037
178	12/25/2015 16:35:00	Beaverton	OR	Circle	8-10 minutes	There were 8 med. height flying objects evenly spaced in formation with no sound and no flashing lights the orange lights were steady.	45.4871	-122.8037
179	12/18/2015 5:00:00	Beaverton	OR	Light	15 minutes	Pulsating lights in SW sky over Beaveton/Farmington area.	45.4871	-122.8037
180	12/9/2015 17:23:00	Beaverton	OR	Light	5 minutes	I was driving north on SW 158th Ave from Walker Rd and saw to the west 5 lights (traveling too slow and too close to be airplanes) 3 of	45.4871	-122.8037
181	8/29/2015 0:30:00	Beaverton	OR	Circle	75 seconds	Orange Circular Craft and Shifting Ball of Light.	45.4871	-122.8037
182	8/25/2015 4:38:00	Beaverton	OR	Oval	30 seconds	Pulsating oval object, amber and green. Every 5 and 3 seconds, then dark; traveling west to east.	45.4871	-122.8037
183	8/17/2015 21:20:00	Beaverton	OR	Light	2 minutes	Bright airplane-esque light, slow moving, no blinking, fade out.	45.4871	-122.8037
184	4/27/2015 10:30:00	Beaverton	OR	Circle	30 minutes	Bright orb lighting up Oregon sky.	45.4871	-122.8037
185	12/24/2014 22:00:00	Beaverton	OR	Cone	3	Illuminated objects hovering, and then disappeared in thin air, one by one.	45.4871	-122.8037
186	12/14/2014 4:45:00	Beaverton	OR	Unknown	27 minutes	Multi color lights pulsing and flashing on object. ((NUFORC Not: Sirius?? PD))	45.4871	-122.8037
187	9/19/2014 21:00:00	Beaverton	OR	Circle	30 seconds	Huge fireball split into 5 ships over Beaverton.	45.4871	-122.8037
188	8/18/2014 11:00:00	Beaverton	OR	Oval	5 minutes	Flying object in sky over Sexton mountain Beaverton, Oregon.	45.4871	-122.8037
189	7/28/2014 22:30:00	Beaverton	OR	Circle	10-15 minutes	Reddish circular object proceeded west to east by northeast.	45.4871	-122.8037
190	7/27/2014 23:45:00	Beaverton	OR	Light	5-8 seconds	Red and Green non strobe light travel at altitude and then suddenly drop beyond sight.	45.4871	-122.8037
191	6/27/2014 22:30:00	Beaverton	OR	Oval	10 minutes	White Oval Lights Circling in the Sky.	45.4871	-122.8037
192	3/16/2014 0:15:00	Beaverton	OR	Circle	10 minutes	Blue light orb that changes colors to red and white.	45.4871	-122.8037
193	2/22/2014 20:20:00	Beaverton	OR	Light	4 minutes	4 vertical aligned red lights in south/southwest sky.	45.4871	-122.8037
194	10/26/2013 20:00:00	Beaverton	OR	\N	\N	2 orange orbs flickerig ,flying in sky over beaverton oregon.	45.4871	-122.8037
195	8/20/2013 21:05:00	Beaverton	OR	Light	1 minute	Bright white light traveling from west to east that suddenly disappeared.	45.4871	-122.8037
196	9/12/2012 20:00:00	Beaverton	OR	Disk	5 minutes	I'm a pilot. At dusk, after work, I saw a golden, metallic saucer-shaped object in the sky. It came from the south and was probably a	45.4871	-122.8037
197	8/12/2012 1:58:00	Beaverton	OR	Disk	10 seconds	Near invisible saucer cruising through the night sky	45.4871	-122.8037
198	7/30/2012 17:40:00	Beaverton	OR	Unknown	10 minutes	Daylight UFO Sighting ove Beaverton - White light flickering and fading in and out of visibility	45.4871	-122.8037
199	4/3/2012 21:50:00	Beaverton	OR	Oval	over 40 minutes	Bright Object seen over Portland OR about 22:00 04/03/12 with event 40 minutes duration	45.4871	-122.8037
200	7/4/2011 0:48:00	Beaverton	OR	Fireball	2 min	Fireball type UFO changed direction; stayed stationary then gained in altitude and flew off into horizon	45.4871	-122.8037
201	12/7/2009 2:00:00	Beaverton	OR	Formation	0:25	A fleet of UFOs coming from the moon were seen entering our airspace over Beaverton, Oregon.	45.4871	-122.8037
202	3/8/2009 19:00:00	Beaverton	OR	Disk	ten minutes	SILVER SAUCER	45.4871	-122.8037
203	12/29/2008 18:05:00	Beaverton	OR	Triangle	10 seconds	Black Triangle Fly-Over (Beaverton, OR)	45.4871	-122.8037
204	11/23/2008 14:45:00	Beaverton	OR	Sphere	1 minute	Shiny Silver Half Sphere with bright light reflecting underneath floating around Beaverton Mall, Oregon	45.4871	-122.8037
205	11/21/2008 18:20:00	Beaverton	OR	Circle	\N	4 strange lights seen	45.4871	-122.8037
206	7/20/2008 0:00:00	Beaverton	OR	Unknown	30to45min	report edit please	45.4871	-122.8037
207	7/20/2008 5:30:00	Beaverton	OR	Unknown	30to45min	low flying objects over beaverton OR.	45.4871	-122.8037
208	3/20/2008 13:35:00	Beaverton	OR	Oval	7-10 sec	While driving home for lunch last Thrusday, the heavy rain clouds, had breaks of blue sky here and there. As I approached the stop l	45.4871	-122.8037
209	8/18/2007 19:40:00	Beaverton	OR	Other	10 minutes	Two objects seen over Portland	45.4871	-122.8037
210	6/19/2007 22:40:00	Beaverton	OR	Other	5 min	two lights traveling to the south east in Beaverton	45.4871	-122.8037
211	6/19/2007 22:00:00	Beaverton	OR	Unknown	1 min. 2 secs	2 Bright lights flying in formation, or maybe ONE craft. Got them on Video. ((NUFORC Note: ISS orbiting with Space Shuttle. PD))	45.4871	-122.8037
212	5/5/2007 21:00:00	Beaverton	OR	Triangle	10 minutes	Triangle craft motionless in sky with three bright lights and one strobe seen in Beaverton, Oregon 9:00 PM May 5 2007	45.4871	-122.8037
213	4/15/2007 23:00:00	Beaverton	OR	Unknown	3-4 HOURS	WHITE BALL OF LIGHT SLOWLY MOVING IN THE SAME AREA FREQUENTLY	45.4871	-122.8037
214	3/31/2007 19:45:00	Beaverton	OR	Unknown	10 seconds	Large object with hot pink glowing light in front and turquoise blue light in back descending with no trail and disappeared at dusk.	45.4871	-122.8037
215	3/22/2007 19:00:00	Beaverton	OR	Cigar	2-3 mins	Multiple cigar shaped objects flying around each other then shooting across the sky.	45.4871	-122.8037
216	1/15/2007 14:00:00	Beaverton	OR	Changing	4 minutes	I was driving south on Murray Blvd at about 2:00pm in the afternoon. I was in a long line of traffic where Murray Blvd. Crosses over T	45.4871	-122.8037
217	9/6/2006 21:00:00	Beaverton	OR	Unknown	30 seconds	UFO looking like a star flew overhead. Only one sighted.	45.4871	-122.8037
218	8/26/2006 0:54:00	Beaverton	OR	Other	Seconds	Brilliant with varied shape, blinks out and moves to another part of the sky in one second before blinking out again.	45.4871	-122.8037
219	5/17/2006 22:30:00	Beaverton	OR	Diamond	7-10 seconds	strange dim diamond shaped light pattern traveling across the sky NW to SE about 5-10 times a jets speed.	45.4871	-122.8037
220	9/9/2005 11:35:00	Beaverton	OR	Other	5-10 sec.	Four Silver Objects	45.4871	-122.8037
221	7/12/2005 0:00:00	Beaverton	OR	Changing	45 seconds	Changing shape visited, and hovered over suburban area.	45.4871	-122.8037
222	6/30/2005 4:00:00	Beaverton	OR	Light	1 -2 min	I was observing a very bright "Star" or planet , it began moving!	45.4871	-122.8037
223	7/14/2003 15:33:00	Beaverton	OR	Oval	21 min	White-pink oval object seen & photo'd while rising up thru high cloud.	45.4871	-122.8037
224	1/28/2003 23:07:00	Beaverton	OR	Sphere	2min	saw a couple of strange air craft	45.4871	-122.8037
225	8/3/2001 9:19:00	Beaverton	OR	Circle	90 seconds	Dark circle, or Dot at about 1,000 ft. moving due South to North, at small plane speed at 09:19, with a bizzare field that shimmered...	45.4871	-122.8037
226	3/13/2001 21:30:00	Beaverton	OR	Light	5 min	3 ligkts seen floating up Hwy 26 at aprox. 9:30 PM, looked kinda orange and connected to each other!	45.4871	-122.8037
227	3/13/2001 21:15:00	Beaverton	OR	Light	ten minutes	I saw three, big yellow lights in the south that didn't move.	45.4871	-122.8037
228	3/12/2001 21:00:00	Beaverton	OR	Light	10 minutes	3 Red nocturnal "visitors" seen in Washington County Skies.	45.4871	-122.8037
229	3/10/2001 23:30:00	Beaverton	OR	Light	5 min	3 people saw 3 flickering orange lights moving slowly away from each other.	45.4871	-122.8037
230	12/4/2000 19:00:00	Beaverton	OR	Triangle	20 seconds	Triangle shaped, 3 lights, at night, gliding over the city, seemed transluscent in a way	45.4871	-122.8037
231	3/24/2000 13:35:00	Beaverton	OR	Disk	1.5 min?	Bright white discoid at high velocity seen passing behind a commercial jetliner during ascent	45.4871	-122.8037
232	1/29/2000 13:00:00	Beaverton	OR	Cylinder	15min	Traveling from Portland to Beaverton Saturday afternoon our family again spotted a laeger white object in the southwestern sky. It lef	45.4871	-122.8037
233	1/28/2000 7:30:00	Beaverton	OR	Cylinder	20 minutes	AS we left our home I spotted two large bright shapes in the southwestern sky. With outstretched arm the two shapes were lentil size. B	45.4871	-122.8037
234	9/1/1999 21:30:00	Beaverton	OR	\N	60	Heard at least 2 low flying jets.	45.4871	-122.8037
235	8/3/1999 22:00:00	Beaverton	OR	Disk	30 seconds	Object appeared in the west, moving very fast in a south easterly direction. it was a dish shaped object, did not appear to have lights	45.4871	-122.8037
236	8/1/1996 0:00:00	Beaverton	OR	Disk	90 Sec	Craft above power Lines	45.4871	-122.8037
237	11/10/1995 19:50:00	Beaverton	OR	\N	40 min.	Family returns from restaurant and notice "emerald green beam" of light going horizontally over their home. Beam ended abruptly.	45.4871	-122.8037
238	10/19/1995 19:15:00	Beaverton	OR	\N	45 sec.	Man's dog suddenly starts acting very bizarrely, threatens to bite him. He takes dog outside, witnesses bizarre light hover, leave.	45.4871	-122.8037
239	8/20/1995 10:55:00	Beaverton	OR	\N	\N	Father & daughter see strange obj. high in sky which "looked like a parachutist drifting." Obj. moved E then W, disappeared.	45.4871	-122.8037
240	8/11/1995 1:32:00	Beaverton	OR	\N	15 sec.	Woman sees large bluish-white light streaking below clouds. Suddenly turns right, disappears from sight.	45.4871	-122.8037
241	7/27/1995 13:52:00	Beaverton	OR	\N	7 min.	Woman repts. hovering light over nearby field. Hovered, changed colors, moved very slowly. Later, saw 5 lights in formation.	45.4871	-122.8037
242	1/14/1995 22:00:00	Beaverton	OR	\N	\N	Mother & daughter witness strange shafts of green light that appear to move around clouds. Second sighting.	45.4871	-122.8037
243	7/26/1989 21:00:00	Beaverton	OR	Cylinder	10-20 seconds	Large cylinder seen at low altitude during daylight in urban area.	45.4871	-122.8037
244	10/15/1981 16:00:00	Beaverton	OR	Cigar	10 sec	DAYTIME SIGHTING long, black, no features, like a pencil, no sound. no lights.	45.4871	-122.8037
245	6/22/1970 14:00:00	Beaverton	OR	Disk	10 minutes	Will never forget.	45.4871	-122.8037
246	8/15/1965 21:00:00	Beaverton	OR	Cigar	@ 5 seconds	This was when i was @6y/o, I lived at the end of a mile long dead end road in rual washington co.Oregon.Surronded by wheat fields and w	45.4871	-122.8037
247	8/1/1962 19:30:00	Beaverton	OR	Triangle	2 minutes	Daytime approach and stopped within short distance and was extremely visible.	45.4871	-122.8037
248	10/3/1999 21:44:00	Beaverton (northwest area)	OR	Fireball	approx.1 sec.	green/turquoise fireball traveling east to west with "sparklers" around perimeter. Object approx. 5" diam. to my sight.	45.4871	-122.8037
249	9/25/2012 19:32:00	Beaverton/Tigard	OR	Circle	19:32	Strange lights over beaverton/tigard	45.4871	-122.8037
250	2/26/2017 5:20:00	Bend	OR	Light	30 minutes	Two bright lights moving erratically and at high speeds.	44.0583	-121.3153
251	2/5/2017 19:00:00	Bend	OR	Formation	30 minutes	27+ lights in formation quickly moving across sky synchronized.	44.0583	-121.3153
252	12/18/2016 20:40:00	Bend	OR	Other	1 minute	Large fleet of lights flying together in unity across the sky over Bend Oregon	44.0583	-121.3153
253	12/7/2016 19:00:00	Bend	OR	Circle	19:00-20:00	The MOON changed Orbit from west to east.	44.0583	-121.3153
254	10/14/2016 17:48:00	Bend	OR	Circle	4 minutes	Saw a small white object traveling through the clouds slow and fast while.	44.0583	-121.3153
255	10/1/2016 22:00:00	Bend	OR	Light	40 minutes	Saw a flickering light that changed colors (white, red, green, blue). It stayed in the same general area, but would zig zag and dart oc	44.0583	-121.3153
256	8/13/2016 22:00:00	Bend	OR	Unknown	5 minutes	White light crosses sky, turns, then appears to hover before fading out.	44.0583	-121.3153
257	8/9/2016 22:10:00	Bend	OR	Light	60 seconds	Bright white orb.	44.0583	-121.3153
258	1/16/2016 21:00:00	Bend	OR	Chevron	5 minutes	We were driving East on Cooley Road and saw an extremely bright white light in the distance. This light flew parallel of us until we tu	44.0583	-121.3153
259	12/24/2015 21:32:00	Bend	OR	Circle	4-5 minutes	5 orange glowing lights seen by 2 witnesses, heading south to north, over Bend, Oregon, on Christmas Eve 2015.	44.0583	-121.3153
260	11/22/2015 22:15:00	Bend	OR	Fireball	5 minutes	Fireball flies over Bend, Oregon.	44.0583	-121.3153
261	10/29/2015 20:13:00	Bend	OR	Fireball	5 minutes	I walked outside tonight when my boyfriend called for me to come see a strange light from the perspective of our front driveway.	44.0583	-121.3153
262	10/14/2015 13:30:00	Bend	OR	Triangle	15	Spinning Triangle appearing to float across the sky.	44.0583	-121.3153
263	10/9/2015 20:00:00	Bend	OR	Oval	1 hour	Oval shaped crafted with three colored lights.	44.0583	-121.3153
264	8/3/2015 23:00:00	Bend	OR	Fireball	10 seconds	On my right hand side a bright green fireball soared through the sky. ((anonymous report))	44.0583	-121.3153
265	7/31/2015 21:30:00	Bend	OR	Light	1 minute	I witnessed a object with a bright light come from the south and moved East disappearing. It had a bright white light that appeared bri	44.0583	-121.3153
266	3/31/2015 21:40:00	Bend	OR	Disk	5	Very bright white object moving very slow from east to west over Bend. Eventually dropped out of sight wasn't seen again.	44.0583	-121.3153
267	1/25/2015 0:30:00	Bend	OR	Teardrop	20 second	Slow moving beautiful green light heading downward, then shot off couldn't see it anywhere.	44.0583	-121.3153
268	1/16/2015 20:38:00	Bend	OR	Sphere	2 minutes	Slow moving reddish sphere. Flew very slowly and level. Suddenly vanished and was not seen again.	44.0583	-121.3153
269	1/4/2015 19:30:00	Bend	OR	Light	30 seconds	A small, flame-colored light flew over Pilot Butte in Bend.	44.0583	-121.3153
270	7/26/2014 22:10:00	Bend	OR	Circle	2 minutes	Orange lights in the sky.	44.0583	-121.3153
271	5/31/2014 22:15:00	Bend	OR	Light	8 minutes	Four orange lights moving southeast and dissapeared into the sky.	44.0583	-121.3153
272	5/14/2014 20:00:00	Bend	OR	Disk	20 seconds	Reflective, oval, disk-shaped object with a haze around it, appearing and disappearing, travelling at an astonishing rate of speed.	44.0583	-121.3153
273	4/19/2014 22:50:00	Bend	OR	Light	45 minutes	Bright light traveling in circles around Venus.	44.0583	-121.3153
274	2/21/2014 19:10:00	Bend	OR	Triangle	15 minutes	Triangular shaped object with moving lights moving in side to side motion before disappearing.	44.0583	-121.3153
275	11/24/2013 23:00:00	Bend	OR	Circle	5 minutes	We saw 6 very bright orange lights low in the sky. Much larger and brighter then stars.	44.0583	-121.3153
276	11/24/2013 22:00:00	Bend	OR	Light	7-10 minutes	Eight bright red lights in the sky.	44.0583	-121.3153
277	11/24/2013 22:00:00	Bend	OR	Light	15 minutes	Nine circular bright orange and yellow objects moving slowly then rising higher then vanished.	44.0583	-121.3153
278	12/31/2012 22:30:00	Bend	OR	Light	2-3 minutes	Two bright red/orange star-like lights that appeared stationary, possibly moving upward as they disappeared	44.0583	-121.3153
279	12/31/2012	Bend	OR	Oval	2-3 minutes	www.youtube.com/watch?v=zE3H1q8yo9k I reported seeing bright red/orange lights on December 31, 2012 in Bend, OR. I later found this u	44.0583	-121.3153
280	12/30/2012 0:00:00	Bend	OR	Circle	4 minutes	Two objects flying from the north headed south then disappeared	44.0583	-121.3153
281	12/7/2012 12:30:00	Bend	OR	Formation	1-2 minutes	Grouping of 3 objects each with large, bright red-orange lights in Bend, OR	44.0583	-121.3153
282	6/16/2012 22:00:00	Bend	OR	Circle	7 minutes	Unusual Orange Orbs spotted over Bend, OR	44.0583	-121.3153
283	6/12/2012 22:00:00	Bend	OR	Disk	1 hour	5 people witness ufo siteing. ((NUFORC Note: Possibly a sighting of Vega in the northwest sky. PD))	44.0583	-121.3153
284	1/5/2012 18:11:00	Bend	OR	Light	10 seconds	Green light with blue glare moving steadily from south west to west.	44.0583	-121.3153
285	12/21/2011 18:00:00	Bend	OR	Changing	15-20 minutes	Like lights over phoenix, az	44.0583	-121.3153
286	9/25/2011 21:00:00	Bend	OR	Unknown	unknown	Pulsing, rotating red and green lights with flashes of white light in NE sky every night. ((NUFORC Note: Sirius?? PD))	44.0583	-121.3153
287	8/11/2011 10:00:00	Bend	OR	Light	3-4 Seconds	Very bright point of blue-white light moving downward in the vicinity of the Big Dipper constellation.	44.0583	-121.3153
288	12/16/2010 16:00:00	Bend	OR	Light	30 seconds	Lighted circular object over Bend, Oregon.	44.0583	-121.3153
289	9/10/2010 22:00:00	Bend	OR	Triangle	5 minutes	Bend Oregon has sighting of UFO on Friday September 10th at 10 pm.	44.0583	-121.3153
290	5/2/2010 16:00:00	Bend	OR	Disk	2 minutes	Silver disk over Oregon	44.0583	-121.3153
291	10/13/2009 7:03:00	Bend	OR	Light	3 min	viewed for 3 minutes a pulsating circular object which moved very slowly above some trees	44.0583	-121.3153
292	5/17/2009 13:00:00	Bend	OR	\N	30 sec	A large white vapor-like airplane was right on the tail of a small private plane...when it made a sharp right turn and dissapeared	44.0583	-121.3153
293	8/20/2006 2:00:00	Bend	OR	Oval	45 min	I came home from work and a neighbor called me over to view what they had been watching. I said "it's a bright star" My Neighbor said	44.0583	-121.3153
294	7/13/2005 21:45:00	Bend	OR	Light	15 minutes	Extremely bright light over Mt. Bachelor. ((NUFORC Note: Possibly Venus?? PD))	44.0583	-121.3153
295	12/27/2004 1:30:00	Bend	OR	Triangle	3 and one half minutes	I am an employee of the Oregon Dept. of Transportation. I possess a Bachelor of Science degree with minors in Speech Communication and	44.0583	-121.3153
296	4/25/2004 21:35:00	Bend	OR	Formation	10 minutes	String of star-like lights drift through sky in straight line, with equal distance apart from one another.	44.0583	-121.3153
297	3/17/2004 14:00:00	Bend	OR	Circle	A few seconds	A round metallic object seen momentarily in the blue sky.	44.0583	-121.3153
298	2/5/2004 13:59:00	Bend	OR	Unknown	not know	here is the story behind the picture..I live in Oregon and as always for the last few months it has been cold and overcast if not snowi	44.0583	-121.3153
299	7/20/2003 7:00:00	Bend	OR	Other	\N	A strange craft the best i can subscribe it was a thin rectangle with a pair of wings they went back from the front in a 60 degree angl	44.0583	-121.3153
300	1/28/2003 2:00:00	Bend	OR	Disk	15 minutes	A single, stationary fairly large saucer/disc with rotating lights that changed colors from red to green, blue and white that hovered f	44.0583	-121.3153
301	7/7/2002 1:00:00	Bend	OR	Triangle	2 hours	Triangle object and accompanying lights descend rapidly from sky	44.0583	-121.3153
302	7/7/2002 0:15:00	Bend	OR	Triangle	1 1/2 hour	Oregon UFO Review Case: Triangle craft decends to ground level.	44.0583	-121.3153
303	5/10/2002 3:00:00	Bend	OR	Light	1 minute	I did'nt see it at first.Then it came out from behind a tree I was a huge ball of light.	44.0583	-121.3153
304	11/11/2000 17:30:00	Bend	OR	Circle	2-3minutes	Round silvery object above city, possibly car size mylar balloon,seen from a few miles away slowly ascended till out of sight.	44.0583	-121.3153
305	11/11/2000 17:05:00	Bend	OR	Light	25 minutes	Red pulsating orb over the center of Bend, Oregon. Multiple witness reports to 911.	44.0583	-121.3153
306	11/3/2000 16:50:00	Bend	OR	Circle	5 minutes	Clear blue sky. Object was in the air hovering not moving. Round with a red steady light on the bottom of the craft. Black in color.	44.0583	-121.3153
307	11/12/1998 2:00:00	Bend	OR	Disk	5-10 minutes	Observed a disk-shaped object completing unbelievable maneuvers to the SE above the city of Bend, Oregon. Object hovered, did split sec	44.0583	-121.3153
308	11/6/1998 17:55:00	Bend	OR	Formation	15-20 seconds	5 objects in straight line following one another. 3 objects in front as bright as surrounding stars; 4th as bright as vega; 5th as brig	44.0583	-121.3153
309	1/17/1995 4:30:00	Bend	OR	\N	73 min.	Woman observes three strange objects hovering in morning sky for 73 minutes. Very bright lights. Good rept.	44.0583	-121.3153
310	5/23/1994 0:45:00	Bend	OR	Disk	3.5 hours	it came up to us as fast as it left us and shined us hard with white/blueish lights. lots of energy felt...and wind	44.0583	-121.3153
311	8/15/1980 20:00:00	Bend	OR	Unknown	10 minutes	Bright round object seen at night, shot upward at a 45% angle, then got dimmer and dimmer until it faded away.	44.0583	-121.3153
312	2/18/1980 18:30:00	Bend	OR	Oval	Unknown	Oval (football shaped) with gridwork.	44.0583	-121.3153
313	11/12/2015 22:00:00	Bend/Burns (between; on Hwy. 20)	OR	\N	5 seconds	Was driving east on hwy 20 around 22:30,when a bright flash of light appeared in the eastern sky,so bright it was thought it was day fo	44.0583	-121.3153
314	10/29/2011 19:07:00	Bend/Burns (between)	OR	Changing	10 seconds	Very bright orange sphere turns to 2 spheres and dissapears	44.0583	-121.3153
315	9/20/2003 22:00:00	Blachly	OR	Light	\N	a girl sees a formation of 2 lights i the sky forming in to one "saucer"	44.1948	-123.5350
316	10/15/1996 20:30:00	Blaine	OR	Sphere	unknown	2adults - collaged MA degreed - viewed sphere silver/white 90% upper red/orange/blue 10% lower approx. 3mi. away size:approx 400meters	45.2773	-123.7046
317	9/4/1998 20:45:00	Blue River	OR	Cylinder	3-4 minutes	While outside watching the skies I observed what at first I believed to have been a satellite travelling in a northwestern direction. I	44.1539	-122.3387
318	7/10/1995 21:50:00	Bonanza	OR	\N	60 sec.	Woman witnesses four very bright yellow lights appear, then disappear sequentially. (Note: Was military flares over local airport.)	42.1988	-121.4061
319	4/11/2014 23:00:00	Boring	OR	Cylinder	1 hour	Spinning, tubular UFO flies and flashes acrross sky while several others in sight in Boring.	45.4314	-122.3735
320	1/27/2012 19:20:00	Boring	OR	Oval	5 seconds	Orange ball, moving vey fast West to east	45.4314	-122.3735
321	2/19/2008 3:24:00	Boring	OR	Fireball	3 seconds	Boring, Oregon sighted fireball heading south	45.4314	-122.3735
322	9/17/1999 20:11:00	Boring	OR	Circle	about 3 minutes	A total of three crafts were seen, one of them branching off the other.	45.4314	-122.3735
323	12/3/1995 21:00:00	Boring	OR	\N	15 min.	Woman, son, & friend witness multiple, rapid red flashes in clouds in distance, then overhead. No sound. Other repts. to 911.	45.4314	-122.3735
324	7/26/1994	Boring	OR	\N	\N	OR Air Nat. Guard Publ. Affairs Officer relays 2nd past sighting rept.: Citizen repts. UFO. (Facts not provided.)	45.4314	-122.3735
325	9/17/1999 20:11:00	Boring, Sandy area	OR	Circle	3 minutes	3 BRIGHT ORANGE CRAFT CHASING EACH OTHER OVER THE GRESHAM-BORING, OREGON AREA.	45.4314	-122.3735
326	7/10/2016 23:25:00	Brightwood	OR	Fireball	5 minutes	Shimmering orange fireball seen near Brightwood, Oregon.	45.3762	-122.0167
327	7/27/2005 21:30:00	Brightwood	OR	Circle	2mins	Sandy River lights in the sky make no sense	45.3762	-122.0167
328	4/7/2016 22:30:00	Brookings	OR	Flash	10-12 minutes	Two flashing lights in the night sky moving very slowly.	42.0526	-124.2840
329	3/31/2014 19:30:00	Brookings	OR	Light	8-10 seconds	Fast moving light orb above clouds, Brookings, Oregon at sunset.	42.0526	-124.2840
330	12/30/2013 18:00:00	Brookings	OR	Other	10 minutes	Orange balls.	42.0526	-124.2840
331	11/25/2013 22:00:00	Brookings	OR	Cigar	west coast	Cigar shaped craft over southern Oregon coast.	42.0526	-124.2840
332	1/17/2012 5:36:00	Brookings	OR	Light	5 minutes	Glowing Orange light seen in Sky over Brookings Oregon	42.0526	-124.2840
333	10/19/2010 20:30:00	Brookings	OR	Circle	30 minutes	Bright red lights seen in Curry County.	42.0526	-124.2840
334	10/20/2009 22:40:00	Brookings	OR	Formation	5 minutes	Very solid dark object in the sky. I was photgraphing another object at the time. I think it was chasing the dark one.	42.0526	-124.2840
335	6/30/2009 3:00:00	Brookings	OR	Changing	3 minutes	I have something no one else in the world has.	42.0526	-124.2840
336	4/22/2009 5:38:00	Brookings	OR	Light	2-3 minutes	Wendsday,22,09 5:38 AM, Ufo	42.0526	-124.2840
337	10/21/2008 8:00:00	Brookings	OR	Sphere	15 miniutes	Multi-Colored Ligth	42.0526	-124.2840
338	2/14/2008 20:00:00	Brookings	OR	Other	hour and a half	My Saint Valentine Day Singthing 2008	42.0526	-124.2840
339	9/1/2007 22:00:00	Brookings	OR	Light	1 hour	On Sept. 1, 2007, bright and oddly-colored light, moving really fast!	42.0526	-124.2840
340	10/21/2006 19:30:00	Brookings	OR	Unknown	a few minutes	I saw a steady white light traveling west to east over Brookings, OR. It was bright and traveling fast.	42.0526	-124.2840
341	2/22/2006 1:45:00	Brookings	OR	Light	10-15 seconds	Satelite object with some strange movement. Satelites don' t do this. do they??	42.0526	-124.2840
342	6/28/2005 22:59:00	Brookings	OR	Diamond	2 min	A very bright, white-blue diamond shaped object crossed the sky from west to east,...	42.0526	-124.2840
343	7/4/2004 22:00:00	Brookings	OR	Circle	10 minutes	during fireworks observed round bright, white light circling at high alltitude, no running lights	42.0526	-124.2840
344	10/9/2003 20:10:00	Brookings Harbor	OR	Light	3 minutes	5 lights moving in different directions over ocean	42.0526	-124.2840
345	7/15/2016 22:30:00	Brooks	OR	Triangle	3-5 minutes	Bright orb shaped lighth in distaces got brighter, then moved over freeway. Light went off triangle shaped craft w 3 glowing ports.	45.0482	-122.9584
346	7/5/2010 9:00:00	Brooks	OR	Sphere	5 min	3 chrome colored spheres hovering in one position over a field. Approx 100 feet high.	45.0482	-122.9584
347	11/4/2004 18:25:00	Brooks	OR	Circle	?	Large bright light kept pace with Boeing semi-truck on I'5 at Brooks Oregon then shot across sky, stopped then hovered.	45.0482	-122.9584
434	2/5/2003 17:55:00	Clackamas	OR	\N	\N	Man reports witnessing four very bright white lights, appearing in a "T" formation, to the south.	45.4076	-122.5704
348	11/26/2002 6:10:00	Brooks	OR	Fireball	30 seconds	I was at the pilot truck stop in brooks oregon looking north when at 6:10 all of a sudden from east to west i saw 2 fire balls. it was	45.0482	-122.9584
349	10/24/2013 19:45:00	Brothers	OR	Light	45 minutes	I saw two groups of lights that appeared to be separate craft.	43.8136	-120.6027
350	3/29/2015 21:45:00	Brownsville	OR	Changing	30 minutes	Big, bright, orangish, hovering light that blinked colors.	44.3935	-122.9848
351	1/15/2015 23:00:00	Brownsville	OR	Unknown	?	Visited by three grey beings in my bedroom.	44.3935	-122.9848
352	10/19/2013 18:00:00	Brownsville	OR	Disk	4-6 minutes	19-Oct-13 Brownsville Oregon on Kirk Ave. in a large clearcut.	44.3935	-122.9848
353	11/16/2000 23:08:00	Brownsville	OR	Circle	3 to 4 seconds	I saw a small amber light traveling from east to west	44.3935	-122.9848
354	11/29/2015 19:15:00	Brownsville (on I-5 highway)	OR	Light	10 minutes	Saw a bright unidentified object in the sky while driving.	44.3935	-122.9848
355	7/5/2029 14:00:00	Buchanan (or Burns)	OR	Disk	1 minute	we were traveling east of burns,clmbing up thru a cut in the rim rocks when this object very slowely flew over the top of us, some 50 f	43.6424	-118.6285
356	5/15/2012 22:00:00	Burns	OR	Light	1 hour	Three orange lights perform amazing display near Burns, Oregon.	43.5863	-119.0541
357	4/7/2010 20:30:00	Burns	OR	Disk	secounts	April 2nd 2010 We were traveling in the mountains It was a very bright sunny day I had been taking photos I captured this metallic ob	43.5863	-119.0541
358	5/1/1996 1:30:00	Burns (100 miles south of; no city)	OR	Triangle	15 minutes	Bright lights at night in the desert that hovered over the road, then sped away.	43.5863	-119.0541
359	8/12/2006 6:15:00	Burns Junction	OR	Other	2-3 sec	yellow strobe chase family along road in Oregon	43.5863	-119.0541
360	9/10/2007 20:30:00	Burns Junction (100 miles south of)	OR	Chevron	8 minutes	5 Chevron shaped amber/orange lights (VERY LARGE) all in sink in a horizontal V shape in S.E. Oregon.	43.5863	-119.0541
361	6/30/2007 22:00:00	Burns/Chicamoniny Lake	OR	Flash	instant	&#65279; We were laying back in our lawn chairs, on a hot July. summer evening at Chickahominy lake,( a desert lake 30 miles sout	43.5863	-119.0541
362	4/29/2000 23:11:00	Butte Falls	OR	Light	20 seconds	Slow moving bright light becomes extremely bright and ascends straight up and out of sight very quickly.	42.5432	-122.5656
363	3/29/2017 19:00:00	Canby	OR	Circle	5 minutes	Large white ball of light moving silently over Clackamas County, OR.	45.2623	-122.6921
364	9/29/2016 9:00:00	Canby	OR	Rectangle	<1 second	A rectangular object of light, very small and fast captured on video.	45.2623	-122.6921
365	9/15/2016 22:05:00	Canby	OR	Light	2-3 minutes	2 amber lights over field outside of Canby, Oregon.	45.2623	-122.6921
366	7/31/2016 14:30:00	Canby	OR	Disk	120 minutes	We saw a round shape disk that looked like a parachute. Stayed in the same sky about 1-2 hours	45.2623	-122.6921
367	2/27/2015 18:30:00	Canby	OR	Circle	~1 minute	Glowing, pulsing orb seen on a rural road in early evening. Alternated colors. Rose into the air and flew away, leaving a trail.	45.2623	-122.6921
368	9/14/2013 21:23:00	Canby	OR	Sphere	5 minutes	Three amber orbs or spheres.	45.2623	-122.6921
369	9/13/2013 23:39:00	Canby	OR	\N	4 minutes	3 bright white flashes of light that lit up the entire sky.	45.2623	-122.6921
370	12/13/2011 16:00:00	Canby	OR	Teardrop	Through out the nights	Stars	45.2623	-122.6921
371	11/29/2011 9:30:00	Canby	OR	Flash	all night	In the east of skys	45.2623	-122.6921
372	9/21/2011 20:15:00	Canby	OR	Fireball	brief	large green fireball plummenting out of the sky	45.2623	-122.6921
373	11/3/2010 21:00:00	Canby	OR	Flash	1 sec	flash of light	45.2623	-122.6921
374	1/19/2009	Canby	OR	Other	3 min	two balls of red light with a yellowish center,one red ball on top of another,with the yellow inbetween.	45.2623	-122.6921
375	12/5/2008 7:25:00	Canby	OR	Sphere	About 3 minutes	Silver/chrome round object paralleled my bus for about three minutes.	45.2623	-122.6921
376	2/13/2002 21:12:00	Canby	OR	Light	3 min.	Two white lights traveling north at a highe rate of speed, hovering =, then continuing north	45.2623	-122.6921
377	10/11/1999 9:10:00	Canby	OR	Light	10 seconds	i saw bright light come out of clouds, 2 aircraft came from behind and appeared to shot at the light, light went back into the clouds	45.2623	-122.6921
378	9/27/1999 19:57:00	Canby	OR	Formation	3 minutes	Triangular formation, pinpoints of white light, sighted in the western sky.	45.2623	-122.6921
379	9/17/1999 21:05:00	Canby	OR	Circle	5 min.	saw two bright objects aprox one eigth size of moon,in the southwest of the sky.there was a red beam joining the two objects.	45.2623	-122.6921
380	8/11/1998	Canby	OR	Unknown	unknown	About 4 weeks apart, my husband and I discovered round marks on our bodies after waking. No known cause is discernable. His has disappe	45.2623	-122.6921
381	7/13/1994 12:36:00	Canby	OR	\N	\N	OR Air Nat. Guard Publ. Affairs Officer relays past sighting: Citizen reports sighting obj. "size of football" in sky.	45.2623	-122.6921
382	10/2/2015 23:25:00	Cannon Beach	OR	Sphere	2 minutes	An orange sphere of intense and steady light moving steadily across a black night sky; 56 second phone video.	45.8918	-123.9615
383	8/24/2014 21:45:00	Cannon Beach	OR	Circle	25 seconds	A large, extremely bright orange, glowing orb travelled north to south, paralleling the Oregon coastline.	45.8918	-123.9615
384	4/25/2014 22:00:00	Cannon Beach	OR	Light	5 minutes	2 orange orbs and 3 white disks objects was seen by 2 witnesses.	45.8918	-123.9615
385	8/13/2013 23:00:00	Cannon Beach	OR	Circle	7 minutes	Dim white light went to a super white pulsed 3 blue luminated rings . after 30 seconds the lights retracted back tothe white light then	45.8918	-123.9615
386	10/29/2011 20:00:00	Cannon Beach	OR	Unknown	25 minutes	While coming out of Mo├éΓÇÖs Restaurant off of Hwy 101 at Cannon Beach, my wife and I decided to walk on the beach near haystack rock as	45.8918	-123.9615
387	9/16/2006 13:30:00	Cannon Beach	OR	Sphere	\N	Unknown Object Over Cannon Beach	45.8918	-123.9615
388	2/10/1995 20:30:00	Cannon Beach	OR	\N	10 sec.	Man in motel room sees "flash of red light in eyes." Sees bright light in room. Sees bright "star" below overcast to south.	45.8918	-123.9615
389	10/6/2013 21:56:00	Canyonville	OR	Unknown	1 hour	3 lighted spacecrafts that formed Triangular shape & ascended straight up into the sky, moving at unbelievable speed.	42.9273	-123.2812
390	10/21/2005 23:05:00	Canyonville	OR	\N	4 seconds	1 Large lime green meteor like object no meteor tail. Fell at an angle from northwest to southeast. Much larger than other meteors I ha	42.9273	-123.2812
391	11/9/1996 2:00:00	Canyonville	OR	Disk	5 minutes	Disk-shaped craft spotted hovering in the sky	42.9273	-123.2812
392	9/17/2005 20:00:00	Cape Lookout/Tillamook	OR	Formation	7 min	One light above horizon, splits into 5 orb-like lights that brighten and then fade out left to right	45.3395	-123.9929
393	9/22/2012 22:45:00	Cape Meares	OR	Light	2 minutes	Bright orange light, star shaped, hovering high over town.	45.4898	-123.9587
394	11/16/2016 19:00:00	Carlton	OR	Fireball	4 seconds	Brilliant green fireball arching over sky.	45.2943	-123.1765
395	4/18/2014 21:14:00	Carlton	OR	Light	1 minute	Bright yellowish gold precise upward arking upward movement silent	45.2943	-123.1765
396	12/13/2012 15:50:00	Carlton	OR	Triangle	1 minute	Triangle shaped craft with no noise. Very low.	45.2943	-123.1765
397	10/11/2007 10:10:00	Carlton	OR	Cylinder	15min	it was not anything thath we have	45.2943	-123.1765
398	7/12/2007 16:00:00	Carlton	OR	Cylinder	one minute	A four foot round cigar shaped object made of branches hanging in the sky by itself. Totally motionless.	45.2943	-123.1765
399	2/19/2013 21:00:00	Cascade Locks	OR	Triangle	10 minutes	Five Red Triangle Ufo's over the Columbia River.	45.6698	-121.8906
400	5/16/2009 20:00:00	Cascade Locks	OR	Light	30 SEC	bright light bolting across the evening sky	45.6698	-121.8906
401	7/15/1976	Cave Junction	OR	Triangle	12 hours	Real man in black	42.1629	-123.6481
402	6/25/1980 10:00:00	Cave Junction (outside of)	OR	Unknown	5 minutes	Men In Black Encounter in Oregon	42.1629	-123.6481
403	8/22/1999 21:30:00	Cave Juntion	OR	Cigar	:30	A large object on a hill 2miles away that began to rotate and fly disapperared.	42.1629	-123.6481
404	4/28/2004 20:00:00	Central Paint	OR	Light	1 minute	The light turn sharply south and climbed at 10:00 direction and disappeared	42.3760	-122.9164
405	9/13/2015 21:00:00	Central Point	OR	Flash	few seconds	A bright streak (beam) of bright blue/green light in the night sky going from sky downward .	42.3760	-122.9164
406	7/7/2015 23:00:00	Central Point	OR	Sphere	10 minutes	Extremely bright orbs in Oregon seen hovering and one followed descending plane.	42.3760	-122.9164
407	7/2/2011 4:30:00	Central Point	OR	Flash	\N	3-4 crafts that were flighing very fast it almost looked like lightning in the way that they were moving.	42.3760	-122.9164
408	6/28/1998 23:00:00	Central Point	OR	Light	05 SECONDS	late June 1998 two bright "stars" briefly chase each other over Southern Oregon	42.3760	-122.9164
409	9/12/2014 6:00:00	Charleston	OR	Fireball	~1 minute	Large fireball seen coming south of Charleston while we were headed out fishing. Was bright orange with glowing tail then appeared to b	43.3401	-124.3301
410	2/9/1996 19:30:00	Charleston	OR	\N	2 min.	Man sees bizarre formation of craft fly over Charleston Harbor, all simultaneously turn to SE. 2 types of objects. Loud noise.	43.3401	-124.3301
411	9/11/2015 23:00:00	Cheshire	OR	Other	4 seconds	Large glowing green orb that was still till I seen it then quickly changed direction eastern then again toward earth disappeared.	44.1896	-123.2857
412	11/18/2008 17:35:00	Chiloquin	OR	Oval	3-4 seconds	Oval shaped object streaks across sky in Southern Oregon.	42.5776	-121.8661
413	1/14/2007 19:00:00	Chiloquin	OR	Circle	10 minutes	RED, BLUE, GREEN ROTATING LIGHTS IN NIGHT SKY. ((NUFORC Note: Sirius sighting. PD))	42.5776	-121.8661
414	12/6/2002 20:30:00	Chiloquin	OR	Sphere	45minutes	6 rotating,flashing spheres of colored light,in night sky above Chiloquin Ridge, Oregon	42.5776	-121.8661
415	3/1/2001 2:00:00	Chiloquin	OR	Triangle	2min,4min	Three UFO's seen flying over the Klamath sky.	42.5776	-121.8661
416	11/17/2000 19:30:00	Chiloquin	OR	Other	2 minutes	Large boomerang shaped aircraft	42.5776	-121.8661
417	9/15/1967 19:30:00	Chiloquin	OR	Disk	2 minutes	It was steel gray, simigloss exterior.It was a disk. the sun was behind the horizon. It was dusk. the craft was hovering over the ri	42.5776	-121.8661
418	5/20/2009 9:25:00	Christmas Valley	OR	Oval	30 min	amber color really fast one appeared really close so i pulled over and got out to hear it and it took off and they were gone in a blink	43.2378	-120.6709
419	1/11/2009 20:30:00	Christmas Valley	OR	Light	15 minutes	Objects lighting up, burning out, and leaving tracers in Christmas Valley, OR	43.2378	-120.6709
420	6/7/2004 23:00:00	Christmas Valley	OR	Other	35-40 minutes	Bright lights changing color and pattern above skyline, like I've never seen before.	43.2378	-120.6709
421	5/5/2002 15:30:00	Christmas Valley	OR	\N	\N	Oregon UFO Review Case: Daytime cattle mutilation...same animal hit twice.	43.2378	-120.6709
422	11/20/1995 22:00:00	Christmas Valley	OR	Light	5 minutes	Three sitings, all in Oregon, at night, no visible moon	43.2378	-120.6709
423	10/25/1977 19:30:00	Christmas Valley	OR	Formation	5 min	Strange incident in 1977	43.2378	-120.6709
424	6/30/1969 12:00:00	Christmas Valley	OR	Disk	5 min.	We saw three silent silver colored disks zoom in from different directions, instantly stop, hover , and then zip off.	43.2378	-120.6709
425	6/30/1968 13:00:00	Christmas Valley	OR	Disk	3-4 min.	Step-father and his crew saw a silent, silver colored disk following (above) the power lines.	43.2378	-120.6709
426	7/28/2016 2:50:00	Clackamas	OR	Fireball	4-5 seconds	Huge green low flying fireball. ((anonymous report)) ((NUFORC Note: Possible meteor?? PD))	45.4076	-122.5704
427	2/9/2016 7:10:00	Clackamas	OR	Diamond	15 minutes	Bright golden square object has a bright golden light move away from the &quot;parent&quot; object.	45.4076	-122.5704
428	8/17/2014 21:10:00	Clackamas	OR	Triangle	30 minutes	Triangle, adjusting size.	45.4076	-122.5704
429	8/3/2014 2:30:00	Clackamas	OR	Flash	A few seconds	Two Bright Flashes Lit Up A Clear Night Sky And The Interior Of My House.	45.4076	-122.5704
430	1/23/2014 22:00:00	Clackamas	OR	Light	5 minutes	Small lights in the sky over Clackamas, Oregon.	45.4076	-122.5704
431	10/10/2010 18:30:00	Clackamas	OR	Triangle	1-2minutes	triangular ufo sighting in oregon 10-10-10	45.4076	-122.5704
432	10/11/2007 16:00:00	Clackamas	OR	Circle	15 minutes	Silver circular or sphere-like object flying parallel to I-205 in the Gladstone/Clackamas area.	45.4076	-122.5704
433	1/21/2004 20:26:00	Clackamas	OR	Cylinder	1-2 min.	7-9 Amber colored, zig-zag patern. I CANNOT be the only one that saw these! I took pix too.	45.4076	-122.5704
435	2/22/2002 0:30:00	Clackamas	OR	Other	4 seconds	Had the most intense color white!	45.4076	-122.5704
436	2/6/2001 20:42:00	Clackamas	OR	\N	7 sec	Shooting Star, Meteor, or ?	45.4076	-122.5704
437	10/3/1999 21:40:00	Clackamas	OR	Fireball	two seconds	From S to N SW of here at approx 20 degrees (above some old growth firs) two quick strobe like flashes followed by a linear green strea	45.4076	-122.5704
438	11/1/1988 21:00:00	Clackamas	OR	Cylinder	45 seconds	I know "ancient history" is frowned upon,but here goes.I've been around aircraft(experimental or otherwise) all my life,and nothing com	45.4076	-122.5704
439	7/15/1979 7:30:00	Clackamas	OR	Light	2 seconds	Lights in the fog	45.4076	-122.5704
440	8/9/2014 22:00:00	Clackamas (south of)	OR	Oval	>1 hour	I seen a star that looked bigger/closer and just seemed different. Different enough to bring two other people with me on the balcony to	45.4076	-122.5704
441	1/28/2015	Clatskanie	OR	Circle	unknown	Large light ball with orbs attached to it.	46.1012	-123.2068
442	8/3/2008 1:30:00	Clatskanie	OR	Circle	3-5 sec	driving home from work seen bright green ball come from sky rather slowly, and dissapear about 50-100 feet above a large grassy field.	46.1012	-123.2068
443	3/12/2005 19:45:00	Clatskanie	OR	Unknown	6 sec.	Four of us just witnessed at 7:45 pm pst a single bright jagged green streak low to the S- SW sky then disappear behind trees and then	46.1012	-123.2068
444	7/4/2003 23:00:00	Clear Lake	OR	Light	\N	light in sky that bobed and had big spotlight threw trees,made no noise	44.3687	-121.9944
445	8/31/2007 22:30:00	Cloverdale	OR	Other	5 seconds	Red ember-like object on barn roof. ((NUFORC Note: Possible meteor. PD))	45.2055	-123.8879
446	10/18/2011 21:30:00	Coburg	OR	Triangle	30 min	Hello we were watching the sky at some wierd flashing object around 9:30, it was flshing red and green then turning to solid colors th	44.1371	-123.0665
447	3/12/2017 23:00:00	Colton	OR	Other	5 minutes	While photographing the moon last night I captured unexplained light objects that moved in each frame but could not see without camera	45.1721	-122.4375
448	9/4/2001 19:30:00	Columbia City	OR	Light	1 minute	a light form ripping around the sky	45.8901	-122.8070
449	2/14/2015 18:47:00	Coos Bay	OR	Light	4 minutes	Yellowish Bright light coming off Pacific ocean in a Northeast direction , not a aircraft taking off or landing at local airport.	43.3665	-124.2179
450	7/31/2014 22:30:00	Coos Bay	OR	Circle	30 seconds	Strange circular lights in coos bay 7/31/14.	43.3665	-124.2179
451	7/31/2014 22:00:00	Coos Bay	OR	Circle	20-30 seconds	Orange circular lights in Coos Bay Area.	43.3665	-124.2179
452	7/31/2014 22:00:00	Coos Bay	OR	Circle	10 minutes	My son and I arrive home at 10pm as we were parking at about 45 degrees up to the north we witnessed a yellow, circular object.	43.3665	-124.2179
453	7/4/2014 22:05:00	Coos Bay	OR	Light	5-10 seconds	Bright orange point of light travelling very fast across sky .	43.3665	-124.2179
454	6/29/2014 11:51:00	Coos Bay	OR	Circle	3 minutes	I watched a UFO appear flashing as it crossed the sky.	43.3665	-124.2179
455	11/3/2013 19:00:00	Coos Bay	OR	Light	Ongoing (Possibly)	Star like object moving sporadically in northwest sky night after night. ((NUFORC Note: Venus? PD))	43.3665	-124.2179
456	6/1/2013 1:35:00	Coos Bay	OR	Circle	3 minutes	6 lights red/green/yellow/blue floating in the sky.	43.3665	-124.2179
457	5/4/2013 23:20:00	Coos Bay	OR	Unknown	2 minutes	Two lights moving north appeared to be one object, confirmed was not ISS, about 1/2 degree apart with flare or brightening of one light	43.3665	-124.2179
458	8/16/2011 17:28:00	Coos Bay	OR	Light	7 minutes	I saw a steady ball of light with no sound about 20,000 feet fly by in a northesterly direction from coos bay	43.3665	-124.2179
459	11/2/2010 19:45:00	Coos Bay	OR	Triangle	5 secs	Black triangle cruised above treetops right over my daughter and me!	43.3665	-124.2179
460	11/2/2009 20:30:00	Coos Bay	OR	Circle	30-45 seconds	Glowing green light near street intersection spotted, then shoots straight up.	43.3665	-124.2179
461	9/20/2007 20:00:00	Coos Bay	OR	Cigar	10 -13 minutes	The cigar shaped object, possibly hundreds of feet long, flew slowly along the Pacific coastline.	43.3665	-124.2179
462	1/21/2004 18:00:00	Coos Bay	OR	Disk	11/2 hour	Three lighted objects over ocean ,big object blinked and manuvered: Other 2 stationary.	43.3665	-124.2179
463	11/24/2003 18:10:00	Coos Bay	OR	Oval	5 to 6 mins	very bright light, slowing and speeding up, white light w/red and yellow lights around main light	43.3665	-124.2179
464	4/27/2000 18:04:00	Coos Bay	OR	Light	3 sec.+20 sec.	moving light,very bright not like meteor,but moving like one. left fine contrail.	43.3665	-124.2179
465	9/1/1999 21:25:00	Coos Bay	OR	Other	15-30 seconds	large fireball, faded to long cone shaped object moving from west to east about 15 to 20 degrees up from horizon	43.3665	-124.2179
466	4/24/1997 21:30:00	Coos Bay	OR	Sphere	2 min.	Woman looking at stars in E sky sees a "dark tan circle of flames" moving to the N. 10 min. later, same obj. going S; closer, larger.	43.3665	-124.2179
467	5/7/1996 21:45:00	Coos Bay	OR	\N	5 min.	Woman hears dogs barking. Sees an "immense, creamy white light," blinking irregularly drop into nearby valley. Light continues.	43.3665	-124.2179
468	6/1/1987 1:00:00	Coos Bay	OR	Disk	1 hour	Dome type object went straight up with a little round object along side and below.Object kept moving up and down side to side and chang	43.3665	-124.2179
469	2/2/2004 7:00:00	Coquille	OR	\N	1	I believe I was ALMOST abducted.	43.1771	-124.1876
470	7/25/2006 3:45:00	Corbett	OR	Light	5-10 min.	Slow-moving bright lights in V shape seen from Corbett, Oregon	45.5318	-122.2912
471	11/13/1999 21:00:00	Corbett	OR	Flash	1 second	bright flash that lit up the surrounding area quicker than a meteor or flare could and too big in size also.	45.5318	-122.2912
472	11/14/1997 21:30:00	Corbett	OR	Formation	3 minutes	We were driving west on chamberlain rd. which overlooks the columbia river gorge toward washugal washington. we witnessed several, at l	45.5318	-122.2912
473	1/2/2016 19:00:00	Cornelius	OR	Formation	8 seconds	Red lights (non-flashing) in line (no sound) high rate of speed 7-8 PM heading North bound Cornelius Oregon.	45.5198	-123.0598
474	5/16/2015 21:50:00	Cornelius	OR	Circle	several minutes	5 orange orbs appeared in the southern sky, below cloud cover, and hung suspended for several minutes.	45.5198	-123.0598
600	3/8/2007 23:00:00	Estacada	OR	Cylinder	5-8 seconds	Red orb over Clackamas County, Oregon	45.2896	-122.3370
475	4/26/2013 21:40:00	Cornelius	OR	Circle	3 minutes	7 Orange ball shaped objects moving quickly across the sky stayed for 3 min then dissapeared.viewed by 3 people	45.5198	-123.0598
476	8/25/2012 21:05:00	Cornelius	OR	Sphere	30 seconds	Seven bright golden/amber orbs over Cornelius, OR moving N to SE, no sound, semi-formation.	45.5198	-123.0598
477	8/25/2012 8:49:00	Cornelius	OR	Oval	still going	Driving down the road and saw multable lights sporidically thrue the sky heading north-	45.5198	-123.0598
478	7/26/2012 1:45:00	Cornelius	OR	Changing	Still going at 0322	Flashing and streaking lights in the northwest sky near Cornelius, Or. ((NUFORC Note: Possible star, we suspect. PD))	45.5198	-123.0598
479	9/22/2010 22:55:00	Cornelius	OR	Sphere	1 minute	Spherical, white light shoots left and right in Oregon sky.	45.5198	-123.0598
480	9/26/2006 1:40:00	Cornelius	OR	Triangle	10 sec	4 lights moving South to North	45.5198	-123.0598
481	9/28/2003 21:30:00	Cornelius	OR	Disk	5 secs.	washer shape in early night sky at Cornelius, Oregon 9/28/03	45.5198	-123.0598
482	9/11/1999 22:00:00	Cornelius	OR	Light	1 minute	Thought we were seeing a satellite arcing approxiamatley E-W, then object increased brightness, apparent size, then dimmed/brightened,	45.5198	-123.0598
483	11/19/2001 21:45:00	Cornelius/North Plains area	OR	Rectangle	15 seconds	Large, low-flying rectangular object sighted 11/19 at 9:45 PM	45.5198	-123.0598
484	5/1/1996 19:00:00	Corvalis	OR	Triangle	7-10 minutes	triangle formation in a blue haze 5/96 & blinking white lights ne of ashland mountain oregon in june of 1996	44.5646	-123.2620
485	11/25/2015 4:15:00	Corvallis	OR	Light	30 minutes	Bright light with spike like lights protruding from it. ((NUFORC Note: Probable sighting of Venus? PD))	44.5646	-123.2620
486	4/23/2015 0:00:00	Corvallis	OR	Light	~30 minutes	Bright orbs of lights rapidly moving above and through Jackson Frazer Wetlands	44.5646	-123.2620
487	11/28/2014 4:00:00	Corvallis	OR	Triangle	5 minutes	3 red lights in triangle formation. Slightly broke shape, 1 disappeared behind clouds. Far right one started flashing, then disappeared	44.5646	-123.2620
488	12/31/2013 23:10:00	Corvallis	OR	Circle	1 minute	2 amber lights dimming as ascending into sky. Moving then stopping.	44.5646	-123.2620
489	10/3/2012 3:00:00	Corvallis	OR	Formation	ongoing	Multi-Colored Flashing Light with Reddish-orange orb moving across sky.	44.5646	-123.2620
490	1/15/2012 20:35:00	Corvallis	OR	Light	10 minutes	3 red-gold lights, moving slowly and silently from west to east between low clouds and the treetops.	44.5646	-123.2620
491	9/4/2011 21:37:00	Corvallis	OR	Light	1 minute	Two lights appear within extremely close proximity, fly straight, and then vanish at the same time.	44.5646	-123.2620
492	8/14/2011 21:55:00	Corvallis	OR	Light	1.5 minutes	White light far brighter than satellite drifts overhead and vanishes. ((NUFORC Note: Overflight of ISS?? PD))	44.5646	-123.2620
493	4/11/2011 22:00:00	Corvallis	OR	Light	Seconds	Round yellow-orange flickering light descended from the sky to the stadium.	44.5646	-123.2620
494	1/27/2011 22:05:00	Corvallis	OR	Fireball	5 minutes	Bright orange light traveling North and turning toward southwest. Light slowly dimmed and disappeared.	44.5646	-123.2620
495	3/14/2010 3:40:00	Corvallis	OR	Chevron	2 minutes	A hovering flashing orange chevron shaped aircraft that then suddenly disappeared.	44.5646	-123.2620
496	12/16/2008 16:30:00	Corvallis	OR	Fireball	2 minutes	Object with white tail moving N West to S East at an extreme high rate of speed falling into atmosphere	44.5646	-123.2620
497	11/13/2008 18:00:00	Corvallis	OR	Diamond	1 minute	a shooting star that turned into a UFO	44.5646	-123.2620
498	9/22/2008 20:28:00	Corvallis	OR	Teardrop	2 Seconds	White hot glowing object directly overhead illuminates the wall of apartment building.	44.5646	-123.2620
499	8/11/2008 23:30:00	Corvallis	OR	Diamond	2 minutes	i was chased by a UFO in the 2nd sighting. ((NUFORC Note: Student report. Hoax?? PD))	44.5646	-123.2620
500	7/30/2008 22:30:00	Corvallis	OR	Fireball	30 sec	White orb sighting over Corvallis Oregon moving slowly from west to east.	44.5646	-123.2620
501	7/14/2008 21:15:00	Corvallis	OR	Disk	2 minutes	Saucer with lights that wobbled up and down but in straight line across the dusk sky.	44.5646	-123.2620
502	12/8/2007 18:45:00	Corvallis	OR	Triangle	5-6 seconds	Dark, triangular-shaped, single object with no lighting, making no sound, moving rapidly across sky	44.5646	-123.2620
503	3/22/2007 22:15:00	Corvallis	OR	Light	one-half second	Round, white light with halo effect appeared briefly in the vicinity of the Big Dipper on clear, cold night..	44.5646	-123.2620
504	8/12/2005 0:00:00	Corvallis	OR	Triangle	3-5 Minutes	On the night of August 12, 2005, we noticed a triangle shaped craft entering our galaxy.	44.5646	-123.2620
505	10/9/2003 23:00:00	Corvallis	OR	Other	2 HOURS	A LARGE UFO, LARGER THAN THE BRIDGE THAT DISAPPEARED IN FRONT OF ME.. ((NUFORC Note: Possibly not UFO related?? PD))	44.5646	-123.2620
506	9/21/2003 10:05:00	Corvallis	OR	\N	5 minutes	Strange F-16 Operations In Corvallis, Oregon.	44.5646	-123.2620
507	8/11/2001 13:30:00	Corvallis	OR	Other	3min.	I have had 4 close sightings over the past 5yrs.	44.5646	-123.2620
508	4/9/2001 22:00:00	Corvallis	OR	Fireball	6-8 seconds	Fireball Sighted by Child in the Northwest	44.5646	-123.2620
509	2/26/2001 1:25:00	Corvallis	OR	Unknown	three seconds	Not a shooting star, not an aircraft, quiet, green, large, and materialized out of thin air.	44.5646	-123.2620
510	1/22/2001 18:20:00	Corvallis	OR	Fireball	2 seconds	Fireball ?	44.5646	-123.2620
511	12/5/2000 16:20:00	Corvallis	OR	Fireball	20 minutes	A bright spherical object moved across the sky in daylight, then appeared to split into multiple bright lights.	44.5646	-123.2620
512	7/5/2000 22:15:00	Corvallis	OR	Other	1-2 seconds	White, illuminated cresent seen at high velocity, lit up cloud, no sound.	44.5646	-123.2620
513	4/30/2000 22:30:00	Corvallis	OR	Disk	20-30 secs	Flying grey disk over Corvallis,Or	44.5646	-123.2620
514	4/17/2000 22:54:00	Corvallis	OR	Fireball	10 seconds	What may have been another Corvallis fireball lit the night sky for 10 seconds above the cloud deck at 2254 PDT.	44.5646	-123.2620
515	2/21/2000 19:43:00	Corvallis	OR	Fireball	< 10 sec	Neon green fireball trailing orange-red tail visible less than 10 seconds, moving NNW above Corvallis, OR.	44.5646	-123.2620
516	6/17/1998 22:45:00	Corvallis	OR	Sphere	5 seconds	a green sphere heading from east to west at a very high speed,	44.5646	-123.2620
517	11/13/1997 1:45:00	Corvallis	OR	Light	20 minutes	We had just pulled onto Interstate 5 from leaving Corvallis when we saw these three amber/orange lights hovering above the freeway. At	44.5646	-123.2620
518	10/1/1966 23:00:00	Corvallis	OR	Disk	2 minutes	Saucer with no sound flew 100 feet above ground, changed direction then left atmosphere in a split second.	44.5646	-123.2620
519	1/8/1999 19:00:00	Corvallis (10 miles south of)	OR	\N	30 seconds	Heard you on Art Bell Via Broadcast.Com Archives on Saturday morning 1-9-99 from the broadcast the night before. When I heard you playi	44.5646	-123.2620
520	5/15/1954 12:00:00	Corvallis (Near; small town of Alsea)	OR	Diamond	1-2 mins.	Disc top, or bottom to our view following, west to east, a 4 engine (prop) maybe a Tri Star (three rudders) About 1/2 way across our vi	44.5646	-123.2620
521	6/6/2015 0:06:00	Corvallis/Newport (between)	OR	Other	15 minutes	My cousin, Fiance, Daughter and My Cousins Girlfriend Left Newport, Oregon and accidentally headed North along the coastline when we we	44.5646	-123.2620
522	5/21/2014 21:45:00	Cottage Grove	OR	Unknown	few seconds	Very bright red and blue lights,single object and unusual flight characteristics.	43.7976	-123.0595
523	10/23/2008 21:05:00	Cottage Grove	OR	Sphere	20 minutes	Three unknown objects, hovering over Southern Oregon at about 9:05pm, 10-23-08, were witnessed by four women.	43.7976	-123.0595
524	6/18/2008 22:00:00	Cottage Grove	OR	Light	40 mins	Orange light appeared in the north-eastern sky over Cottage Grove, disappeared and reappeared several times.	43.7976	-123.0595
525	8/31/2004 23:00:00	Cottage Grove	OR	Other	30	August 31, 2004 Cottage Grove, Oregon UFO	43.7976	-123.0595
526	2/21/2001 0:00:00	Cottage Grove	OR	Changing	5 hours	The object changed shapes and turned different colors.	43.7976	-123.0595
527	2/12/2001 22:30:00	Cottage Grove	OR	Disk	7 minutes	they were glowing disk shaped objects	43.7976	-123.0595
528	2/20/2000 22:30:00	Cottage Grove	OR	Formation	2 minutes	They were strange looking objects that had a very wierd look to them	43.7976	-123.0595
529	2/1/2000 9:00:00	Cottage Grove	OR	Triangle	1 min	black silent triangle flighs over dorena lake ruinning my fishing trip	43.7976	-123.0595
530	6/18/1985 13:00:00	Cottage Grove	OR	Sphere	10 sec.s	Orange "golf ball" ufo's fly over Dorena Lake.	43.7976	-123.0595
531	7/31/2002 13:30:00	Cove Palisades	OR	Disk	<1min.	DIsk shaped object with bright central light seen during clear daylight with multiple witnesses and photographic evidence.	44.5429	121.2751
532	12/4/2008 17:00:00	Crane	OR	Oval	3 minutes	oval object moved horizontally across mesa, then vanished	43.4167	-118.5787
533	8/7/2008 23:00:00	Crater Lake	OR	Fireball	hour	Orange Object over Crater Lake	42.9446	-122.1090
534	11/11/2008 23:30:00	Crescent	OR	Light	30 MIN	Driving west on hwy 58 my mp3 player started making static noises. I looked up ahead just above the tree line there was strange lights	43.4623	-121.6956
535	7/4/2014 23:00:00	Creswell	OR	Light	2 minutes	Bright red-orange light seen moving slowly, silently, first south, then east, no gain/loss in altitude. 4 witnesses. 2-3min observation	43.9179	-123.0245
536	11/10/2012 23:45:00	Creswell	OR	Circle	3-4 minutes	Very bright lights like an airplane, but went dark and saw a round, gray object at a high altitude.	43.9179	-123.0245
537	9/29/2012 21:45:00	Creswell	OR	Sphere	1 second	Bright white sphere Creswell, OR.	43.9179	-123.0245
538	10/14/2009 22:00:00	Creswell	OR	Fireball	45 seconds	Light blue colored light moves and zig zags in the sky then disapears in Creswell Oregon.	43.9179	-123.0245
539	6/15/2003 0:17:00	Creswell	OR	Other	10-15 min	i could tell you this: IT WAS NOT AN AIRPLANE!	43.9179	-123.0245
540	10/14/2002 19:02:00	Creswell	OR	Fireball	30econds	SLOW MOVING COMET LOOKING OBJECT SPOTTED NEAR CRESWELL, OREGON. ((Vandenberg rocket launch. PD))	43.9179	-123.0245
541	12/20/2011 16:00:00	Crooked River Ranch	OR	\N	several min.	String of red lights evenly spaced travleling across the sky no sounds at all there was a plane or something following no noise	44.4246	-121.2384
542	2/10/2016 5:10:00	Culver	OR	\N	5 minutes	Appeared to be a large star with a sort of spot light shining from the side outward. At first i thought maybe it was the space station	44.5257	-121.2131
543	4/28/2015 21:20:00	Culver	OR	Flash	15 seconds	Giant orb object, low on the horizon flashing intermittently at exact intervals over approximately 10 miles.	44.5257	-121.2131
544	7/3/2013 21:00:00	Culver	OR	\N	3 hours	Disk with a tail and it stayed by Mount Jefferson for about 30 to 45 minutes.	44.5257	-121.2131
545	7/7/2010 22:45:00	Culver	OR	Cylinder	5 minutes	Our family was camping the night of july 7th at 10:45 I seen a large foot ball shaped light crossing the camp ground there were a lot o	44.5257	-121.2131
546	12/3/2014 21:45:00	Dallas	OR	Circle	3 minutes	Large glowing orb that looks like a star from a distance but hovers 300 feet or so above tree line.	44.9193	-123.3170
547	2/6/2006 3:05:00	Dallas	OR	Triangle	10 minutes	We saw a white triangle shaped craft and it flew very quick.	44.9193	-123.3170
548	1/5/2005 19:10:00	Dallas	OR	Cigar	2 minutes	UFO in Dallas Oregon - Hellicopters - Cigar shaped - Shooting sparks from the bottom!	44.9193	-123.3170
549	1/4/2005 19:15:00	Dallas	OR	Circle	10 min	Buring orange sphere burning out over Salem Oregon	44.9193	-123.3170
550	10/13/2004 23:45:00	Dallas	OR	Triangle	\N	Object moved steady then up and down changing color from blue, red, green, then white was very bright	44.9193	-123.3170
551	10/11/2004 3:40:00	Dallas	OR	Light	20 seconds	Very intense light, shone through covered windows, absolutely no sound, felt presence before observing.	44.9193	-123.3170
552	12/18/2003 3:30:00	Dallas	OR	Other	13 minutes.	I heard a strange noise, suffered a physical and emotional response to it, military jets "chased" it away.	44.9193	-123.3170
553	5/11/2002 22:00:00	Dallas	OR	Light	1 minute	Oregon UFO Review Case: "Satellite" changes directions, performing wild maneuvers.	44.9193	-123.3170
554	9/25/2007 6:00:00	Damascus	OR	Circle	1 + hours	Huge ball of light seen in eastern sky at 6 am Sept 25, 2007 east of Gresham, Oregon.	45.4176	-122.4590
555	6/19/2005 18:00:00	Damascus	OR	Circle	1 minute	a shining metallic sphere moved swiftly from ground level to high altitudes	45.4176	-122.4590
556	1/28/2000 0:00:00	Damascus (Boring)	OR	Fireball	2 seconds	Massive green appearing fireball, appeared to have slammed into the earth, somewhere South of Damascus (Boring) Oregon.	45.4176	-122.4590
557	10/30/2015 20:30:00	Dayton	OR	Diamond	5 minutes	Diamond shaped ufo.	45.2207	-123.0762
558	5/14/1995 0:54:00	Dayton	OR	\N	\N	Man reports witnessing "diamond shaped" object in sky. (Facts incomplete.)	45.2207	-123.0762
559	6/17/2015 13:23:00	Depoe Bay	OR	Unknown	10 seconds	Loud boom then abnormal jet trail. Then all bird started to fly away.	44.8084	-124.0632
560	9/22/2010 22:10:00	Depoe Bay	OR	Fireball	10 minutes	three fast moving orange lights moving south to north along the Oregon Coast, then faded away.	44.8084	-124.0632
561	3/21/2010 3:00:00	Depoe Bay	OR	Cylinder	about 2 mins	Red light bouncing in the sky.	44.8084	-124.0632
562	4/24/1997 23:00:00	Depoe Bay	OR	\N	2 hrs.	Group of 8 women witness complex light moving dramatically in night sky. Light moves over sea, joined by 2nd light, both disappear.	44.8084	-124.0632
563	7/7/2012 23:30:00	Detroit	OR	Light	40 seconds	We were watching what we thought to be a satellite possibly and then all if a sudden it lit up! It was very bright and started moving a	44.7340	-122.1498
564	7/5/1991 22:30:00	Detroit	OR	Light	30 sec	small flash, streak of light, light stopped, then went other way slowly.	44.7340	-122.1498
565	10/18/1981 7:30:00	Detroit/Warm Springs (between, Cascade Mts.)	OR	Cigar	one hour	Single small vehicle left main body and followed us in a hovering helicopter fashion for over 45 minutes while we were walking from the	44.7340	-122.1498
566	7/14/2015 23:00:00	Dexter	OR	Flash	20 minutes	Irregular flashes across far southern skyline near Dexter, OR. No near or distant storms.	43.9160	-122.8229
567	7/2/2005 3:30:00	Dexter	OR	Diamond	3 to 4 min	Double cone travels northeast to southwest from over Eugene, OR. toward south of Oakridge, OR area at 3:30	43.9160	-122.8229
568	7/26/2016 22:30:00	Diamond Lake	OR	Triangle	2 hours	Two objects seen in central Oregon.	43.1737	-122.1521
569	1/25/2014 22:02:00	Diamond Lake	OR	Light	3 minutes	Big red orb flying over Diamond Lake, Or.	43.1737	-122.1521
570	7/4/2002 0:10:00	Dorena	OR	Triangle	4 min.	7 people see lights in triangle formation move across sky.	43.7198	-122.8620
571	6/12/1995 23:00:00	Drain	OR	Circle	est. 5 min.	Bright light flashes and shrinks before zipping off.	43.6587	-123.3187
572	6/15/1994 23:00:00	Drain	OR	Light	3-5 min.	Large circle of light in the sky flashes brightly, then shrinks to star size and zig-zaggs away.	43.6587	-123.3187
573	7/12/1964 12:00:00	Drew	OR	Circle	20 minutes	Date/Time 07/1964 City: Drew State: Oregon Shape Silver(Metallic) Disc Duration 30 min Summary object hovered above work location .	42.8819	-122.8983
574	10/3/2006 21:00:00	Dufur	OR	Disk	2 minutes	3 flashing lights at exact distances crossed entire sky over a field and ducked behind a hill in less than 2 minutes.	45.4532	-121.1306
575	8/5/2005 22:30:00	Dufur	OR	Flash	15 minute	Faint Yellow darting light zig zagged hight in night sky above Mt Hood Oregon	45.4532	-121.1306
576	7/15/2010 22:50:00	Dundee	OR	Light	4 min	White light moving at very high altitude from SW to NE. ((NUFORC Note: ISS was visible at this time. PD))	45.2782	-123.0109
577	11/25/2015 19:11:00	Dunes City	OR	Fireball	3 seconds	Big bright GREEN FIREBALL seen burning slowly to the earth in Dunes City, Oregon	43.8832	-124.1151
578	8/31/2013 18:45:00	Eagle Creek	OR	Other	10 minutes	Bright star like object in the west that stopped, moved slowly then stopping again, then it was gone.	45.3575	-122.3589
579	7/23/2011 5:23:00	Eagle Creek	OR	Flash	5 Seconds	Flashing light, no sound, up approx 20k to 40k ft. Went from southwest to northeast horizon in about 6 sec.	45.3575	-122.3589
580	8/26/2002 23:45:00	Eagle Creek	OR	Triangle	15 minutes	Extremely bright triangular shaped object sighted in the sky in Eagle Creek, Oregon.	45.3575	-122.3589
581	5/28/1995 23:35:00	Eagle Creek	OR	\N	45 sec.	Comm. pilot/ATP (14k hrs.) witnesses large, extremely bright, flaming obj. descend steeply in W sky. Dramatic. Good rept.	45.3575	-122.3589
582	8/11/2016 23:00:00	Eagle Point	OR	Other	3 seconds	Streaking blue light appeared like a crashing object near Table Rock Plateau. ((NUFORC Note: Possible meteor. PD))	42.4726	-122.8028
583	4/17/2016 14:00:00	Eagle Point	OR	Disk	1 minute	While running, I saw five craft fly east-to-west, constantly changing formation.	42.4726	-122.8028
584	8/15/2015 22:00:00	Eagle Point	OR	Light	90 seconds	Bright light slowly traveling from N to S. After a couple minutes it turned from white to orange and dissapeared.	42.4726	-122.8028
585	7/27/2015 19:35:00	Eagle Point	OR	Oval	2 minutes	Metallic oval light over Southern Oregon viewed for several minutes.	42.4726	-122.8028
586	7/2/2015 22:45:00	Eagle Point	OR	Light	20 minutes	Strange lights over southern Oregon. ((NUFORC Note: Probably a sighting of Venus and Jupiter. PD))	42.4726	-122.8028
587	7/27/2008 8:30:00	Eagle Point	OR	Unknown	20 sec.	Object seen in the sky west of Medford Oregon.	42.4726	-122.8028
588	7/9/2005 2:30:00	Eagle Point	OR	Light	15 MINUTES	stayed in one spot for 15 minutes, huge bright light, then dissapeared	42.4726	-122.8028
589	2/5/2002 20:09:00	Eagle Point	OR	Light	1 minute	Orange lights traveling slowly across sky fade out and diminish in size	42.4726	-122.8028
590	7/23/2001 14:30:00	Eagle Point	OR	Sphere	5 Minutes	Disappeard and reappeared in nonsequential order.	42.4726	-122.8028
591	7/13/2001 23:00:00	Eagle Point	OR	Other	10 seconds	Silent flaming yellow-green object	42.4726	-122.8028
592	4/29/2000 23:10:00	Eagle Point	OR	Circle	120sec	britelightwentintobigdipperthenstraightup	42.4726	-122.8028
593	10/10/1999 22:30:00	Elgin	OR	Chevron	4 minutes	Object silently traveled north -northwest. It was V shaped with five orange lights on the perimeter and one white ligh in the center of	45.5649	-117.9174
594	9/9/2009 20:45:00	Elkton	OR	Triangle	5 minutes	Two triangluar-shaped craft filmed near Elkton, OR	43.6376	-123.5682
595	11/30/2008 7:30:00	Elkton	OR	Chevron	30-45 seconds	Opaque "V" outline.	43.6376	-123.5682
596	8/10/2000 22:00:00	Elkton	OR	Changing	appr. 3 hrs.	four objects seen at roughly 45 min. intervals, all different. All bright and moving. Came roughly from the S' and S'E'.	43.6376	-123.5682
597	1/31/2016 23:00:00	Emigrant Pass (near; foothills of)	OR	Other	\N	Seen a object with a solid orange bar that lit up bright on the base and the top, it moved slow like a helicopter and was 40 feet off t	43.4668	-122.1392
598	6/17/2012 21:18:00	Estacada	OR	Light	5 - 7 seconds	Very bright &quot;star&quot; fades and dissapears.	45.2896	-122.3370
599	1/27/2012 19:55:00	Estacada	OR	Oval	3 seconds	A yellowish- orange round oval object on edge glided at 300 feet above street level. On a coarse from west to east. The event last	45.2896	-122.3370
601	8/12/2005 22:00:00	Estacada	OR	Teardrop	2min	the craft came without light or noise	45.2896	-122.3370
602	9/15/1999 22:00:00	Estacada (Near)	OR	Changing	2 hrs.	My friend, and I was riding late at night, and seen a bright light coming over the hill	45.2896	-122.3370
603	10/24/2008 18:30:00	Eugene/Cottage Grove	OR	Other	3-4 minutes	Black Triangle travelling north along I-5 freeway between eugen and Cottage grove.	44.0521	-123.0868
604	12/31/2016 11:10:00	Eugene	OR	Diamond	10 minutes	3 strange objects on New Years Eve.	44.0521	-123.0868
605	12/28/2016 22:00:00	Eugene	OR	Sphere	5 seconds	Driving on Beltline highway westbound and seen bright white ball of light streak across sky heading SW.	44.0521	-123.0868
606	11/9/2016 1:00:00	Eugene	OR	Formation	5 minutes	Multiple lights in formation moving east to west and slightly upward ~ static video 5 min.	44.0521	-123.0868
607	9/25/2016 20:15:00	Eugene	OR	Triangle	~15 seconds	Saw triangle shaped craft with some kind of cloaking.	44.0521	-123.0868
608	9/13/2016 20:40:00	Eugene	OR	Circle	2 minutes	What at first appeared to be a satellite shoots straight towards me at high speed, then reverses direction back to where it had been.	44.0521	-123.0868
609	9/13/2016 20:40:00	Eugene	OR	Circle	2 minutes	What at first appeared to be a satellite shoots straight towards me at high speed, then reverses direction back to where it had been.	44.0521	-123.0868
610	9/2/2016 23:40:00	Eugene	OR	Triangle	10 seconds	Bright triangle shape with iridescent "panel" type tail.	44.0521	-123.0868
611	7/30/2016 10:53:00	Eugene	OR	Cone	5 seconds	Green light comes falling down.	44.0521	-123.0868
612	7/23/2016 14:00:00	Eugene	OR	Cigar	3-4 minutes	Translucent object observed flying in the clear, blue afternoon sky.	44.0521	-123.0868
613	7/16/2016 20:00:00	Eugene	OR	Fireball	3 seconds	Fireball seen soaring across the sky. Aircraft seen chasing it.	44.0521	-123.0868
614	6/27/2016 0:05:00	Eugene	OR	Fireball	5-10 seconds	((HOAX??)) Out of the corner of my eye I seen a massive fireball falling. ((anonymous report))	44.0521	-123.0868
615	6/18/2016 20:45:00	Eugene	OR	Oval	10-15 minutes	Multiple Bright orange object above Santa Clara/Eugene	44.0521	-123.0868
616	3/23/2016 21:00:00	Eugene	OR	Triangle	2 minutes	I went to smoke outside, when I noticed a triangle in sky. I would say it was three separate orbs but in a perfect triangle.	44.0521	-123.0868
617	2/14/2016 19:30:00	Eugene	OR	Light	5 minutes	((HOAX??)) Orange light in sky, moving fast until a parachute opened and object descended into Eugene area.	44.0521	-123.0868
618	12/31/2015 23:59:00	Eugene	OR	Fireball	7 minutes	Viewed 4 slow moving orange-ish orbs on new years eve moving from E to W until they disappeared on the horizon.	44.0521	-123.0868
619	10/15/2015 12:30:00	Eugene	OR	Disk	1/320 second	Saucer Disk Over Oregon Ducks Stadium Captured On Sony Camera	44.0521	-123.0868
620	10/13/2015 21:10:00	Eugene	OR	Sphere	2 minutes	Light in west Eugene.	44.0521	-123.0868
621	9/26/2015 16:05:00	Eugene	OR	Disk	5 seconds	UFO flashes by in video.	44.0521	-123.0868
622	9/20/2015 5:30:00	Eugene	OR	Light	1 hour	Spinning light orbs	44.0521	-123.0868
623	9/19/2015 20:50:00	Eugene	OR	Circle	8 minutes	Colorful Object hover over house before flying south.	44.0521	-123.0868
624	7/3/2015 0:30:00	Eugene	OR	Circle	<1 minute	Colorful silent object flying in a zig zag pattern.	44.0521	-123.0868
625	6/30/2015 21:15:00	Eugene	OR	Rectangle	4 seconds	My neighbor and I saw a rectangle with bright blue and red lights traveling away and turning around at unexplainable speeds.	44.0521	-123.0868
626	4/26/2015 23:07:00	Eugene	OR	Circle	20 minutes	Strange object in northwest sky. ((NUFORC Note: We suspect a sighting of Venus. PD))	44.0521	-123.0868
627	4/18/2015 21:30:00	Eugene	OR	Sphere	60 seconds	3 very large red balls flying in a row about 1000 ft high,approx 500 ft apart from north to south west of Eugene	44.0521	-123.0868
628	4/8/2015 3:00:00	Eugene	OR	Fireball	30 minutes	Fireball ufo's.	44.0521	-123.0868
629	1/1/2015 0:00:00	Eugene	OR	Light	3 minutes each	Went out to watch the fire works at midnight. Saw the usual aerial fireworks but then saw 2 bright red lights traveling from the west	44.0521	-123.0868
630	12/11/2014 23:15:00	Eugene	OR	Disk	2 minutes	Dual orange orbs in Eugene, Oregon. 12/11/2014.	44.0521	-123.0868
631	11/16/2014 17:40:00	Eugene	OR	Unknown	1 minutes	Moving light slowed, then stopped, then slowly faded to darkness.	44.0521	-123.0868
632	8/30/2014 22:00:00	Eugene	OR	Changing	1 minute	Giant snowflake with pulsing lights seen over Eugene, Oregon.	44.0521	-123.0868
633	8/23/2014 0:00:00	Eugene	OR	\N	1 minute	A moving light emits huge white bright flash	44.0521	-123.0868
634	8/2/2014 0:20:00	Eugene	OR	Other	2 minutes	Bright orange light emitted by a spinning top - type craft	44.0521	-123.0868
635	7/31/2014 23:00:00	Eugene	OR	Rectangle	20 minutes	Rectangle shape with a red and green light.	44.0521	-123.0868
636	7/12/2014 0:45:00	Eugene	OR	Fireball	4 minutes	Objects flew straight up made a loop and then straight up and gone.	44.0521	-123.0868
637	7/4/2014 23:00:00	Eugene	OR	\N	2.5 minutes	ORANGE CYLINDER OVER EUGENE ON THE 4th.	44.0521	-123.0868
638	1/31/2014 18:00:00	Eugene	OR	Changing	15 minutes	Southern sky, heavy clouds. First one appeared to be a hangglider, but too high never descended. A silver-gray Stealth fighter jet sha	44.0521	-123.0868
639	12/31/2013 21:15:00	Eugene	OR	Light	1 minute	Orange light moving slowly then hovered then faded to pin sized dot and headed West.	44.0521	-123.0868
640	10/24/2013 20:15:00	Eugene	OR	Other	5 minutes	Bright orange light, flying low, moving slowly & was silent	44.0521	-123.0868
641	10/5/2013 22:44:00	Eugene	OR	Fireball	5 minutes	10 orange orbs moving slow from east to west. Last one hovered before it vanished. No sound.	44.0521	-123.0868
642	7/26/2013 23:23:00	Eugene	OR	Unknown	few seconds	Star like white light/ moves across sky and disapears	44.0521	-123.0868
643	7/3/2013 21:45:00	Eugene	OR	Flash	5 minutes	Bright glowing orb, moving slowly then fading into the night.	44.0521	-123.0868
644	4/1/2013 20:40:00	Eugene	OR	Light	20-30 minutes	Six blinking lights in formation, glide up and then down again over Eugene Or.	44.0521	-123.0868
645	3/15/2013 22:00:00	Eugene	OR	Sphere	60 seconds	Sighted fiery red ball shaped object prox 50 ft in diameter with flames on all edges.	44.0521	-123.0868
820	8/20/2012 22:00:00	Grants Pass	OR	Circle	1 minute or less	Stars appear, move and fade away.	42.4390	-123.3284
646	3/6/2013 19:55:00	Eugene	OR	Other	3 hours	Round red, yellow and blue flashing ball seen by myself and my friend 5 miles away. ((NUFORC Note: Possible twinkling star?? PD))	44.0521	-123.0868
647	2/25/2013 22:30:00	Eugene	OR	Sphere	2 minutes	2 lights in the night sky	44.0521	-123.0868
648	2/14/2013 12:20:00	Eugene	OR	Light	10 minutes	I saw several orange lights traveling east and then turning south as I was driving west from Springfield to Eugene, OR right by I-5.	44.0521	-123.0868
649	12/21/2012 22:05:00	Eugene	OR	Fireball	1 minute	3 sets of 3 orangy flickering flying objects completely quiet and in perfectly spaced apart from one another. then they disappeared.	44.0521	-123.0868
650	12/21/2012 22:00:00	Eugene	OR	Fireball	4 minutes	4 sets of 3 (12) separate flying orbs/fireballs, orange, headed northwest in straight line.	44.0521	-123.0868
651	12/11/2012 16:30:00	Eugene	OR	Light	5 minutes	Bright star in the horizon during sundown fades away.	44.0521	-123.0868
652	11/8/2012 22:10:00	Eugene	OR	Unknown	5 minutes	3 amber lights moving over Eugene slowly at 3000 ft. below clouds silently.	44.0521	-123.0868
653	10/1/2012 20:00:00	Eugene	OR	Light	hours	Star looking lights with flashing red, green, and purple lights that just hover around ! NOT GOING ANYWHERE! ((Star?))	44.0521	-123.0868
654	9/10/2012 22:00:00	Eugene	OR	Unknown	ongoing	Hovering lights, like an airplane, wavering back and forth across the night sky - very slowly moving west to north at tree line level	44.0521	-123.0868
655	9/1/2012 23:00:00	Eugene	OR	Circle	2 hours	UFO's all over the night skies of eugene, oregon.	44.0521	-123.0868
656	5/27/2012 19:00:00	Eugene	OR	Oval	4minutes	Black dot flashing color lights.	44.0521	-123.0868
657	5/13/2012 21:30:00	Eugene	OR	Light	unsure	I was driving home, less than a mile from my apartment and I noticed 5 or 6 white lights right above the tree line that looked like sta	44.0521	-123.0868
658	2/1/2012 23:00:00	Eugene	OR	Unknown	6 minutes	I went outside to put the garbage and recycling containers back by the side of my house and as i was doing that i looked up over the to	44.0521	-123.0868
659	12/31/2011 22:50:00	Eugene	OR	Fireball	30 seconds	One orange glow traveling west at a steady speed	44.0521	-123.0868
660	11/30/2011 19:00:00	Eugene	OR	Unknown	10 minutes	Bright white moving in circles, left then right, forward then back.	44.0521	-123.0868
661	11/24/2011 5:55:00	Eugene	OR	Light	13 seconds	A single spot light shinning on me from on High above.	44.0521	-123.0868
662	10/17/2011 19:35:00	Eugene	OR	Light	20 seconds	Brightest object in the sky, briefly stopped before continuing	44.0521	-123.0868
663	10/15/2011 18:00:00	Eugene	OR	Light	2-3 minutes	Orange-yellow flickering light	44.0521	-123.0868
664	9/27/2011 21:00:00	Eugene	OR	Circle	10 minutes	Five fiery lights/dark circular objects seen by young couple in Eugene, OR.	44.0521	-123.0868
665	9/5/2011 12:18:00	Eugene	OR	Light	1-2 seconds	Bright fast moving light	44.0521	-123.0868
666	7/3/2011 22:00:00	Eugene	OR	Other	15 minutes	Crescent shaped object bright orange. Chinese Lantern?	44.0521	-123.0868
667	6/17/2011 23:30:00	Eugene	OR	Light	30 seconds	lights in the night sky near Mount Piscah, Oregon	44.0521	-123.0868
668	3/7/2011 22:00:00	Eugene	OR	Fireball	2 minutes	fireball over Eugene July 3rd	44.0521	-123.0868
669	1/6/2011 18:30:00	Eugene	OR	Triangle	3-4 minutes	huge triangle with 3 lights	44.0521	-123.0868
670	12/31/2010 7:00:00	Eugene	OR	Oval	Many Hours	The Great Northwestern Christmas UFO 2010	44.0521	-123.0868
671	12/16/2010 21:25:00	Eugene	OR	Light	1 min	slow moving of white orange colored light above eugene oregon airport at 3-5000ft vanished	44.0521	-123.0868
672	7/29/2010 23:30:00	Eugene	OR	Sphere	5 minutes	I went outside to have a cigarette and saw a object larger than a star moving erratically, back and forth then hovering, then moving ac	44.0521	-123.0868
673	5/13/2010 16:00:00	Eugene	OR	Circle	8-10 min	Circular object that looked like star in blue sky moved slowly south, stopped, changed directions and went north.	44.0521	-123.0868
674	1/12/2010 4:00:00	Eugene	OR	Unknown	2 minutes	Awaken by several episodes of BRIGHT FLASHING LIGHT and a very LOUD mysterous noise.	44.0521	-123.0868
675	8/29/2009 22:10:00	Eugene	OR	Sphere	1 minute	We saw a glowing orange sphere in the sky, which moved south steadily then abruptly gained altitude and disappeared.	44.0521	-123.0868
676	7/25/2009 22:24:00	Eugene	OR	Light	2 mins	Sheldon area double UFO sighting	44.0521	-123.0868
677	7/20/2009 22:15:00	Eugene	OR	Light	5 Minutes	Something is going on in Eugene, Oregon. Many sighting from many people across many months.	44.0521	-123.0868
678	7/16/2009 21:00:00	Eugene	OR	Disk	15 minutes	possible fighter jet chasing UFO	44.0521	-123.0868
679	7/15/2009 23:28:00	Eugene	OR	Fireball	35 seconds	A glowing orange light moves swiftly and clean, then dissapears.	44.0521	-123.0868
680	2/27/2009 12:47:00	Eugene	OR	Sphere	45 min	small dics shaped object, flashing blue, yellow, red, green, white lights moving very quickly in opposite directions, unnatural of anyt	44.0521	-123.0868
681	2/2/2009 18:43:00	Eugene	OR	Other	30 sec	object that looked like a shooting star made a hard right	44.0521	-123.0868
682	7/4/2008 21:45:00	Eugene	OR	Light	15 seconds	Orange light ascending at a 75 degree angle on a straight trajectory.	44.0521	-123.0868
683	3/30/2008 20:00:00	Eugene	OR	Unknown	2 minutes	Nice clear night. First time in a while. Walking in dark area of west eugene this night. Sun had set but horizon to east still some gre	44.0521	-123.0868
684	3/6/2008 7:28:00	Eugene	OR	Disk	2 minutes	Black, round, flat, disc flying twisting spiral pattern over the Eugene, Oregon morning sky.	44.0521	-123.0868
685	3/2/2008 20:30:00	Eugene	OR	Light	2 mins	Blinking, bright white light seen travelling at high altitude	44.0521	-123.0868
686	10/25/2007 14:00:00	Eugene	OR	Cylinder	18 seconds	Very black missile type craft, no windows, large, and agile as it crossed the sky and it turned and flew away	44.0521	-123.0868
687	9/3/2007 7:45:00	Eugene	OR	Cross	15 minutes	silent, black and "X" shaped	44.0521	-123.0868
688	8/4/2007	Eugene	OR	Unknown	5 MINUTES	I WAS WITH MY GRANDMOTHER AND WE WERE ON OUR WAY TO A FARM TO GET SOME PRODUCE WHEN SHE TOLD ME TO LOOK OUTSIDE OF THE CAR WINDOW BECAU	44.0521	-123.0868
689	7/4/2007 9:00:00	Eugene	OR	Disk	5 minutes	This report confirms another sighting posted in Eugene Oregon on this date. I saw the entire event. I was walking across 6th street t	44.0521	-123.0868
690	10/8/2006 18:30:00	Eugene	OR	Formation	2-3 min	formation of lights 4 white 1 red with amazing sign-wave pattern over entire craft.	44.0521	-123.0868
691	12/10/2005 2:30:00	Eugene	OR	Circle	3 mins	flying towards eachother├éΓÇª ((NUFORC Note: Possible satellites?? PD))	44.0521	-123.0868
692	11/8/2005 18:24:00	Eugene	OR	\N	\N	Private citizen reporting a metallic object in the air near Eugene Airport. Reporting party claims object changes direction and is per	44.0521	-123.0868
693	9/16/2005 20:45:00	Eugene	OR	Changing	3m:40sec.	Plum red flash gets my attention	44.0521	-123.0868
694	9/5/2005 13:30:00	Eugene	OR	Light	1m. 10sec.	Video on infrared records something	44.0521	-123.0868
695	7/31/2005 16:10:00	Eugene	OR	Other	2 -3 minutes	On Sunday, July 31, 2005 at approximately 16:10-16:15 a transit supervisor and a bus operator were observing two osprey flying over the	44.0521	-123.0868
696	7/31/2005 0:15:00	Eugene	OR	Rectangle	1 minute	The object had green and yellow flashing lights, it was moving at amazing speeds, I'd say about 1,500-2,000MPH.	44.0521	-123.0868
697	7/23/2005 13:10:00	Eugene	OR	Cigar	5 minutes	I saw an object, flying, that I could not identify.	44.0521	-123.0868
698	7/8/2005 22:00:00	Eugene	OR	Sphere	15-20 min	Sperical glowing craft over eugene oregon	44.0521	-123.0868
699	6/28/2005 22:15:00	Eugene	OR	Unknown	15-20 min	UFO flashing color changing lights over Eugene OR	44.0521	-123.0868
700	2/22/2005 21:30:00	Eugene	OR	Unknown	3 minutes	Unidentified government craft over Eugene?	44.0521	-123.0868
701	2/21/2005 22:00:00	Eugene	OR	Triangle	10 seconds	White lights in a triangular formation over a ridgeline drifting slowly and fading out ten seconds after I spotted them	44.0521	-123.0868
702	12/25/2004 17:00:00	Eugene	OR	Changing	5 minutes	After exiting my garage on my way to the car, my eye caught something odd in the night sky. I observed what seemed to be an object with	44.0521	-123.0868
703	8/15/2004 1:35:00	Eugene	OR	Triangle	35min	Witnessed triangle shaped object w/ lights at altitude 25deg and azimuth 320 hover, then move rapidly L-R, hover again, Yaw right	44.0521	-123.0868
704	8/12/2004 10:30:00	Eugene	OR	Triangle	5 seconds	Triangular craft	44.0521	-123.0868
705	8/5/2004 22:00:00	Eugene	OR	Chevron	4 seconds	Chevron shaped craft over Eugene dunno what it was	44.0521	-123.0868
706	7/25/2004 20:00:00	Eugene	OR	Diamond	1 1/2 minuets	black diamond shped object zigzaging across the sky with glowing red tailflame.	44.0521	-123.0868
707	7/4/2004 23:00:00	Eugene	OR	Sphere	2 minutes	Brilliant, erratically zig-zagging, fast-moving object in 4th of July sky at Eugene,Oregon	44.0521	-123.0868
708	7/4/2004 22:30:00	Eugene	OR	Circle	1 minute	Move straight accross the sky like at sattelite but was too large to be one and then move like a bumble bee	44.0521	-123.0868
709	6/4/2004 20:40:00	Eugene	OR	Cigar	2-3 minutes	"blimp" like shaped object moving across the sky at sunset. Absolutely silent. Let us have a good look, but got no pic. ((Contrail??)	44.0521	-123.0868
710	1/17/2004 22:40:00	Eugene	OR	Changing	5-7 MINUTES	large yellowish orange ball hovering in sky with lights bouncing around inside, slowly moving east then north	44.0521	-123.0868
711	12/14/2003 3:38:00	Eugene	OR	Unknown	2 min	Extraordinary set of 2 long lasting flashes light up the entire sky.	44.0521	-123.0868
712	7/19/2003 19:20:00	Eugene	OR	Oval	2 minutes	Oval object seen racing from west to east over Eugene, Oregon.	44.0521	-123.0868
713	3/1/2003 13:30:00	Eugene	OR	Cigar	10 seconds	sunny day, huge jet-shaped craft with tiny red/black wings very low to the ground rose noiselessly into a cloud. didn't emerge.	44.0521	-123.0868
714	10/7/2002 21:03:00	Eugene	OR	Triangle	7-10 seconds	Triangular boomerang shape, dark gray/shadowy color, low altitude, silent,	44.0521	-123.0868
715	9/9/2001 23:00:00	Eugene	OR	Sphere	1 minute	Round, changed color, swerved, reversed direction without turning or stopping.	44.0521	-123.0868
716	9/7/2001 10:00:00	Eugene	OR	Triangle	5 seconds	Big triangle of stars crosses sky.	44.0521	-123.0868
717	6/19/2001 20:05:00	Eugene	OR	Light	witnessed for about 5 min	a stationary pulsing/flickering light randomly changing from white to orange.	44.0521	-123.0868
718	3/21/2001 23:10:00	Eugene	OR	Fireball	2.5 seconds	Fireball of bright white light traveling from South to North.	44.0521	-123.0868
719	11/28/2000 2:14:00	Eugene	OR	Circle	.08 sec.	Brilliant White light seen traveling N to S along the	44.0521	-123.0868
720	11/8/2000 22:30:00	Eugene	OR	Light	8sec.	What appeared to be a falling star , changed it's mind and made a hairpin u-turn and shot back up the way it came.	44.0521	-123.0868
721	9/15/2000 14:00:00	Eugene	OR	Other	20 seconds	Late Fall, 2000: Eugene OR Bowl / Cone Two-Part UFO Sighted in Broad Daylight	44.0521	-123.0868
722	8/27/2000 23:00:00	Eugene	OR	Changing	one hour	I saw erratic, colored lights in the sky last night	44.0521	-123.0868
723	6/15/2000 2:00:00	Eugene	OR	Triangle	4 to 5 minutes	"DELTA" SHAPED OBJECT FLYS OVER AT 2:00 IN THE MORNING.	44.0521	-123.0868
724	4/23/2000 23:00:00	Eugene	OR	Disk	10 min.	It followed me for about 10 minutes.	44.0521	-123.0868
725	4/13/2000 22:30:00	Eugene	OR	Sphere	4 minutes	Yellow to Golden Orange object moving over central Eugene, appeared just smaller than a lentil at arms length, moving slowly west to ea	44.0521	-123.0868
726	4/12/2000 20:58:00	Eugene	OR	Light	3:00-3:30	Observed an approaching light traveling from the east. The light was below the clouds, and contiunued to approach until at a 75 degree	44.0521	-123.0868
727	9/1/1999 21:30:00	Eugene	OR	Light	5 seconds	White fuzzy circle, red streak, fireball, acceleting at a very fast rate, gone...	44.0521	-123.0868
728	8/1/1999 23:30:00	Eugene	OR	Other	3 seconds!	Opaque white luminous boomerang-shaped craft. Clearly outlined, but fading very quickly.	44.0521	-123.0868
729	9/22/1998 21:06:00	Eugene	OR	Unknown	2 seconds	Bright Light/Metor	44.0521	-123.0868
730	12/18/1996 4:30:00	Eugene	OR	Light	1 hour	Father and son saw a light at high altitude perform zig-zags, abrupt starts and stops, and 90 degree turns. I am 18. I was going to	44.0521	-123.0868
731	6/1/1996 20:00:00	Eugene	OR	Triangle	2 minutes	Diamond broach shape over Eugene, OR.	44.0521	-123.0868
732	11/11/1995 1:15:00	Eugene	OR	\N	10 min.	Three adults hear a strange noise, see a strange "star" to W. Obj. does gyrations, then streaks N. 10 min. later, they see 3 more.	44.0521	-123.0868
733	3/30/1995 4:45:00	Eugene	OR	\N	\N	Man reports strange flash of light struck hood of his car. No sighting of object.	44.0521	-123.0868
734	5/24/1990 23:00:00	Eugene	OR	Light	3minutes	three vertical red lights in the sky	44.0521	-123.0868
735	3/1/1984 22:00:00	Eugene	OR	Triangle	10 minutes	Large Black colored triangle shaped ship. Eugene, OR 1984	44.0521	-123.0868
736	8/9/1968 21:00:00	Eugene	OR	Cigar	3 to 5 min.	A cigar shaped large object, that blended colors from red to white. Stayed about 3 min.	44.0521	-123.0868
737	3/24/2014 23:30:00	Eugene (general area)	OR	Egg	2 minutes	((HOAX??)) Red and blue egg like shaped.flying ahead of me then drifted like a zigzag then took off really fast the opposite way.	44.0521	-123.0868
738	10/13/2000 20:00:00	Eugene (west of)	OR	Light	3-5 min.	Lights over the Oregon Coastal Mountains.	44.0521	-123.0868
739	11/26/2016 19:00:00	Fairview	OR	Triangle	2 minutes	A large craft with 4 solid white lights was flying low across the sky and then vanished.	45.5385	-122.4340
740	3/8/2013 22:20:00	Fairview	OR	Changing	20 minutes	Large diamond shaped aircraft with bright orange lights hovered over freeway with no sound.	45.5385	-122.4340
741	2/25/2017 4:45:00	Fall Creek	OR	Sphere	15 minutes	445am 4 bright stars/lights hovered in the sky. I layed in bed watching then decided I'd take a picture so I went pee first and when I	43.9596	-122.8204
742	6/7/2016 23:15:00	Fall Creek	OR	Sphere	2+ hours	Mysterious lightning above woods up Fall Creek Oregon	43.9596	-122.8204
743	11/28/2012 23:35:00	Fall Creek	OR	Circle	30 minutes	Sighting Over Eugene Oregon Area.	43.9596	-122.8204
744	7/27/2016 4:00:00	Florence	OR	Light	15 minutes	At first glance I didn't noticeanythingother than a starrynight. Until a distantlight slowly whith no sound made its way across the sky	43.9826	-124.0988
745	8/3/2015 2:00:00	Florence	OR	Circle	1-2 minutes	Orange circular object moving fast.	43.9826	-124.0988
746	6/17/2015 2:55:00	Florence	OR	Circle	15 minutes	USAF Veteran witnessed a glowing amber pulsating ball floating in a field.	43.9826	-124.0988
747	3/9/2015 20:35:00	Florence	OR	Other	10 seconds	Dark dome shaped object over house.	43.9826	-124.0988
748	5/4/2013 23:30:00	Florence	OR	Light	1	Two bright orange lights at the Oregon coast	43.9826	-124.0988
749	9/25/2011 21:00:00	Florence	OR	Light	2 minutes	Red lights over Florence, Oregon	43.9826	-124.0988
750	8/17/2006 22:30:00	Florence	OR	Light	8 to 9 minutes	Strange Light in Coastal Sky	43.9826	-124.0988
751	3/12/2005 19:45:00	Florence	OR	Unknown	7 sec	ball of fire falling at 45 degree angle towards ocean	43.9826	-124.0988
752	8/3/2002 22:15:00	Florence	OR	Circle	20 minutes	It was an orange glow, with rapid movements far above the ocean, moving rapidly to the right and left, up and down.	43.9826	-124.0988
753	11/15/2001 23:30:00	Florence	OR	Unknown	9 Miles	Pulsating light follows car 9 miles in Oregon	43.9826	-124.0988
754	9/6/2001 10:30:00	Florence	OR	Circle	30 seconds	Bright red fire ball in front yard	43.9826	-124.0988
755	8/6/2000 23:00:00	Florence	OR	Light	2 hrs	Sighting of two brilliant orbs of light over ocean in Florence Oregon, August 2000	43.9826	-124.0988
756	9/1/1999 21:25:00	Florence	OR	Fireball	15 seconds	Orange, moving south, followed by small illuminated object below and slightly behind. Continued burning until obscured by trees.	43.9826	-124.0988
757	7/1/1999 15:00:00	Florence	OR	Cigar	5 seconds	Went on vacation in Florence Or. Driftwood II park. Bright cigar shape craft. Looked like it was going to land on the beach. This was	43.9826	-124.0988
758	3/13/1998 17:30:00	Florence	OR	Cigar	2 mins	cigar shaped craft	43.9826	-124.0988
759	7/5/1997 1:30:00	Florence	OR	Triangle	Approx 3 hrs!	A very lg. triangular craft with 3 lights on eacg point. The bl./grn. translusant type color filled area betwn. ea. light. Low hum s.	43.9826	-124.0988
760	3/27/1995 22:00:00	Florence	OR	\N	15 min.	Man calls to rept. lengthy sighting over city. Sends newspaper article. Reported by many to local police.	43.9826	-124.0988
761	3/6/1995 19:10:00	Florence	OR	\N	\N	Man called to report that he and his daughter had been followed in their car by a huge, bizarre obj. Est. width was 450 feet!	43.9826	-124.0988
762	7/26/2009 3:00:00	Forest Grove	OR	Changing	3 seconds	Bright green diamond changes to yellow circle then flashes and disappears	45.5198	-123.1107
763	3/19/2017 3:00:00	Forest Grove	OR	Light	30 minutes +	Hovering bright light in night sky 3am south of Forest Grove, OR. ((anonymous report))	45.5198	-123.1107
764	9/3/2016 23:57:00	Forest Grove	OR	Sphere	7-8 seconds	Just before midnight, my friend and I were walking home and the sky lit up behind us, we both turned to look by that time it was passin	45.5198	-123.1107
765	8/8/2014 22:00:00	Forest Grove	OR	Light	3 hours	2 erratic flashing lights.	45.5198	-123.1107
766	2/17/2013 12:00:00	Forest Grove	OR	Fireball	20 minutes	Red, orange fireballs in mid day.	45.5198	-123.1107
767	7/3/2009 0:15:00	Forest Grove	OR	Unknown	0:20	I saw something I thought was a star until it dimmed and moved.	45.5198	-123.1107
768	1/6/2007 18:35:00	Forest Grove	OR	Sphere	4 seconds	Big Blue Orb Flying low near Forest Grove Oregon, USA.	45.5198	-123.1107
769	7/20/2003 11:00:00	Forest Grove	OR	Light	>30 seconds	Bright light moving erratically, then moving to one spot to disappear. Forest Grove, Oregon, July 20, 2003	45.5198	-123.1107
770	7/5/2002	Forest Grove	OR	Unknown	unknown	Oregon UFO Review Case: Crop Formation appears in Forest Grove wheat field.	45.5198	-123.1107
771	4/17/2000 2:00:00	Forest Grove	OR	Cone	10 MINUTES	I WOKE UP LATE AT NITE TO GET A DRINK OF WATER AND NOTICED SOME WIERD LIGHTS COMMING FROM THE KICTHEN WINDOW AND I WAS SO SCARED IT PUT	45.5198	-123.1107
772	4/8/2003 1:00:00	Fort Klamath	OR	Oval	25 minutes	White oval light with in touching distance .	42.7046	-121.9959
773	10/5/1974 23:00:00	Fossil	OR	Changing	55 hours	((HOAX??)) The object at a distance looked like a Ferris wheel with multiple colors of red green blue yellow.	44.9982	-120.2161
774	1/18/2009 17:00:00	Garibaldi	OR	\N	4 hours	One mother ship with four smaller destinct satellite objects moving randomly.	45.5598	-123.9110
775	1/30/2015 7:00:00	Gaston	OR	Cigar	15 minutes	Bright light, cigar shape.	45.4370	-123.1415
776	1/30/2015 7:00:00	Gaston	OR	Cigar	15 minutes	Bright light in the morning.	45.4370	-123.1415
777	7/7/2010 23:00:00	Gaston	OR	Circle	2-3 minutes	Glowing orange orb in sky	45.4370	-123.1415
778	11/18/2004 22:00:00	Gaston	OR	Light	2 minutes	3 lights, triangular shape at first then moved randomly while changing colors - red, blue, green, yellow	45.4370	-123.1415
779	4/3/1997 19:50:00	Gaston	OR	\N	\N	Woman repts. seeing a bright yellow light streak across S sky, turn bright green. Obj. went to the horizon, disappeared from sight.	45.4370	-123.1415
780	7/23/2012 18:00:00	Gates	OR	Circle	2hours	Ufo in Pictures	44.7562	-122.4167
781	6/21/2003 3:02:00	Gates	OR	Rectangle	Multiple times	Large octagon grid patterns late night sightings.	44.7562	-122.4167
782	4/29/2002 23:30:00	Gates	OR	Unknown	5 seconds	Can anyone identify this.	44.7562	-122.4167
783	3/1/2001 4:50:00	Gates	OR	Triangle	2 minutes	Triangles seen flying in thin layer of clouds.	44.7562	-122.4167
784	8/3/2015 22:15:00	Gearhart	OR	Light	4 minutes	I was outside about 10:15pm and was watching the skies. I noticed a bright "light" (about 4 times brighter than the brightest star).	46.0243	-123.9113
785	6/16/2004 23:00:00	Gerber Reservoir	OR	Changing	2 Hours	Approximately 11PM my friend and I were sitting around a campfire. I got up and walked towards the tree line. I saw 2 orange orbs (pu	42.1979	-121.0961
786	7/19/2005 14:16:00	Gilchrist	OR	Other	2 seconds	silver comet? south of lapine oregon, headed down and west	43.4771	-121.6853
787	1/16/2015 19:45:00	Gladstone	OR	Light	4 minutes	5 total strange reddish-orange lights dancing around above West-linn Tualatin area	45.3807	-122.5948
788	5/5/2012	Gladstone	OR	Circle	3 mins	Ball of light with beam of light coming from it or spot light flowing from west to east	45.3807	-122.5948
789	1/3/1995 5:00:00	Gladstone	OR	Triangle	\N	Woman witnessed triangular ship w/ white & blue lights. She & neighbors witnessed 5 ships. Reported mil. jets in area.	45.3807	-122.5948
790	9/28/2011 21:00:00	Gleneden Beach	OR	Oval	Watched it for 15 min but	An oval orb blinking green and red lights and that has electrical currents is watched off the Oregon coast.	44.8814	-124.0346
791	1/13/2005 19:00:00	Gleneden Beach	OR	Flash	6 seconds	a bright orange light/flash intermittent at 11/2 second intervals, same level in sky 5 flashes in all	44.8814	-124.0346
792	12/15/1989 18:00:00	Glennwood	OR	Sphere	1 Minute	A brightly lit perfectly round sphere floated in front of the car at a traffic signal.	44.0444	-123.0336
793	3/18/2016 0:00:00	Glide	OR	Light	>15 minutes	Lights in sky appeared to be blinking/flashing; got binocs, noticed 1 light was red, green, blue,and gold. ((NUFORC Note: Star? PD))	43.3015	-123.1012
794	6/15/1998 1:00:00	Glide	OR	Sphere	30 sec	A blue round light right in front of us	43.3015	-123.1012
795	6/18/2016 13:00:00	Gold Beach	OR	Circle	3 minutes	Round craft, bright in center, no sound, slowly moving west to east, hovered twice.	42.4073	-124.4218
796	7/27/2007 22:00:00	Gold Beach	OR	Light	20 to 30 seconds?	4 Balls of Light Travelling at High Speeds in Gold Beach, OR	42.4073	-124.4218
797	8/28/2002 22:12:00	Gold Beach	OR	Light	7 minutes	one night while looking at the stars i saw a bright green light moving very slowly	42.4073	-124.4218
798	9/2/1999 3:30:00	Gold Beach	OR	Light	3 minutes	Red lights in V formation less than 2 miles off Paf.coast-westerly flew off due North first. Easterly advanced of center light & went	42.4073	-124.4218
799	9/1/1999 20:30:00	Gold Beach	OR	Fireball	1 minute	Fireball flew from west to east by south-east. Split into three peices and disapeared over the horizon.	42.4073	-124.4218
800	8/15/1996 12:00:00	Gold Beach	OR	Other	2 - 5 min.	Me and my family were on our way to the county fair and we saw the UFO	42.4073	-124.4218
801	8/15/1974 20:00:00	Gold Beach	OR	Circle	30 seconds	Ball of light shining a cone of light on the beach.	42.4073	-124.4218
802	7/31/2016 23:00:00	Gold Hill	OR	Other	2 minutes	I saw an orange orb and as it glided by it appeared to be a pillar with orange at each end. ((anonymous report))	42.4318	-123.0506
803	8/26/2000 23:30:00	Government Camp	OR	Light	5 minutes	Chrome Orange light circles campsite	45.3040	-121.7548
804	8/16/2012 22:30:00	Grand Ronde	OR	Sphere	an hour	Slow moving orange globes traveling from west to northeast, seemed to vibrate	45.0601	-123.6093
805	2/21/2001 2:47:00	Grand Ronde	OR	Disk	driving to mcminville	My name is ((deleted)) and I have just seen a U.F.O.Iwas going to Mcminville and I looked out the window and saw a shiny disk ty	45.0601	-123.6093
806	7/29/2016 2:30:00	Grants Pass	OR	Triangle	1 hour	Hovering craft with lights at each end.	42.4390	-123.3284
807	4/9/2016 11:45:00	Grants Pass	OR	Disk	1-2 minutes	Round, black object, no sound moving very fast thru morning sky.	42.4390	-123.3284
808	3/18/2016 21:35:00	Grants Pass	OR	Sphere	3-4 minutes	Slow moving flames that interacted with a green light.	42.4390	-123.3284
809	8/19/2015 21:00:00	Grants Pass	OR	Oval	~3 minutes	Red, white and blue flashing oval shaped light moving west to south east in the the southern Oregon sky.	42.4390	-123.3284
810	6/13/2015 22:30:00	Grants Pass	OR	\N	30 minutes+	Extremely bright circle of approximately 6 lights with red and a blueish green center just hovering moving occasionally	42.4390	-123.3284
811	3/7/2015 20:50:00	Grants Pass	OR	Formation	2 minutes	3 large orange lights in large triangle formation west of Grants Pass near Onion Mtn.	42.4390	-123.3284
812	12/31/2014 20:27:00	Grants Pass	OR	Fireball	3 minutes	Bright orange light hovering in the sky.	42.4390	-123.3284
813	12/12/2014 22:45:00	Grants Pass	OR	Light	i only saw it for maybe 1	Cluster of lights in the sky in southern Oregon.	42.4390	-123.3284
814	10/7/2014 21:30:00	Grants Pass	OR	Fireball	3 minutes	Glowing orb hovering, changing direction then leaving came really close, maybe 500 yds got pic..	42.4390	-123.3284
815	8/18/2014 2:00:00	Grants Pass	OR	Fireball	2 minutes	Large orange fireball stood stationary, first getting brighter and then dimmed and dissipated after 2 mins.	42.4390	-123.3284
816	5/31/2014 23:15:00	Grants Pass	OR	Fireball	2 minutes	Reddish orange fiery ball moving away from the earth, could not send any text messages for up to an hour afterward.	42.4390	-123.3284
817	11/5/2013 19:00:00	Grants Pass	OR	Fireball	20 seconds	Red orange fire ball northbound at a curve towards earth.	42.4390	-123.3284
818	4/28/2013 21:26:00	Grants Pass	OR	Light	1 minute	Very bright light descends and travels southward shifting from yellow to red and fading from vision.	42.4390	-123.3284
819	2/14/2013 19:30:00	Grants Pass	OR	Light	4 seconds	Driving north on New Hope Rd. south of Grants Pass I saw a light brighter than a regular meteor directly due north of my location appro	42.4390	-123.3284
821	8/13/2012 21:45:00	Grants Pass	OR	Other	2 minutes	Heard loud rumbling, followed by two bright oval shapes in the sky.	42.4390	-123.3284
822	4/1/2012 22:00:00	Grants Pass	OR	Sphere	10 minutes	Bright red round object moving from north to south	42.4390	-123.3284
823	5/3/2011 21:00:00	Grants Pass	OR	Oval	5 minutes	Flickering orange oval hovering over Grants Pass, OR.	42.4390	-123.3284
824	9/4/2010 22:10:00	Grants Pass	OR	Light	10 minutes	Formation of lights moving erradically but within a defined area west by southwest of Grants Pass, OR	42.4390	-123.3284
825	7/10/2010 22:30:00	Grants Pass	OR	Light	2 mins	blueish light floating over grants pass ,oregon	42.4390	-123.3284
826	7/4/2010 22:30:00	Grants Pass	OR	Fireball	30 minutes	2 separate sightings July 4th 2010 of Orange "fireball" type objects moving slowly to the south in Southern Oregon area.	42.4390	-123.3284
827	1/1/2010 0:00:00	Grants Pass	OR	Triangle	A few mintues	Triangle shaped craft with three red lights at points hovering over Grants Pass, Oregon.	42.4390	-123.3284
828	6/24/2009 0:00:00	Grants Pass	OR	Unknown	Continuous	I always wonder why there are these UFO reporting sites and this vast network of conspiracy blogs etc.	42.4390	-123.3284
829	2/7/2009 18:00:00	Grants Pass	OR	Circle	\N	Three black circle shapes moving close together turning into a triangle shape.	42.4390	-123.3284
830	12/16/2008 19:00:00	Grants Pass	OR	Triangle	20 min	red lighted triangle with circling white light at top tip came across sky then hovered.	42.4390	-123.3284
831	12/16/2008 17:50:00	Grants Pass	OR	Other	APROX 5MIN	IT MOVED SLOWLY ALMOST IN A SMALL CIRCLE TO GET IN THE RIGHT SPOT, AND DROPED SOMETHING OUT TOWARDS THE GROUND.	42.4390	-123.3284
832	7/13/2008 23:35:00	Grants Pass	OR	Unknown	1 minute	UFO heading East flashing bright white light turning Northwest then West as it flashed in a non flashing pattern.	42.4390	-123.3284
833	7/13/2008 20:35:00	Grants Pass	OR	Cigar	3 minutes	strange object seen in Grants Pass, Oregon	42.4390	-123.3284
834	4/12/2008 0:00:00	Grants Pass	OR	Light	still ongoing	Several bright objects at great altitude and distance hovering over Grants Pass, Oregon.	42.4390	-123.3284
835	2/17/2008 18:00:00	Grants Pass	OR	Light	5 seconds	Bright light falling from the sky, Grants Pass, Oregon.	42.4390	-123.3284
836	12/26/2007 6:30:00	Grants Pass	OR	Light	7:00	Light in South eastern sky. Looked like a VERY Bright star. Very Bright for 2 minutes then dims and disappears. Stays dark for several	42.4390	-123.3284
837	8/27/2006 23:00:00	Grants Pass	OR	\N	10 minutes	bright circular moving light above tree tops	42.4390	-123.3284
838	3/8/2005 19:30:00	Grants Pass	OR	Light	3 mins	a very fast moving starlike light, changing direction then color then vanished ((NUFORC Note: Sighting of ISS. PD))	42.4390	-123.3284
839	8/20/2004 22:00:00	Grants Pass	OR	Circle	30 seconds	Three bright red cylinders changing to very bright white lights before disappearing at high speeds	42.4390	-123.3284
840	9/1/2003 23:00:00	Grants Pass	OR	Other	3 min	We saw a lobed orb over Grants Pass, Oregon, on 9/1/03.	42.4390	-123.3284
841	9/18/2002 22:10:00	Grants Pass	OR	Other	20 minutes	Noticed very bright color changing "star" 15 - 20% above horizon which had several smaller lights circle it.	42.4390	-123.3284
842	6/9/2002 23:30:00	Grants Pass	OR	Oval	2 minutes	Sighting of very fast object near Grants Pass, OR that made strange moves, and was pursued by jets.	42.4390	-123.3284
843	12/15/2001 18:10:00	Grants Pass	OR	Triangle	5 minutes	Very large triangular shaped UFO siting, North-West, outlined in blinking red lights	42.4390	-123.3284
844	7/11/2001 23:00:00	Grants Pass	OR	Teardrop	30sec.	large tear shape object flying north to south	42.4390	-123.3284
845	6/23/1999 11:35:00	Grants Pass	OR	Circle	20 min	I saw a ball above a jet and it was still, then it went south and up till it was no longer in site	42.4390	-123.3284
846	1/15/1998 19:00:00	Grants Pass	OR	Triangle	1 minute,+-	Triangular Ship:Turning in midair	42.4390	-123.3284
847	9/1/1994 11:00:00	Grants Pass	OR	Changing	12 hours	Thought of as a Dream for 20 Years, Recent Information Convinced me that Iv been Abducted by Aliens.	42.4390	-123.3284
848	2/1/1992 20:00:00	Grants Pass	OR	Light	10 minutes	Going across sky. Thought it was airplane at first...until it started melting.	42.4390	-123.3284
849	9/1/1991 22:00:00	Grants Pass	OR	Light	8 hrs	Light appeared over mountain	42.4390	-123.3284
850	6/1/1978 0:00:00	Grants Pass	OR	Disk	2 hrs.	Object landed on corner of street. Stayed there approx. 2 hours. Had red, blue, yellow, green lights along middle that spun. Approx.	42.4390	-123.3284
851	10/6/2011 1:00:00	Grants Pass (just outside Merlin)	OR	Circle	1 to 2 min	Black object move across cloudy night sky	42.4390	-123.3284
852	8/14/2001 21:48:00	Grants Pass (Murphy Area)	OR	Light	Several minutes	Large bright light traveling low at a slow rate of speed with no sound	42.4390	-123.3284
853	7/11/2001 23:00:00	Grants Pass (Murphy Area)	OR	Egg	Seconds	Large egg shape UFO, solid (no blinking lights) white light with blue tones in it. The UFO was traveling north to south at a very high	42.4390	-123.3284
854	4/28/2000 4:30:00	Grants Pass (Murphy area)	OR	Circle	2 minutes	Flying at high speed from West to East. White star like UFO. Wasn't staying in a straight flight pattern.	42.4390	-123.3284
855	8/4/1999 4:00:00	Grants Pass (Murphy area)	OR	Egg	Six seconds	At 04:00 hours flying NE to SW, two white egg shape objects, flashing off and on.	42.4390	-123.3284
856	9/13/1998 21:00:00	Grants Pass (Murphy area)	OR	Fireball	App. 3 seconds	Flying from the South going North East. The green fireball with barely a tail came between two trees on the land behind our home, and	42.4390	-123.3284
857	10/15/2004 1:45:00	Grants Pass-Murphy area	OR	Unknown	2.5 hours	Fighters give chase to UFO within President Bush restricted air space.	42.4390	-123.3284
858	9/10/2005 23:15:00	Grass Valley	OR	Light	5 -10 minutes	Bright streaks across the night sky light up surrounding area's below as if it were daylight	45.3601	-120.7856
859	7/10/1999 22:00:00	Green Acres/Coos Bay (HWY 42)	OR	Fireball	1 or 2 minutes	I went outside to call my cat approximately between 10 or 10:30 at night, and looking up at the stars as I often do a fireball colored	43.2576	-124.2048
860	1/9/2017 4:10:00	Gresham	OR	\N	Second	Noticed a bright flash green light coming from the window. ((anonymous report))	45.5001	-122.4302
861	12/30/2016 18:42:00	Gresham	OR	Light	1 hour	Bright light in SW sky from Gresham, Oregon. ((NUFORC Note: Sighting of Venus. PD))	45.5001	-122.4302
862	5/12/2016 22:00:00	Gresham	OR	Fireball	15 seconds	Bright orange fireball.	45.5001	-122.4302
863	2/20/2016 19:30:00	Gresham	OR	Flash	2 seconds	Super bright flash of light a week after a wave of UFO sightings	45.5001	-122.4302
864	2/10/2016 5:15:00	Gresham	OR	Light	4 minutes	Two strange illuminated semi circle of Vapor expand and the bright star-like light appears and one half semi circle disappear and the o	45.5001	-122.4302
865	10/19/2015 19:25:00	Gresham	OR	Triangle	\N	Triangle shaped craft seen in Gresham, Oregon.	45.5001	-122.4302
866	9/27/2015 20:00:00	Gresham	OR	Light	2 hours	Fixed bright multicolored light in the NW sky after sunset, looked like a very bright star but seemed too brilliant for the usual star.	45.5001	-122.4302
867	6/5/2015 5:20:00	Gresham	OR	Changing	15 minutes	My friend came in here and told us to hurry up and come outside and when we went outside I saw a thing at first.	45.5001	-122.4302
868	6/5/2015 5:19:00	Gresham	OR	Changing	10 minutes	((HOAX??))((Deleted profanity)) I have photo and short video!	45.5001	-122.4302
869	6/5/2015 5:15:00	Gresham	OR	Changing	15 minutes	We saw an object above the hot tub.	45.5001	-122.4302
870	12/27/2014 5:05:00	Gresham	OR	Fireball	2-3 minutes	Two fiery objects holding in a close formation changed direction and acceleration then one of them appeared to drop debris.	45.5001	-122.4302
871	8/19/2014 16:00:00	Gresham	OR	Other	10 minutes	Rocket-like UFO.	45.5001	-122.4302
872	3/18/2014 15:00:00	Gresham	OR	Triangle	Seconds	UFO's recorded from my RC airplane. Debunk this!	45.5001	-122.4302
873	3/12/2014 0:30:00	Gresham	OR	Light	10 minutes	Blinking blue and red star disappears.	45.5001	-122.4302
874	2/1/2014 18:50:00	Gresham	OR	Fireball	2.5 minutes	10 silent red "fireballs," zoomed together, configured themselves and disappeared	45.5001	-122.4302
875	12/9/2013 19:50:00	Gresham	OR	Other	1 minute	Bright purple light over a busy intersection.	45.5001	-122.4302
876	10/4/2013 23:15:00	Gresham	OR	Fireball	20 minutes	My wife and I witnessed 16 - 20 orange orb-shaped objects that passed over us either solo or sets of two!	45.5001	-122.4302
877	7/31/2013 21:40:00	Gresham	OR	Circle	15	6 amber circles forming a diamond shape moving fast in the sky.	45.5001	-122.4302
878	4/24/2012 17:00:00	Gresham	OR	Circle	\N	I originally took this picture of the sunset and the trees... I went back to look at the photos and noticed these dots took a few photo	45.5001	-122.4302
879	11/3/2011 19:10:00	Gresham	OR	Light	5 minutes	Bright, high altitude white light makes a parabolic arc over Portland and Gresham Oregon	45.5001	-122.4302
880	8/4/2011 22:10:00	Gresham	OR	Other	2 min-5min	Two drone like objects chasing or observing a star like craft or object that was faster and more silent then any other craft or object	45.5001	-122.4302
881	9/11/2009 19:32:00	Gresham	OR	Sphere	4 solid minutes	UFO seen over Gresham, OR. It was a black orb that was tumbling through the air at a high rate of speed.	45.5001	-122.4302
882	10/26/2008 19:30:00	Gresham	OR	Formation	3-4 seconds	I stepped onto my back balcony and a formation appeared in my view straight ahead basically looking north,,they were almost the size as	45.5001	-122.4302
883	7/21/2007 5:40:00	Gresham	OR	Sphere	10 minutes	Noticed a marble sized (from my viewpoint) black object just hanging in the air.	45.5001	-122.4302
884	7/12/2007 22:00:00	Gresham	OR	Light	over hour	Strange light attracting smaller lights of eradict movements during lighting and thunder storm sky empty of commercial aircraft	45.5001	-122.4302
885	6/11/2005 23:30:00	Gresham	OR	Circle	7 minutes	Below cloud line circular bright red glowing object possible small white middle rotating- AMAZINGLY CHILLING!	45.5001	-122.4302
886	6/11/2005 23:30:00	Gresham	OR	Light	7 min.	Woman witnesses peculiar red light in the southeastern sky.	45.5001	-122.4302
887	6/11/2005 23:20:00	Gresham	OR	Fireball	5-7 min	Brite red light in sky	45.5001	-122.4302
888	6/11/2005 23:20:00	Gresham	OR	Fireball	7 min	bright red light in the sky	45.5001	-122.4302
889	6/11/2005 23:00:00	Gresham	OR	Triangle	30 min	Red triangle shaped object with red lights sighted over Gresham ,Oregon.	45.5001	-122.4302
890	8/9/2003 22:30:00	Gresham	OR	Light	7 minutes	OR UFO Review Case: Investigative findings and conclusions to the triangle lights sighting case in Gresham Oregon, August 9th, 2003.	45.5001	-122.4302
891	2/11/2003 21:40:00	Gresham	OR	Triangle	\N	Triangle	45.5001	-122.4302
892	1/27/2003 19:00:00	Gresham	OR	Flash	10 seconds	Three bright flashes appeared in the north sky within a 10 second period	45.5001	-122.4302
893	8/24/2002 22:25:00	Gresham	OR	Flash	5 Minutes	Fast flying strobe, changing directions and speed.	45.5001	-122.4302
894	3/30/2002 23:00:00	Gresham	OR	Light	10 Minutes	Bright RED light spotted in Southern sky traveling East	45.5001	-122.4302
895	7/25/2001	Gresham	OR	\N	\N	Round mark	45.5001	-122.4302
896	7/1/2001 16:30:00	Gresham	OR	Circle	5-10 minutes	Bright circular object seen moving in a South to North direction fading in and out of sight, and difficult to pick up by binoculars.	45.5001	-122.4302
897	6/26/2000 23:04:00	Gresham	OR	Other	35-45 seconds	Orange object that traveled in a zig zag line	45.5001	-122.4302
898	9/14/1999 19:07:00	Gresham	OR	Changing	25 minutes	watched a black object float across the sky level while appearing to rotate on 3 axis, seperate into 2 objects, reconnect and then slow	45.5001	-122.4302
899	6/13/1998 23:40:00	Gresham	OR	Cross	<3min	I was driving home and on 201st and holgate. I saw what I thought was a very low, slow plane.	45.5001	-122.4302
900	6/13/1998 19:00:00	Gresham	OR	Circle	10 minutes	Object crossing low in the sky over rooftops of homes. About 1 mile from where we were, and it was approx. A basketball size from our	45.5001	-122.4302
901	6/27/1997 0:50:00	Gresham	OR	Triangle	? minute(s)	Clear night & sky - no other aircraft. Saw strange lights in NE not like regular aircraft. Am trucker, kept catching glimpse of lights	45.5001	-122.4302
902	5/7/1995 1:30:00	Gresham	OR	\N	10 sec.	Man repts. very clear sighting of a very bright disc, below clouds flying from SW sky. Made zig-zag movements, flew off.	45.5001	-122.4302
903	7/29/1980 23:15:00	Gresham	OR	Sphere	5 secsonds	White orb like object heading west towards portland from gresham	45.5001	-122.4302
904	6/1/1976 22:00:00	Gresham	OR	Changing	30 minutes	We saw "it" and got the hell out of there! We then came back.......and so dit it!	45.5001	-122.4302
905	4/13/2003 16:16:00	Gresham/ Wood Village	OR	Changing	8 - 10 min	Multi-colored orb sighting report, low, slow-moving	45.5001	-122.4302
906	6/12/1998 14:00:00	Halsey	OR	Unknown	1 minute	Loud noise, similar to that emmited when propane tanks on hot air balloons, but much louder. Skies bright, few clouds. Traveled betwe	44.3840	-123.1098
907	11/29/2016 6:45:00	Happy Valley	OR	Circle	20 minutes	Very large slow moving orb over Portland Area.	45.4468	-122.5304
908	9/23/2011 19:50:00	Happy Valley	OR	Fireball	3 0r 4 seconds	Two separate fireballs descending slowly, in different parts of sky,one touching ground very near us, the far one vanishing at horizon	45.4468	-122.5304
909	7/18/2009 22:55:00	Happy Valley	OR	Unknown	2-5 minutes	bright neon object moves from west to east, then darts to the unknown. with the blink of an eye. ((NUFORC Note: ISS? PD))	45.4468	-122.5304
910	12/10/2008 19:25:00	Happy Valley	OR	Fireball	5-9 seconds	Observed Meteir/Fireball	45.4468	-122.5304
911	1/22/2007 22:30:00	Happy Valley	OR	Light	7 min.	Bright pulsing light moving at fast speeds over Milwaukie, Oregon	45.4468	-122.5304
912	7/22/1997 22:15:00	Hart Mountain (near Lakeview)	OR	Triangle	3-5 min.	Isosceles triangle, reflecting light, moved at 45 degree angle from ground level to milky way over 3-5 minutes at about 22:15 on July 2	42.5489	-119.6546
913	6/10/1997 21:30:00	Hart Mountain Elk Preserve	OR	Light	5 seconds	white light with smaller yellow light that streaks out of it	42.5489	-119.6546
914	12/13/1998 19:00:00	Hauser	OR	Light	30econds	noticed a flash of light while driving looked up and saw nothing then a few seconds later a saw the a bright ball of light travelling a	43.4931	-124.2175
915	7/1/1989 1:00:00	Hebo	OR	Sphere	10-15 seconds	Ball of orange light over Mount Hebo, OR	45.2293	-123.8595
916	7/27/2016 23:15:00	Hermiston	OR	Light	5 minutes	Light flying north the suddenly changes direction in a second. ((anonymous report))	45.8404	-119.2895
917	6/16/2013 22:30:00	Hermiston	OR	Light	1 minute	Two objects moving across the night sky at very high speed	45.8404	-119.2895
918	10/20/2012 6:00:00	Hermiston	OR	Fireball	5-10 minutes	2 fireballs and a cylinder shaped craft spotted in Eastern Oregon.	45.8404	-119.2895
919	10/20/2012 6:00:00	Hermiston	OR	Cylinder	5-10 minutes	Call me if you want in depth description and pics and video some in raw format of 4 separate sightings.	45.8404	-119.2895
920	8/17/2012 22:00:00	Hermiston	OR	Light	2 minutes	Started as a very bright red light in the SW part of the sky. It traveled down at an angle from south to north at a fairly slow, steady	45.8404	-119.2895
921	12/22/2011 20:50:00	Hermiston	OR	Light	3 minutes	Orange light flying over Hermiston, Oregon	45.8404	-119.2895
922	4/16/2009 2:00:00	Hermiston	OR	Triangle	8 seconds	V Light Formation	45.8404	-119.2895
923	5/30/1999 10:00:00	Hermiston	OR	Unknown	Imin and 5 sec	Extreme high UFO??? to me at least, moved like an airplane behaved like a shooting star.	45.8404	-119.2895
924	1/27/1985 1:30:00	Hermiston	OR	Other	45 seconds	Me and my buddies were out camping, when we heard a muffled bang. We looked up and there was three bright flashes of blue light, then 3	45.8404	-119.2895
925	4/21/2017 12:11:00	Hillsboro	OR	Other	5 minutes	Metallic Orange Ring Shaped Object Over Hillsboro Oregon	45.5229	-122.9898
926	1/23/2017 2:45:00	Hillsboro	OR	Flash	3 minutes	Bright flickering light in the sky standing still and them moved and then stood still, then dissapeared	45.5229	-122.9898
927	1/14/2017 19:38:00	Hillsboro	OR	Light	3 seconds	Bright light falling in the Eastern sky. ((NUFORC Note: Possible meteor, we suspect. PD))	45.5229	-122.9898
928	11/14/2016 23:30:00	Hillsboro	OR	Disk	1 second	I by accident photographed with a digital camera a single grey saucer like object with ridges and an oblong portal	45.5229	-122.9898
929	9/2/2016 0:01:00	Hillsboro	OR	Light	5 seconds	I was out my back door smoking a cig before going to bed and I witnessed a light moving very fast frome east to west I think then what	45.5229	-122.9898
930	12/14/2015 4:45:00	Hillsboro	OR	Fireball	3 minutes	We live off of 201st and baseline we saw a point with a thin tail that looked like bright white sparklers fireworks flying through the	45.5229	-122.9898
931	2/15/2015 19:00:00	Hillsboro	OR	Triangle	2 minutes	Cluster of glowing orange triangular crafts slowly move together in silence above the city rooftops	45.5229	-122.9898
932	2/15/2015 18:56:00	Hillsboro	OR	Light	1 minute	Multiple orange lights flying close to each other, then slowly started disappearing, one by one.	45.5229	-122.9898
933	1/29/2015 4:00:00	Hillsboro	OR	Unknown	1 minute	Hollow sounding booms followed by bright white flashes from the sky one mile south of Hillsboro airport.	45.5229	-122.9898
934	12/25/2014 18:45:00	Hillsboro	OR	Light	1 minute	4 or 5 red lights hovering in SW sky Hillsboro Oregon	45.5229	-122.9898
935	10/2/2014 21:00:00	Hillsboro	OR	Formation	15 seconds	10 silent, red craft traveling in a line, shifting precisely to avoid something.	45.5229	-122.9898
936	9/20/2014 19:00:00	Hillsboro	OR	Circle	15+	Airshow 2014.	45.5229	-122.9898
937	7/29/2014 22:00:00	Hillsboro	OR	Other	2 minutes	Odd shape, red flashing lights, no flashing pattern. Fluttering on the horizon. Quick direction change and gone. 2 nights in a row	45.5229	-122.9898
938	7/4/2014 23:00:00	Hillsboro	OR	Light	30 minutes	7 red lights.	45.5229	-122.9898
939	4/13/2014 23:22:00	Hillsboro	OR	Unknown	few seconds	Flashing Strobes in the sky, not a helicopter.	45.5229	-122.9898
940	1/24/2014 21:20:00	Hillsboro	OR	Formation	2 minutes	Red stationary lights in sky.	45.5229	-122.9898
941	12/8/2013 18:20:00	Hillsboro	OR	Unknown	2 minute	3 large orange/red lights in Eastern sky NO sound then vanished one by one.	45.5229	-122.9898
942	9/11/2013 23:00:00	Hillsboro	OR	Triangle	15 seconds	Dull black triangle with 4 lights moved quickly overhead from horizon to horizon	45.5229	-122.9898
943	8/31/2013 22:20:00	Hillsboro	OR	Fireball	10 minutes	Strange orange light(flame) in the sky	45.5229	-122.9898
944	7/10/2013 22:00:00	Hillsboro	OR	Light	20 minutes	Bright light above coastal range observed for 20 mins	45.5229	-122.9898
945	7/1/2013 21:37:00	Hillsboro	OR	Light	43 minutes	Dull orange object over the Oregon coast range WNW at dusk.	45.5229	-122.9898
946	4/24/2013 21:45:00	Hillsboro	OR	Unknown	8-10 minutes	6 red lights in the night sky in Hillsboro, Or	45.5229	-122.9898
947	4/3/2013 19:30:00	Hillsboro	OR	Unknown	2 minutes	Flashing bright lights at night in Hillsboro	45.5229	-122.9898
948	3/3/2013 19:30:00	Hillsboro	OR	Unknown	2 minutes	Blinking brights lights close to the Hillsboro Airport, Oregon.	45.5229	-122.9898
949	3/3/2013 19:30:00	Hillsboro	OR	Unknown	2 minutes	Flashing bright lights at night in Hillsboro.	45.5229	-122.9898
950	2/2/2013 20:00:00	Hillsboro	OR	Circle	3-5 minutes	Five round orange lights over Hillsboro, Oregon	45.5229	-122.9898
951	8/19/2011 21:30:00	Hillsboro	OR	Light	2-3 min	Observed what appeared to be a fast satellite stop move in controlled impossible maneuvers then assume original trajectory	45.5229	-122.9898
952	7/4/2011 22:48:00	Hillsboro	OR	Light	8 minutes	We saw three amber balls of light appear at four minute intervals and move south/southwest then fade and disappear	45.5229	-122.9898
953	6/18/2011 2:10:00	Hillsboro	OR	Teardrop	5 minutes	Riding a bike in a hurry, quickly stopped tied my shoe from the corner of my eye there it was a huge object practically right above me.	45.5229	-122.9898
954	2/21/2011 19:30:00	Hillsboro	OR	Light	3 minutes	Live near local airport, saw bright light traveling vary high and fast. I watched light approach from south to north then it turned to	45.5229	-122.9898
955	3/21/2009 20:00:00	Hillsboro	OR	Light	3 mins	I was driving past the airport at Hillsborough, Oregon and against the hillside in the distance saw what I assumed to be bright landing	45.5229	-122.9898
956	2/21/2009 0:30:00	Hillsboro	OR	Changing	3-4 hours	colorful pulsating ufo over Hillsboro Oregon [jellyfish like!]	45.5229	-122.9898
957	7/1/2007 22:10:00	Hillsboro	OR	Triangle	3 minutes	Quiet triangular craft, bright white lights, reduced to rapidly flashing blue & red lights, disappeared like a twinkling star	45.5229	-122.9898
958	3/11/2005 21:15:00	Hillsboro	OR	\N	a few seconds	We did not see a craft however we heard a very loud boom kind of like fireworks and the concussion rattled our windows and our lights f	45.5229	-122.9898
959	6/24/2004 14:00:00	Hillsboro	OR	Oval	1 second	Daytime High speed orb caugt on video	45.5229	-122.9898
960	9/5/2003 23:30:00	Hillsboro	OR	Circle	3sec	Green ball with a pink/red tail entering our atmosphere , then flying of over the horizon.	45.5229	-122.9898
961	9/2/2003 19:23:00	Hillsboro	OR	Sphere	1 hour	Metalic sphere about twice the size of a commerial airliner.	45.5229	-122.9898
962	7/12/2002 22:00:00	Hillsboro	OR	Changing	10 minutes	fire in the sky	45.5229	-122.9898
963	7/4/2002 22:45:00	Hillsboro	OR	Fireball	1/2 second	A bright flash of white light shot across the sky in an instant with no sound	45.5229	-122.9898
964	9/30/2001 17:26:00	Hillsboro	OR	Changing	17:56	triangular object(s) coasted through Oregon and Washington.	45.5229	-122.9898
965	8/2/2001 23:21:00	Hillsboro	OR	Oval	3min	Orange satillite enlarges 5 times its size as it flairs to white-blue, then back to original size and color .	45.5229	-122.9898
966	7/22/2001 0:31:00	Hillsboro	OR	Light	5 seconds	Big, bright, white, light receding quickly from view.	45.5229	-122.9898
967	7/7/2001 3:00:00	Hillsboro	OR	Light	8-10 seconds	I had just exited a residence and happened to look up into the sky as it was a very clear night. Upon turning my eyes skyward, a very b	45.5229	-122.9898
968	5/26/2001 1:15:00	Hillsboro	OR	Light	20 minutes	Strange light in Hillsboro, OR (1 week after same type of sighting reported in Hillsboro by other witnesses.)	45.5229	-122.9898
969	5/20/2001 21:15:00	Hillsboro	OR	Light	1hr+	3 of us watched UFO for over 1hour by Hillsboro, Oregon last night instead of the Sapranos! very bright flashes and rainbow effects!	45.5229	-122.9898
970	1/19/2001 18:30:00	Hillsboro	OR	Fireball	few seconds	Happened to glance over to the southwest part of the sky from my backyard and saw a very bright and very green fireball heading at an a	45.5229	-122.9898
971	6/3/1999 0:44:00	Hillsboro	OR	Triangle	10 Mins	Black shape w/red lights...Sat about 1.5 Miles NW of the Hillsboro Airport. Not moving..No sound....Lights went out & object sped away	45.5229	-122.9898
972	3/25/1999 13:20:00	Hillsboro	OR	Disk	Less than 1 min.	Hovering silver disc	45.5229	-122.9898
973	6/2/1995 20:12:00	Hillsboro	OR	\N	\N	Man repts. "huge" flaming obj. w/ enormous flaming tail descend at 60 deg. below horizontal. Obj. appeared to burn out.	45.5229	-122.9898
974	7/15/1994 12:00:00	Hillsboro	OR	Cigar	2 minutes	Working in my garden, looked up and saw a cigar shaped craft proceeding south. It was very high and I didn't hear or expect to hear an	45.5229	-122.9898
975	7/15/1994 12:00:00	Hillsboro	OR	\N	1:00 min	Driving down a busy street in Hillsboro,an acorn shaped craft caught my eye. I looked at the road and it disappeared.	45.5229	-122.9898
976	10/10/2015 18:46:00	Hillsboro/Portland	OR	Other	?	This sighting was detected on photos I took of a sunset.	45.5229	-122.9898
977	2/3/2013	Hood River	OR	\N	\N	02-03-13 report from Hood River, MA: There is no such place.	45.7054	-121.5215
978	2/2/2013 21:30:00	Hood River	OR	Triangle	6 seconds	((HOAX??)) Group of young people claim to have witnessed a large triangle, with lights on its edges, streak overhead.	45.7054	-121.5215
979	11/3/2012 18:29:00	Hood River	OR	Other	10 seconds	Fast bright white streak	45.7054	-121.5215
980	9/10/2012 22:00:00	Hood River	OR	Light	1.5 + hours	Hood River Sept 2012 what is this light	45.7054	-121.5215
981	4/19/2011 22:45:00	Hood River	OR	Cigar	10 minutes	Two UFO's sighted in Hood River Oregon	45.7054	-121.5215
982	5/12/2010 22:14:00	Hood River	OR	Light	40 sec	Bright white light acending.	45.7054	-121.5215
983	9/12/2008 20:04:00	Hood River	OR	Triangle	5 sec	I was driving on Hwy 84 with my daughter and saw a triangle shaped object it all happened so quickly but I know it had lights on it an	45.7054	-121.5215
984	3/12/2005 19:45:00	Hood River	OR	Sphere	3 to 4 seconds	I sighted VERY large blue-green meteor of extended duration in the sky near Portland OR ((NUFORC Note: Probable meteor. PD))	45.7054	-121.5215
985	7/22/1999 2:15:00	Hood River	OR	Diamond	45 seconds	The critical detail would be of the shape and brilliant colors of pink and purple.	45.7054	-121.5215
986	4/28/2006 23:10:00	Howard Prairie Lake Resort	OR	Rectangle	50min	We noticed a BIG, bright light across the lake, then it was instantly above us!	42.2274	-122.4049
987	2/15/2000 23:00:00	Hubbard	OR	Rectangle	several minutes	Rectangular, enormous (football field size?), black and silent Hubbard, Oregon 2000	45.1823	-122.8079
988	6/15/1937	Hubbard	OR	Cylinder	10 seconds	It had a bluish tint with what looked like a candle light in the center traveling slowly south.	45.1823	-122.8079
989	7/23/1998	Hubbard, (approx 30 mi. south of Portland	OR	Other	na	I'm messaging to report a "possible" crop circle found near the town of Hubbard, Or. I heard the report on a local radio station called	45.1823	-122.8079
990	2/10/2016 5:00:00	Idanha	OR	Other	5 minutes	Awe inspiring and a bit scary when it was right above me.	44.7026	-122.0787
991	9/20/2003 8:00:00	Idanha	OR	Light	30 sec	It was as there was an exploding star or something of that nature.	44.7026	-122.0787
992	7/6/2014 22:25:00	Independence	OR	Fireball	45 seconds	Flashing fireball.	44.8512	-123.1868
993	2/5/2014 20:10:00	Independence	OR	Light	2 minutes	Independence Or Orange Light Ball UFO	44.8512	-123.1868
994	12/29/2012 19:00:00	Independence	OR	Unknown	~5 minutes	Two bright red/orange lights moving straight up, they were not in line but moving at the same speed and distance from each other.	44.8512	-123.1868
995	12/6/2012 19:30:00	Independence	OR	Light	5 seconds	Bright light over house and yard. 500 Lights On Object0: Yes	44.8512	-123.1868
996	7/23/2010 20:00:00	Independence	OR	Unknown	5 minutes	Rocket-like craft with centered- tail- trail over Willamette Valley, Oregon	44.8512	-123.1868
997	2/10/2016 5:15:00	Ione	OR	Triangle	continuous	Observed a triangular shaped filmy patch of light moving from east to west at 5:15 am north of Ione.	45.5012	-119.8248
998	3/14/2016 22:20:00	Irrigon	OR	Changing	5 minutes	First I heard a vibration then a shaking feeling, I thought it was bass from music. I felt the sound more than heard it.	45.8957	-119.4914
999	8/2/2008 0:00:00	Irrigon	OR	Circle	10sec.	The UFO sighted in Irrigon, Oregon was and a round object that slowly came done as if it were landing. This UFO was a very bright green	45.8957	-119.4914
1000	7/13/2001 17:30:00	Irrigon	OR	Cigar	45 seconds	Very Large cigar/cone shaped object witnessed over Columbia River.	45.8957	-119.4914
1001	7/12/2010 0:10:00	Jacksonville	OR	Diamond	0:13	Single golden diamond shaped object, very fast.	42.3135	-122.9670
1002	12/13/2007 10:00:00	Jacksonville	OR	\N	40 minutes	We watched for 40 min.and there was a stationary ship with 2 red light docking ships. I tried to take pics but I haven't put them into	42.3135	-122.9670
1003	9/1/2007 5:00:00	Jacksonville	OR	Circle	15-20 seconds	Bright object appearing and dissapearing slowly.	42.3135	-122.9670
1004	6/28/1999 22:30:00	Jasper (5 miles S.E. from Springfield, OR)	OR	Triangle	aprox 3 sec.	From the north, at aprox. 5 to 6 K', level, turning abruptly to a southerly dir. and an aprox. climb angle of 45 deg. & went out of sig	43.9965	-122.9062
1005	11/21/2013 20:18:00	Jefferson	OR	Sphere	5 seconds	Object was shaped like a long bright Bar very bright in the north sky above my back yard field.... at 8:15pm traveled 5 sec and the	44.7196	-123.0104
1006	11/10/2013 7:40:00	John Day	OR	Circle	2 minutes	Disk over John Day, Oregon. And giant red flames 3 in all taking off by Lakeview, Oregon.	44.4160	-118.9530
1007	7/4/2011 23:45:00	John Day	OR	Flash	2 minutes	Eastern sky large flash star missing Super Nova?	44.4160	-118.9530
1008	11/12/1998 18:30:00	John Day	OR	Fireball	10 mins	About six thiety at night a orange ball was observed while driveing down the road was observed in the south eastern sky's just doing ra	44.4160	-118.9530
1009	6/1/1977 22:00:00	John Day	OR	Oval	1 minute	Large oval orange red craft seen in John Day.	44.4160	-118.9530
1010	9/18/1999 20:05:00	John Day (Clyde Holliday Camp Ground, 7 miles west of)	OR	Light	20 minutes	Six very high lights in the sky manuevered in different directions, turned abruptly with no radius, and one chased another.	44.4160	-118.9530
1011	3/29/2004 20:00:00	Jordan Valley	OR	Circle	1-2 minutes	I am a farmer from Idaho and was driving a semi-truck north bound on hwy 95 about two miles out of the small town of Jordan Valley, Ore	42.9740	-117.0543
1012	8/12/2003 22:10:00	Jordan Valley	OR	Disk	20-25 secs	Very large disk shaped structure with lights	42.9740	-117.0543
1013	10/29/2015 21:00:00	Joseph	OR	Light	5 seconds	Reverse shooting star turns to red ball of light and disappears.	45.3543	-117.2296
1014	3/27/2008 20:50:00	Joseph	OR	Light	several minutes	03.27/08, 20:50, Joseph, OR, Observed bright light traveling in the sky for several minutes before disappearing..	45.3543	-117.2296
1015	12/7/2008 18:00:00	Junction City	OR	Oval	5 mins	unknow object in sky no color or sound no running lights	44.2193	-123.2056
1016	11/30/2008 17:00:00	Junction City	OR	Oval	3 mins	((HOAX? Date is flawed.)) huge object in night sky while fliming two bright stars.	44.2193	-123.2056
1017	3/18/2006 19:00:00	Junction City	OR	Other	45 mins	perfect silver ball floating	44.2193	-123.2056
1018	9/26/2003 1:44:00	Junction City	OR	Triangle	5-7 seconds	Observed triangle shaped craft moving at high velocity from East to West, then make an almost 90 degree turn to the north.	44.2193	-123.2056
1019	11/11/2016 11:00:00	Keizer	OR	Unknown	13 seconds	Extremely loud and long sonic boom.	44.9901	-123.0262
1020	11/11/2016	Keizer	OR	Unknown	30 seconds	Incredibly loud and deep sound that felt like is was directly overhead. ((anonymous report))	44.9901	-123.0262
1021	9/27/2016 21:30:00	Keizer	OR	Formation	20 minutes	Formation of 3 reddish/orange colored lights flew over my house in a triangular formation. ((anonymous report))	44.9901	-123.0262
1022	11/3/2015 0:49:00	Keizer	OR	Light	5 seconds	Keizer, OR, S to N, saw a ball of light fly through the sky for approximately 5 seconds before it disappeared. No sound.	44.9901	-123.0262
1023	10/19/2015 0:15:00	Keizer	OR	Light	10 minutes	Yellow to red ball/northeast sky/dropped balls.	44.9901	-123.0262
1024	2/22/2015 19:00:00	Keizer	OR	Light	~5 seconds	Keizer Rapids park I was looking up when a really bright blue light was flying by and disappeared shortly.	44.9901	-123.0262
1025	11/5/2013 19:15:00	Keizer	OR	Cylinder	4 minutes	Hovering Orange-ish light over Keizer, OR.	44.9901	-123.0262
1026	10/18/2013 0:00:00	Keizer	OR	Fireball	30 seconds	Went out to smoke, heard segulls, looked up, saw random orange ball move quickly like a shooting star and make a big angled curve.	44.9901	-123.0262
1027	1/8/2013 22:00:00	Keizer	OR	Changing	6 minutes	A round shape with dome cover and changing lights hovering over homes making a humming noise and moving fast.	44.9901	-123.0262
1028	8/23/2010 20:40:00	Keizer	OR	Light	20 minutes	Steady white light in sky. ((NUFORC Note: Sighting of Venus in the western sky, we suspect. PD))	44.9901	-123.0262
1029	9/9/2007 22:00:00	Keizer	OR	Formation	Aprox 7 Minutes	Two bright lights hovering and then accelerating.	44.9901	-123.0262
1030	6/20/2007 0:00:00	Keizer	OR	Oval	3 minutes	Very large, oval shaped craft with two steady white lights for and aft. ((NUFORC Note: Space Shuttle w/ ISS?? PD))	44.9901	-123.0262
1031	7/27/2003 19:00:00	Keizer	OR	Other	5 min	translutant orb seen two different times.	44.9901	-123.0262
1032	8/18/2001 23:15:00	Keizer	OR	Triangle	5 - 6 Minutes	Watched 3 lights in a triangle formation travel slowly and silently west to east across the night sky.	44.9901	-123.0262
1033	1/30/2001 21:00:00	Keizer	OR	Triangle	1 minute	While observing a cluster of "stars" three stars swooped down and headed south at a great rate of speed.	44.9901	-123.0262
1034	6/24/2014 19:30:00	Kerby	OR	Circle	3 minutes	We were outside giving my child a ride on my dads tractor. Afterwards, we stood and were talking, when i became fixed on a ball of ligh	42.1943	-123.6517
1035	9/19/2013 11:20:00	Klamath Falls	OR	Teardrop	10 minutes	Fast moving aircraft with little jet trail moves across Oregon sky's.	42.2249	-121.7817
1036	4/20/2011 2:17:00	Klamath Falls	OR	Circle	less than a second	It was very real.	42.2249	-121.7817
1037	8/2/2006 11:00:00	Klamath Falls	OR	Flash	3 mins	Bright flashes, high pitched sound.	42.2249	-121.7817
1038	8/17/2005 0:10:00	Klamath Falls	OR	Flash	\N	UFO spotted in Klamath Falls Oregon ((NUFORC Note: Possible sighting of "twinkling" star. PD))	42.2249	-121.7817
1039	4/5/2005 16:20:00	Klamath Falls	OR	Other	6 minutes	Four objects spotted during daylight, resembled early flying wings, no sound, flying much faster than jet that had just flown over.	42.2249	-121.7817
1040	5/27/2004 15:10:00	Klamath Falls	OR	Unknown	5 min	Solid radar return with no visual	42.2249	-121.7817
1041	7/9/2002 3:55:00	Klamath Falls	OR	Light	90 seconds	7/9/02. Klamath Falls , OR 03:55, object travelling from SSE towards NNW accelerates at high speed and does 180 still accelerating	42.2249	-121.7817
1042	2/17/2002 0:40:00	Klamath Falls	OR	Formation	1 minute	Wing shaped UFO Klamath Falls Oregon. Several lights or reflections, Soared like a bird, not straight path, hight altitude no sound. S	42.2249	-121.7817
1043	10/25/2001 21:00:00	Klamath Falls	OR	Light	5 minutes	Bright blue fireball, no train, then odd , slow movement in opposite direction of multi-lit object	42.2249	-121.7817
1044	3/20/2001 3:00:00	Klamath Falls	OR	Flash	20 minuts	two flashing red lights moving around eachother.	42.2249	-121.7817
1045	7/25/2000 21:57:00	Klamath Falls	OR	Light	5 minutes +	"Light" flew as wingman to commercial flight.	42.2249	-121.7817
1046	2/21/2000 19:43:00	Klamath Falls	OR	Fireball	20 sec	green fireball size of basketball, in southeast going northeast with short white tail and behind it was a bright red tail and vanished	42.2249	-121.7817
1047	10/22/1999 6:10:00	Klamath Falls	OR	Sphere	3 seconds	Object was seen just as it decended over the horizon, behind local 7,000 foot mountains, to a heading of approximately 355 degrees, alm	42.2249	-121.7817
1048	6/29/1995	Klamath Falls	OR	\N	\N	Man repts. bright obj. overhead, "brighter than Jupiter." Moves slowly to SE, enters haze at 15' K, disappears from view.	42.2249	-121.7817
1049	10/1/1986 1:00:00	Klamath Falls	OR	Circle	45 minutes	BRIGHT OBJECT DROPPING "FIRECRACKERS" FROM IT - IT SEEMED TO KNOW I COULD SEE IT - VANISHED IN A TYPE OF EXPLOSION	42.2249	-121.7817
1050	12/1/2009 18:00:00	Klamath Falls (onb Hwy 140)	OR	Light	45 minutes	Hwy 140 bright glowing light that followed for 45 minutes stopping abruptly and creating patterns.	42.2249	-121.7817
1051	6/1/1996 20:00:00	Klamath Falls to Medford	OR	Light	1 hour	While leaving Klamath Falls Oregon by car I noticed a star to my rt. Or which i thought was a star, maybe Venus. Anyways i was talking	42.2249	-121.7817
1052	8/4/2013 20:12:00	Knappa	OR	Circle	10+ minutes	Multiple lights in sky.	46.1853	-123.5847
1053	7/4/2013 21:40:00	Knappa	OR	Triangle	2 minutes	Triangle shape object moving slowly across tree tops	46.1853	-123.5847
1054	3/22/2010 23:00:00	Knappa	OR	Other	1 hour	Very Bright Orange Lights	46.1853	-123.5847
1055	5/11/2007 22:33:00	Knappa	OR	Unknown	45+min	Very Bright Light moving in bouncing like movements in Knappa,Oregon	46.1853	-123.5847
1056	3/21/1999 22:48:00	Knappa (Near; approx 12 miles from Astoria)	OR	Unknown	5-8 seconds	I was outside and saw a helicopter with its search light on. I went out for a closer look and saw 'something', and it appeared to be a	46.1853	-123.5847
1057	6/23/2015 0:22:00	La Grande	OR	Light	1-2 minute	Intense white light moving down the Grande Ronde River canyon near La Grande, Oregon.	45.3246	-118.0877
1058	6/8/2014 18:50:00	La Grande	OR	Other	5	Black tip, yellow middle, flying together. From a distance, looked like a bunch of balloons. Looked thru bino's. to confirm. Six obj	45.3246	-118.0877
1059	5/27/2014 3:05:00	La Grande	OR	Light	1-2 minutes	Fast moving orange light in night sky.	45.3246	-118.0877
1060	12/31/2013 17:00:00	La Grande	OR	Light	\N	3 seen.	45.3246	-118.0877
1061	7/22/2013 2:00:00	La Grande	OR	Other	every night almost	Nightly aircraft seen over my town.	45.3246	-118.0877
1062	8/4/2009 21:15:00	La Grande	OR	Sphere	1 minute	Our family saw a slow moving bright red sphere above the neighborhood disappearing into the sky.	45.3246	-118.0877
1063	12/6/2008 21:56:00	La Grande	OR	Circle	\N	Red and Blue light seen in south eastern sky out of La Grande Oregon at about 9:56PM. ((NUFORC Note: Sirius, we suspect. PD))	45.3246	-118.0877
1064	11/5/2008 0:30:00	La Grande	OR	Diamond	20 seconds	they showed up as if falling, then made a movement south east. They where of particular brightness and even though they held their basi	45.3246	-118.0877
1065	9/12/2008 20:15:00	La Grande	OR	Fireball	10 seconds	Located 1/4 mile from Morgan lake, a large, spark shooting green glowing fire ball was descending from East to West of the lake.	45.3246	-118.0877
1066	3/12/2005 19:45:00	La Grande	OR	Fireball	Unknown	fireball in the sky ((NUFORC Note: Probable dramatic meteor at 19:45 hrs. on this date. PD))	45.3246	-118.0877
1067	2/28/2005 8:00:00	La Grande	OR	Oval	7 minutes	Oval-shaped and covered in lights but is quartered into four sections. As brillantly lit as any star.	45.3246	-118.0877
1068	2/9/2003 20:55:00	La Grande	OR	Fireball	about 5 seconds	object looked like shooting star it turned green and glowing as it came closer to the ground increasing in size.	45.3246	-118.0877
1069	11/8/1999 22:25:00	La Grande	OR	Formation	15 seconds	I was west bound on I-84 just east of LaGrande, Oregon at about 2225, 11/8 when I obseverd three what I thought at first to be very bri	45.3246	-118.0877
1070	9/26/1999 9:30:00	La Grande	OR	Fireball	1-2 secs	As I left my house, I noticed to the northeast a fireball descending to the horizon behind the mountains surrounding our valley. I orig	45.3246	-118.0877
1071	1/18/1998 19:30:00	La Grande	OR	Circle	10 min	Myself and two others were up in the mountains driving around after work, shoting guns and being young guys."age" myself at the time 20	45.3246	-118.0877
1072	10/30/1999 22:00:00	La Grande (10 miles east of)	OR	Rectangle	<1 minute	A very slow moving brightly lit object crossed I-84 north to south about 150-200 feet above road and disappeared into mountains south o	45.3246	-118.0877
1073	9/17/2015 10:22:00	La Grande (atop Mt. Emily)	OR	Triangle	5 minutes	While star gazing, I spotted a black triangle overhead flying from East to West.	45.3246	-118.0877
1074	9/15/2004	La Grande (Morgan Lake)	OR	Changing	seconds/3-5	This sounds like i'ntl space station descriptions, this was not. I am standing outside my vehicle at morgan lake 5mi. outside la Grande	45.3246	-118.0877
1075	7/18/1999 21:10:00	La Grande (Union County Airport)	OR	Changing	5 minutes	Bright light traveled from North to South, decended as if to land, approached landing strip--disappeared.	45.3246	-118.0877
1076	12/5/2016 1:40:00	La Pine	OR	Fireball	~2 seconds	Large bright orange fireball light silently Streaks over the Cascade mountains of central Oregon Definitely NOT a Meteor ... Too fast	43.6704	-121.5036
1077	10/31/2012 10:00:00	La Pine	OR	Cylinder	5 minutes	Unexplainable object in the late morning sky on All Spirits Day, 2012	43.6704	-121.5036
1078	12/29/2009 21:00:00	La Pine	OR	Disk	7 minutes	Crafts seen in Oregon~No question U.F.O's	43.6704	-121.5036
1079	7/20/2006 0:00:00	La Pine	OR	Circle	three hours	me and several people seen brite round objects VERY high in the night sky heading north west at a speed i thought impossible there was	43.6704	-121.5036
1080	7/22/2001 22:30:00	La Pine	OR	Fireball	30 seconds	UFO enters atmosphere in fireball and flys away erratically.	43.6704	-121.5036
1081	3/21/2001 22:30:00	La Pine	OR	Triangle	2 -3 minutes	Dark triangle with strange strobing lights seen south of bend Oregon 21 mach 22:30 PST moving slowly at first then acelerating to the S	43.6704	-121.5036
1082	2/6/2001 7:00:00	La Pine	OR	Rectangle	5 mins	I just got to school when I looked up I saw it the school is shaped like a U there were no sounds from the engines it was flying low th	43.6704	-121.5036
1083	8/8/2000 19:35:00	La Pine	OR	Disk	2 minutes	My daughter and I were driving down a rural road on the way home at about 7:35 p.m. on August 8th, 2000. She looked up at the moon whi	43.6704	-121.5036
1084	1/30/2012 5:30:00	Lafayette	OR	Light	20 seconds	I was outside this morning and my eye was caught by a moving light. I then saw more lights and they joined up in a line formation and t	45.2443	-123.1148
1085	8/20/2007 21:50:00	Lafayette	OR	Oval	20 seconds	2 very bright oval objects viewed in the sky over Lafayette Oregon. ((NUFORC Note: ISS and STS?? PD))	45.2443	-123.1148
1086	8/12/1993 22:30:00	Lake of the Woods (Near; closest city Ashland - 30 mi.)	OR	Light	30-45 min	3 luminous objects moving extremely fast, instant directional changes, changed color My parents and I were observing the Perseid met	42.3787	-122.2122
1087	1/25/2015 19:00:00	Lake Oswego	OR	Oval	2 minutes	Bright orange round in shape.	45.4207	-122.6706
1088	7/5/2014 21:00:00	Lake Oswego	OR	Fireball	10 minutes	A large fireball that looked like a blimp and gradually got smaller until it disappeared.	45.4207	-122.6706
1089	7/1/2014 3:20:00	Lake Oswego	OR	Circle	40 seconds	A round bright white-yellow disk of light hovering up in the sky with a beam of light coming out of it.	45.4207	-122.6706
1090	11/25/2013 19:30:00	Lake Oswego	OR	Diamond	3-4 minutes	Diamond shaped, black, large, flat craft with 3 or 4 white lights and 1 red blinking light hovering in Lake Oswego, OR.	45.4207	-122.6706
1091	6/9/2013 22:30:00	Lake Oswego	OR	Light	3 minutes	2 orange/red lights seen over Lake Oswego at night	45.4207	-122.6706
1092	4/26/2013 20:00:00	Lake Oswego	OR	Light	3-5 minutes	Four distinct Orangish /red lights in sky in an arc over Lake Oswego, Oregon at just at dusk, moving west east then slowly fading away	45.4207	-122.6706
1093	3/26/2013 20:10:00	Lake Oswego	OR	Triangle	6 minutes	Red dots looked like ufos	45.4207	-122.6706
1094	10/9/2012 16:30:00	Lake Oswego	OR	Sphere	20 minutes	White orb seen floting in the sky. Standing in my back yard I saw a object in the sky that looked like a star.	45.4207	-122.6706
1095	1/25/2012 19:05:00	Lake Oswego	OR	Light	5 min	Three large yellow/red lights travelling northeast at a rapid consistent rate.	45.4207	-122.6706
1096	11/28/2011 18:30:00	Lake Oswego	OR	Egg	1-2 min	Gold/yellow Orb seen over Lake Oswego Oregon by 2 people.	45.4207	-122.6706
1097	7/24/2010 23:45:00	Lake Oswego	OR	Triangle	2 minutes	OREGON UFO REVIEW REPORT: Slow moving silent black triangle craft observed over Nansen Park Lake Oswego Oregon	45.4207	-122.6706
1098	2/23/2010 21:00:00	Lake Oswego	OR	\N	60 seconds	A bright white light weaving in a Z pattern at an unsually high speed, hovers, then zooms out of sight at an amazing speed.	45.4207	-122.6706
1099	7/31/2007 15:00:00	Lake Oswego	OR	Changing	15 seconds	Large silver object appears in clear sky, then vanishes as though suddenly sucked away	45.4207	-122.6706
1100	6/17/2006 10:02:00	Lake Oswego	OR	Light	5 seconds	A white Ord light that keeps passing over	45.4207	-122.6706
1101	11/10/2005 2:00:00	Lake Oswego	OR	Cylinder	a few very long seconds	Brilliant blue oblong object zooms horizontally across southern sky at 2 in the morning.	45.4207	-122.6706
1102	4/2/2005 16:20:00	Lake Oswego	OR	Changing	2 minutes	Dark, squarish non-aerodynamic object floating at high altitude from south to north.	45.4207	-122.6706
1103	6/7/2003 2:00:00	Lake Oswego	OR	Oval	5 seconds	Oregon UFO Review Case: Football shaped UFO with purple glow and lights seen from inside tent during camping.	45.4207	-122.6706
1104	6/21/2002 16:50:00	Lake Oswego	OR	Circle	25 minutes	object was white sphere, appeared to be at least 6000 to 7000 ft up, object ABSOLUTELY fixed, nailed in place. size: BB held at arms l	45.4207	-122.6706
1105	9/25/1999 23:10:00	Lake Oswego	OR	Formation	4MIN.	As reported directly to Peter Davenport by phone 9-25-99, 23:25pm-------I went outside with binoculars to do a sky watch and was lookin	45.4207	-122.6706
1106	9/7/1999 22:37:00	Lake Oswego	OR	Light	5min.	While listening to Peter Davenport on Art Bell's Show 9-7-99 about the UFO reports out of Oregon, I decided to go outside during the br	45.4207	-122.6706
1230	9/10/2001 23:00:00	McMinnville	OR	Unknown	<2 minutes	Non-flashing, eratic behavior, disapeared into sky	45.2101	-123.1987
1107	2/3/1996 11:00:00	Lake Oswego	OR	\N	\N	UFO investigator relays report: Woman witnesses "cigar-shaped" craft near I-5/Rte. 217 interchange. White & blue color. 300' alt..	45.4207	-122.6706
1108	11/13/1995 19:50:00	Lake Oswego	OR	\N	12 min.	Woman repts. three peculiar green beams of light overhead. (MUFON investigator reptd. was probably laser-based adv. light.)	45.4207	-122.6706
1109	10/1/1995 16:30:00	Lake Oswego	OR	\N	90 sec.	Man reports witnessing 2 "diamond-shaped objects overhead. (Second sighting on same day.)	45.4207	-122.6706
1110	10/1/1995 14:00:00	Lake Oswego	OR	\N	5 sec.	Man reports brief sighting of peculiar white object in daytime sky. (See later sighting on same day.)	45.4207	-122.6706
1111	9/25/1995 15:45:00	Lake Oswego	OR	\N	\N	Man reports witnessing "black disc" above his garage. Obj. was "flipping. (Same person reports other sightings on other dates.)	45.4207	-122.6706
1112	9/23/1995 15:45:00	Lake Oswego	OR	\N	\N	Man reports seeing peculiar flashing light above house in daytime sky. Observed "black disc overgarage."	45.4207	-122.6706
1113	9/9/1995 19:05:00	Lake Oswego	OR	\N	\N	Man sees w/ binocs. motionless, white obj.. Suddenly disappears then reappears in other part of sky. Red, metallic in appearance.	45.4207	-122.6706
1114	5/16/1995 22:45:00	Lake Oswego	OR	\N	30 min.	Woman sees bizarre disc outside house. Looked like "red/orange circle w/ blurred edges."	45.4207	-122.6706
1115	7/12/1999 22:15:00	Lake Oswego (Portland)	OR	Light	20 mins.	My boyfriend and I saw 3 peach colored lights (spheres) hovering for about 20 minutes over the south sky.	45.4207	-122.6706
1116	11/13/2008 16:00:00	Lake View (Paisley Mtns.)	OR	Fireball	30 to 40 sec	Three large fireballs.over the top of paisley mountains Bright red/orange flame .One by one diapeared.	42.1888	-120.3458
1117	8/26/2014 9:00:00	Lake View area	OR	Triangle	1 minute	UFO sighting on Hwy 140 entering Oregon.	42.1888	-120.3458
1118	7/3/2015 22:18:00	Lakeside	OR	Fireball	4-5 minutes	Orange orb (fireball) over Ten Mile Lake, in Lakeside, OR; moving toward the coast, then south.	43.5757	-124.1751
1119	5/19/2013 21:30:00	Lakeside	OR	Circle	hour	Bright white light moving super slow. Almost like not at all	43.5757	-124.1751
1120	3/10/2013 21:30:00	Lakeside	OR	Triangle	5 minutes	My wife and I was in the Spinreel Dunes area trying to watch a comet that was supposed to be seen that night.	43.5757	-124.1751
1121	9/16/2003 20:20:00	Lakeside	OR	Triangle	10 min.	A six lighted wedge flying north to south in the western sky.	43.5757	-124.1751
1122	6/1/1974 6:00:00	Lakeside to North Bend	OR	Light	30 min.	Cone shaped light	43.5757	-124.1751
1123	8/3/2011 23:00:00	Lakeview	OR	Sphere	6 mins	08-03-2011 Between Lakeview and Adel. 5-8 objects floating above the highway followed by millitary aircraft	42.1888	-120.3458
1124	7/19/2005 21:00:00	Lakeview	OR	Triangle	1 hour	Two Huge Triangular objects seen in Central Southern Oregon	42.1888	-120.3458
1125	8/15/1992 20:30:00	Lakeview	OR	Disk	5 minutes	Close to a mile wide saucer with windows seen in Southern Oregon in 1992 at dusk..	42.1888	-120.3458
1126	2/2/1967 21:00:00	Lakeview	OR	Other	35 minutes	WE SAW A QUARTER MOON SHAPED, CREAM COLORED GLOW WITH WHITE PORTHOLE LIGHTS ON BOTH SIDES	42.1888	-120.3458
1127	5/3/2012 20:00:00	Lakeview (near)	OR	Other	2 Minutes	3 Orange lights over Warner Highway	42.1888	-120.3458
1128	6/26/2013 22:30:00	Lakeview (north of; Hwy 140/395)	OR	Circle	\N	Orange colored orbs in line with each other over the mountains	42.1888	-120.3458
1129	7/23/2001 19:45:00	Langlois	OR	Cigar	60 seconds	A long rocket like cigar with "fins" attached to it's body flying in a seemingly upward pitch.	42.9237	-124.4500
1130	2/10/2016 5:15:00	Lebanon	OR	Circle	30 seconds	Large circular craft flew silently over man walking his dog.	44.5365	-122.9070
1131	9/9/2015 20:30:00	Lebanon	OR	Flash	3 hours	Several clusters of red, blue blinking lights in the sky moving in strange patterns over 3 hour period	44.5365	-122.9070
1132	8/19/2015 20:45:00	Lebanon	OR	Light	6 minutes	Bright white light moves fast flashes red and descends rapidly toward ground. 2nd white light seen moving.	44.5365	-122.9070
1133	8/11/2015 21:30:00	Lebanon	OR	Light	5 minutes	Bright white light moving fast in sky turns red suddenly, changes directions and begins to descend then a second white light is seen.	44.5365	-122.9070
1134	9/12/2014 6:00:00	Lebanon	OR	Unknown	2 minutes	Object with trailing light rises above mountain.	44.5365	-122.9070
1135	8/14/2012 22:30:00	Lebanon	OR	Light	15 minutes	Orange lights flying north to south dropping something and disappearing.	44.5365	-122.9070
1136	6/29/2012 22:20:00	Lebanon	OR	Oval	5 minutes	Bright Orange object moving slowly dropping something bright toward ground.	44.5365	-122.9070
1137	7/15/2011 22:00:00	Lebanon	OR	Other	5 - 6 min.	ALL IT MY STATEMENT	44.5365	-122.9070
1138	6/26/2011 23:00:00	Lebanon	OR	Circle	10 mins	It went across the sky. It was orange, high in the sky. ((NUFORC Note: We have requested more information. PD))	44.5365	-122.9070
1139	12/3/2008 19:15:00	Lebanon	OR	Circle	1 1/2 minutes	Bright, amber object in the sky with brilliant, glittering, colored lights throughout. 500 Lights On Object0: Yes	44.5365	-122.9070
1140	1/20/2008 14:00:00	Lebanon	OR	Sphere	2-5 se onds	Jan 20 2008 Seen a silver sphere in the air.	44.5365	-122.9070
1141	10/10/2007 1:00:00	Lebanon	OR	Light	4 hours	Small Orange-White "star" that moves around in circles, up, down, and sideways fast in the night sky	44.5365	-122.9070
1142	9/22/2007 22:00:00	Lebanon	OR	Fireball	around 1 minute	Silent red and orange energy fireball glides just over tree tops in forested backyard outside of Lebanon, Oregon	44.5365	-122.9070
1143	6/19/2007 22:33:00	Lebanon	OR	Light	\N	White Lights In Sky, Were Gone Out Of Nowhere. ((NUFORC Note: Space Shuttle w/ ISS?? PD))	44.5365	-122.9070
1144	8/12/2005 11:11:00	Lebanon	OR	Triangle	5 minutes	Mom & boys watch slow silent triangleformed by 3lites move south at 11:11PM FOR 5min. then disappear	44.5365	-122.9070
1145	7/28/1999 4:30:00	Lebanon	OR	Other	30 seconds	Observed a large grey illuminated dog-bone shaped object to right of moon.	44.5365	-122.9070
1146	1/11/1999 9:30:00	Lebanon	OR	Cylinder	2 min	Saw a hovering silvery cylinder object sticking out from behind group of trees.	44.5365	-122.9070
1147	11/6/1995 20:45:00	Lebanon	OR	\N	5 min.	Mother (39 yrs.) & son witness bizarre, very brightly lighted disc hovering over rural road. Moved extraordinarily suddenly, fast!	44.5365	-122.9070
1275	10/14/2002 19:05:00	Medford	OR	Light	5 min.	The hovering spotlight simply went out and disappeared completely	42.3265	-122.8756
1148	5/6/1995 23:30:00	Lebanon	OR	\N	\N	Woman repts. seeing two large, bright objects, like "funnels of light," in eastern sky from top of Snow Peak.	44.5365	-122.9070
1149	10/14/2002 18:45:00	Lebanon/Brownsville	OR	Unknown	1 1/2 mins approx	Bright fan shaped light which quivered and shimmered, finally swirling and vanishing. ((Vandenberg rocket launch. PD))	44.5365	-122.9070
1150	5/18/2014 15:00:00	Lewisburg	OR	Oval	1 second	Black oval object in the sky.	44.6239	-123.2425
1151	10/15/2007 22:30:00	Lincoln Beach	OR	Other	30 sec	Large Invisible flying V shaped aircraft.	44.8504	-124.0468
1152	12/25/2016 21:30:00	Lincoln City	OR	Light	1 minute	Bright Light - Moved Extremely Fast.	44.9582	-124.0179
1153	7/19/2016 16:39:00	Lincoln City	OR	Circle	\N	Unknown circular object caught on photo. Unknown what it is.	44.9582	-124.0179
1154	4/17/2016 21:30:00	Lincoln City	OR	Triangle	45 seconds	3 orbs in triangle formation along Oregon coastline.	44.9582	-124.0179
1155	9/13/2014 18:40:00	Lincoln City	OR	Fireball	30 seconds	Meteor from the sky.	44.9582	-124.0179
1156	11/12/2013 2:48:00	Lincoln City	OR	Teardrop	25-30 seconds	12-inch long teardrop shaped hovering craft along Oregon Coast.	44.9582	-124.0179
1157	9/3/2013 21:30:00	Lincoln City	OR	Light	Few minutes	Bright red to dark slow flashing.	44.9582	-124.0179
1158	9/2/2013 21:35:00	Lincoln City	OR	Circle	60 seconds	A round orange ball of light- looking like fire traveled north across the sky before fading in the distance. It seemed to be rotating a	44.9582	-124.0179
1159	9/2/2013 21:30:00	Lincoln City	OR	Light	2 minutes	Seen a red solid light moving from west to east. The object was not flashing like a airplane and was a difrent collor. It disappeared i	44.9582	-124.0179
1160	8/8/2013 21:35:00	Lincoln City	OR	Circle	4 minutes	Light orb over Lincoln City, Or.	44.9582	-124.0179
1161	8/2/2013 19:00:00	Lincoln City	OR	Other	2+ hours	Bright stationary pulsing light accompanied with other objects emanating faint pulses of colored lights (clear,red and blue in color).	44.9582	-124.0179
1162	7/18/2013 0:10:00	Lincoln City	OR	Light	5 minutes	Slow moving bright light in the sky.	44.9582	-124.0179
1163	3/28/2013 19:00:00	Lincoln City	OR	Fireball	7 minutes	Orange fireball that stood still then started moving left and right and then shooting straight up into the sky.	44.9582	-124.0179
1164	9/16/2012 21:10:00	Lincoln City	OR	Light	3 minutes	Five red lights in night sky.	44.9582	-124.0179
1165	9/16/2012 21:00:00	Lincoln City	OR	Sphere	5 minutes	My wife and I spent a few days on the coast in Lincoln City, OR. On September 16th around 9 p.m. my darling wife and I were outside on	44.9582	-124.0179
1166	8/22/2012 21:00:00	Lincoln City	OR	Light	45 minutes	15 orb shaped orangish lights and one came down towards the lake.	44.9582	-124.0179
1167	7/28/2012 23:45:00	Lincoln City	OR	Circle	20 minutes	7 silent very bright orange fire like lights traveling west to east.	44.9582	-124.0179
1168	7/28/2012 0:00:00	Lincoln City	OR	Formation	10 minutes approx	3 orangish/reddish round "lights" flying north of us, above the beach. They were in a straight vertical line.	44.9582	-124.0179
1169	1/31/2012 20:00:00	Lincoln City	OR	Fireball	3 minutes	Round ball of flashing light in sky	44.9582	-124.0179
1170	6/12/2011 22:00:00	Lincoln City	OR	Fireball	4 minutes	A friend and I observed a cone shaped redish orange object overhead.We went out on the deck to observe it traveling in a S dir..	44.9582	-124.0179
1171	1/1/2011 0:00:00	Lincoln City	OR	Light	10 SECONDS	irratic star movement	44.9582	-124.0179
1172	8/17/2009 23:00:00	Lincoln City	OR	Fireball	aprox. 3-5 sec	08/17/09 Lincoln City, OR Cylindrical About 3 seconds Bright green object made abrupt 90 degree turn, headed inland from over the ocean	44.9582	-124.0179
1173	9/22/2008 21:00:00	Lincoln City	OR	Light	15 seconds	array of lights over the ocean	44.9582	-124.0179
1174	11/13/2007 2:30:00	Lincoln City	OR	Oval	15 SEC.	LINCOLN CITY OREGON SIGHTING	44.9582	-124.0179
1175	7/13/2007 1:13:00	Lincoln City	OR	Triangle	approx 10 sec.	Three lights traveling south to north up the oregon coastline Friday July 13th at aprox. 1:13AM	44.9582	-124.0179
1176	6/19/2007 22:30:00	Lincoln City	OR	Light	90 seconds	Bright lights of unknown origins witnessed by two individuals over the Pacific Ocean. ((NUFORC Note: Space Shuttle w/ ISS?? PD))	44.9582	-124.0179
1177	8/13/2006 0:45:00	Lincoln City	OR	Formation	1 minute	Spinning objects in sky over Pacific Ocean in Lincoln City, OR @ Sea Gypsy Hotel on Beach	44.9582	-124.0179
1178	1/11/2005 18:00:00	Lincoln City	OR	Light	10 seconds	Similar to previous night sighting, same time of day, same area of the sky. Bright light over ocean.	44.9582	-124.0179
1179	1/10/2005 18:00:00	Lincoln City	OR	Light	3 minutes	Bright light over ocean that was later joined by another. Both meandered around each other before disappearing.	44.9582	-124.0179
1180	2/9/2004 19:00:00	Lincoln City	OR	Disk	1 hour 10 min.	bright amber lights flashing in random sequence later came withing 30 ft. of our house and returned over the ocean	44.9582	-124.0179
1181	9/23/2003 13:23:00	Lincoln City	OR	Oval	See Below	No idea what this object is	44.9582	-124.0179
1182	9/18/2001 22:00:00	Lincoln City	OR	Light	1-2 minutes	Orange/bronze flare of light over ocean, not moving.	44.9582	-124.0179
1183	7/6/2000 0:30:00	Lincoln City	OR	Cross	15 sec	late saturday night camping at a koa	44.9582	-124.0179
1184	6/11/1998 17:25:00	Lincoln City	OR	Changing	UNKNOWN	Digital camera shots which contain unknown object not seen until photos were downloaded to computer.	44.9582	-124.0179
1185	3/17/1997 9:00:00	Lincoln City	OR	Triangle	9 to 10 minutes	Lights on horizon - object(s) approached, main craft opened/smaller craft "played" returned to original & hover above us	44.9582	-124.0179
1186	5/2/1997 22:45:00	Lincoln City (North of)	OR	light	6-8 minutes	Obj. travelling n/nw at satelite altitude. intermittent (irregular) brilliant white bursts, faded to pale yellow. 2nd obj w/same m/o	44.9582	-124.0179
1187	11/17/1999 2:00:00	Lincoln City/Albany (between)	OR	Light	1 hour	Sighted bright light about 35-40 degrees eastern sky that pulsed, dimming to barely visible, gradually increasing to bright again.	44.9582	-124.0179
1188	6/16/1999 23:00:00	Lincoln City/Newport (between, Otter Crest)	OR	Light	10 secs	There were four of us at my mothers condo at The Inn at Otter Crest on June 16. At about 11 pm at night, my friend George and I were lo	44.9582	-124.0179
1231	10/30/2000 16:00:00	McMinnville	OR	Cigar	5 minutes	Long white cigar shaped object seen over McMinnville Oregon heading south	45.2101	-123.1987
1189	9/25/1975 22:30:00	Little Valley	OR	Light	5 minutes	Two headlights following the canal road, rises into the air, goes a ways, lights fade out and disappear without any sound.	43.8793	-117.4819
1190	7/4/2011 13:00:00	Lorane	OR	Triangle	5 minutes	A noiseless weird sighting of two triangular shaped craft.	43.8376	-123.2390
1191	6/10/2002 23:00:00	Lorane	OR	Triangle	10 minutes	Black triangle with searchlight west of Eugene Oregon	43.8376	-123.2390
1192	8/25/2001 21:00:00	Lorane	OR	Circle	90 sec.	Round glowing blue object moving very fast, changing directions twice	43.8376	-123.2390
1193	8/31/1997 5:15:00	Lost Lake	OR	Egg	3 min	Two blue egg shaped objects floated past our campground about 200 feet above the ground moving about 25 mph,lasted about 3 min.	45.4900	-121.8223
1194	8/27/1995 21:00:00	Lost Lake	OR	\N	1 minute	Man & wife witness "line of 8-9 lights in a row." Center light(s) blinked on and off. Lights then streak out across sky. Strange.	45.4900	-121.8223
1195	9/13/2009 20:15:00	Lyons	OR	Light	30 seconds	bright light moving slowly across the sky & suddenly disapears	44.7746	-122.6151
1196	6/12/2012	Madras	OR	Changing	\N	Balls of light low to ground crafts turn invisable before landing secrate air strip moon invisable till we where at the bottom of round	44.6335	-121.1295
1197	5/3/2009 4:30:00	Madras	OR	Flash	30 sec +\\-	Blue flashing light (Basket ball) sized. Fast Mover.	44.6335	-121.1295
1198	9/11/2004 20:00:00	Madras	OR	Circle	5min	light ,white blinking,rotating on a circle,like a flat horizontal ferris wheel.saw the same thing in thesame place 2 times this week ov	44.6335	-121.1295
1199	11/8/2003 18:30:00	Madras	OR	Circle	15 minutes	At about 6:30 p.m. 11/08/03, our next door neighbor's litte girl came over, knocked on the door, and asked if we wanted to see a UFO.	44.6335	-121.1295
1200	2/10/2003 10:00:00	Madras	OR	Sphere	3 min.	Spherical metallic object seen about 7 miles NE of Madras, OR	44.6335	-121.1295
1201	10/14/2002 19:05:00	Madras	OR	Chevron	15-30 seconds	Saw a 2 tailed chevron shaped object, head like a snowball flying over Cascades, possible Vandenberg missile?	44.6335	-121.1295
1202	6/1/1995 20:00:00	Madras	OR	Other	3-3 1/2 hours	We were possibly abducted by a pyramid shaped UFO? while traveling in eastern oregon.	44.6335	-121.1295
1203	8/2/2014 21:30:00	Manzanita	OR	Circle	5-10 minutes	4 bright orange lights over ocean in Manzanita OR 8/2/2014.	45.7184	-123.9351
1204	7/7/2012 23:30:00	Manzanita	OR	Rectangle	15 minutes	A rectangle object crossed the sky in 30 seconds followed by an orange light hovering for about 5 minutes.	45.7184	-123.9351
1205	7/16/2011 22:00:00	Manzanita	OR	Fireball	5 minutes	Bright orange globe light over Oregon Coast	45.7184	-123.9351
1206	10/4/2004 20:30:00	Manzanita	OR	Triangle	2 minutes	Wedge, 70' off the ground, Moving NE at approx. 15 MPH towards Washington state. Very large with Red flashing lights and no sound.	45.7184	-123.9351
1207	6/3/2000 22:00:00	Manzanita	OR	Light	1/2HR-45MIN	There were orange colored lights coming from the northwest traveling in a line at a fast speed. The most at one time were 3. One appear	45.7184	-123.9351
1208	6/3/2000 21:45:00	Manzanita	OR	Fireball	approx.30min.	Three bright orange/yellow lights, appeared to meet up over the ocean and travel inland.	45.7184	-123.9351
1209	5/6/2006 22:00:00	Maupin	OR	Light	2-3 min	My girlfriend and I were camping on the Deschutes river and late one night at roughly 22:00 we happened to be looking up at the stars,	45.1751	-121.0814
1210	8/16/2004 21:30:00	Maupin	OR	Flash	45 seconds	2130 object flashed on for about 2 full seconds then off for 5 seconds each time at roughly 5 deg. track object in outer space	45.1751	-121.0814
1211	7/1/1967 0:00:00	Maury Mountains	OR	Fireball	Unknown	Possible Crashed UFO In Oregon's Maury Mountains In The Summer Of 1967.	44.0329	-120.4183
1212	10/15/2004 8:35:00	Mckenzie Bridge	OR	Flash	5 mintues	a bright flashing light changed colors and danced above us for 5 minutes	44.1751	-122.1639
1213	9/2/2016 15:20:00	McMinnville	OR	Unknown	~1 minute	Loud buzzing/rumbling noise, nothing was seen in sky, wind was extreme during sound. ((anonymous report))	45.2101	-123.1987
1214	5/20/2016 0:05:00	McMinnville	OR	Disk	10-15 minutes	Was walking to my car approximately midnight and saw a bright red object near the vicinity of Jupiter (due West, approx. 15 degrees abo	45.2101	-123.1987
1215	4/25/2015 20:30:00	McMinnville	OR	Sphere	5+ minutes	All 3 of us are trying to figure out what this could have been.	45.2101	-123.1987
1216	9/8/2014 6:00:00	McMinnville	OR	Circle	15 seconds	Seen over McMinnville, Oregon.	45.2101	-123.1987
1217	6/20/2014 22:35:00	McMinnville	OR	Formation	3-5 minutes	Several light orbs sighted over McMinnville, Oregon, June 20, 2014.	45.2101	-123.1987
1218	9/12/2013	McMinnville	OR	Triangle	10 minutes	Very slow moving object rectangular in shape with orange and red lights, making no sound.	45.2101	-123.1987
1219	5/17/2013 3:00:00	McMinnville	OR	Unknown	1 hour	Two objects shooting at each other in the sky	45.2101	-123.1987
1220	2/13/2013 21:00:00	McMinnville	OR	Sphere	10 minutes	Large bright ball of light moving slowly.	45.2101	-123.1987
1221	6/21/2012 1:00:00	McMinnville	OR	Unknown	five mins	We were on are way home off a country road. And we noticed A triangle shape lights over the city of McMinnville or. the triangle lights	45.2101	-123.1987
1222	2/5/2011 20:00:00	McMinnville	OR	Circle	2-3 min.	Four Amber/Orange Lights Seen South of McMinnville, Or.	45.2101	-123.1987
1223	1/11/2007 19:30:00	McMinnville	OR	Sphere	45-60 Min	Spherical object scene, hovering moving back and forth and up and down fairly rapidly, Clear skys no clouds in the southwestern sky, up	45.2101	-123.1987
1224	12/15/2006 0:01:00	McMinnville	OR	Circle	20 minutes	Big Metal Ball. Glowing.	45.2101	-123.1987
1225	7/1/2006 1:00:00	McMinnville	OR	Circle	15 minutes	UFO seen above hills in McMinnville Oregon- (2 witness see UFO 5+ occasions-)	45.2101	-123.1987
1226	10/25/2004 0:00:00	McMinnville	OR	Cigar	30 seconds	Blue cigar shaped craft spotted over McMinnville oregon-	45.2101	-123.1987
1227	5/7/2002 23:59:00	McMinnville	OR	Disk	\N	Me and my Mom saw a saucer with many lights hover by a house and trees then disappear with no trace.	45.2101	-123.1987
1228	4/17/2002 21:45:00	McMinnville	OR	Triangle	Short	Oval object and triangle shaped craft seen traveling together from bedroom window.	45.2101	-123.1987
1229	4/17/2002 21:45:00	McMinnville	OR	Oval	5 seconds	Glowing oval and flying triangle observed in McMinnville Oregon	45.2101	-123.1987
1232	11/14/1997 21:15:00	McMinnville	OR	Formation	~10 sec.	We were out enjoying the full moon. These things appeared, from over the hills. I was the first to see them, and it took me about 3 s	45.2101	-123.1987
1233	7/4/1997 22:14:00	McMinnville	OR	Disk	50 seconds	I was watching fire works with binoculars, and I saw something weird. As I watched it, I ruled out the possibility of a plane or fire w	45.2101	-123.1987
1234	5/2/2014 20:30:00	McNary	OR	Cross	1.5-2.0 minutes	Cross shape object with orange lights above our home.	45.9193	-119.2892
1235	9/12/2012 19:30:00	McNary	OR	Oval	5-10 seconds	I was taking pictures of my son at sunset and when we got home I saw something in the sky on one of the pictures. I flipped to the next	45.9193	-119.2892
1236	4/29/2017 22:00:00	Medford	OR	Changing	30 seconds	Hovering multicolored object over Medford	42.3265	-122.8756
1237	3/20/2017 22:10:00	Medford	OR	Circle	45	Circular craft 600-1000' off the ground and would shoot up to the elev. of most high flying planes within seconds. ((no contact info.))	42.3265	-122.8756
1238	5/11/2016 5:14:00	Medford	OR	Triangle	2:00	U-shaped craft over the Rogue Valley.	42.3265	-122.8756
1239	11/27/2015 5:00:00	Medford	OR	Circle	3 minutes	3 dim white lights flying, using maneuvers not capable by human air crafts, over Medford, OR, about 5am.	42.3265	-122.8756
1240	8/15/2015 23:30:00	Medford	OR	Fireball	2 minutes	Fire ball inferno on opposing valley wall. Then vanished.	42.3265	-122.8756
1241	12/23/2014 18:00:00	Medford	OR	Light	2 minutes	Bright white light moving over Medford, OR moving east accelerated out of site and disappeared as it approached a plane.	42.3265	-122.8756
1242	12/18/2014 23:11:00	Medford	OR	Unknown	1 second	Large bright object coming in fast, then vanishes.	42.3265	-122.8756
1243	10/20/2014 22:30:00	Medford	OR	Light	2 minutes	Bright red light was observed hovering for approximately two mins then it instantly rose several thousand feet and disappeared.	42.3265	-122.8756
1244	4/9/2014 22:35:00	Medford	OR	Cone	1 hour	((HOAX??)) UFO's in Medford Oregon on April 9th 2014.	42.3265	-122.8756
1245	3/21/2014 4:37:00	Medford	OR	Light	3 seconds	Red light traveling at extreme speed.	42.3265	-122.8756
1246	3/18/2014 23:44:00	Medford	OR	Disk	1 hour, 11 minutes	Large multicolored disk radiating many colors w/ long hanging arms hovering over an hour above Griffin/Sterling Creek area.	42.3265	-122.8756
1247	12/3/2013 22:00:00	Medford	OR	Circle	30 minutes	Multi-color lights flashing a pattern. ((NUFORC Note: Probable sighting of star, Sirius. PD))	42.3265	-122.8756
1248	11/3/2013 19:00:00	Medford	OR	Triangle	2 minutes	Hovering triangle shape, bright white light on each corner, silent, took off very fast.	42.3265	-122.8756
1249	4/24/2013 21:15:00	Medford	OR	Light	20 minutes	Red, blue and silvery flashing object. ((NUFORC Note: Possible twinkling star. PD))	42.3265	-122.8756
1250	1/9/2013 18:00:00	Medford	OR	Unknown	2 minutes	Sighting that seemed to be red balloons but was clearly not due to the spacing of the orbs? and behavior.	42.3265	-122.8756
1251	11/22/2012 18:00:00	Medford	OR	Diamond	4 minutes	4 orange lights in shape of diamond with one trailing.	42.3265	-122.8756
1252	9/15/2012 2:15:00	Medford	OR	Other	30 minutes	UFO Landing in Medford, OR.	42.3265	-122.8756
1253	6/28/2012 5:57:00	Medford	OR	Sphere	45 sec	Ball of light crosses Southern Ore sky	42.3265	-122.8756
1254	6/20/2012 21:28:00	Medford	OR	Sphere	aprox. 5 min.	Large very bright sphere of white light in Southwestern sky coming to earth entering from south to north.	42.3265	-122.8756
1255	12/31/2011 19:30:00	Medford	OR	Unknown	5 minutes	Orange-red ball of light with jerky movements going North, then South, then West and vanishing over the skies of Medford, OR.	42.3265	-122.8756
1256	12/2/2011 23:00:00	Medford	OR	Circle	10 mins	Orange glowing orb seen by 3 adults	42.3265	-122.8756
1257	8/8/2011 23:00:00	Medford	OR	Light	twenty five seconds	Me and my friend were laying in a grassy hill in Medford, Oregon. We were on vacation, just counting bats and star-gazing. The stars we	42.3265	-122.8756
1258	6/10/2011	Medford	OR	Circle	4 min	orange lights over so. Oregon	42.3265	-122.8756
1259	8/11/2010 23:00:00	Medford	OR	Triangle	15 minutes	looking North we saw a triangle shaped object in the sky, rapidly changing colors from blue, red, green and white, almost looked like i	42.3265	-122.8756
1260	6/12/2010 22:00:00	Medford	OR	Fireball	\N	flashing star type, green blue red and white and hovered left to right just a little	42.3265	-122.8756
1261	7/1/2009 15:30:00	Medford	OR	Triangle	est. 2 seconds	I saw a triangle shaped object in the sky above my back yard in Oregon.	42.3265	-122.8756
1262	6/18/2009 12:30:00	Medford	OR	Flash	20 seconds	reflective flashes from the sun on an unmoving object	42.3265	-122.8756
1263	9/9/2008 18:35:00	Medford	OR	Cigar	4 minutes	Cigar shaped object viewed through binoculars over Medford	42.3265	-122.8756
1264	5/5/2008 5:00:00	Medford	OR	Light	3 minutes	Bright white-blue light in the sky, the light moved, no sound, no other light. Object changed color, speed, and course quickly.	42.3265	-122.8756
1265	10/23/2007 20:30:00	Medford	OR	Unknown	5 minutes	Changing color, rotating lights with a hazy, "v-shaped" short light beam beneath.	42.3265	-122.8756
1266	9/11/2007 21:40:00	Medford	OR	Triangle	5 to 6 seconds	A triangular set of three dim or orange lights were seen moving very fast and silently across the night sky over Medford, Oregon.	42.3265	-122.8756
1267	3/15/2007 21:30:00	Medford	OR	Light	5 sec	Green/Blue Colored Lights fall from the sky in same location nearly twice a week around same time.	42.3265	-122.8756
1268	1/25/2007 21:00:00	Medford	OR	Cone	5 minutes	A cone shaped object with a long strip of lights that changed color, seen over Medford	42.3265	-122.8756
1269	10/30/2006 19:10:00	Medford	OR	Chevron	1 minute	An extremely fast object of hazy chevron shape from one horizon to the other in a minute's time. ((NUFORC Note: Satellite?? PD))	42.3265	-122.8756
1270	8/24/2006 20:45:00	Medford	OR	Flash	30 seconds	Unidentified Falling Object - Not Meteor.	42.3265	-122.8756
1271	7/21/2006 10:45:00	Medford	OR	Light	3sec	small and bright	42.3265	-122.8756
1272	3/2/2006 9:00:00	Medford	OR	Disk	2 minutes +\\-	Object seen over Medford, Oregon	42.3265	-122.8756
1273	2/3/2004 3:05:00	Medford	OR	Unknown	3 minutes	Fast moving object disappears into night sky	42.3265	-122.8756
1274	1/20/2004 20:00:00	Medford	OR	Other	5 seconds	At night, 2 close lights flying fast parrallel to the ground for 5 seconds with absolutely no sound.	42.3265	-122.8756
1276	8/18/2001 22:15:00	Medford	OR	Other	5 minutes	It was a bright light looked like a really bright star. It was going east floating slowly then it turned south east and zig zagged sli	42.3265	-122.8756
1277	2/12/2001 0:00:00	Medford	OR	Triangle	at least 40 mins. I went	Bright flickering light in southwestern sky.	42.3265	-122.8756
1278	1/1/2000 17:00:00	Medford	OR	Formation	5 mins	the quick flash of an object that looked like a boomarang	42.3265	-122.8756
1279	9/1/1999 21:00:00	Medford	OR	Changing	a few minutes	My sons caretaker was standing in the parking lot in Meford, Or. last Wednesday and saw a bright orange/red ball coming over the Table	42.3265	-122.8756
1280	7/15/1998 21:00:00	Medford	OR	Circle	30 seconds	Huge, round, white light hovering over freeway overpass	42.3265	-122.8756
1281	7/14/1997	Medford	OR	\N	\N	Sighting was reported in July 15, 1997 edition of The Mail Tribune, the Medford, OR daily newspaper. Object flew in sky and made sharp	42.3265	-122.8756
1282	10/20/1995 22:00:00	Medford	OR	Fireball	25 seconds	We saw a bright light in the sky that lit up the entire mountain side as bright as daylight as it passed overhead.	42.3265	-122.8756
1283	9/7/1995 3:30:00	Medford	OR	Circle	25	3 silver circular shaped objects at different time spotted in the skies over Southern Oregon in 1995. All were the same in shape and co	42.3265	-122.8756
1284	8/27/1995 13:10:00	Medford	OR	\N	15 sec.	Man repts. seeing a strange, metallic obj. "w/ no protuberances, but dome in center," pacing a landing C-130 aircraft. Disappears.	42.3265	-122.8756
1285	6/30/1995 15:00:00	Medford	OR	Disk	3-4 seconds	A metallic disc with a brilliant amber colored light passed directly overhead at incredible speed at low altitude.	42.3265	-122.8756
1286	3/1/1979 4:00:00	Medford	OR	Unknown	5 min	While in flight landing at Medford from Klammath Falls, I spoted what appeared to be another aircraft flying the opposite direction. S	42.3265	-122.8756
1287	3/21/1978 4:00:00	Medford	OR	Disk	7 or 8 mins	Inflight formation with two disk	42.3265	-122.8756
1288	7/15/1972 22:00:00	Medford	OR	Light	ten minutes	Projecting-retracting-light beam from no visible source	42.3265	-122.8756
1289	8/24/2009 14:30:00	Medford (outskirts)	OR	Light	7 minutes	Strange flashing whitish light that moved like a plane but then stopped and stood still for five minutes.	42.3265	-122.8756
1290	1/3/2008 4:00:00	Medford and Murphy	OR	\N	22 to 3 min.	strange unexplained sounds coming from above very low attitude.	42.3265	-122.8756
1291	2/3/2012 20:00:00	Merlin	OR	Circle	15-20 min.	Bright White,Green and Red lights over Merlin Area	42.5184	-123.4203
1292	2/14/2002 19:15:00	Merlin	OR	Sphere	20 min	Multi colored light in the sky .........	42.5184	-123.4203
1293	2/14/2002 19:15:00	Merlin	OR	Circle	20 min	strange light that changed all colors in the sky	42.5184	-123.4203
1294	9/16/1995 23:15:00	Merlin	OR	\N	\N	Woman relays report of some type of UFO sighting in town. (Limited facts.)	42.5184	-123.4203
1295	9/5/2013 21:00:00	Merrill	OR	Flash	4 hours	White flashes of light over mountains in Southern Oregon.	42.5184	-123.4203
1296	2/8/2005 19:30:00	Millican	OR	Unknown	45 minutes	Lights in sky over high desert in Oregon	43.8792	-120.9189
1297	9/5/2015 22:00:00	Milton-Freewater	OR	Light	5 minutes	4 white lights were circling in and out of a cloud bank over farmland. I could see no place the lights could be coming from. They cir	45.9326	-118.3877
1298	8/12/2014 21:00:00	Milton-Freewater	OR	Triangle	30 seconds	Very large, triangular object, with three pulsating lights, traveled over my area.	45.9326	-118.3877
1299	10/29/2013 19:20:00	Milton-Freewater	OR	Light	Unknown	Witnessed floating yellow light high in the sky. It did not move, and appeared to be distant.	45.9326	-118.3877
1300	10/5/2007 22:00:00	Milton-Freewater	OR	Light	1 hour	Dancing balls of light, each the size of a full moon, viewed for over an hour from Milton-Freewater, Oregon, Friday, October 5th, 2007.	45.9326	-118.3877
1301	8/21/2016 2:45:00	Milwaukie	OR	Oval	1 minute	Cant explain two red fireballs over Portland.	45.4462	-122.6393
1302	8/1/2016 21:46:00	Milwaukie	OR	Light	6 minutes	We were walking past an athletic field when we looked over and noticed 3 lights in the sky that we had never seen before. Two of us	45.4462	-122.6393
1303	3/25/2016 20:00:00	Milwaukie	OR	Triangle	3 minutes	I saw one red and two orange flying object in the sky.	45.4462	-122.6393
1304	12/17/2015 23:00:00	Milwaukie	OR	Oval	12 seconds	Saw bright white circle hovering then shot up straight fast fast then darted sideways unlike any craft or drone ive ever seen...	45.4462	-122.6393
1305	10/23/2015 18:00:00	Milwaukie	OR	Other	10 seconds	Clackamas, OR. howeverying flying object, with lights and fast disappearance.	45.4462	-122.6393
1306	4/12/2015 23:30:00	Milwaukie	OR	Circle	2-3 minutes	Bright, extremely large orange circle of light seen up in the sky.	45.4462	-122.6393
1307	7/31/2014 1:30:00	Milwaukie	OR	Flash	1 hour	Bright flashes light up whole sky, many colors Red, Orange, white.	45.4462	-122.6393
1308	7/27/2014 22:00:00	Milwaukie	OR	Triangle	2 hours	Strange colored lights, transparent pie pan shaped object, large triangular craft with glowing lights	45.4462	-122.6393
1309	2/17/2014 18:30:00	Milwaukie	OR	Triangle	1 minute	Triangle-shaped with lights.	45.4462	-122.6393
1310	11/30/2013 20:02:00	Milwaukie	OR	Fireball	90 seconds	Fireball like object flying in a inconsistent line completely disappears from sight.	45.4462	-122.6393
1311	8/8/2013 21:10:00	Milwaukie	OR	Light	2-3 minutes	Small reddish light following the space station very closely behind.((NUFORC Note: Japanese HTV-4 craft flying close to the ISS. PD))	45.4462	-122.6393
1312	1/4/2013 22:55:00	Milwaukie	OR	Light	15 minutes	Red light moving slow from afar almost thought was a star but as we noticed its color and speed and comparing to planes it was not.	45.4462	-122.6393
1313	8/28/2011 21:10:00	Milwaukie	OR	Light	2 minutes	bright light 08/28/2011 portland	45.4462	-122.6393
1314	5/26/2009 23:05:00	Milwaukie	OR	\N	1-3 seconds	Clear kidneybean shaped thing in the sky	45.4462	-122.6393
1315	3/2/2009 16:30:00	Milwaukie	OR	Disk	45 seconds	small circular disks above freeway in Clackamas Oregon	45.4462	-122.6393
1316	7/13/2007 10:15:00	Milwaukie	OR	Other	5-10 min	Four bright Lights, humming sound, stationary at times and moved at times	45.4462	-122.6393
1317	8/15/2006 4:15:00	Milwaukie	OR	Circle	2 minutes	Bright light that dropped straight down, occasionally doing zig zags and loops, but then straight back down.	45.4462	-122.6393
1318	7/20/2006 19:50:00	Milwaukie	OR	Light	5 seconds	Bright round object seen in the sky and then disappeard as if it were leaving the atmosphere. It seemed VERY SHINEY!!!!!!!!!!!!!!!!!!!!	45.4462	-122.6393
1319	2/26/2005 20:00:00	Milwaukie	OR	Sphere	5 minutes	three quiet spheres in a perfect formation. Stopped then disapeared.	45.4462	-122.6393
1320	11/28/2001 3:41:00	Milwaukie	OR	Fireball	0.02 sec	High speed moving fireball fallow by a bright tail .	45.4462	-122.6393
1321	8/20/2001 20:30:00	Milwaukie	OR	Formation	2min	2 bright red lights blinking very fast one on top and one on botom, the lights went on for about 20-30sec. then instantly lights stoped	45.4462	-122.6393
1322	7/10/2000 1:40:00	Milwaukie	OR	Light	30 sec	I was going out to roll up windows in car. Just stepped one foot onto porch when this bright light caught my eye in the sky. It was whi	45.4462	-122.6393
1323	4/14/1981 0:00:00	Milwaukie	OR	Disk	30 seconds	Large blueish green disc shaped craft stopped and hovered	45.4462	-122.6393
1324	8/20/1972 19:00:00	Milwaukie	OR	Light	5:00	An unseen, low-flying object was emitting a beam of light on the ground coming towards us.	45.4462	-122.6393
1325	5/12/1994 11:00:00	Mitchell	OR	\N	2 sec.	Two men observed a blue/white object streak down and disappear behind a nearby ridge. Cast light.	44.5665	-120.1533
1326	10/13/2014 6:37:00	Molalla	OR	Disk	A few seconds	I was walking early this morning at 6:37 am and stargazing cuz it's almost time for the sun to come up and then you can't stargaze and	45.1473	-122.5770
1327	1/15/2012 22:18:00	Molalla	OR	Sphere	45 seconds	Orange orb seen in Molalla OR on 01/15/2012. Lasted 45 seconds.	45.1473	-122.5770
1328	3/1/2006	Molalla	OR	Disk	\N	CHASEED BY UFO in CAR in OREGON.	45.1473	-122.5770
1329	8/6/2001 23:45:00	Molalla	OR	Chevron	10 seconds	3 Triangular craft in a formation south to north, emitting a whirring sound and displaying 4 white lights each.	45.1473	-122.5770
1330	1/8/2001 20:00:00	Molalla	OR	Light	continuing	Now 20 minutes....extremely bright, non-moving light, hovering low, no way to guess altitude nor distance (after dark) but in a pla	45.1473	-122.5770
1331	8/7/2000 12:45:00	Molalla	OR	Disk	1+min.	observed a disc shaped object hovering above me, which accelerated to the East at a highe rate of speed covering 140 degrees in 3 secon	45.1473	-122.5770
1332	5/12/2000 9:30:00	Molalla	OR	Disk	7-10 seconds	I was on my way home when I noticed a dark disk hovering above the mountain range	45.1473	-122.5770
1333	2/1/1999 18:00:00	Molalla	OR	Disk	20-30 sec	Lights and glowing craft seen by several people in several cars, which stopped on the road to observe. Object was seen decending into a	45.1473	-122.5770
1334	3/16/1995	Molalla	OR	\N	10 min.	Young woman on rural road witnesses strange, bright obj.. Round on top, pointed on bottom.	45.1473	-122.5770
1335	10/15/1994 23:00:00	Molalla (near)	OR	Other	3 minutes	black object in sky traveling above river, circle of light appearing to come from it lighting up river in just that area of light	45.1473	-122.5770
1336	12/31/2015 15:00:00	Monmouth	OR	Egg	10 seconds	A white balloon gives off a bright blue light and disappears along with the balloon.	44.8485	-123.2340
1337	8/28/2014 1:30:00	Monmouth	OR	Light	1 hour	Hovering blue/red/green lights in triangle	44.8485	-123.2340
1338	2/4/2010 1:35:00	Monmouth	OR	Fireball	~1 minute	Yellow-orange-white-ish fireball without tail that appeared below clouds - sky is overcast.	44.8485	-123.2340
1339	12/1/2009 2:00:00	Monmouth	OR	Disk	3 minutes	Four rounded lights were located along the side , along with a luminating bottom on the craft and a rounded top and bottom.	44.8485	-123.2340
1340	7/15/2004 22:00:00	Monmouth	OR	Circle	10 to 15 seconds	looked like a star. it made a 60 degree turn without stopping.	44.8485	-123.2340
1341	7/27/2013 23:55:00	Monroe	OR	Light	6 seconds	Bright light hovered and then vanished behind the treeline.	44.3140	-123.2968
1342	7/15/1999 1:00:00	Mosier	OR	Light	20 Seconds	Blue/White Light Gives Calm Feeling In Mosier, Oregon	45.6835	-121.3973
1343	7/4/2013 22:15:00	Mount Angel	OR	Fireball	15 minutes	6 reddish orange lights moving slowly over Mount Angel Oregon	45.0679	-122.8001
1344	7/4/2014 12:30:00	Mt. Hood	OR	Triangle	1:00	We saw an aircraft doing unsual flight charictaristics.	45.3736	-121.6960
1345	8/5/1991 10:30:00	Mt. Hood	OR	Circle	3 seconds	I saw a round object in a controlled fall from the sky, the obje went behind some clouds and did not reappear in its fall.	45.3736	-121.6960
1346	8/6/1990 11:00:00	Mt. Hood	OR	Sphere	11 seconds	From a fixed point, the object zigzad north and south, covering a 16 miles distance in no more than a second or two.	45.3736	-121.6960
1347	2/16/2015 17:44:00	Mt. Hood (Parkdale)	OR	Other	unknown	White multi-sided shape leaves trail over Mt. Hood wilderness, appears to be falling.	45.3736	-121.6960
1348	4/1/2010 1:00:00	Mt. Hood (ski bowl)	OR	Light	~10 minutes	Portland.	45.2948	-121.7723
1349	8/13/2011 23:00:00	Mt. Hood 	OR	Other	10 seconds	Mt Hood OR, large triangle shaped with rounded corners diamnond shape inside, other objects around it, disappeared within 10 seconds	45.3736	-121.6960
1350	8/28/1998 22:25:00	Mt. Vernon	OR	Fireball	4-5 sec	Bright Blue (as that of an arc welder) light, that lit up entire landscape. It was 1/4 dia of moon (in arc seconds)	44.4177	-119.1136
1351	8/19/2004 22:00:00	Mule Creek Canyon (on the Rogue River)	OR	Fireball	10 seconds	Three very large lights at different times in the sky above the tree line. Military jets flying in the area.	42.7165	-123.8845
1352	3/22/2015 22:23:00	Mulino	OR	Cigar	2	I saw a flying object. It was as big and bright as a full moon. then it dimmed itself out, and disappeared. I was on Central Point Roa	45.2212	-122.5817
1353	9/22/2011	Mulino	OR	Circle	3 min	circle/ red/orange differnt color lights spun	45.2212	-122.5817
1354	8/31/2003 23:30:00	Mulino	OR	Triangle	1 minute	Triangle of white lights heading north at high altitude over Portland. ((NUFORC Note: Possible sighting of "NOSS" satellites. PD))	45.2212	-122.5817
1355	8/11/2001 23:30:00	Mulino	OR	Light	30 seconds?	Bright light moving from west to east stops and appears to shoot straight up, disappearing.	45.2212	-122.5817
1356	6/8/2000 11:00:00	Mulino	OR	Cigar	4 min	They both went outside and as my brother in law discribed it was the typical cigar shaped shining object lower than the planes flight.	45.2212	-122.5817
1357	3/12/2005 19:45:00	Multnomah Village	OR	Sphere	6 seconds	I was walking back to my place from grocery shopping, when I saw a green fireball. A big green orb that seemed about one fifth the siz	45.4668	-122.7109
1358	10/19/2014 22:00:00	Murphy	OR	Light	30 seconds	White light with no sound appears and disappears several times as it moves closer towards my direction	42.3475	-123.3323
1359	3/6/2008 5:17:00	Murphy	OR	Light	2 minutes	Moving light - UFO sighting over Grants Pass Peak in Murphy, Oregon	42.3475	-123.3323
1360	6/16/1997 22:46:00	Murphy	OR	Other	2 to 3 seconds	A white lighted object appeared from the South West side flew to the North and disappeared. It appeared out of nowhere and disappeared	42.3475	-123.3323
1361	6/26/2014 22:15:00	Myrtle Creek	OR	Fireball	20 minutes	Orange fireball observed in sky over Southern Oregon.	43.0201	-123.2931
1362	6/26/2014 22:00:00	Myrtle Creek	OR	Circle	5 minutes	Fireball in sky.	43.0201	-123.2931
1363	2/1/2014 20:00:00	Myrtle Creek	OR	Light	10 minutes	several lights shaped in an s pattern moving slowly with a flashing light redish in color.Dont know if what I saw was a ufo or somrthin	43.0201	-123.2931
1364	8/7/2012 22:50:00	Myrtle Creek	OR	Fireball	1-2 minutes	Bright orange orb moving through the sky.	43.0201	-123.2931
1365	10/21/2008 7:00:00	Myrtle Creek	OR	Light	30 sec.	Bright light hovering in the fog.	43.0201	-123.2931
1366	8/12/1999 22:00:00	Myrtle Creek	OR	Circle	1 minute, appx.	Object appeared to be very high. Looked just like a star, same light color etc. Object moved from aprox. north east horizon to south ea	43.0201	-123.2931
1367	6/1/1967 20:30:00	Myrtle Creek	OR	Circle	initially 15 minutes last	10 PM August 1967 sphere observed by multiple witnesses moving along ridgleline 1/2 mile distance 500 Lights On Object0: Yes	43.0201	-123.2931
1368	6/23/2015 21:54:00	Myrtle Point	OR	Rectangle	20 minutes	Large rectangular object with multiple lights moving very slowly.	43.0648	-124.1390
1369	6/24/2013 22:00:00	Myrtle Point	OR	Oval	10 SECONDS	CRAFT CAME IN FROM OCEAN AT FAST PACE. CRAFT MADE NO NOISE I HAD CAMERA IN UTILITY ROOM 10 FEET AWAY GRABBED AND SHOT PICTURE. THIS CRA	43.0648	-124.1390
1370	7/7/2002 1:30:00	Myrtle Point	OR	Cigar	4 to 5 seconds	I was coming back to Oregon from Lake Havasu on sunday 07/07/02 and almost got run over by a U.F.O. on hwy. 42 about 10 miles east of M	43.0648	-124.1390
1371	1/17/2013 6:30:00	Nehalem	OR	Light	5 seconds	Bright white "light" performs extreme maneuvers at OR coast.	45.7201	-123.8940
1372	8/8/2012 23:00:00	Nehalem	OR	Light	5 minutes	Two, then one stationary red lights pulse, fade, then disappear offshore from Nehalem State Park	45.7201	-123.8940
1373	1/16/2016 21:12:00	Neskowin	OR	Oval	10 seconds	The misty, illuminated oval traveled from the East losing altitude until it disappeared into the ocean.	45.1068	-123.9843
1374	9/10/2015 3:15:00	Newberg	OR	Changing	2-3 minutes	Object flying north to south suddenly brightens and after emitting a halo burst around it, turns sharply east to quickly disappear.	45.3001	-122.9732
1375	12/25/2014 19:10:00	Newberg	OR	Circle	5 minutes	Orange Orbs over Newberg, OR clouded sky	45.3001	-122.9732
1376	3/18/2012 21:55:00	Newberg	OR	Other	1 minute	Unusual bright light seen over N.W. Oregon. ((NUFORC Note: Sighting of Venus, which is in the NW sky, currently. PD))	45.3001	-122.9732
1377	9/1/2010 22:45:00	Newberg	OR	Chevron	20 sec.	Black V shaped object completely silent moving across the night sky.	45.3001	-122.9732
1378	6/23/2010 22:30:00	Newberg	OR	Light	5 minutes	Bright red dot that resembled a star, but moved and then faded away.	45.3001	-122.9732
1379	8/8/2008 9:00:00	Newberg	OR	Light	2 minutes	object over newberg oregon, 2 witnessed, white light with three red lights attached.	45.3001	-122.9732
1380	3/20/2007 22:35:00	Newberg	OR	Light	a few seconds	round ball of light falling from the sky like a falling star.	45.3001	-122.9732
1381	11/1/1999 2:00:00	Newberg	OR	Other	3min	four falling starst one time two hitting ground on either side of hwy 99w near newberg..	45.3001	-122.9732
1382	7/10/1999 22:45:00	Newberg	OR	Circle	40 min	Bright red object, moved alittle than stayed stationary until it fizzled out. Was it Baloon with flare? Red Sun? Meteorite coming towar	45.3001	-122.9732
1383	8/31/1997 21:00:00	Newberg	OR	light	approx. 5 min.	A woman and her sun witness 5 strange lights, white in the center, yellow between the center and edge, and blue. Does unearthly maneuve	45.3001	-122.9732
1384	6/14/1997 3:30:00	Newberg	OR	Other	4 hours	i was sleeping on the trampoline when a v shaped object appeard over head hovered for a few hours and left	45.3001	-122.9732
1385	8/1/1996 22:00:00	Newberg	OR	Other	30 min. +	There was a star that moved in all directions. It would move fast and slow. It would come to sudden stops and sit for a while and the	45.3001	-122.9732
1386	8/15/1986 23:25:00	Newberg	OR	Triangle	30 min	tranguler sighting on the west coast , lights , fast moving at times and chased by the airforce	45.3001	-122.9732
1387	7/15/1961 23:30:00	Newberg	OR	Egg	2.5 hours	Bright orbs flying in sky west of Portland, Oregon	45.3001	-122.9732
1388	8/7/2003 22:00:00	Newberry Crater National Monument	OR	Light	1 minute	bright light pretending to be a star in big dipper	43.7221	-121.2345
1389	2/10/2016 5:15:00	Newport	OR	Other	<2 minutes	T-shaped craft traveling offshore that was absolutely not a helicopter or airplane of any sort	44.6368	-124.0535
1390	8/22/2015 2:00:00	Newport	OR	Disk	40 minutes	Flying disk and unidentified life forms seen in Newport, Oregon.	44.6368	-124.0535
1391	6/15/2014 0:00:00	Newport	OR	Light	20 minutes	Numerous orange lights drifting inland from over the ocean.	44.6368	-124.0535
1392	5/11/2014 22:45:00	Newport	OR	Light	3-5 minutes	Object in night sky lands/communicates with Vega.	44.6368	-124.0535
1393	4/9/2014 23:00:00	Newport	OR	Oval	~1 hour	Orange oval floating light on ocean unaffected by waves speeds up and slows down on the water.	44.6368	-124.0535
1394	5/4/2013 21:53:00	Newport	OR	Fireball	3:00 minutes	Two people witnessed five lights floating in formation, absolutely silent, headed from northeast to southwest over my hometown of Newpo	44.6368	-124.0535
1395	7/4/2011 22:35:00	Newport	OR	Light	5 minutes	One bright red light, not flashing, traveled from north to south about 1,000 ft above us.	44.6368	-124.0535
1396	8/30/2009 1:00:00	Newport	OR	Circle	8sec	Two separate LARGE balls of light fell from sky within five minutes of eachother.	44.6368	-124.0535
1397	4/23/2008 0:00:00	Newport	OR	Light	1 min	0:00 04/23/08 Newport Oregon High Flying Objects with Red Halo/Haze @ High Speed, No Sound	44.6368	-124.0535
1398	2/12/2008 1:00:00	Newport	OR	Triangle	3hrs	newport,oregon ufo	44.6368	-124.0535
1876	7/16/2000 1:00:00	Portland	OR	Light	4sec	Jade Comet?	45.5231	-122.6765
1399	4/24/2005 21:00:00	Newport	OR	Cone	3 hours	Fanned out cones with pointy bright lighted nose. ((NUFORC Note: We suspect lens flares. Witness concurs. PD))	44.6368	-124.0535
1400	8/20/2004 22:30:00	Newport	OR	Fireball	30 minutes	Two men observe large, red/orange, glowing object disappear into the night sky.	44.6368	-124.0535
1401	11/7/2003 20:00:00	Newport	OR	Other	about 5 min	This object was on the south beach area near the airport. I believe the object was partially behind a hill, so I wasn't able to get a	44.6368	-124.0535
1402	1/20/2001 2:00:00	Newport	OR	Light	5 seconds	Two parellel luminescent lights decended from sky and vanished over ocean without sound.	44.6368	-124.0535
1403	10/2/1999 20:30:00	Newport	OR	Changing	2 hours	Original sighting was that of a Pyramid of lights, however, the shape of those lights changed in what I believe to be the rotating of a	44.6368	-124.0535
1404	4/21/1995 23:00:00	Newport	OR	\N	\N	While looking at stars, man sees "satellite." 2nd obj. streaks up to 1st, merges w/ it. Then, 3rd obj. streaks up to 2 others.	44.6368	-124.0535
1405	6/15/1977 21:30:00	Newport	OR	Light	20+10 min	Zig-Zagging light similar to star moving around other stars changing intensity as if looping in/out light range	44.6368	-124.0535
1406	2000-2001 20:00	Newport	OR	Disk	10-30minutes	Disk shaped different colored object. In varies movements!	44.6368	-124.0535
1407	11/9/1997 6:15:00	Newport (coast range, east of)	OR	Formation	10 sec	A string of objects, could have been a deaying satellite or incoming space debris. There were about six in a row around the vicinity of	44.6368	-124.0535
1408	7/13/2014 21:30:00	North Bend	OR	Sphere	2 minutes	Very bright sphere shaped orange light tracking along Hwy 101 on the oregon coast.	43.4065	-124.2243
1409	8/13/2012 22:00:00	North Bend	OR	Circle	5 minutes	Silent, golden orange orbs	43.4065	-124.2243
1410	4/3/2006 21:44:00	North Bend	OR	Circle	34 mins	multiple crafts traveling at high speed and emitting flare-like blasts.	43.4065	-124.2243
1411	9/12/2004 21:10:00	North Bend	OR	Unknown	4 minutes	A strange shape, maybe wedge shaped? I could see a large circular shape with spokes on the bottom of it.	43.4065	-124.2243
1412	7/7/2001 21:00:00	North Bend	OR	Light	ten seconds	Bright light coming from the sky with no sound of any aircraft or hellicopters.	43.4065	-124.2243
1413	6/6/1983 22:00:00	North Bend	OR	Oval	3-4 mins	My wife, two kids, ages 9 and 13 and myself. We were going home east just turning from No.BAY Dr, onto No. Way. As we all looked up the	43.4065	-124.2243
1414	6/13/1981 19:30:00	North Bend	OR	Oval	4-5 mins	My wife, my self and my two boys,ages about 13 and 9 were coming home from town. We turned off of No. Bay Dr onto No.Way, we saw what l	43.4065	-124.2243
1415	6/14/2015 12:30:00	North Plains	OR	Disk	2 minutes	Daylight disc enters valley behind my rural home.	45.5971	-122.9934
1416	6/14/2015 12:30:00	North Plains	OR	Disk	1-2 minutes	I saw an object that was unidentifible in the sky.	45.5971	-122.9934
1417	9/1/2007 2:00:00	North Plains	OR	Light	5-10 minutes	A stationary star suddenly shoots straight across the sky above North Plains then shoots towards space.	45.5971	-122.9934
1418	6/15/2001 23:00:00	North Plains	OR	Triangle	1 minute	Big, black, silent,3 lights at each corner,triangle,wider then a 4 lane free way.	45.5971	-122.9934
1419	8/17/1998 14:10:00	North Plains	OR	Oval	3 min	color silver,oblong shape,distance about a mile away,it wobbled and that was how i saw it had no wings,moving west to east	45.5971	-122.9934
1420	8/23/2014 21:40:00	North Plains (near)	OR	Triangle	30 seconds	Uplit triangular craft displaying spectrum of color over Hwy 26.	45.5971	-122.9934
1421	6/1/2006 20:45:00	North Powder area	OR	Oval	15 seconds	Metalic craft traveling at high speed leaving trail like meteor rapidly changes direction and vanishes.	45.0285	-117.9199
1422	7/1/2016 22:15:00	Northwest Medford	OR	Rectangle	5 minutes	Strange moving object in Nortwest Medford, Oregon sky	42.3265	-122.8756
1423	8/31/2002 23:00:00	Nyssa	OR	Changing	90 minutes taped	Strobe type objects that vary in shape.	43.8768	-116.9949
1424	8/13/2012 22:10:00	O'Brien	OR	Fireball	5 minutes	Orange Orb rumbling UFO over coastal mountains in southern Oregon	40.8108	-122.3250
1425	10/1/1997 21:30:00	Oakland	OR	Light	1 minute	High altitude light turned, dropped several Thousand feet, turned and disappeared!	43.7465	-122.4617
1426	7/28/2016 1:00:00	Oakridge	OR	Rectangle	1 minute	I seen a floating slab it was thinner than is was wider and longer. ((anonymous report))	43.7465	-122.4617
1427	6/25/2016 1:15:00	Oakridge	OR	Formation	<10 seconds	Facing west, I looked out my windshield and saw a large, blue orb shaped object shoot across the sky.	43.7465	-122.4617
1428	2/10/2016 5:00:00	Oakridge	OR	Other	12-15 minutes	Large object moves slowly across early morning sky with shooting stars and comet tails.	43.7465	-122.4617
1429	7/19/2012 21:44:00	Oakridge	OR	Circle	5 + minutes	Flying orange glowing sphere seen by 3 adults	43.7465	-122.4617
1430	9/17/2005 21:00:00	Oceanside	OR	Light	3 sec	Over the ocean, 1 bright white light blinked off became two, another blinked on became five horizontal	33.1959	-117.3795
1431	10/13/2004 19:00:00	Oceanside	OR	Disk	2min.or less	It look's like many pictures I have seen of so called flying saucer's Like bright metal in the sun. the sun was below the horizon.	33.1959	-117.3795
1432	7/11/2014 0:30:00	Ochoco National Forest	OR	Unknown	5 minutes	My companion and I were individually rendered physically and mentally paralyzed at the same time with a similar voice in our minds.	44.3762	-120.1178
1433	8/4/2012 1:00:00	Ontario	OR	Triangle	still going	Object with color changing lights in one small area but moving erratically.	44.0266	-116.9629
1434	6/22/2011 4:22:00	Ontario	OR	Light	a few seconds, multiple o	Ontario Oregon: A bright yellow-ish light moved across the NE sky, too close and too fast to be a plane.	44.0266	-116.9629
1435	3/7/2005 20:30:00	Ontario	OR	Circle	5-10 seconds	4-5 White lights moving above Ontario, OR	44.0266	-116.9629
1436	8/3/2001 3:45:00	Ontario	OR	Light	530	Two bright lights seen North East of Ontario, Oregon.	44.0266	-116.9629
1437	11/19/2016 20:40:00	Oregon City	OR	Light	10 minutes	What we witnessed has changed our entire way of thinking!	45.3573	-122.6068
1438	10/31/2015 3:22:00	Oregon City	OR	Sphere	5 minutes	There was a break in the rain and I saw several white orbs or dots crossing the sky headed in the Wilsonville direction.	45.3573	-122.6068
1439	3/30/2015 21:01:00	Oregon City	OR	Sphere	\N	Black sphere shaped flying object with blue light coming out of the center.	45.3573	-122.6068
1440	10/11/2014 22:00:00	Oregon City	OR	Circle	Seconds	Bright ball of yellow light flying past window	45.3573	-122.6068
1441	8/7/2014 23:45:00	Oregon City	OR	Oval	5 minutes	Red bottom, blue green top lights.	45.3573	-122.6068
1442	8/7/2014 23:30:00	Oregon City	OR	Disk	15 minutes	Craft moving slowly overhead as if searching for something.	45.3573	-122.6068
1443	3/4/2014 21:30:00	Oregon City	OR	Fireball	2 minutes	Fireball--slow moving, large.	45.3573	-122.6068
1444	1/9/2014 7:25:00	Oregon City	OR	Circle	5 seconds	White round light or object with a haze hovered for a short moment then moved quickly across sky at an arched angle, then disappeared.	45.3573	-122.6068
1445	1/4/2014 18:30:00	Oregon City	OR	Unknown	10-15 minutes	Saw what appeared to be a star, but had some red and blue colors too, and moves zig zag, & up, and down.	45.3573	-122.6068
1446	7/4/2013 21:45:00	Oregon City	OR	Light	10 minutes	5 objects in the horizon sky rising.	45.3573	-122.6068
1447	2/25/2013 4:00:00	Oregon City	OR	\N	1 minute	Bright lights and no noise.	45.3573	-122.6068
1448	10/13/2012 22:05:00	Oregon City	OR	Unknown	15 minutes	I was out taking my dog to go "potty" when I looked up at an object emitting a solid orange-ish light-travelling south to nor	45.3573	-122.6068
1449	8/10/2012 21:30:00	Oregon City	OR	Fireball	3 minutes	Saw thirteen fireballs in the sky as i walked home from the store.	45.3573	-122.6068
1450	8/2/2012 21:30:00	Oregon City	OR	Fireball	3 minutes	Saw nine fireballs flying in the sky from the West Linn hills over the oregon City area.	45.3573	-122.6068
1451	8/28/2011 21:00:00	Oregon City	OR	Light	5 MIN	Bright white light and small red light in sky 8-28-2011 Oregon city oregon	45.3573	-122.6068
1452	5/29/2010 22:00:00	Oregon City	OR	Light	5 minutes	Oregon City Sighting on 5/29/2010 - Approximatley 12 red-orange lights ascending in the east.	45.3573	-122.6068
1453	5/29/2010 21:30:00	Oregon City	OR	Light	20	Oregon City UFO sighting like red shining stars in triangle formation	45.3573	-122.6068
1454	5/29/2010 21:30:00	Oregon City	OR	Triangle	3 mins	Triangular light formation hovering over Oregon City/ West Linn area Oregon.	45.3573	-122.6068
1455	9/26/2009 20:50:00	Oregon City	OR	Sphere	2 minutes	Strange orange lights in sky over oregon city flying north to south.	45.3573	-122.6068
1456	8/2/2008 1:30:00	Oregon City	OR	Other	6 minutes	At 1:30am a very large craft approaches Portland, OR airport from the south and stops near Oregon City.	45.3573	-122.6068
1457	10/26/2007	Oregon City	OR	\N	5 seconds	witnessed a thin bright, white streak in the sky lasting only a few seconds prior to ending in a white flash followed by a bright gree	45.3573	-122.6068
1458	5/24/2002 5:50:00	Oregon City	OR	Rectangle	10+ minutes	Bright, non-circular object hovers far above Oregon City OR at dawn, 2002/05/24	45.3573	-122.6068
1459	7/23/2001 21:30:00	Oregon City	OR	Triangle	15:00 min	Spoted craft at a low altitude southwest of town . It appeared to be traveling about sixty miles per hour . As the craft got closer I w	45.3573	-122.6068
1460	1/30/1996	Oregon City	OR	\N	2-3 min.	UFO investigator relays sighting report: 2 women witness 2 very bright lights 25 deg. above horizon, 3rd similar obj. approaches both.	45.3573	-122.6068
1461	8/27/1995 21:30:00	Oregon City	OR	\N	30 sec.	Family camped 20 mi. S of Mt. Hood witness strange object streak through 50 deg. across sky. Other observers in campground.	45.3573	-122.6068
1462	8/8/1995 21:30:00	Oregon City	OR	\N	30 min.	Former U.S.Army officer (Ph.D.) reports strange cluster of lights, "like Christmas lights," moving overhead. Neighbor sees object.	45.3573	-122.6068
1463	6/21/1995 21:30:00	Oregon City	OR	\N	90 min.	Couple witness multiple round, or oblong, lights in night sky. Positioned in circle. Seen to move south to north, then reverse course.	45.3573	-122.6068
1464	4/22/1995 1:05:00	Oregon City	OR	\N	1 hour	Woman repts. two objects in proximity; witnessed two nights sequentially in same part of sky. (Possible stars??)	45.3573	-122.6068
1465	7/4/1994	Oregon City	OR	\N	\N	Young woman reports sighting. (Facts unclear; awaiting written rept.)	45.3573	-122.6068
1466	6/22/1972 3:15:00	Oregon City	OR	Triangle	06-10 sec	Triangular-Rounded Edges-Very Black-Rimmed evenly with small lights and unevenly on its underside.	45.3573	-122.6068
1467	12/10/1999 15:32:00	OSU Experiment station	OR	Egg	3-4min.	Egg shaped silver object flying approximately 2000ft directly below a comercial airliner.	44.5638	-123.2794
1468	6/20/2014 20:55:00	Otis	OR	Cigar	20 minutes	Craft was sivler or metallic, reflected light, very bright and just stayed there	45.0243	-123.9465
1469	11/14/2012 18:00:00	Otis	OR	Formation	3 minutes	5 red star like lights appeared in the sky.	45.0243	-123.9465
1470	10/21/2010 22:00:00	Otis	OR	Light	20-30 mins	"Satellites" that sped away and a vanishing "Constellation"	45.0243	-123.9465
1471	2/29/2008 19:10:00	Otis	OR	Unknown	2 minutes	Super bright strobing flashes in sky over Oregon Coastal Mountains.	45.0243	-123.9465
1472	10/4/2007 6:00:00	Otis	OR	Unknown	1 second	You need to take a look at this	45.0243	-123.9465
1473	7/8/2004 23:15:00	Otis	OR	Other	4 minutes	Two faint star-like objects moving in a straight line, exactly with one another, slowly across the sky.	45.0243	-123.9465
1474	10/14/1998 19:55:00	Otis	OR	Other	3 seconds	From WSW to ENE, crescent shaped object,blue,white in color. Slower than normal meteor speed.	45.0243	-123.9465
1475	8/10/1998 15:00:00	Otis	OR	Sphere	3 minutes	Silver basketball size sphere chases eagle.	45.0243	-123.9465
1476	5/23/2005 23:00:00	Otis (over the ocean)	OR	Light	5 hours`	Light in sky which was bigger than a star or planet and which simply hovered for several hours. ((NUFORC Note: Sirius?? PD))	45.0243	-123.9465
1477	6/26/2000 22:20:00	Otis/Lincoln City	OR	Unknown	1-3 seconds	Witnessed bright light/object seemingly intensify and then accelerate away in a matter of about 1-2 seconds.	45.0243	-123.9465
1478	8/30/2013 21:25:00	Pacific City	OR	Circle	<1 minute	Orange hovering light moving slowly then rapidly then gone into thin air	45.2023	-123.9629
1479	8/7/2012 21:30:00	Pacific City	OR	Light	4-5 minutes	3 witnesses observed a series of orange lights move rapidly from the SW to the NE from the tree line/horizon to an ever increasing alti	45.2023	-123.9629
1480	7/4/2000 21:00:00	Pacific City	OR	Light	5-10seconds	I'm sure I saw a real alien aircraft!	45.2023	-123.9629
1481	3/24/1999 20:30:00	Pacific City	OR	Sphere	45 minutes	Three lighted circular aircraft	45.2023	-123.9629
1482	6/28/2013 22:30:00	Parkdale	OR	Triangle	60 seconds	Witnessed a triangular shaped craft with bright white lights travel across the sky then quickly shot straight up and disappeared.	45.5198	-121.5967
1483	5/17/2015 22:18:00	Pendleton	OR	Diamond	10 minutes+	Unkown light in sky over Pendleton, OR.	45.6721	-118.7886
1484	3/27/2015 10:00:00	Pendleton	OR	Other	2 minutes	Silver-ish object unmoving in sky for 2 minutes, disappears, appears in another position before disappearing.	45.6721	-118.7886
1485	2/1/2013 14:00:00	Pendleton	OR	Unknown	1 hour	Very odd sounds comming from the upper nite sky ! very wierd	45.6721	-118.7886
1486	8/15/2012 20:00:00	Pendleton	OR	Unknown	7 minutes	White light in the early evening	45.6721	-118.7886
1487	9/1/1985 13:30:00	Pendleton	OR	Rectangle	3 minutes	rectangle falling turning and flipping end over end	45.6721	-118.7886
1488	7/?/97 08:00	Pendleton	OR	Other	15 minutes	Cigar shaped object flew over my parents home in Pendleton, Oregon	45.6721	-118.7886
1489	8/15/1978 23:00:00	Pendleton/Athena (between)	OR	Light	several seconds	Tourquois-green fireball drop straight down from a cloud layer and hover a few seconds. Next made a bee line to our car, then shot str	45.6721	-118.7886
1490	8/5/2013 21:59:00	Philomath	OR	Light	6 minutes	08/05/13 21:59 Low flying, very large white light, heading north, viewed for 6 minutes.	44.5401	-123.3676
1491	7/22/2010 16:00:00	Philomath	OR	Unknown	2 minutes or so	UFO follows plane	44.5401	-123.3676
1492	7/12/2008 20:30:00	Philomath	OR	Rectangle	2 minutes	Staionary rectangular object in sky near Mary's Peak spoted from car but disapeared when we pulled over to look.	44.5401	-123.3676
1493	10/10/2002 2:00:00	Philomath	OR	Unknown	about5seconds	i watched on the portland news that the space shuttle would be visiable and went to philomath oregon to what was known to be the apple	44.5401	-123.3676
1494	10/15/2005 13:10:00	Phoenix	OR	Cigar	3-5 Min.	A jet black colored cigar-shaped object, with 2 tapered sharply shaped points at its ends, seen moving forward in a specific direction.	42.2754	-122.8181
1495	11/8/1995 19:00:00	Pilot Rock	OR	Light	1 hour	Two brothers witness cluster of 4 bizarre blue-white lights ahead on highway. Strange effects. Drove 98.7 miles on 2 gal. gas.	45.4832	-118.8300
1496	4/15/1978 13:00:00	Pleasant Hill	OR	Unknown	1 min	Grandfather and grandson levitated in dump truck. 500 Lights On Object0: Yes	43.9674	-122.9329
1497	10/16/2001 0:00:00	Polk County	OR	Unknown	2 minutes.	Close encounter over roof in Polk County - submitted by OUFOR.	44.9267	-123.4919
1498	11/10/2010 12:00:00	Port Orford	OR	Oval	Frequently	Bright Light , out of body experiences, incredible	42.7457	-124.4973
1499	8/15/2009 8:00:00	Port Orford	OR	Light	30 seconds	Sphere shaped satellite looking object. Changed trajectory and faded out. Flying from northwest to southeast then changed to southwest.	42.7457	-124.4973
1500	7/18/2009 7:00:00	Port Orford	OR	Triangle	5 minutes	Low flying, Humming, Triangular, Flashing red lights, Low speed	42.7457	-124.4973
1501	7/22/1997 14:00:00	Port Orford	OR	Cigar	\N	A large cigar-shape heading west to east.	42.7457	-124.4973
1502	5/3/2017 21:00:00	Portland	OR	Circle	20 minutes	Three moving bright lights.	45.5231	-122.6765
1503	4/16/2017 20:30:00	Portland	OR	Oval	5 minutes	Bright orange ball flying over house making rapid direction shift. ((anonymous report))	45.5231	-122.6765
1504	4/3/2017 0:30:00	Portland	OR	Oval	<1 minute	Color changing, silent, slow moving oval above Portland's West Hills.	45.5231	-122.6765
1505	2/6/2017 18:00:00	Portland	OR	Light	1 hour	Object is in high orbit, many different patterns of movement. It appears to have thrusts of some kind going out in all directions to he	45.5231	-122.6765
1506	1/28/2017 19:00:00	Portland	OR	\N	\N	PETER| MY COUSIN CALLED ME 1/28/17 SAID HE HAD BEEN WATCHING A STATIONARY BRIGHT OBJECT IN THE W SKY FOR >1 hr.. ((Venus))	45.5231	-122.6765
1507	1/27/2017 13:15:00	Portland	OR	Cylinder	15 minutes	star/ white cylinder object seen by students at school.	45.5231	-122.6765
1508	12/9/2016 21:50:00	Portland	OR	Flash	10 seconds	Pulsing green light over Portland.	45.5231	-122.6765
1509	11/15/2016 19:10:00	Portland	OR	Triangle	20 seconds	Transparent and shimmering, triangular, completely silent, travelling N to S 20 yards above rooftops, three jets followed.	45.5231	-122.6765
1510	11/15/2016 3:29:00	Portland	OR	Oval	\N	Hovering oval object in Portland, Oregon.	45.5231	-122.6765
1511	11/7/2016 10:30:00	Portland	OR	Other	30-60 seconds	Color shifting object moving east to west mid-morning.	45.5231	-122.6765
1512	9/22/2016 20:45:00	Portland	OR	Sphere	15-18 minutes	Slow moving orb over Portland oregon	45.5231	-122.6765
1513	9/3/2016 23:55:00	Portland	OR	Fireball	3 seconds	At approx 11:55 pm, I observed in the western sky a large green fireball, with a strange oblong shape to it, traveling northward, at a	45.5231	-122.6765
1514	8/29/2016 20:25:00	Portland	OR	Sphere	5 minutes	These spheres are white like electic and appear about 8:25 pm for weeks now they stay stationary for up to 4 to 5 minutes than descend	45.5231	-122.6765
1515	8/12/2016 22:30:00	Portland	OR	Light	Ongoing	Satellite not what it appears to be.	45.5231	-122.6765
1516	8/9/2016 23:00:00	Portland	OR	Flash	15 seconds	Orbiting object flares, separate flash appears, then object disappears.	45.5231	-122.6765
1517	8/2/2016 11:15:00	Portland	OR	Light	3 minutes	Sitting on my porch with my significant other and saw a light appear from the sky and come down stay for a second and then go back up t	45.5231	-122.6765
1518	7/24/2016 15:00:00	Portland	OR	Other	1 hour	Dark grey box floating in the air near PDX airport.	45.5231	-122.6765
1519	7/14/2016 21:30:00	Portland	OR	Teardrop	4 seconds	Fireball.	45.5231	-122.6765
1520	6/3/2016 23:50:00	Portland	OR	Circle	1 minute	((HOAX?? DATE IS FLAWED)) Faster then anything I've ever seen ((anonymous report))	45.5231	-122.6765
1521	6/2/2016 22:45:00	Portland	OR	Triangle	1 minute	3 bright dots and 3 bright lines nearly connecting them-outlining a perfect triangle floating still and bright, high in the S sky.	45.5231	-122.6765
1522	5/15/2016 22:53:00	Portland	OR	Oval	3 minutes	Huge oval object with flashing colored lights and buzzing noise appeared outside my house.	45.5231	-122.6765
1523	5/14/2016 0:00:00	Portland	OR	Flash	30 minutes	Large flashes of light in N.E, Portland.	45.5231	-122.6765
1524	5/7/2016 10:00:00	Portland	OR	Oval	15 minutes	((HOAX??)) Crafts flying over Portland. Orange light from bottom. Seemed to be two, one higher than the other. ((anonymous report))	45.5231	-122.6765
1525	4/9/2016 22:30:00	Portland	OR	Sphere	6 minutes	6-10 slow moving, orange orbs or spheres	45.5231	-122.6765
1526	4/8/2016 21:45:00	Portland	OR	Circle	10 minutes	Slow moving orange lights.	45.5231	-122.6765
1527	4/2/2016 22:19:00	Portland	OR	Unknown	1 minute	Glowing orange object (like a burning plane) disappears/fades away, doesn't fall to earth.	45.5231	-122.6765
1528	4/1/2016 20:55:00	Portland	OR	Light	30 minutes	Multiple sightings of bright white orbs that sometimes flashed brightly.	45.5231	-122.6765
1529	4/1/2016 19:58:00	Portland	OR	Formation	0:02	I saw what look like 3 objects at a very high altitude flying in a southeasterly direction. There was no sound and no lights. They mov	45.5231	-122.6765
1530	4/1/2016 19:58:00	Portland	OR	Formation	2 minutes	I was standing in my backyard when I saw 3 dark objects in a triangle shape heading in a southerly direction.	45.5231	-122.6765
1531	3/31/2016 2:00:00	Portland	OR	Light	3-5 seconds	Went on a bike ride with my headphones in, was almost home i looked left casually and looked in the sky. I saw a VERY WHITE bright ligh	45.5231	-122.6765
1532	3/14/2016 2:30:00	Portland	OR	Disk	60-90 seconds	While standing in my back yard I was watching the dark clouds coming in.	45.5231	-122.6765
1533	1/28/2016 19:00:00	Portland	OR	Circle	\N	Saw three orange circles near each other and then they spread apart but weren't definitely airplanes or stars. They were slowly moving.	45.5231	-122.6765
1534	12/30/2015 22:00:00	Portland	OR	Light	5 hours	Dozen red green blue lights in portland sky that spin with two bright white lights that move. ((NUFORC Note: Stars?? PD))	45.5231	-122.6765
1535	12/4/2015 23:30:00	Portland	OR	Other	2 minutes	Strange moving multicolored diamond shape over Gresham, Oregon.	45.5231	-122.6765
1536	12/4/2015 18:30:00	Portland	OR	Fireball	1 second	Small fireball streaked across sky looking North from SE Portland. ((NUFORC Note: Possible meteor? PD))	45.5231	-122.6765
1537	11/3/2015 21:40:00	Portland	OR	Triangle	30 seconds	I saw a triangular object with a light trail behind it move REALLY FAST through the sky.	45.5231	-122.6765
1538	10/24/2015 22:48:00	Portland	OR	Other	2 minutes	Possible rectangle with fire like lights silently gaining altitude from South East heading North West, possibly following jet.	45.5231	-122.6765
1539	9/27/2015 19:00:00	Portland	OR	Oval	5 minutes	Three silent red orbs over SW Portland, moving at high speed, making 90 degree turns.	45.5231	-122.6765
1540	9/10/2015 5:30:00	Portland	OR	Light	Still happening	Still moving bright white lights.	45.5231	-122.6765
1541	9/8/2015 23:30:00	Portland	OR	Circle	45 seconds	Dime sized gray/white circle over Portland on Tuesday.	45.5231	-122.6765
1542	8/31/2015 17:01:00	Portland	OR	Sphere	Brief	It was an unusually beautiful day with light beaming down between the clouds when I took a picture from Mount Tabor over to Portland an	45.5231	-122.6765
1543	8/6/2015 4:00:00	Portland	OR	Light	40 minutes	Sporadic movement: circular, straight, zig-zag. Star-like, no blinking lights. Cont. movement and short periods of complete stillness.	45.5231	-122.6765
1544	8/4/2015 23:40:00	Portland	OR	Light	5 seconds	Group of 3 lights sighted heading south towards Portland.	45.5231	-122.6765
1545	8/4/2015 2:30:00	Portland	OR	Flash	4 seconds	An extremely fast moving blue flash. Appeared under cloud cover and was visible for approximately 4 seconds.	45.5231	-122.6765
1546	7/9/2015 23:15:00	Portland	OR	Unknown	1 minute	Shape unknown but multicolored lights stopped in mid descent then went diagonally before dropping straight down out of sight.	45.5231	-122.6765
1547	7/2/2015 23:56:00	Portland	OR	Unknown	3-4 minutes	Witnessed a craft passing by.	45.5231	-122.6765
1548	6/20/2015 22:00:00	Portland	OR	Sphere	23 minutes	Low on the E sky in Portland, OR, I saw 3 motionless hovering crafts and they were taking on a triangle formation.	45.5231	-122.6765
1549	6/7/2015 17:28:00	Portland	OR	Formation	25 minutes	Three highly reflective colinear points tied with a tether.	45.5231	-122.6765
1550	5/15/2015 1:18:00	Portland	OR	Other	10 minutes	Strange shape UFO sighting over PSU Park Blocks	45.5231	-122.6765
1551	5/15/2015 1:15:00	Portland	OR	Unknown	10 minutes	Flashing lights without sound lit up sky above Portland, Or.	45.5231	-122.6765
1552	5/1/2015 13:01:00	Portland	OR	Circle	2 minutes	White, then green, ball of light seen moving about sky. ((NUFORC Note: Awaiting photo. We suspect a lens "flare." PD))	45.5231	-122.6765
1553	4/30/2015 3:00:00	Portland	OR	Light	10 seconds	Star-like white light in SE PDX. ((NUFORC Note: Possible satellite?? PD))	45.5231	-122.6765
1554	4/15/2015 21:21:00	Portland	OR	Unknown	2 minutes	2 red/orange lights heading SE at a consistent speed/distance from each other.	45.5231	-122.6765
1555	4/11/2015 21:08:00	Portland	OR	Fireball	2 minutes	Was working late night security near Willamette river downtown. Saw six silent, slow moving red fireballs taking off. They moved slowly	45.5231	-122.6765
1556	4/4/2015 10:58:00	Portland	OR	Fireball	30 seconds	Bright red ball shaped light.	45.5231	-122.6765
1557	3/29/2015 21:30:00	Portland	OR	Formation	3-4 minutes	An arc shaped formation of 5-6 flying objects that were lit up reddish-orange in color. The arc seemed to go from a condensed formation	45.5231	-122.6765
1558	3/26/2015 21:00:00	Portland	OR	Fireball	2 minutes	Three pulsating fireballs. No direct path. Hovered around, kind of danced until it quickly faded away.	45.5231	-122.6765
1559	2/15/2015 18:45:00	Portland	OR	Formation	~20 minutes	Formation of 3 bright orbs seen from SE Portland.	45.5231	-122.6765
1560	2/13/2015 0:30:00	Portland	OR	Circle	2 seconds	4 lights moving east to west in a half V formation 2-3 seconds no sound	45.5231	-122.6765
1561	1/31/2015 5:00:00	Portland	OR	Triangle	4-5 seconds	I was traveling to go fishing, and on the way there I was driving east on Hwy 26. I was comimg through what we call the tunnels into do	45.5231	-122.6765
1562	1/1/2015 0:05:00	Portland	OR	Formation	3-5 minutes	8 orangey red orbs, floating and flickering in formation in night sky over I-84 on New Year's.	45.5231	-122.6765
1563	12/13/2014 18:45:00	Portland	OR	Unknown	5-7 minutes	Orange/Red lights in a formation pattern moving from East to West over I-5 in Portland	45.5231	-122.6765
1564	11/23/2014 20:00:00	Portland	OR	Formation	30 seconds	I was looking northeast and saw 4 very bright objects. I made my friend stop the car and I got out and took 4 pictures with my phone.	45.5231	-122.6765
1565	11/23/2014 18:20:00	Portland	OR	Unknown	10 minutes	I saw 5 UFOs over Portland, Oregon on November 23, 2014.	45.5231	-122.6765
1566	11/10/2014 22:45:00	Portland	OR	Triangle	15 minutes	Two bright hat-shaped objects hovering then flying away in Portland.	45.5231	-122.6765
1567	11/7/2014 19:15:00	Portland	OR	Formation	~10 minutes	Light formations in Portland sky.	45.5231	-122.6765
1568	10/30/2014 22:00:00	Portland	OR	Circle	3 minutes	Big orange ball in the sky.	45.5231	-122.6765
1569	10/30/2014 4:00:00	Portland	OR	Unknown	10 seconds	Blue streak morphs into flashing lights.	45.5231	-122.6765
1570	10/26/2014 14:00:00	Portland	OR	Formation	5-10 minutes	Metallic formation above SE Portland.	45.5231	-122.6765
1571	10/8/2014 15:50:00	Portland	OR	Unknown	10 minutes	Two people saw several small shiny objects floating in circles above Portland. At first, we thought they were birds, but they were much	45.5231	-122.6765
1572	10/4/2014 23:00:00	Portland	OR	Circle	1.5 minutes	Green object moving erratically in the NE sky.	45.5231	-122.6765
1573	10/4/2014 19:07:00	Portland	OR	Changing	1.00 minutes	this object moved at serious speed in angular motion.	45.5231	-122.6765
1574	10/2/2014 23:00:00	Portland	OR	Changing	1 hour	((HOAX)) it was mad!	45.5231	-122.6765
1575	9/27/2014 22:10:00	Portland	OR	Fireball	5 minutes	Two noiseless, orange, glowing, round objects rose from Eastern horizon before traveling S/SE. They initially traveled together before	45.5231	-122.6765
1576	9/19/2014 20:00:00	Portland	OR	Fireball	45 seconds	High up and West of where we were (North Portland), possibly over the Coastal Range, we saw about 5 smaller fireballs in close proximat	45.5231	-122.6765
1577	9/11/2014 20:30:00	Portland	OR	Triangle	30 minutes	I SAW ON 09/11/14 A LINE OF FOUR YELLOW LIGHTS IN A LINE, THE SHAPE OF THE BIG DIPPERS HANDLE.THESE LIGHTS DID NOT BLINK OR CHANGE COLO	45.5231	-122.6765
1578	9/5/2014 23:12:00	Portland	OR	Cylinder	5 seconds	Bright white cylinder, or sphere, makes rapid descent & disappears.	45.5231	-122.6765
1579	8/26/2014 3:30:00	Portland	OR	Unknown	3 events	3 Events of unidentified aircraft activity.	45.5231	-122.6765
1580	8/20/2014 21:20:00	Portland	OR	Formation	5 minutes+	3 helmet metalic blue/gray one headlight traveling above the south bound traffic, I-205 Portland Or at 21:20 8-20-2014	45.5231	-122.6765
1581	8/18/2014 23:00:00	Portland	OR	Other	\N	Two lit up "z" letters and also a "y" floating in the sky.	45.5231	-122.6765
1582	8/4/2014 4:30:00	Portland	OR	Circle	unknown	Bright red and orange orbs flying in the sky.	45.5231	-122.6765
1583	8/1/2014 1:00:00	Portland	OR	Circle	30 minutes	White orbs appear and disappear followed by multiple flashes with no sound	45.5231	-122.6765
1584	7/26/2014 23:00:00	Portland	OR	Sphere	90 seconds	Glowing red sphere traveling across night sky.	45.5231	-122.6765
1585	7/17/2014 10:30:00	Portland	OR	Triangle	2 minutes	Red light.	45.5231	-122.6765
1586	7/15/2014 21:45:00	Portland	OR	Light	8-10 seconds	Bright white light races west to east over Portland, OR.	45.5231	-122.6765
1587	6/26/2014 0:25:00	Portland	OR	Light	30-45 seconds	Intense white lights followed by red and blue lights	45.5231	-122.6765
1588	6/22/2014 18:30:00	Portland	OR	Other	15 minutes	14 lights of various size, shape and color over Portland, Oregon	45.5231	-122.6765
1589	6/21/2014 23:00:00	Portland	OR	Formation	1 minute	Six oval-like objections seen flying in formation.	45.5231	-122.6765
1590	6/13/2014 23:45:00	Portland	OR	Fireball	2 minutes	5 red balls in formation heading west to east.	45.5231	-122.6765
1591	6/6/2014 23:50:00	Portland	OR	Changing	10	Very bright red, blue, and green object accompanied by loud hum, moved quickly and then came back, six white circle lights too.	45.5231	-122.6765
1592	6/1/2014 21:10:00	Portland	OR	Light	3 minutes	Yellow, orange, and red flashing light staying stationary in sky then traveling east.	45.5231	-122.6765
1593	6/1/2014 19:30:00	Portland	OR	Teardrop	5 seconds	Large floating UFO near Portland, Oregon airport as seen from plane.	45.5231	-122.6765
1594	5/24/2014 21:30:00	Portland	OR	Sphere	20 minutes	Neon Green Stealth like sphere with pulsating lights, witnessed by 2 adults and a child.	45.5231	-122.6765
1595	5/18/2014 3:20:00	Portland	OR	Unknown	0:05	Vibrant colorful lights throbbing across the sky in the middle of the night.	45.5231	-122.6765
1596	5/17/2014 21:08:00	Portland	OR	Light	15 minutes	Round object glowing yellow, red, orange hue.	45.5231	-122.6765
1597	5/11/2014 23:30:00	Portland	OR	Sphere	few minutes	I saw a series of events that seem to defy common knowledge.	45.5231	-122.6765
1598	4/18/2014 12:00:00	Portland	OR	Light	5 minutes	White orb that was bright fading in and out slowly moving across the sky.	45.5231	-122.6765
1599	4/15/2014 0:00:00	Portland	OR	Sphere	1 minute	Sphere - Multiple Colors - Sporadic Movement - During Lunar Eclipse.	45.5231	-122.6765
1600	3/23/2014 20:00:00	Portland	OR	Unknown	30 seconds	Very fast moving object with red and blue lights.	45.5231	-122.6765
1601	2/14/2014 0:15:00	Portland	OR	Circle	4 minutes	Three orange glowing lights in the eastern sky.	45.5231	-122.6765
1602	2/6/2014 13:45:00	Portland	OR	Light	20 minutes	Bright star light opject moving slowly in a giggling motion across the sky Miller/Barnes rd Portland Oregon.	45.5231	-122.6765
1603	2/2/2014 19:00:00	Portland	OR	Unknown	15 minutes	Bright red orb over N. Portland.	45.5231	-122.6765
1604	2/2/2014 18:00:00	Portland	OR	Other	15 minutes	Red/Orange Blinking orb over the North/Northwestern sky in Portland Oregon	45.5231	-122.6765
1605	2/1/2014 21:30:00	Portland	OR	Light	3 seconds	White light moved across the sky at an unbelievable speed.	45.5231	-122.6765
1606	1/24/2014 23:59:00	Portland	OR	Unknown	1 hour	Red flashing dots witnessed by 5 people 2 in Hillsboro. lasted over a hour and is still going on as if 2:03 AM..	45.5231	-122.6765
1607	1/19/2014 23:00:00	Portland	OR	Light	3 seconds	An odd white light streaked briefly overhead and then disappeared. Looked like it was on a diagonal path. Lasted only 3 seconds, but wa	45.5231	-122.6765
1608	1/18/2014 20:45:00	Portland	OR	\N	1 minute	I was sitting in my family room watching the tv. We have high ceilings in the family room with windows and can see the sky. All of a	45.5231	-122.6765
1609	1/4/2014 21:00:00	Portland	OR	Light	90 seconds	Slow moving red orb, multidirectional.	45.5231	-122.6765
1610	12/31/2013 21:40:00	Portland	OR	Fireball	5-10 seconds	Bright white object turned reddish-orange and switched direction at 45 degree angle at high altitude and speed.	45.5231	-122.6765
1611	12/31/2013 21:00:00	Portland	OR	Fireball	2-3 minutes	Just about ready to pull into my driveway when I spotted three orange fireball like objects west of our location. I told my wife what	45.5231	-122.6765
1612	12/21/2013 19:00:00	Portland	OR	Oval	4 minutes	Large orange light.	45.5231	-122.6765
1613	12/21/2013 17:30:00	Portland	OR	Flash	1 second +/- 0.5 Sec	Streaking Bright Flash Witnessed over Portland, Oregon.	45.5231	-122.6765
1614	12/2/2013 17:30:00	Portland	OR	Light	10 seconds	Three bright white lights in a triangular formation.	45.5231	-122.6765
1615	10/3/2013 19:40:00	Portland	OR	Other	30 minutes	Saw Oct 3 2013 total of 15 craft with 5 lower than the others going in counterclock with 4 vertical rows of lights semi circ nose.	45.5231	-122.6765
1616	8/20/2013 22:00:00	Portland	OR	Fireball	25 seconds	Orange fireball hovers over southeast Portland than disappears	45.5231	-122.6765
1617	8/8/2013 21:00:00	Portland	OR	Oval	40 seconds	Silent white-lighted oval orb followed at distace by smaller reddish object.	45.5231	-122.6765
1618	8/4/2013 22:20:00	Portland	OR	Formation	5 seconds	V shape formation of 5 soft white lights	45.5231	-122.6765
1619	7/27/2013 23:30:00	Portland	OR	Formation	15 seconds	Before seeing this formation we saw two flashes of light at our zenith, and they were not iridium flares.	45.5231	-122.6765
1620	7/27/2013 1:30:00	Portland	OR	Circle	35 minutes	I walked outside to my patio and looked to the east I saw a falling star and then a very bright blinking light surrounded by a haze. Co	45.5231	-122.6765
1621	7/18/2013 21:55:00	Portland	OR	Fireball	45 seconds	Strange light over Portland.	45.5231	-122.6765
1622	7/6/2013 21:30:00	Portland	OR	Light	10 minutes	White light hovering place, disappeared and reappeared three times, and changed shapes.	45.5231	-122.6765
1623	7/4/2013 21:00:00	Portland	OR	Fireball	before fire works started	Fire ball in the portland oregon sky.	45.5231	-122.6765
1624	6/30/2013 0:45:00	Portland	OR	\N	4 minutes	Phoenix type lights pdx.	45.5231	-122.6765
1625	6/23/2013 0:21:00	Portland	OR	Other	90 seconds	Four Lights/Objects in Night Sky Over Portland	45.5231	-122.6765
1626	6/21/2013 23:50:00	Portland	OR	Circle	3 minutes	2 orange circles flying at a slow pase then disappeared.	45.5231	-122.6765
1627	6/14/2013 21:58:00	Portland	OR	Disk	7 seconds	Green lit object over Portland changing direction.	45.5231	-122.6765
1628	6/2/2013 23:00:00	Portland	OR	Light	~5 minutes	Bright ball of light in the sky over Portland.	45.5231	-122.6765
1629	6/1/2013 20:45:00	Portland	OR	Teardrop	10 minutes	Blue/white light streaks across western horzion.	45.5231	-122.6765
1630	5/30/2013 23:00:00	Portland	OR	Unknown	30 seconds	Light seen in northern sky, did not behave like an aircraft, then disappeared. Happened twice.	45.5231	-122.6765
1631	5/13/2013 22:00:00	Portland	OR	Rectangle	6 minutes	4 red pulsing lights fly over Portland.	45.5231	-122.6765
1632	5/5/2013 23:20:00	Portland	OR	Teardrop	1+ hr	Firey light, orb flashing red, retro rocket flying backwards.	45.5231	-122.6765
1633	5/4/2013 22:00:00	Portland	OR	Light	15 seconds	Moving object resembling a star makes sweeping turn before disappearing.	45.5231	-122.6765
1634	3/17/2013 21:30:00	Portland	OR	Formation	30 minutes	Cluster of bright orange lights floating, jumping around in sky	45.5231	-122.6765
1635	3/9/2013 22:05:00	Portland	OR	Triangle	45 seconds	Three triangular bright orange light objects hovering low in the sky: Portland, Oregon.	45.5231	-122.6765
1636	3/9/2013 21:12:00	Portland	OR	Fireball	2 minutes	Light? Fireball?	45.5231	-122.6765
1637	3/1/2013 0:30:00	Portland	OR	Circle	3 minutes	Yellowish/orange spheres portland Oregon.	45.5231	-122.6765
1638	1/1/2013 0:01:00	Portland	OR	Other	2-3 minutes	I observed the following by eye & through binoculars. Whilst watching the New Years Fireworks from my 2nd story which affords me a g	45.5231	-122.6765
1639	12/21/2012 23:00:00	Portland	OR	Light	5 minutes	Approx. 11 pm, A friend and I were walking on Se Morrison on 28th when We noticed a hovering orange light in the sky slowly descending	45.5231	-122.6765
1640	12/15/2012 18:00:00	Portland	OR	Fireball	3 seconds	Fireballs seen south of Portland, OR area.	45.5231	-122.6765
1641	12/2/2012 6:15:00	Portland	OR	Formation	5 seconds	I saw a flock of bird shaped objects, about 23, fly within a 5 second period and disappear in the open sky.	45.5231	-122.6765
1642	11/25/2012 16:50:00	Portland	OR	Light	3-4 minutes	Extremely bright object in southern sky. - Portland.	45.5231	-122.6765
1643	11/6/2012 20:00:00	Portland	OR	Changing	>10 minutes	2-3 colored lights on one craft swooping gracefully in irregular pattern looking west/nw from North Portland, OR	45.5231	-122.6765
1644	11/5/2012 18:30:00	Portland	OR	Fireball	2 minutes	Watched an Orange firery object in the sky.	45.5231	-122.6765
1645	9/30/2012 20:15:00	Portland	OR	Fireball	3 minutes	Orange firelike floating slowly along treeline.	45.5231	-122.6765
1646	9/15/2012 22:00:00	Portland	OR	Circle	\N	Large teal circle followed by helochopters hours later.	45.5231	-122.6765
1647	8/8/2012 5:00:00	Portland	OR	Unknown	one or more hours	Curious to know what is going on.	45.5231	-122.6765
1648	7/31/2012 3:33:00	Portland	OR	Sphere	1 minute	Early morning orange orb sighting in the Portland Metro area	45.5231	-122.6765
1649	7/29/2012 22:00:00	Portland	OR	Flash	15 minutes	Last night walking north on 39th ave, my father and I witnessed at least 100 red orbs that flashed coming from the west over the city o	45.5231	-122.6765
1650	7/23/2012 15:00:00	Portland	OR	Oval	8 seconds	Oval shaped hovering object outside of Portland Oregon.	45.5231	-122.6765
1651	7/21/2012 10:30:00	Portland	OR	Fireball	few minutes	Interesting yewllow, red and orange lights seen from S.E. Portland, Oregon.	45.5231	-122.6765
1652	7/19/2012 21:15:00	Portland	OR	Circle	04 minutes	Siting help	45.5231	-122.6765
1653	7/9/2012 12:35:00	Portland	OR	Circle	20 minutes	Green orb	45.5231	-122.6765
1654	6/29/2012 21:40:00	Portland	OR	Fireball	90 seconds	Orange and yellow orb over portland moved northeast.	45.5231	-122.6765
1655	6/19/2012 22:00:00	Portland	OR	Fireball	5 minutes	Slowly moved across the sky from w to e over SE Portland. Bright light. ((NUFORC Note: We suspect a sighting of the ISS. PD))	45.5231	-122.6765
1656	6/19/2012 21:44:00	Portland	OR	Cross	3 minutes	I was jogging alone along a path at Gabriel Park, when I noticed a collection of red and green lights hovering in the sky that seemed t	45.5231	-122.6765
1657	6/9/2012 1:01:00	Portland	OR	Formation	1 minute	Five orbs floating low in sky. ((NUFORC Note: We wonder whether the lights might have been advertising lights. PD))	45.5231	-122.6765
1658	6/6/2012 22:48:00	Portland	OR	Light	2 minutes	Three red lights in triangle formation	45.5231	-122.6765
1659	5/29/2012 20:00:00	Portland	OR	Triangle	0:03	Black teardrop object above Portland, OR	45.5231	-122.6765
1660	5/27/2012 21:24:00	Portland	OR	Light	3 to 4 minutes	Bright, amber, shimmering light in sky above Southeast Portland	45.5231	-122.6765
1661	5/14/2012 21:35:00	Portland	OR	Light	3 minutes	Bright orange light in the sky, moves fast and disappears.	45.5231	-122.6765
1662	5/7/2012 20:35:00	Portland	OR	Egg	3 minutes	Fireball with black rotating band sighted in SE Portland near Hawthorne 5/5/12	45.5231	-122.6765
1663	4/21/2012 22:35:00	Portland	OR	Light	15 seconds	Point of light heading SE in trajectory disappeared completely as if it receded into space, leaving orbit on a ballistic trajectory.	45.5231	-122.6765
1664	4/14/2012 1:47:00	Portland	OR	Unknown	1 minute	White/green lights hovering above freeway, disappeared after enter/leaving tunnel	45.5231	-122.6765
1665	4/7/2012 1:55:00	Portland	OR	Unknown	1 minute	White/green lights hovering above freeway, shot straight upward	45.5231	-122.6765
1666	2/7/2012 0:00:00	Portland	OR	Circle	10 minutes	Three horizontal lights and at about one o'clock from the position of the lights was a larger light, which flickered like a planet	45.5231	-122.6765
1667	1/5/2012 17:00:00	Portland	OR	Fireball	3 secs.	Huge ufo breaks thru cloud break on its course to?	45.5231	-122.6765
1668	12/2/2011 1:30:00	Portland	OR	Other	25 sec	Orange glowing bell shaped object moving from east to southeast.	45.5231	-122.6765
1669	11/6/2011 20:30:00	Portland	OR	Formation	3 minutes	5-7 pulsating amber-orange orbs observed slowly moving below the clouds from west to east above Portland, OR.	45.5231	-122.6765
1670	10/27/2011 3:00:00	Portland	OR	Unknown	Approx 5 minutes	Was up late Wednesday night, early Thursday morning, and went out to the alley behind my apartment in Northwest Portland (Around NW 23r	45.5231	-122.6765
1671	10/18/2011 0:15:00	Portland	OR	Formation	5-10 minutes	Orange orbs seemingly attached to triangular object witnessed in Portland Oregon 10/18/2011	45.5231	-122.6765
1672	10/8/2011 21:10:00	Portland	OR	Unknown	15- 20 seconds	I was looking up at the moon facing South from my Southeast Portland front porch, when I saw some red and green lit object almost float	45.5231	-122.6765
1673	9/25/2011 6:00:00	Portland	OR	Light	15 -20min	Yellow/Orange light ball with blinking lights over Sauvie Island	45.5231	-122.6765
1674	9/21/2011 0:00:00	Portland	OR	Flash	Hour	I saw multiple objects I can not describe last night in Portland, Oregon around midnight.	45.5231	-122.6765
1675	9/20/2011 1:55:00	Portland	OR	Rectangle	6 seconds	Orange glowing, black center wing	45.5231	-122.6765
1676	9/14/2011 20:00:00	Portland	OR	Light	15 seconds	I'm an amateur astronomer and have seen many objects before (satellites, iridium flares, ect.), and these were unusual.	45.5231	-122.6765
1677	9/9/2011 20:00:00	Portland	OR	Oval	5 Minutes	9 Objects, oval in shape	45.5231	-122.6765
1678	9/5/2011 1:00:00	Portland	OR	Light	5 seconds	bright light that looked like a satellite then shoots straight up leaving a streak behind momentarily	45.5231	-122.6765
1679	9/1/2011 22:00:00	Portland	OR	Sphere	5 minutes	Bright Orange Sphere Formation Seen From Downtown Portland.	45.5231	-122.6765
1680	8/24/2011 9:00:00	Portland	OR	Other	<1 minute	T-shaped,y-shaped,triangle,three lights,daytime.	45.5231	-122.6765
1681	8/23/2011 11:06:00	Portland	OR	Triangle	seconds	Started looking like a shooting star but then shot into triangle and went "dot dot dot into bigger ones and shot into the sky" and then	45.5231	-122.6765
1682	7/22/2011 21:50:00	Portland	OR	Light	30 seconds	Large neon blueish bright white light flying and hovering in all directions in NE Portland.	45.5231	-122.6765
1683	7/6/2011 15:00:00	Portland	OR	Unknown	a few minutes	I believe it was July 6 of 2011 I had just gotten off of work. I was driving down W Burnside Rd, in the west hills facing NE going arou	45.5231	-122.6765
1684	6/21/2011 8:00:00	Portland	OR	Unknown	~8 hours+	Many white lights/objects moving at high speeds throughout the day.	45.5231	-122.6765
1685	4/30/2011 3:05:00	Portland	OR	Other	30 seconds	moving star without blinking?	45.5231	-122.6765
1686	3/20/2011 4:50:00	Portland	OR	Formation	10 min.	Two Black Drone-Like Objects Over Portland Metro Area	45.5231	-122.6765
1687	2/15/2011 23:00:00	Portland	OR	Other	every nite	((HOAX)) 3 tear gold saucer hoovering across the street.	45.5231	-122.6765
1688	12/7/2010 10:40:00	Portland	OR	Triangle	40 seconds	2 sightings of a ufo in a 3 month time frame in PDX	45.5231	-122.6765
1689	11/3/2010 5:10:00	Portland	OR	Sphere	8-10 sec	White light traveling silently across the night sky in 8-10 secs, leaving no trail	45.5231	-122.6765
1690	8/27/2010 20:50:00	Portland	OR	Light	3 seconds	850 pm fast craft over portland qr	45.5231	-122.6765
1691	8/15/2010 22:08:00	Portland	OR	Sphere	3 minutes	Real UFO Caught On Video 08/15/2010	45.5231	-122.6765
1692	7/31/2010 22:55:00	Portland	OR	Fireball	5 minutes	I observed a strange glowing orange ball floating in the sky in a straight path that made no sound.	45.5231	-122.6765
1693	7/25/2010 21:00:00	Portland	OR	Circle	about 1 minute	Planet Sized Orb Passes Behind Venus Then FLICKers Out!	45.5231	-122.6765
1694	7/24/2010 11:25:00	Portland	OR	Circle	15 seconds	disk in the sky in the middle of the day	45.5231	-122.6765
1695	7/5/2010 23:00:00	Portland	OR	Light	5 MIN	Multiple lights. Red in color. Seen in SE portland. Toward SW portland. About 8 or so. Faded in and out of sight.	45.5231	-122.6765
1696	7/4/2010 23:00:00	Portland	OR	Circle	5 minutes	Strange orange lights in the sky	45.5231	-122.6765
1697	5/22/2010 22:05:00	Portland	OR	Light	30 mins	The object had a slight amber tint to it. It looked like a satellite, or star, but then it started to change directions. Almost like a	45.5231	-122.6765
1698	5/18/2010 21:30:00	Portland	OR	Diamond	7 minutes	saw & filmed a pulsating diamond shaped object which changed shape several times over Portland, Oregon about 9:30 PM	45.5231	-122.6765
1699	4/28/2010 5:30:00	Portland	OR	Light	30 minutes +/-	On the morning of Wednesday April 28 I was staying at a friend's house in SW portland and we had been up all night having a conversatio	45.5231	-122.6765
1700	9/27/2009 15:00:00	Portland	OR	Circle	40+ minutes	Silver objects flying near the sun	45.5231	-122.6765
1701	9/8/2009 21:00:00	Portland	OR	Light	15 seconds	The three bright lights over Tanasbourne, Oregon	45.5231	-122.6765
1702	8/23/2009 0:30:00	Portland	OR	Sphere	5 minutes	We witnessed 7 orange spheres moving north to south over portland oregon	45.5231	-122.6765
1703	8/5/2009 23:30:00	Portland	OR	Triangle	40sec	UFO in Portland Oregon Aug 5, 2009	45.5231	-122.6765
1704	8/5/2009 0:00:00	Portland	OR	Triangle	1min	Triangle shaped object flying across Portland Oregon at 12:15 pm Wednesday Aug 5, 2009	45.5231	-122.6765
1705	7/24/2009 3:00:00	Portland	OR	Light	12 minutes	bright white light moving erratically leaving light trails	45.5231	-122.6765
1706	4/18/2009 20:13:00	Portland	OR	Chevron	30 seconds	Red and white floating object suddenly and extremely rapidly zips away.	45.5231	-122.6765
1707	3/20/2009 23:30:00	Portland	OR	Light	2-3 minutes	Two cops observed four strange lights over Portland, OR, and one of the lights appeared to "drip" a molten substance.	45.5231	-122.6765
1708	1/14/2009 19:30:00	Portland	OR	Light	30 mins	Bright oscillating light in the SW sky. hovered at approximately 10k AGL, then left	45.5231	-122.6765
1709	1/13/2009 21:43:00	Portland	OR	Egg	about 5 minutes	Three egg like ships on my street	45.5231	-122.6765
1710	1/9/2009 21:30:00	Portland	OR	Light	30 min	Point of light traveling at high altitude with intervals of "flaring".	45.5231	-122.6765
1711	11/23/2008 18:00:00	Portland	OR	Light	at least 40 minutes	3 bright white lights in traingular formation with no sound and in seemingly fixed pos.. ((NUFORC Note: 3 planets in sw sky. PD))	45.5231	-122.6765
1712	11/22/2008 22:23:00	Portland	OR	Light	0:30	A bright light from no conventional aircraft behaves erraticly and moves at high speeds	45.5231	-122.6765
1713	11/13/2008 19:00:00	Portland	OR	Triangle	20 secs total	4 Large Triangular Objects flying low and silent over tanasbourne area around 7pm 11-13-08, Dim orange circles underneath.	45.5231	-122.6765
1714	9/10/2008 14:00:00	Portland	OR	Cylinder	15 min	gold cylindrical object with red top and bottom. Tumbles head over head at high altitiude.	45.5231	-122.6765
1715	8/6/2008 12:00:00	Portland	OR	Disk	don't know but :10 secon	Something was flying over downtown Portland on August 6th	45.5231	-122.6765
1716	7/12/2008 22:20:00	Portland	OR	Oval	15 seconds	the object was very illuminated in the night sky much brighter then the brightest star in the dipper it was passing by.	45.5231	-122.6765
1717	7/4/2008 19:10:00	Portland	OR	Circle	5 seconds	Oregon 7:15 p,m disk seen 5-10 seconds	45.5231	-122.6765
1718	4/12/2008 22:50:00	Portland	OR	Light	3 seconds	Two faint pinpricks of light, flying much faster than an airplane, orbiting each other.	45.5231	-122.6765
1719	3/2/2008 19:30:00	Portland	OR	Formation	5+ minutes	Dual Clusters of unknown objects in the skies of Portland, Oregon.	45.5231	-122.6765
1720	2/17/2008 17:00:00	Portland	OR	Other	>6 minutes	odd orb on horizon at sunset	45.5231	-122.6765
1721	1/26/2008 0:05:00	Portland	OR	Circle	5 minutes	Stationary yellow-white ball of light over Portland, OR, emitting colors and no sound.	45.5231	-122.6765
1722	12/8/2007 22:15:00	Portland	OR	Unknown	15 minutes	Drifting silent object estimated size of helicopter at 1000ft with bright flamelike intermittent flashes in night sky	45.5231	-122.6765
1723	11/3/2007 19:12:00	Portland	OR	Unknown	4 minutes	Craft with tan "X" on the bottom. Seen on 5 different occasions in 5 months.	45.5231	-122.6765
1724	9/18/2007 2:00:00	Portland	OR	Light	Few seconds	Earth shaking explosion followed by bluish green glow on hill above home.	45.5231	-122.6765
1725	8/14/2007 0:45:00	Portland	OR	Triangle	10 seconds	Glowing orange triangular object with orbs in each corner travelling south to north	45.5231	-122.6765
1726	7/6/2007 16:40:00	Portland	OR	Other	1 minute	Bright sun-illuminated "dot" drifting over S.E. Portland, Oregon	45.5231	-122.6765
1727	6/18/2007 22:18:00	Portland	OR	Light	30 seconds	Bright Light heading SE over PDX	45.5231	-122.6765
1728	5/30/2007 19:45:00	Portland	OR	Sphere	30 minutes	2 very small white spheres hovered in same general area for 30 minutes	45.5231	-122.6765
1729	5/28/2007 18:45:00	Portland	OR	Circle	15 - 20 min	7 craft appeared in the SE bright sunny day lit sky over Oregon, looked like white planets, moved slowly and gradually disappeared.	45.5231	-122.6765
1730	5/16/2007 22:00:00	Portland	OR	Light	10 seconds	Bright, Disappearing Object in Portland Night-Sky	45.5231	-122.6765
1731	5/8/2007 23:30:00	Portland	OR	Sphere	10 mins	Blue flash and hovering white sphere in Portland Oregon	45.5231	-122.6765
1732	4/29/2007 17:00:00	Portland	OR	Circle	3 min	fast moving object that was gone when i looked down to get phone	45.5231	-122.6765
1733	4/20/2007 11:30:00	Portland	OR	Circle	10/15/2017	Black dot moved silently across the sky in different directions like an observation pattern.	45.5231	-122.6765
1734	3/31/2007 19:50:00	Portland	OR	Light	4 sec	bright lights	45.5231	-122.6765
1735	2/17/2007 8:00:00	Portland	OR	Changing	7 minutes	From the heart a rare and ever so ,"WOW!"	45.5231	-122.6765
1736	10/3/2006 23:45:00	Portland	OR	Circle	45 minutes	Two nights after my first encounter I spotted another last night! I was out on my porch watching the stars when one of them moved. The	45.5231	-122.6765
1737	10/2/2006 0:45:00	Portland	OR	Circle	1.5 hours	I was sitting outside on my porch after midnight. As I sat there I looked out above my neighbors house to see two stars about an inch a	45.5231	-122.6765
1738	8/29/2006 13:25:00	Portland	OR	Egg	1 second	Object seen east of Portland Airport at 1:25pm Moving steadily south and level	45.5231	-122.6765
1739	7/29/2006 14:30:00	Portland	OR	Sphere	15 mins	Metallic Spherical object(s) in sky above downtown Portland Oregon this evening.	45.5231	-122.6765
1740	7/20/2006 20:45:00	Portland	OR	Diamond	15 minutes	Daylight sighting: silent, black diamond flies over Portland, Or	45.5231	-122.6765
1741	7/10/2006 16:00:00	Portland	OR	Circle	about 5 minutes	Video taped a Black vibrating object near contrail	45.5231	-122.6765
1742	7/7/2006 11:00:00	Portland	OR	Flash	5minutes	Flashing beam of light,lasted five minutes.	45.5231	-122.6765
1743	7/4/2006 18:00:00	Portland	OR	Cigar	5-7 seconds	Black dash near moon around 6 pm on the 4th of july in Se Portland near Mt. Tabor.	45.5231	-122.6765
1744	6/27/2006 2:00:00	Portland	OR	Disk	5 to 6 secs	brght blue flashing disc	45.5231	-122.6765
1745	6/10/2006 22:00:00	Portland	OR	Fireball	5 min.	Large glowing red orb	45.5231	-122.6765
1746	6/6/2006 22:00:00	Portland	OR	Light	15 minutes or so	It was just starting to get dark on tuesday night. I was walking up the stairwell in my dorm, and noticed a strange bright white light	45.5231	-122.6765
1747	4/30/2006 0:20:00	Portland	OR	Diamond	3 seconds	Strange Diamond shaped object seen in Portland, Oregon	45.5231	-122.6765
1748	4/29/2006 23:55:00	Portland	OR	Light	3-5 minutes	Six Red Lights	45.5231	-122.6765
1749	4/29/2006 23:54:00	Portland	OR	Sphere	ten minutes	Amber orb lights over downtown Portland.	45.5231	-122.6765
1750	4/29/2006 23:50:00	Portland	OR	Changing	20 minutes	Six fiery, glowing objects, some at a standstill, then all six of them moved very slowly over the city of Portand, Oregon.	45.5231	-122.6765
1751	4/29/2006 23:50:00	Portland	OR	Changing	15-20 minutes	I saw at least six bright glowing, orange in color objects in the sky over the city of Portland on Saturday night, 4-29-06.	45.5231	-122.6765
1752	4/29/2006 23:50:00	Portland	OR	Changing	15/20 minutes	First time ever seeing these types of glowing objects!!	45.5231	-122.6765
1753	4/29/2006 23:40:00	Portland	OR	Formation	5 min	orange lights over Portland OR	45.5231	-122.6765
1754	4/29/2006 23:30:00	Portland	OR	Fireball	8 minutes	7 orange "fireballs" in two groups over downtown Portland, OR	45.5231	-122.6765
1755	4/29/2006 0:02:00	Portland	OR	Light	5 mins	saw lite in sky at midnite on 29 april	45.5231	-122.6765
1756	4/27/2006 13:00:00	Portland	OR	Oval	1 minute	The UFO that I saw at 1 PM thursday the 27th of april 2006 ,hovering over downtown portland, was a white, rather opaque, imperfect cir	45.5231	-122.6765
1757	3/15/2006 13:00:00	Portland	OR	Triangle	6seconds	3-5-06, over portland daytime- huge triangle shape craft- defied gravity ,changed shape ,lightning fast.	45.5231	-122.6765
1758	3/15/2006 13:00:00	Portland	OR	Triangle	30-50seconds	Large triangle craft daytime ,over Portland, Or.strange manuvers black-ish very fast.	45.5231	-122.6765
1759	3/13/2006 21:30:00	Portland	OR	Other	not sure, seconds	Bright Aqua ball of Light over Hillsboro, Oregon - viewed from Cornelius Pass - Danced in the sky	45.5231	-122.6765
1760	1/31/2006 0:40:00	Portland	OR	Flash	couple seconds	A bright light that raced across the sky and suddenly shot upward and dissapeared.	45.5231	-122.6765
1761	1/14/2006 22:46:00	Portland	OR	Circle	3 seconds	Large fast moving White Light headed Northeast in Portland, Oregon	45.5231	-122.6765
1762	12/13/2005 19:50:00	Portland	OR	Flash	.50-1.0	Saw three flashes, 2 that traveled east to west 1-2 minutes apart, followed by a third that went west to east. Same spot	45.5231	-122.6765
1763	9/20/2005 17:00:00	Portland	OR	Cylinder	10 seconds	I was riding in the passenger seat of my best friends car my fiance in the backseat behind me, when i noticed a large black shadow over	45.5231	-122.6765
1764	8/14/2005 23:00:00	Portland	OR	Triangle	1 minute	Triangle floated away.	45.5231	-122.6765
1765	8/6/2005 20:30:00	Portland	OR	Circle	5 minutes	slow moving object over north west portland oregon	45.5231	-122.6765
1766	7/15/2005 20:30:00	Portland	OR	Teardrop	15 seconds	highly-reflective inverted black teardrop over a Portland evening	45.5231	-122.6765
1767	6/19/2005 21:46:00	Portland	OR	Sphere	2 minutes	30+ spheres observed flying in formation during thunderstorm due to large multiple lighting flashes.	45.5231	-122.6765
1768	5/3/2005 23:30:00	Portland	OR	Circle	2 min's	05/03/05 23:30hours. the we seen in portland Oregon It moved from north to south and vanished.	45.5231	-122.6765
1769	5/1/2005 1:00:00	Portland	OR	Oval	3-7 minutes	Three amber/orange objects patrol Portland skyline	45.5231	-122.6765
1770	5/1/2005 1:00:00	Portland	OR	Light	\N	Portland OR May '05 event similar to Beaverton OR March '01 events.	45.5231	-122.6765
1771	5/1/2005 1:00:00	Portland	OR	Disk	5 minutes	Orange disk-like orbs over Downtown Portland. ((NUFORC Note: Student report. PD))	45.5231	-122.6765
1772	5/1/2005 0:45:00	Portland	OR	Light	5+ minutes	Three reddish lights seen over Pearl District of Portland, OR	45.5231	-122.6765
1773	4/27/2005 5:43:00	Portland	OR	Fireball	3 seconds	((NUFORC Note: Student report. PD)) Saw a blue flaming asteroid shaped object. there was a weird blue glow around it.	45.5231	-122.6765
1774	3/12/2005 19:45:00	Portland	OR	Fireball	minute	On the News Tonight they Reported on channel 12 FOX Portland,Oregon News ad some type of sighting of a "light that flashed" was very br	45.5231	-122.6765
1775	3/10/2005 19:00:00	Portland	OR	Light	3 minutes	Very bright light traveling over Portland ((NUFORC Note: International Space Station. PD))	45.5231	-122.6765
1776	2/9/2005 2:00:00	Portland	OR	Light	2min	a bright object, moonish, hovered then moved straight upward	45.5231	-122.6765
1777	1/18/2005 3:33:00	Portland	OR	Circle	45sec	High altitude,large than any other aircraft,silent and no marker lights or st	45.5231	-122.6765
1778	12/22/2004 20:30:00	Portland	OR	Unknown	10 Minutes	Loud object with three lights.	45.5231	-122.6765
1779	12/14/2004 0:00:00	Portland	OR	Disk	5 - 10 seconds	Circular shaped space craft moved slowly in the sky, hovered, then shot off. ((NUFORC Note: Possibly not a serious report. PD))	45.5231	-122.6765
1780	10/21/2004 19:30:00	Portland	OR	Light	2 minutes	Two stationary bright spots, fading simultaniously for no apparent reason becoming very diim spots of light.	45.5231	-122.6765
1781	10/21/2004 19:30:00	Portland	OR	Light	1 minute	Two objects, both red, one appeared to slowly fade, the other moved out of view behind trees in a quick stop/start motion.	45.5231	-122.6765
1782	9/26/2004 20:15:00	Portland	OR	Light	15 seconds	Spouse and I saw a silent, bright fast moving light cross the sky, change color to red, then fade completely away.	45.5231	-122.6765
1783	9/21/2004 5:30:00	Portland	OR	Circle	20 min	At approx 5:30 AM I looked out my window and saw a large yellowish light in a circular form. It almost looked like a bright city lamp	45.5231	-122.6765
1784	8/11/2004 2:30:00	Portland	OR	Light	3 seconds	Circular shaped light travels quickly across sky in suburbs.	45.5231	-122.6765
1785	8/9/2004 0:50:00	Portland	OR	Triangle	5 SECONDS	7 very fast moving lights over Portland Oregon!	45.5231	-122.6765
1786	8/2/2004 2:13:00	Portland	OR	Unknown	3 minutes	Small craft, rapid movement and flight path, no sound.	45.5231	-122.6765
1787	7/22/2004 23:10:00	Portland	OR	Circle	8 seconds	Around 11:10 p.m. on July 22,2004 my boyfriend and I were out watching satelites on our front lawn. As I looked to my right I exclaime	45.5231	-122.6765
1788	7/19/2004 16:00:00	Portland	OR	Sphere	5 min.	Sphere Cluster Drops Orb Down to Ground	45.5231	-122.6765
1789	7/8/2004 21:07:00	Portland	OR	Diamond	4.5 minutes	Four lobed blue-black object seen moving south at dusk	45.5231	-122.6765
1790	6/27/2004 4:10:00	Portland	OR	Sphere	1 min 30 seconds	Object seen in sky traveling from southwest to northeast. Silver/white in color with no visible wings and approximately 1000-1500 feet	45.5231	-122.6765
1791	6/25/2004 22:45:00	Portland	OR	Fireball	2 minutes	A bright red object flying in the sky above our heads just above the trees	45.5231	-122.6765
1792	6/16/2004 13:18:00	Portland	OR	Sphere	3 minutes	Object seen in sky over Downtown Portland Oregon moving very slowly coming from N.E. Direction to S.W. direction. Appeared silver in c	45.5231	-122.6765
1793	6/10/2004 23:15:00	Portland	OR	Unknown	25 minutes	Weird lights revoling around a center light in the sky ((NUFORC Note: Advertising lights?? PD))	45.5231	-122.6765
1794	5/15/2004 14:30:00	Portland	OR	Rectangle	10 minutes	Dark Cylinder/ Rectangular flying object dips in and out of low clouds over Portland, Oregon	45.5231	-122.6765
1795	5/5/2004 21:30:00	Portland	OR	Sphere	3 sec	It was a very large globe-shaped object, very low and very fast, traveling in a very straight line. Color was deep orange-yellow, and	45.5231	-122.6765
1796	4/30/2004 18:30:00	Portland	OR	Circle	10 - 15 minutes	Object Hovering Near Jet-Trails 4/30/04, Portland, Or.	45.5231	-122.6765
1797	4/28/2004 21:30:00	Portland	OR	Other	\N	Strobing Night Sky Object - Photo	45.5231	-122.6765
1798	3/18/2004 1:00:00	Portland	OR	Disk	20 seconds?	Fast moving round object at night.	45.5231	-122.6765
1799	3/2/2004 14:00:00	Portland	OR	\N	10 seconds	across the sky faster than most anything	45.5231	-122.6765
1800	2/21/2004 22:05:00	Portland	OR	Unknown	unknown	HBCCUFO CANADIAN REPORT: The clouded parts of the sky on that day had some weird shaped circular or oval.	45.5231	-122.6765
1801	11/25/2003 16:10:00	Portland	OR	Disk	2 to 3 minutes	Wobbling Disc Daylight Sighting	45.5231	-122.6765
1802	11/5/2003 11:00:00	Portland	OR	Circle	5 minutes	Dear PD, On 11/5/03, my wife described a sighting to me that sounds very similar to one reported by a witness in your database for Port	45.5231	-122.6765
1803	11/1/2003 16:48:00	Portland	OR	Sphere	1 minute	Pink-Orange sphere photographed near downtown Portland, OR	45.5231	-122.6765
1804	9/24/2003 23:13:00	Portland	OR	Circle	3 minutes	Flickering Colored Orb	45.5231	-122.6765
1805	9/23/2003 20:16:00	Portland	OR	Sphere	10 seconds	Happened to see a very bright planet like white golf ball size light and I went outside to investigate further.	45.5231	-122.6765
1806	9/23/2003 4:27:00	Portland	OR	Light	.5-1.5 hr	single object non-moving, changing colors, red, blue-green, white	45.5231	-122.6765
1807	9/22/2003 17:30:00	Portland	OR	Light	Less than 1 minute	Bright shining object over Porland OR	45.5231	-122.6765
1808	9/1/2003 1:30:00	Portland	OR	Light	hour plus	small compact formation of lights, no movement; but bursts of red and yellow lights - very faint.	45.5231	-122.6765
1809	8/29/2003 22:30:00	Portland	OR	Triangle	7 minutes	Silent Triangle over Gresham/Portland Oregon remains motionless, rapidly accelerates away. ((OREGON/MUFON REPORT INCL.))	45.5231	-122.6765
1810	8/13/2003 14:00:00	Portland	OR	Sphere	15 minutes	Sphere over Portland with Military Jet	45.5231	-122.6765
1811	7/26/2003 21:52:00	Portland	OR	Fireball	2-1/2 min	This was the amber fireball...very smooth trajectory and very fast...just takin` its time it seemed....	45.5231	-122.6765
1812	7/23/2003 22:00:00	Portland	OR	Circle	nightly	We see objects in the sky that look like tiny stars that move at lightning speeds, hover in one spot then takes off at lightning speeds	45.5231	-122.6765
1813	7/21/2003 22:30:00	Portland	OR	Light	3 mins	Between 10 and 11 pm, very bright quiet object traveling S to N then abruptly turned toward the E..	45.5231	-122.6765
1814	7/17/2003 15:15:00	Portland	OR	Sphere	1hr 15 min	Clearly visible, stationary sphere, "takes off" after an hour or so of observation	45.5231	-122.6765
1815	6/18/2003 0:24:00	Portland	OR	Light	12 seconds	This object coud not have been a jet and it was not a "shooting star".	45.5231	-122.6765
1816	2/22/2003 23:15:00	Portland	OR	\N	60 sec.	Two adults witness a peculiar "light orange" ball of light move horizontally across the eastern sky of Portland.	45.5231	-122.6765
1817	2/6/2003 13:30:00	Portland	OR	Sphere	10-15 minutes	Sphere moving very slowly NE to NW.	45.5231	-122.6765
1818	1/5/2003 18:15:00	Portland	OR	Light	couple minutes	Red light above Portland	45.5231	-122.6765
1819	12/22/2002 14:20:00	Portland	OR	Disk	5 min.	Black saucer wobbled slowly as it gained altitude.	45.5231	-122.6765
1820	11/19/2002 21:30:00	Portland	OR	Triangle	45-60 seconds	From the south and passing near intersection of se holgate and 30th ave it banked and headed over the river towrds downtown PDX. I s	45.5231	-122.6765
1821	10/16/2002 21:00:00	Portland	OR	Light	15 Seconds	Observed what appeared to be a dim satellite make a U-turn, then accelerate to an unbelievable speed.	45.5231	-122.6765
1822	10/10/2002 21:00:00	Portland	OR	Circle	2min	The LIGHT is the TRUTH!	45.5231	-122.6765
1823	9/17/2002 23:30:00	Portland	OR	Unknown	10 minutes	Sighting of a possible beam or tether directly connected from the ground to an aircraft at an altitude of 2,500 ft.	45.5231	-122.6765
1824	9/14/2002 1:00:00	Portland	OR	Circle	20 min	circular object hovers over portland	45.5231	-122.6765
1825	9/11/2002 22:00:00	Portland	OR	Oval	10-15 sec.	I Saw 4 oval shaped objects in the sky to the north of my house	45.5231	-122.6765
1826	8/13/2002 2:00:00	Portland	OR	Chevron	1.5 Seconds	Blue/White Object at high velocity/low altitude.	45.5231	-122.6765
1827	8/3/2002 22:05:00	Portland	OR	Light	About 3 minutes	In a night sky 5 silver/blue lights circled in a circle, joined at the center, repeated the event & then the joined lights went out.	45.5231	-122.6765
1828	8/3/2002 4:18:00	Portland	OR	Light	30 Seconds	Bright, White light moving North from South, Below the Moon.	45.5231	-122.6765
1829	8/2/2002 21:45:00	Portland	OR	Unknown	5-10 minutes	Two stationary lights, side by side, above the clouds and Willamette River.	45.5231	-122.6765
1830	7/26/2002 22:45:00	Portland	OR	Light	seconds	Pacific NW light in the sky moving fast from North to South.	45.5231	-122.6765
1831	7/25/2002 23:00:00	Portland	OR	Light	\N	I was in my hot tub, and I looked at the sky, and a bright light moved across the sky,faster than a plane, slower than a shooting star.	45.5231	-122.6765
1832	7/16/2002	Portland	OR	Sphere	5 min.	Jets slowly chaising object	45.5231	-122.6765
1833	7/13/2002 20:30:00	Portland	OR	Oval	3 minutes.	When I was about 10 I was staying at my grandmothers house in Portland. It was pretty warm that day and it was not subsiding, so my gra	45.5231	-122.6765
1834	6/25/2002 23:00:00	Portland	OR	Circle	15 minutes	Object appeared in the low horizon and it looked to me to be venus, but then was moving east and rising slightly untill it was about 4	45.5231	-122.6765
1835	6/25/2002 10:20:00	Portland	OR	Cigar	10min	The objects I saw were beyond our atmosphere. The size of the cigar object had to be huge for me to see it at that distance.	45.5231	-122.6765
1836	6/21/2002 17:45:00	Portland	OR	Sphere	1.5 hours	I had just stopped in a local tavern after work (no alchohol prior; 1/2 beer before siting). Several individuals were going out and com	45.5231	-122.6765
1837	6/21/2002 16:42:00	Portland	OR	Light	75 minutes	Oregon UFO Review Case: Object releases dark orbs in Portland skies...photographed.	45.5231	-122.6765
1838	4/27/2002 23:40:00	Portland	OR	Circle	4 minutes	Crescent of lights, may have been edge of large craft.	45.5231	-122.6765
1839	2/11/2002 20:30:00	Portland	OR	Disk	30 seconds	Oregon UFO Review Case: Disk w/dull reddish glow.	45.5231	-122.6765
1840	2/8/2002 19:00:00	Portland	OR	Disk	60 minutes +	Craft forms Triangle, becomes portal right over 1-5	45.5231	-122.6765
1841	1/16/2002 22:05:00	Portland	OR	Light	2 minutes	Red, fuzzy ball of light streaking across in front of the mountain.	45.5231	-122.6765
1842	1/14/2002 18:40:00	Portland	OR	Triangle	2 minutes	Red triangles of light that straightend into column.	45.5231	-122.6765
1843	1/12/2002 16:10:00	Portland	OR	Light	1 minute	Sighting of lights over willamette river in Portland, OR Saturday 1/12/02 @ 4:10pm near two rainbows	45.5231	-122.6765
1844	12/24/2001 23:00:00	Portland	OR	Light	1 hour +	a flickering light, that changed color, and greww larger and started to throb when airplanes came near.	45.5231	-122.6765
1845	11/19/2001 2:30:00	Portland	OR	Triangle	5 minutes	Triangle shaped object drops from sky during meteor shower...possible abduction.	45.5231	-122.6765
1846	9/30/2001 19:15:00	Portland	OR	Formation	4-5 seconds	Wedge formation of 5 round (or disc) shaped objects glowing pale green flying north incredibly fast on 9/30/01 @ 7:15PM over Portland	45.5231	-122.6765
1847	8/17/2001 12:35:00	Portland	OR	Sphere	5 minutes	Daytime UFO sighting over Portland Oregon	45.5231	-122.6765
1848	8/16/2001 23:10:00	Portland	OR	Fireball	5-7sec	ball of light_w/aura shoots across portland/ nitesky....no story at 11:00	45.5231	-122.6765
1849	8/14/2001 21:45:00	Portland	OR	Other	15 MINUTES	US Shuttle being followed?	45.5231	-122.6765
1850	8/6/2001 23:00:00	Portland	OR	Sphere	15 min	slow moving bright red shere under low cloud deck.	45.5231	-122.6765
1851	8/6/2001 23:00:00	Portland	OR	Chevron	30 minutes	bright as a red flare , chevron shaped, silent, 1000 ft over my house and stayed for 30 min..caught on video tape.	45.5231	-122.6765
1852	8/2/2001 23:25:00	Portland	OR	Light	30sec.	light bright to dim and gone	45.5231	-122.6765
1853	7/22/2001 14:40:00	Portland	OR	Changing	20 minutes	In bright daylight, bright object observed-thru binoculars it looked wierd-second bright object traversed path of first.	45.5231	-122.6765
1854	7/15/2001 20:25:00	Portland	OR	Unknown	5-10 minutes	Observed object in Clackamas- Oregon City area.	45.5231	-122.6765
1855	7/9/2001 12:06:00	Portland	OR	Oval	12:07	I heard a helicopter which sounded like it was above my house, I went outside to see and I looked at the helicopter, it had a sheriff s	45.5231	-122.6765
1856	4/28/2001 14:01:00	Portland	OR	\N	2-5 min.	Woman reports hearing sharp explosion, witnessing fireball, and seeing smoke over north Portland.	45.5231	-122.6765
1857	4/28/2001 14:00:00	Portland	OR	Fireball	about 3 min.	Immediately following a very loud, sharp explosion there was a large burst of flame in the sky, followed by dark smoke. of	45.5231	-122.6765
1858	3/8/2001 17:30:00	Portland	OR	Sphere	10 minutes	100 or so golden spheres hovering and moving up and down in a corkscrew fashion in bright sun.	45.5231	-122.6765
1859	2/26/2001 1:34:00	Portland	OR	Chevron	2-3 minutes	2 V-shaped objects with bright lights seen near NW Portland.	45.5231	-122.6765
1860	2/15/2001 1:00:00	Portland	OR	Oval	1-2 minutes	Brightly lit, kind of glowing, oval shaped, object moving at a steadily paced speed across the sky.	45.5231	-122.6765
1861	2/9/2001 20:00:00	Portland	OR	Light	1 hour	What I thought was venus was moving !	45.5231	-122.6765
1862	1/21/2001 0:30:00	Portland	OR	Other	three seconds	I saw a very low-flying and large craft without lights or sound in a northerly direction.	45.5231	-122.6765
1863	1/3/2001 20:20:00	Portland	OR	Sphere	20 seconds	As my daughter and I were headed home from the store it was dark, cloudy, and raining hard. We turned a corner and right ahead but not	45.5231	-122.6765
1864	12/5/2000 17:10:00	Portland	OR	Light	2 minutes	Object was motionless and did not emit sound while motionless in the western sky.	45.5231	-122.6765
1865	11/15/2000 20:00:00	Portland	OR	Circle	1min/20sec	sequenced flurry of circles	45.5231	-122.6765
1866	10/15/2000 20:00:00	Portland	OR	Circle	3 minutes	Many, many,many. WOW!	45.5231	-122.6765
1867	10/13/2000 22:10:00	Portland	OR	Light	0:03	4 white lights initially stationary suddenly merged into one light and then when out.	45.5231	-122.6765
1868	9/14/2000 21:00:00	Portland	OR	Triangle	2-3 minutes	Triangular shaped object viewed through a telescope after initial sighting by 4 adults.	45.5231	-122.6765
1869	8/16/2000 2:45:00	Portland	OR	Other	45 seconds	Early morning sighting of two red, square shaped objects preceded by a deep rumbling.	45.5231	-122.6765
1870	8/15/2000 15:05:00	Portland	OR	Sphere	5 min	I WAS AT WORK, WENT OUT AT 3:05 PM FOR MY AFTERNOON BREAK. NO ONE ELSE HAD COME OUT FOR BREAK, SO I WAS BY MYSELF. I SAT BACK IN MY CH	45.5231	-122.6765
1871	8/11/2000 21:45:00	Portland	OR	Unknown	2-3 minutes	Bright light at high altitude, weaving from side to side	45.5231	-122.6765
1872	8/6/2000 21:13:00	Portland	OR	Light	3+ min.	bright light moving South to North, then turns due East over Portland, Or. Above airliner traffic, and faster.	45.5231	-122.6765
1873	8/6/2000 18:00:00	Portland	OR	Other	10 minutes	Yellow slow flight pulsing bag object above 35000'	45.5231	-122.6765
1874	7/31/2000 9:23:00	Portland	OR	Fireball	1.5 sec.	Spectacular day-time meteor or satellite re-entry	45.5231	-122.6765
1875	7/27/2000 3:35:00	Portland	OR	Light	3 to 5 seconds	object was reddish orange in color and the light flickered.	45.5231	-122.6765
1877	7/16/2000 0:34:00	Portland	OR	Light	1.5sec.	Bright Green, Orange, and White lights	45.5231	-122.6765
1878	7/14/2000 2:00:00	Portland	OR	Flash	15 sec	big blue flash and a blue zigzaging light	45.5231	-122.6765
1879	7/12/2000 18:30:00	Portland	OR	Cylinder	30-45 seconds	I saw a cylindrical object hovering and moving in a "square" pattern and then it sped away at a great rate of speed.	45.5231	-122.6765
1880	6/21/2000 15:30:00	Portland	OR	Cigar	10-20 seconds	objects seen while waiting on city buses	45.5231	-122.6765
1881	5/12/2000 20:50:00	Portland	OR	Unknown	one minute	[This is being written by MUFON investigator, John Kirby, section director, Multnomah County, Oregon] Witness was stopped at a traffic	45.5231	-122.6765
1882	5/7/2000 3:45:00	Portland	OR	Other	5 seconds	seen while walking home from work.	45.5231	-122.6765
1883	4/30/2000 22:30:00	Portland	OR	Circle	10-13 minutes	initially seen while I was "indisposed" of.	45.5231	-122.6765
1884	3/15/2000 23:00:00	Portland	OR	Oval	5 seconds	20 foot, Tan, Oval object covers exspance of the visible sky in 5 seconds>No noise	45.5231	-122.6765
1885	2/27/2000 23:00:00	Portland	OR	Unknown	3 minutes	Four bright lights with blinking light in the middle seen over Cornilius Pass	45.5231	-122.6765
1886	12/26/1999 22:30:00	Portland	OR	Unknown	1-1/2 minutes	Fast moving object with multicolored lights crossing east to west.	45.5231	-122.6765
1887	12/21/1999 17:00:00	Portland	OR	Light	3min.	Bright light hanging in sky then zig-zagging downward and disappearing.	45.5231	-122.6765
1888	10/1/1999 4:00:00	Portland	OR	Light	15-25 seconds	looking west the object appeared approx near the top of our atmosphere. It was huge! It at first just seemed to appear out of thin air.	45.5231	-122.6765
1889	9/1/1999 21:40:00	Portland	OR	\N	10+ sec.	High Performance A/C at full military power	45.5231	-122.6765
1890	9/1/1999 21:35:00	Portland	OR	\N	25-35 sec.	Observed and heard two F-15 air natl. guard jets with full afterburner turning south over my location (west hills) at btwn. 2130 & 2135	45.5231	-122.6765
1891	9/1/1999 21:30:00	Portland	OR	Unknown	1-2 minutes	direction traveling NW to NE objects were about the size of split pea at arms length colour, red One appeared from nowhere traveling NE	45.5231	-122.6765
1892	9/1/1999 21:10:00	Portland	OR	Other	15 min space between 2 ev	Two seperate fly by's of apparently military Jets, with no wing or nose lights, Afterburners produced only visible light. Extremely Lou	45.5231	-122.6765
1893	9/1/1999 21:00:00	Portland	OR	\N	\N	Military in Oregon is lying to you!!!	45.5231	-122.6765
1894	8/17/1999 5:50:00	Portland	OR	Other	15 min	Stationary object over downtown Portland Oregon, white in color shaped like 3-pointed star or "Y".	45.5231	-122.6765
1895	8/10/1999 11:00:00	Portland	OR	Light	10/15 minuts	11:00 am I noticed an object in the sky, i thought it was a plane or balloon, no sound. It was travelling north to south. I then saw a	45.5231	-122.6765
1896	7/26/1999 16:00:00	Portland	OR	Changing	about 10 min.	Big black object that came apart and molded back together.	45.5231	-122.6765
1897	7/10/1999 18:00:00	Portland	OR	Cigar	5 minutes	Cigar shaped object, reflective silver/white in color seen moving silently through the sky.	45.5231	-122.6765
1898	6/18/1999 14:00:00	Portland	OR	Cigar	5 mins.	Sky was clear with the exception of a few clouds. A large silver/white cigar shaped craft moved from behind one of the clouds. No sound	45.5231	-122.6765
1899	1/24/1999 20:00:00	Portland	OR	Oval	120 seconds	Huge UFO passing between opening over the city of Portland, Oregon	45.5231	-122.6765
1900	1/8/1999 18:00:00	Portland	OR	Sphere	10 minutes	From airplane saw orange glowing craft. Oily substance emited from craft and the stars behind the oily substance became greatly magnifi	45.5231	-122.6765
1901	1/5/1999 2:00:00	Portland	OR	Oval	5hours	portland oregon 01/05/99 0200	45.5231	-122.6765
1902	10/18/1998 23:54:00	Portland	OR	Fireball	7 sec	I was driving over the burnside bridge into downtown Portland, A metallic green fireball very slow in nature. slower than the dozens of	45.5231	-122.6765
1903	10/1/1998 0:10:00	Portland	OR	Light	5 sec	GETTING OUT OF MY CAR TO WORK,I SAW A WIDE GREEN STREAK OF LIGHT IN THE SOUTHWEST SKY,FROM SKY TO GROUND...........	45.5231	-122.6765
1904	9/23/1998 18:35:00	Portland	OR	Other	approx 10 min	Same night as green fireball seen from Eugene to Seattle, and a report of sivlery UFO seen in Vancouver (heard on Art Bell) an unusual	45.5231	-122.6765
1905	9/12/1998 4:45:00	Portland	OR	Light	20 seconds	Very high altitude, small light, appeared to be a star. moved from west to east, when overhead turned 90 degrees to the north.	45.5231	-122.6765
1906	9/2/1998 23:33:00	Portland	OR	Disk	15 Seconds	I went out to lock my car at 11:33 PM on September 2nd and saw a white disk shaped object streak across the northern sky.	45.5231	-122.6765
1907	8/3/1998 21:29:00	Portland	OR	Light	ca. 2 min.	Very bright steady blue-white light in sky over 3-5 deg. arc, steady movement over ene to wsw path, abruptly vanishing at "apex". No s	45.5231	-122.6765
1908	7/26/1998 18:25:00	Portland	OR	Cylinder	1 minute	The object was flying at a very high speed(probably 3000 miles per hour) without making any sound.	45.5231	-122.6765
1909	7/17/1998 22:51:00	Portland	OR	Light	1 second	Object appeared in the western sky. Very Bright. Dropped suddenly to the west and disapeared behind the horizon of Portland's west hill	45.5231	-122.6765
1910	6/1/1998 22:00:00	Portland	OR	Triangle	10 seconds	TR-3b low flyover Lake Oswego, Oregon.	45.5231	-122.6765
1911	5/2/1998 22:45:00	Portland	OR	Triangle	3 seconds	It was triangular in shape, but hard to describe, because of so many different angles.	45.5231	-122.6765
1912	3/26/1998 22:00:00	Portland	OR	Light	30 MINS	BALL OF LIGHT BLUEISH WHITE LIGHT HOVERING FOR ABOU 25-30 IN SAME LOCATION THEN SLOWLY MOVED OFF HORIZON OT OF SIGHT	45.5231	-122.6765
1913	11/14/1997 17:00:00	Portland	OR	Formation	5 hours	Two bright lights appeared over the neighbors house and seem to go back and forth, stand still and pulsated at the same time. They loo	45.5231	-122.6765
1914	9/2/1997 21:45:00	Portland	OR	Formation	20 seconds	Four pink/orange lights in V formation flying over metro Portland	45.5231	-122.6765
1915	5/17/1997 14:00:00	Portland	OR	Oval	4 seconds	I sighted a rather large silver object,Oblong but not rounded it was visible for 5 sec.then gone in a blink.	45.5231	-122.6765
1916	12/17/1996 6:20:00	Portland	OR	\N	2 min.	Multnomah Co. off. at traffic light sees obj. STREAK from W to E in SW sky. 2 min. later, sees identical event, same trajectory.	45.5231	-122.6765
1917	6/15/1996 15:00:00	Portland	OR	Chevron	25 minutes	06/15/96 15:00 Portland OR Chevron 25 minutes Mid day not moving very high almost downtown flat black chevron	45.5231	-122.6765
1918	3/25/1996 23:56:00	Portland	OR	\N	3 sec.	Couple witness 3 "pinkish, beige, solid" lights streak overhead to NW very fast. Each object the size of a "very dim star."	45.5231	-122.6765
1919	2/2/1996 20:35:00	Portland	OR	\N	5 sec.	Man sees wedge-shaped obj. pass overhead at high rate of speed. Appeared to have 6-8 rectangular, white lights on each "wing."	45.5231	-122.6765
1920	1/7/1996 7:00:00	Portland	OR	\N	30 min.	Couple witness 2-3 dozen points of light overhead moving SE to NW. 5 min. later, they are seen going SE. Moved sporadically.	45.5231	-122.6765
1921	9/22/1995 5:40:00	Portland	OR	\N	20 sec.	Man on way to work witnesses 2 bright, white "stars" over the Columbia R. Suddenly, started doing incredible maneuvers. Silent.	45.5231	-122.6765
1922	9/8/1995 6:35:00	Portland	OR	\N	\N	Man relays radio repts. about large, bright object, "diameter of full moon," seen over W OR. Vis. through overcast, beeping sound!	45.5231	-122.6765
1923	8/8/1995 0:40:00	Portland	OR	\N	10 sec.	Woman witnesses round, black, disc-shaped craft rise out of Pier Park (?). Looked "like obsidian." Dark, but reflected street lights.	45.5231	-122.6765
1924	7/29/1995 22:30:00	Portland	OR	\N	\N	MUFON investigator reports her mother witnessed four discs in formation over Portland.	45.5231	-122.6765
1925	6/25/1995	Portland	OR	\N	\N	Man reports seeing bizarre sighting while aboard Flight #725 enroute from Denver to Portland.	45.5231	-122.6765
1926	5/15/1995 10:30:00	Portland	OR	\N	5 min.	Man repts. seeing silver flash, then sees silver, shiny craft w/ thin fuselage, but no wings! Drifted off, disappeared from sight.	45.5231	-122.6765
1927	4/25/1995 12:30:00	Portland	OR	\N	75 min.	Man, lying on bed, sees very bright ball of light enter apt.. Could feel heat from obj., felt paralyzed. Loud humming above	45.5231	-122.6765
1928	4/22/1995 17:15:00	Portland	OR	\N	\N	Woman in hammock witnesses brightly lighted "red ball" descend from sky, fly into garage! Ascends, flies to 2nd obj. in sky.	45.5231	-122.6765
1929	3/10/1995 20:45:00	Portland	OR	\N	2 sec.	Man witnessed bright obj. "like ice cream cone" streak across sky above city in arc path. F-16's reported.	45.5231	-122.6765
1930	3/7/1995 21:25:00	Portland	OR	\N	\N	Man witnessed four lights on dark ship, w/ red blinking light on tail. Heard sound like "blimp." Other repts.	45.5231	-122.6765
1931	3/7/1995 19:20:00	Portland	OR	\N	15 sec.	Woman sees four bright lights moving across sky, w/ red, flashing light on tail. Loud sound. Flew south.	45.5231	-122.6765
1932	2/25/1995 20:20:00	Portland	OR	\N	40 min.	Man repts. strange green light behind clouds. Seemed to generate "ripple" effect in atmosphere.	45.5231	-122.6765
1933	1/21/1995 5:45:00	Portland	OR	\N	15 min.	Man out walking during early morning observes three very colorful objects in southwest sky. They move.	45.5231	-122.6765
1934	5/15/1994 14:00:00	Portland	OR	Sphere	10 minutes	While in light aircraft observed object below and behind follow in a race track holding pattern. Observed changes in heading altitude a	45.5231	-122.6765
1935	9/15/1993	Portland	OR	Disk	15 seconds	No lights or sound 300 or 400 feet long looked like brushed aluminum saw it 1 or 2 miles away then vanished away.	45.5231	-122.6765
1936	9/15/1991 14:30:00	Portland	OR	Cigar	1 minutes	It was a long cigar shaped object; no way its some thing we built.	45.5231	-122.6765
1937	2/28/1985 23:00:00	Portland	OR	Light	10-15 mins	multiple points of bright light seen above city apparently motionless then dissapeared one by one.	45.5231	-122.6765
1938	2/1/1985 22:30:00	Portland	OR	Light	15 mins	multiple points of light hovering? over the west hills of Portland that could disapear one at a time while I was watching them	45.5231	-122.6765
1939	4/9/1983 20:00:00	Portland	OR	Light	420	I witnessed several orb shape objects glowing bright red in Portland Oregon near SE 72nd off Harold around 8pm .	45.5231	-122.6765
1940	6/1/1981 21:00:00	Portland	OR	Triangle	15 seconds	elongated triangle ship spotted around 1981, 3 witnesses. it put us in a daze making it hard to think	45.5231	-122.6765
1941	4/4/1979 13:00:00	Portland	OR	Triangle	a while	If you saw the triangle I have described. It would be very wise to search your memories.	45.5231	-122.6765
1942	8/30/1976 2:00:00	Portland	OR	Cigar	3-4 minutes	Cigar shaped object over Porland Oregon 8/76	45.5231	-122.6765
1943	8/11/1976 21:00:00	Portland	OR	Triangle	20 min	Large triangle remembered in Portland, Oregon	45.5231	-122.6765
1944	8/1/1976 22:00:00	Portland	OR	Triangle	30 seconds	The craft was low and made absolutely no noise. It had lights that ran down the left and right side of the craft. ((anonymous report))	45.5231	-122.6765
1945	8/19/1975 21:00:00	Portland	OR	Disk	5 minutes	A disc shaped craft that appeared to be made of metal.	45.5231	-122.6765
1946	7/7/1973 17:30:00	Portland	OR	Fireball	2 minutes	My cousin and I were laying on our backs on a hill in front of my home - at about a 30 degree angle. Looking up at the night sky, talk	45.5231	-122.6765
1947	10/15/1969 13:00:00	Portland	OR	Cigar	3/1/2002	The cigar shaped crafts unusual attitude is something I have never seen repeated with any modern aircraft past or present.	45.5231	-122.6765
1948	6/10/1969 1:00:00	Portland	OR	Disk	3 MIN	WE WERE CLOSE ENOUGHT TO THROW ROCKS AT THEM WE WERE CONCERNED THAT THEY SEEN US I WAS SCARED	45.5231	-122.6765
1949	7/20/1965 23:45:00	Portland	OR	Disk	20 minutes	A football sized glowing orange saucer shaped object , hovering completely still over head, disappears into the horizon in a flash.	45.5231	-122.6765
1950	6/25/1965 13:00:00	Portland	OR	Disk	2 minutes	The object was stationary.	45.5231	-122.6765
1951	7/15/1963 23:00:00	Portland	OR	Sphere	1/2 hour	1963 - Round hovering, soundless, rotating object over northeast Portland, Oregon	45.5231	-122.6765
1952	7/1/1960 20:00:00	Portland	OR	Unknown	15-30 min	Stationary Lights Over Portland OR Around 1960	45.5231	-122.6765
1953	6/30/1960 20:30:00	Portland	OR	Disk	\N	Live TV broadcast from Portland OR in the summer of 1959 or 1960.	45.5231	-122.6765
1954	7/6/2005 20:30:00	Portland	OR	Sphere	1 hour	Historical UFO sighting--July 1905.	45.5231	-122.6765
1955	3/?/94 20:00	Portland	OR	Light	2 minutes	Watched a bright blue ball, in the evening, for about three blocks in a residential area in Northeast Portland. It was about 50 feet o	45.5231	-122.6765
2165	7/15/2005 22:00:00	Salem	OR	Light	1 second	Stationary light seen in night sky for one second	44.9429	-123.0351
1956	10/20/1999 22:33:00	Portland (40 mi. west of)	OR	Circle	3 sec.	Driving north I saw an object the size of a 3/4 full moon with a tail traveling east to west, 45 degrees up in the sky, and approx. 1/2	45.5231	-122.6765
1957	6/30/2015 22:15:00	Portland (far east; Corbett)	OR	Rectangle	10 minutes	Two rectangular crafts in the sky. Very bright lights. Just hovering in the sky. They were so bright I almost drove off the road.	45.5231	-122.6765
1958	8/11/2012 11:45:00	Portland (Garden Home)	OR	Formation	5-20 minutes	"Stars" moving around, changing position, and appear to be in a formation.	45.5231	-122.6765
1959	11/6/2003 11:30:00	Portland (I-5/Lombard Exit)	OR	Sphere	2-3 min.	Young woman reports witnessing F-15 fighter jets approach a peculiar sphere over Interstate 5.	45.5231	-122.6765
1960	6/21/2002 16:30:00	Portland (Lake Oswego and Gresham)	OR	Sphere	2 hours	Oregon UFO Review Cases: The following 4 reports from Portland, Lake Oswego and Gresham appear to be the same object.	45.5231	-122.6765
1961	4/25/2006 23:20:00	Portland (near)	OR	Rectangle	4 seconds	Faint transparent rectangle with red & green southwest of Portland, Oregon.	45.5231	-122.6765
1962	4/30/2014 8:30:00	Portland (northeast area)	OR	Flash	5 minutes	((HOAX??)) Bright orb growing in size and then shrinking.	45.5231	-122.6765
1963	1/29/2015 19:05:00	Portland (northeast part)	OR	Light	10 minutes	Multi-color light, blue, red, green, orange. Beaming and moving upwards very slowly. In SE sky. ((NUFORC Note: Sirius?? PD))	45.5231	-122.6765
1964	12/6/2013 22:40:00	Portland (southeast of)	OR	Light	1 minute	Strange constant set of lights moving East to West over inner SE portland skyline	45.5231	-122.6765
1965	6/16/2000 2:00:00	Portland (southeast)	OR	Unknown	5-6 seconds	TheFull*MoonBathedTheSKY-WhileThe~*TWO-DOMES (BrightlyLit)`ObjectPlayed~likeA*rollercoaster	45.5231	-122.6765
1966	4/22/1998 21:20:00	Portland (southeast)	OR	Sphere	6 seconds	I work graveyard and was just pulling into the parking lot when I saw a bright green glowing ball in the sky over my work place. It wa	45.5231	-122.6765
1967	6/17/1997 23:15:00	Portland (southeast)	OR	light	5,Min.	Large brite white lights grouped together W/ one red light underneath.	45.5231	-122.6765
1968	11/18/2001 17:15:00	Portland (suburbs)	OR	Light	15 minutes	Two objects joined, then split apart and one released a small light.	45.5231	-122.6765
1969	10/8/2010 23:00:00	Portland City	OR	Sphere	5 min	Orange sphere floated up-hill at tremendes speed.	45.5231	-122.6765
1970	1/1/2017 22:55:00	Portland, OR/Vancouver, WA	OR	Circle	current	Smaller round unknown and multicolored stat. figures in the sky and not a star. ((NUFORC Note: Sirius?? PD)) ((anonymous report))	45.5231	-122.6765
1971	8/12/2000 1:30:00	Portland/Boise (between)	OR	Other	1.5 hrs.	Wife and adult kids in two cities at same time confirm visible energy waves radiating down from the north, many pulses. pattern?	45.5231	-122.6765
1972	6/25/2005 20:50:00	Portland/Gresham	OR	Disk	10	A disk shaped object with a haze stood in one place then moved from side to side. Ten others followed with bright lights.	45.5231	-122.6765
1973	11/6/2003 19:30:00	Portland/Gresham	OR	Light	1 minute	Yellow/orange light in evening sky followed by military jet activity	45.5231	-122.6765
1974	10/10/2015 18:46:00	Portland/Hillsboro	OR	Other	?	Strange object captured on camera but not to the naked eye	45.5231	-122.6765
1975	1/11/2013 20:00:00	Portland/Vancouver (on I-5 @ Interstate Bridge)	OR	Other	1-3 hours	((HOAX??)) Massive UFO sighting iin Portland Oregon!! Something doesn't feel right.	45.5231	-122.6765
1976	8/2/2014 1:00:00	Powers	OR	Circle	hours	Bright white round light 's moving very fast making sharp turns straight up and 90 degree angles stopping suddenly.	42.8834	-124.0732
1977	1/1/2014 20:45:00	Powers	OR	Unknown	still going	Wednesday Jan 1 8:45 PM South west, Oregon Near Powers Right now it is 8:53 to the east of Powers Hovering over what appears to Eden Ri	42.8834	-124.0732
1978	10/2/1999 19:08:00	Prairie City	OR	Cigar	20-30 seconds	Appeared to be jet with short vapor trail then vapor changed to something like a fireman spraying with a fog or fan spray that spread W	44.4632	-118.7099
1979	9/26/2015 6:00:00	Prineville	OR	Circle	10 seconds	I can't explain well.	44.2998	-120.8345
1980	5/8/2015 22:15:00	Prineville	OR	Circle	4 minutes	We all saw a Red ball object and then it disappeared slowly.	44.2998	-120.8345
1981	1/4/2014 16:22:00	Prineville	OR	Oval	seconds?	Took photos with new camera (FujiFilm HS50EXR)at close to full zoom (approx 800mm). ((NUFORC Note: Mourning dove in flight? PD))	44.2998	-120.8345
1982	7/10/2012 1:00:00	Prineville	OR	Fireball	5 minutes	Color changing light, randomly bobbing and circling--would have thought this was a star if I had just glanced at it for a second	44.2998	-120.8345
1983	2/18/2012 0:30:00	Prineville	OR	Light	40 minutes	Two adults witnessed a flickering blue, green and white light eminating a search beam type light	44.2998	-120.8345
1984	10/9/2011 18:00:00	Prineville	OR	Cigar	1 min	Bright red glowing object in Prineville, Or.	44.2998	-120.8345
1985	3/16/2008 14:30:00	Prineville	OR	Other	10 seconds	Dome shaped object slowly lowers out of cloud cover.	44.2998	-120.8345
1986	8/26/2007 18:00:00	Prineville	OR	Sphere	7 seconds	UFO or Basket Ball in the middle of nothing?	44.2998	-120.8345
1987	3/19/2007 15:00:00	Prineville	OR	Sphere	45 sec.	Saw a sphere shape light hovering off rimrock, it moved very fast, and was gone in an instant.	44.2998	-120.8345
1988	2/5/2007 19:15:00	Prineville	OR	Unknown	2.5 minutes	Lights moving in a straight line, slow and steadily close to the ground with a very slight sound.	44.2998	-120.8345
1989	11/16/2006 17:15:00	Prineville	OR	Changing	3 minutes	Bright lights change number and into object and strike of lights apear in picture taken Prineville, OR	44.2998	-120.8345
1990	10/1/2000 20:00:00	Prineville	OR	Unknown	1 hour	bright white light the size of a distant star that made eratic movements, and complete stops	44.2998	-120.8345
1991	6/14/2000 2:30:00	Prineville	OR	Rectangle	6 mim	is it someone eles or uss	44.2998	-120.8345
1992	2/23/1996 22:30:00	Prineville	OR	\N	2 min.	Man, 2 other adults, witness large, rectangular obj. w/ "curious" red, blue, green "blended colors" on bottom pass overhead.	44.2998	-120.8345
1993	6/1/1985 13:00:00	Prineville	OR	Other	15 minutes	Small silver pyramid object just above the power lines observed for about fifteen minutes in the mid 80's	44.2998	-120.8345
1994	10/15/1990 20:00:00	Prineville (30 miles east of)	OR	Light	about 4-6 seconds	Fast moving ball of light that can move at right angles.	44.2998	-120.8345
1995	2/2/2012 21:00:00	Prospect	OR	Changing	20 minutes	Red, white, green bright flashing lights above timber line at Prospect, Oregon	42.7543	-122.4887
1996	10/20/2006 14:01:00	Prospect	OR	Cigar	a few seconds	Object near jet in Prospect, Oregon.	42.7543	-122.4887
1997	9/18/2006 18:02:00	Prospect	OR	Sphere	20 Minutes	Ball of light seen over Prospect, Oregon	42.7543	-122.4887
1998	7/18/2011 23:40:00	Rainier	OR	Light	<1 minute	Saw a strange fast light while driving home. ((NUFORC Note: Sighting allegedly affected dashboard lights in car. PD))	46.0890	-122.9359
1999	9/15/1999 1:00:00	Redland	OR	Unknown	20 seconds	Object hovering in same spot two nights in a row, emitting amber glow.	45.3435	-122.4929
2000	7/10/2000 20:30:00	Redland/Estacada	OR	Circle	few seconds	Bright metallic object at base of Mt. Hood	45.3435	-122.4929
2001	12/31/2016 20:00:00	Redmond	OR	Sphere	4 hours	12+ silent red orbs fly from west to east.	44.2726	-121.1739
2002	9/27/2016 22:30:00	Redmond	OR	Unknown	Seconds	Dimly lit, gray, fast moving object.	44.2726	-121.1739
2003	3/31/2016 0:21:00	Redmond	OR	Light	15 minutes	Hovering flashing light over Sister's Mountains.	44.2726	-121.1739
2004	7/27/2015 13:00:00	Redmond	OR	Light	1 hour	Unusual bright object, visible during mid-day; bright blue sky.	44.2726	-121.1739
2005	3/8/2015 20:45:00	Redmond	OR	Circle	1-3 minutes	4 red/orange circle/sphere/orb like coloured lights in the sky on a very clear night	44.2726	-121.1739
2006	12/22/2014 19:00:00	Redmond	OR	Formation	5 minutes	Red lights in big dipper formation over airport.	44.2726	-121.1739
2007	8/11/2014 23:00:00	Redmond	OR	Light	5 minutes	Orangish red pulsating light over Sisters/Redmond, Oregon.	44.2726	-121.1739
2008	7/4/2014 23:30:00	Redmond	OR	Fireball	2 minutes	Red light in oregon sky's.	44.2726	-121.1739
2009	11/22/2013 1:00:00	Redmond	OR	Sphere	10 minutes	Glowing orange spheres over Redmond, Oregon.	44.2726	-121.1739
2010	9/29/2012 12:00:00	Redmond	OR	Sphere	30 minutes	Small, white, lumenescent sphere observed drifting through chemtrail activity from High Desert, Central Oregon.	44.2726	-121.1739
2011	8/8/2012	Redmond	OR	Light	10 minutes	A brilliant white light traveling NE from the SE. no sound, no flashing lights just a big bright white light traveling slowly at arou	44.2726	-121.1739
2012	1/22/2012 1:00:00	Redmond	OR	Unknown	Minutes	Back in 2011-2013 I was watching a Video on YouTube where someone mentioned that if you shine a really Bright Light into the Sky in a R	44.2726	-121.1739
2013	10/26/2008 21:30:00	Redmond	OR	Triangle	10 seconds	Looked like three stars traveling together in unison, until it was directly overhead.	44.2726	-121.1739
2014	3/14/2007 21:00:00	Redmond	OR	Light	hour	Shimmering brilliant light darting and hovering in horizon above butte in Redmond, OR.	44.2726	-121.1739
2015	3/5/2007 22:37:00	Redmond	OR	Light	1min.	three lights in the sky over redmond, oregon	44.2726	-121.1739
2016	2/14/2005 17:00:00	Redmond	OR	Sphere	5 to 6 min	The object was silverish, due to the sun was shinning on it. It stayed in one spot for about 4 min. Then it moved from point A to point	44.2726	-121.1739
2017	3/12/2004 21:30:00	Redmond	OR	Disk	2 minutes	small disc shape object with dark orange glow underneath	44.2726	-121.1739
2018	2/7/2004 19:00:00	Redmond	OR	Changing	1 1/2 hr.	We watched a bright light off our pourch till it vanished.	44.2726	-121.1739
2019	8/22/1999 21:15:00	Redmond	OR	Fireball	2 sec	Bluish tinted fireball 45 degrees above horision. Moving directly magnetic South. Part split off.	44.2726	-121.1739
2020	8/10/1989 0:00:00	Redmond	OR	Triangle	10 to15 sec	It's been a long time since and have never officially reported it to anyone. I've talked about throughout the years. I use to fight Fo	44.2726	-121.1739
2021	7/31/2014 22:00:00	Reedsport	OR	Circle	5 seconds	Crimson red to orange lasted 5 seconds.One never change location disappeared in five seconds the other lasted longer it disappeared sud	43.7023	-124.0968
2022	5/9/2007 4:25:00	Reedsport	OR	Triangle	5 min	Hovering object above the trees, with strobe like lights	43.7023	-124.0968
2023	5/7/2007 22:50:00	Reedsport	OR	Circle	5 Sec	Huge blue light disappears into the trees and other cars blinking there lights at me and truck had his flashers on.	43.7023	-124.0968
2024	7/23/2016 23:00:00	Richland	OR	Light	10 minutes	Flashing Light Hells Canyon. 4 witnesses. Airline Captain. ((NUFORC Note: Airline captain/ATP report. PD))	44.7690	-117.1685
2025	5/9/2011 20:00:00	Riddle	OR	Rectangle	10-15 minutes	Very large craft with five large lights moving slowley over ridge line, with out any sound of engines.	42.9510	-123.3642
2026	12/19/1998 20:00:00	Riddle	OR	Light	15 seconds	Was looking at the night sky on a clear night and noticed an object about the brightness of the North star moving West across the sky.	42.9510	-123.3642
2027	9/24/2015 21:00:00	Riley	OR	Light	15 minutes	Saw several lights, doing various things like strobing, moving, disappearing after one slow flash, splitting, and a swoop.	43.5415	-119.5038
2028	12/9/2010 18:00:00	Riley	OR	Fireball	15 mins.	We were traveling from Riley Or. to Bend Or., mile 70 aprox. ,whe this fire balls showed in the middle of the storm, but the most amazi	43.5415	-119.5038
2029	6/1/1970	Ritter	OR	Disk	4 min	I was on a fishing trip with a friend . It was getting dark and we were looking upat the sky with my bionacers when i notched two white	44.8924	-119.1436
2030	6/1/2006 23:00:00	Rockaway	OR	Sphere	45 seconds	Object appeared as a satellite then stopped became bright enogh to illuminate the beach.	45.6134	-123.9429
2031	9/17/2005 23:00:00	Rockaway	OR	Light	20 sec	Bright lights in the sky over the ocean.	45.6134	-123.9429
2032	1/1/2015 0:01:00	Rockaway Beach	OR	Fireball	4 minutes	Five small, orange floating objects seen overhead at the beach. Erratic flight patterns.	45.6134	-123.9429
2033	10/18/2014 21:00:00	Rockaway Beach	OR	Light	4 minutes	Four fire orange lights in a kind of an odd diamond like formation slowly floating in the sky above the ocean heading north.	45.6134	-123.9429
2034	10/5/2013 23:30:00	Rockaway Beach	OR	Light	3-4 minutes	Unexplainable light moving in a ways not achievable by known aircraft.	45.6134	-123.9429
2035	7/31/2011 0:00:00	Rockaway Beach	OR	Chevron	15 seconds	Saw a flying object, seemingly orbiting earth, when there was a burst of light/energy and the craft sped off at an unimaginable speed.	45.6134	-123.9429
2036	3/21/2001 19:50:00	Rockaway Beach	OR	Unknown	3-4 min.	Weird lights over Oregon Coast	45.6134	-123.9429
2037	6/30/2008 21:00:00	Rogue River	OR	Light	about 5 minutes	two ufos circled each other	42.4360	-123.1720
2038	2/22/2001 20:15:00	Rogue River	OR	Diamond	10 minutes	Bright diamond shape light at first it didn't move. Then it started getting lighter and brighter and smaller and bigger. Then it star	42.4360	-123.1720
2039	2/22/2001 20:15:00	Rogue River	OR	Diamond	10 minutes	The shape of the craft was a diamond.The craft had circular lghts that were bright.It had a glare coming from the craft that was grayis	42.4360	-123.1720
2040	2/22/2001 20:15:00	Rogue River	OR	Diamond	10 minutes	Bright diamond shape light nortwest sky right sbove a ridge line in the bac of our house, we wacthed the light pull apart from the side	42.4360	-123.1720
2041	2/21/2001 20:45:00	Rogue River	OR	Disk	15 to 20 min.	It started about 8:30 pm or so went by sliding door and saw a bright light, I thought that that was strange too see a plane with it's l	42.4360	-123.1720
2042	2/21/2001 20:45:00	Rogue River	OR	Disk	15 to 20 min	I saw a disk or saucer and it was glowing.It made the sky brighter than what the sky usually is.It also looked like it had a beam comin	42.4360	-123.1720
2043	8/4/1999 21:00:00	Rogue River	OR	Light	several hours each night	unblinking star-like lights moving N.E.high and very fast.One every 5 or ten minutes.All taking about the same path.	42.4360	-123.1720
2044	8/13/2012 21:30:00	Rogue River ( Wildcat Camp; lower river)	OR	Light	15 seconds	August 13,2012 Two orange spheres seen on the Rogue river in Southern Oregon	42.4360	-123.1720
2045	7/30/2016 22:50:00	Roseburg	OR	Fireball	.5 second	I went outside for a smoke and when i looked up to the east i saw what appeared to be either a meteor breaking thru the atmosphere but	43.2165	-123.3417
2046	7/29/2016 21:15:00	Roseburg	OR	Light	15 minutes	Starting at 21:15 hours a light coming from the SW heading NE about 15 thousand feet high.There were no blinking lights or strobes like	43.2165	-123.3417
2047	2/4/2016 18:46:00	Roseburg	OR	Circle	10 seconds	Very large, bright white light seen over hill.	43.2165	-123.3417
2048	2/3/2016 2:10:00	Roseburg	OR	Fireball	2 minutes	Orange lights west of Roseburg.	43.2165	-123.3417
2049	1/16/2016 1:00:00	Roseburg	OR	Fireball	1 minute	I was standing on my front deck which faces to the west ,looking south talking to a friend on the phone when 3 orange looking orbs,or s	43.2165	-123.3417
2050	9/14/2015 3:05:00	Roseburg	OR	Light	0.5 seconds	VERY fast moving flashing light. Red/blue light.	43.2165	-123.3417
2051	7/11/2014 23:00:00	Roseburg	OR	Unknown	30 minutes	Planet like objects around the moon.	43.2165	-123.3417
2052	1/18/2014 20:30:00	Roseburg	OR	Oval	2 hours	Slow moving orbs seen slow.	43.2165	-123.3417
2053	12/12/2013 17:00:00	Roseburg	OR	Formation	~30 seconds	4 crafts seen gliding slowly in the air	43.2165	-123.3417
2054	12/12/2013 5:00:00	Roseburg	OR	Light	45 seconds	Light gliding across the sky	43.2165	-123.3417
2055	12/31/2012 22:00:00	Roseburg	OR	Circle	8:00 minutes	They came from the ground and went up at a same rate of speed. All the same color red and yellow.	43.2165	-123.3417
2056	7/13/2012 21:30:00	Roseburg	OR	Light	60 seconds	Bright light come over horizon, turn and disappear.	43.2165	-123.3417
2057	7/13/2012 21:25:00	Roseburg	OR	Light	55 seconds	Light come up from horizon, stop, turn and fade before reaching horizon again.	43.2165	-123.3417
2058	12/31/2011 21:55:00	Roseburg	OR	Light	3 minutes	Three lights were seen, forming a triangle.	43.2165	-123.3417
2059	11/24/2011 18:25:00	Roseburg	OR	Light	5 minutes	Amber/Orange lights evenly spaced in a line moved north quickly and disappeared in the clouds	43.2165	-123.3417
2060	10/20/2010 0:10:00	Roseburg	OR	Rectangle	3 min	5 round white lights hovering over I-5. ((NUFORC Note: Report from law enforcement officer. PD))	43.2165	-123.3417
2061	4/26/2009 22:00:00	Roseburg	OR	Sphere	30 seconds	crazy ball of light!	43.2165	-123.3417
2062	9/15/2007 13:00:00	Roseburg	OR	Sphere	20 sec	Silvery sphere observed flying in a non-linear path; I'm convinced it was a UFO.	43.2165	-123.3417
2063	8/10/2007 14:30:00	Roseburg	OR	Other	4 minutes	Meteor or UFO on August 12, 2007 Roseburg, Oregon?	43.2165	-123.3417
2064	4/23/2006 22:00:00	Roseburg	OR	Disk	still happening	sparkling, bouncing flashing light	43.2165	-123.3417
2065	6/30/2005 20:00:00	Roseburg	OR	Cigar	2 minutes	Cigar Mother ship loading and unloading small craft over Douglas County, Oregon	43.2165	-123.3417
2066	11/4/2004 19:15:00	Roseburg	OR	Fireball	1 minute plus	Bright yellow ball with abrupt movement	43.2165	-123.3417
2067	2/20/2004 23:30:00	Roseburg	OR	Cylinder	5min	Orange glowing cylindrical spinning object - Roseburg Oregon	43.2165	-123.3417
2068	11/5/2001 20:00:00	Roseburg	OR	Light	15 min	A red light to the north kinda a mass of light seen. leaves lots of people wondering	43.2165	-123.3417
2069	3/13/2001 22:00:00	Roseburg	OR	Unknown	10 minutes	Large object travelling North. 2 Large Yellowish Bright lights and other lights on object. NO SOUND. Alt. <2000 feet, vel. <100mph	43.2165	-123.3417
2070	9/9/1997 21:30:00	Roseburg	OR	Light	2 hours	Light bouncing around a valley. Light changes intensity, brightness, and color. Disappears, reappears different location.	43.2165	-123.3417
2071	10/1/1973 21:00:00	Roseburg	OR	Cylinder	not sure,maybe 2 hours	We were on the outskirts of town, just passing the sewage treatment plant, when this object with blinding white light enveloped the car	43.2165	-123.3417
2072	8/1/1967 19:00:00	Roseburg	OR	Sphere	15 minutes	3 round craft , with red-blue-green swirling lights, ( no sound) , and sparks emitting from beneath them.	43.2165	-123.3417
2073	6/15/1966 11:00:00	Roseburg	OR	Other	about an hour	i saw YHVH and afterwards there apopeared a ufo in the following week that took me from a tent and tatooed me, project blue book there.	43.2165	-123.3417
2074	10/1/1987 20:00:00	Roseburg (7 miles northwest of)	OR	Oval	30 mins.	Two small glowing oval orange objects and one larger triangle craft in rural Oregon.	43.2165	-123.3417
2075	8/26/2010 22:10:00	Ruch	OR	Light	1 Minute	Solid white light Ruch Oregon. ((NUFORC Note: Possibly the ISS. PD))	42.2365	-123.0423
2076	3/16/2017 21:41:00	Salem	OR	Flash	3 seconds	White flashing explosion.	44.9429	-123.0351
2077	12/12/2016 17:32:00	Salem	OR	Other	15 minutes	Bright spark slowly cruising around the moon	44.9429	-123.0351
2078	9/14/2016 1:00:00	Salem	OR	Other	3 minutes	We witnessed a cluster of blue lights blinking randomly and moving around sporadically for 3 minutes, then disappeared.	44.9429	-123.0351
2079	9/9/2016 22:00:00	Salem	OR	\N	3 minutes	3 yellow-ish/orange orbs that looked like oblong chunks plucked out of the sun, were seen moving across the Salem, OR, sky.	44.9429	-123.0351
2080	9/2/2016 23:59:00	Salem	OR	Fireball	1 minute	Quiet comet like fireball with a long trail across the skyline at a downward angle fast moving went behind the trees lost sight	44.9429	-123.0351
2081	4/9/2016 21:20:00	Salem	OR	Flash	6 minutes	While observing the moon tonight at about 9:20 pm PST my daughter said, "Look, I saw a flash in the sky over there three times."	44.9429	-123.0351
2082	4/5/2016 2:30:00	Salem	OR	Other	90 minutes	As me and my fianse were sitting outside smoking we saw multiple amber and white colored lights appear and then dim out w/n 2-5sec in t	44.9429	-123.0351
2083	1/25/2016 11:00:00	Salem	OR	Oval	~4 minutes	White oval object, hovering very smooth.	44.9429	-123.0351
2084	12/25/2015 2:30:00	Salem	OR	Changing	30 minutes	Christmas was just over, I stepped out to smoke in the cold, I focused on a bright star that seemed to b flickering, I lost contact.	44.9429	-123.0351
2085	11/25/2015 22:30:00	Salem	OR	Fireball	5 minutes	4 identical reddish orange orbs moving silently NE to SW across the sky before slowly disappearing.	44.9429	-123.0351
2086	9/24/2015 21:00:00	Salem	OR	Circle	~10 seconds	I was walking down the street in West Salem Or. and it was completely black outside. The sky was cloudy and full of trails. Two balls	44.9429	-123.0351
2087	9/21/2015 0:30:00	Salem	OR	Fireball	1 second	Something huge just fell towards Earth.	44.9429	-123.0351
2088	9/11/2015 19:30:00	Salem	OR	Light	2 minutes	Two balls of light moving fast West to East in Salem, Oregon.	44.9429	-123.0351
2089	8/20/2015 14:16:00	Salem	OR	Diamond	~30 seconds	Sighting over downtown Salem, Oregon.	44.9429	-123.0351
2090	8/11/2015 3:10:00	Salem	OR	Flash	30 minutes	Silent, explosive lights traveling away from Salem.	44.9429	-123.0351
2091	7/14/2015 17:10:00	Salem	OR	Circle	4 minutes	UFO sighted in Salem, OR, over park at around height of airplanes and is white and shiny with translucent halo blinks out & comes back.	44.9429	-123.0351
2092	6/10/2015 2:52:00	Salem	OR	Flash	3 minutes	06/10/2015, Salem, Oregon, Flash, 2-3 minutes at the most, bright flashes in the sky, 06/10/2015	44.9429	-123.0351
2093	5/29/2015 20:09:00	Salem	OR	Cigar	40 seconds	Weird glowing cylinder far away & multiple jets followed 5 minutes later.	44.9429	-123.0351
2094	4/16/2015 21:39:00	Salem	OR	Circle	3 minutes	Large silver orb moving through space with a smaller flashing cigar shape following behind it	44.9429	-123.0351
2095	3/21/2015 21:00:00	Salem	OR	Fireball	7 minutes	10 orange orbs 1/2-1 mile above on Morningside Dr SE/13th Street SE Salem, OR 9:00 pm - 9:07pm in a file, banked to right, slow vanish	44.9429	-123.0351
2096	3/7/2015 19:30:00	Salem	OR	Circle	4 minutes	Red flashing light over downtown salem oregon, then hovers over bush park.	44.9429	-123.0351
2097	12/18/2014 18:03:00	Salem	OR	Light	1 minute	There was only one very large BRIGHT yellowish light traveling from sw to nw. It was going WA6 faster than any known obj..	44.9429	-123.0351
2098	10/31/2014 8:00:00	Salem	OR	Oval	10 minutes	Ufo	44.9429	-123.0351
2099	10/10/2014 22:50:00	Salem	OR	Unknown	3 minutes	3 bright dots Salem.	44.9429	-123.0351
2100	9/28/2014 18:10:00	Salem	OR	Other	15 minutes	Balloon like clusters over Salem daylight sighting.	44.9429	-123.0351
2101	9/28/2014 2:38:00	Salem	OR	Unknown	67 minutes	An object was spotted hovering far to the SE of Salem with multicolored star-like lights that flashed randomly in a triangular shape.	44.9429	-123.0351
2102	9/27/2014 22:30:00	Salem	OR	Chevron	10 seconds	Chevron shaped craft passes through sky north east of Salem, Oregon.	44.9429	-123.0351
2103	9/7/2014 21:24:00	Salem	OR	Sphere	2 minutes	Unusually large glowing sphere travels across the sky.	44.9429	-123.0351
2104	9/5/2014 23:00:00	Salem	OR	Unknown	90 minutes	Multiple objects with blinking lights moving around in a strange way for the past hour and half	44.9429	-123.0351
2105	7/4/2014 16:42:00	Salem	OR	Sphere	~24 minutes	Metallic sphere moving and changing directions.	44.9429	-123.0351
2106	6/6/2014 1:18:00	Salem	OR	Triangle	15 minutes	True story of alien army seen!!!!!	44.9429	-123.0351
2107	6/1/2014 20:05:00	Salem	OR	Changing	~2 minutes	Peculiar cluster of colored lights in the sky, changing pattern, one pattern was an oval, the brightest one was red and in the middle	44.9429	-123.0351
2108	5/1/2014 21:30:00	Salem	OR	Other	2 minutes	Large Orange Oblong Light Travelling Slowing Across The Sky.	44.9429	-123.0351
2109	2/28/2014 19:00:00	Salem	OR	Light	2 minutes	Dual, nondescript white lights hovering motionless over the interstate.	44.9429	-123.0351
2110	2/13/2014 5:45:00	Salem	OR	Circle	2-5 seconds	Bright light, then disappeared.	44.9429	-123.0351
2111	1/31/2014 18:40:00	Salem	OR	Sphere	1 minutes	Approx. 7 orange orb that looked in formation of the Big Dipper then disappeared and faded away.	44.9429	-123.0351
2112	1/31/2014 18:36:00	Salem	OR	Unknown	35 seconds	Formation of glowing red objects	44.9429	-123.0351
2113	1/25/2014 1:30:00	Salem	OR	Flash	1.5 hours	Brilliant colorful flashing lights moving in a very unconventional way @ 1:30am on January 25, 2014 in Salem Oregon.	44.9429	-123.0351
2114	1/1/2014 0:15:00	Salem	OR	Circle	7 minutes	Looked like some sort of patrol or scouting team.	44.9429	-123.0351
2115	1/1/2014 0:01:00	Salem	OR	Light	5 minutes	Six yellow-orange lights with reddish halos moving from NE to SW at midnight on New Year's Eve spaced about 45 seconds apart; no sounds	44.9429	-123.0351
2116	12/21/2013 6:00:00	Salem	OR	Triangle	10 seconds	We saw 3 lights in the sky!!!	44.9429	-123.0351
2117	11/30/2013 18:00:00	Salem	OR	Rectangle	15 minutes	Rectangular space craft following me and basically stalking me it had looked like extraterrestrial creatures were inside.	44.9429	-123.0351
2118	10/4/2013 21:50:00	Salem	OR	Triangle	15 minutes	Brilliant star-like object hovers above trees and shines bright lights before changing into golden triangle.	44.9429	-123.0351
2119	10/4/2013 21:50:00	Salem	OR	Triangle	15 minutes	Low flying star-like object transforms into shining golden triangle in Salem, OR.	44.9429	-123.0351
2120	7/15/2013 17:15:00	Salem	OR	Circle	15 minutes	Bright white or reflecting silver ball hovering...others flying by?	44.9429	-123.0351
2121	6/15/2013 22:30:00	Salem	OR	Sphere	~10 minutes	Red lights floating east to west.	44.9429	-123.0351
2122	5/18/2013 22:30:00	Salem	OR	Oval	4 minutes	Orange oval glow flying/ hovering for 4 minutes outside Salem Or.	44.9429	-123.0351
2166	11/27/2004 18:00:00	Salem	OR	Light	5 minutes	A moving light observed. ((NUFORC Note: Possible overflight and sighting of the ISS. PD))	44.9429	-123.0351
2123	5/12/2013 21:20:00	Salem	OR	Circle	2 minutes	Object sighted in West by South-west sky at about 21:20. Object appeared round/circular in shape with a dark center; had glow.	44.9429	-123.0351
2124	4/22/2013 18:25:00	Salem	OR	Cigar	seconds	Greenish blue object with white tail sighted in salem, oregon.	44.9429	-123.0351
2125	12/25/2012 19:30:00	Salem	OR	Oval	5-7 minutes	7 glowing &quot;orbs&quot; floating from W. Salem OR from the west headed north. Stopping mid flight then up into the clouds.	44.9429	-123.0351
2126	12/24/2012 9:13:00	Salem	OR	Circle	3 minutes	Observed one bright red/orange light at first, then saw three more identical objects following it forming a triangle shape as soon as t	44.9429	-123.0351
2127	11/12/2012	Salem	OR	Cylinder	5 minutes +-	Bright flying object spotted near downtown Salem, OR	44.9429	-123.0351
2128	10/12/2012 18:00:00	Salem	OR	Oval	10 minutes	An oval shaped craft emited an intense silver light. The bottom of it had a red/blue streak. Then it very fast left blinking red.	44.9429	-123.0351
2129	8/12/2012 22:30:00	Salem	OR	Sphere	minute...minute and a hal	5 orange glowing objects cruise by swimming pool in densely populated neighborhood of NE Salem.	44.9429	-123.0351
2130	8/9/2012 15:00:00	Salem	OR	Light	still going	I noticed the Light Craft in the sky at 3:30 am and has been recording since . It's swaying green light but staying in one area of sky.	44.9429	-123.0351
2131	8/4/2012 20:30:00	Salem	OR	Sphere	35 seconds	The object struck me as pretty because it was like a mirror with green lights.	44.9429	-123.0351
2132	7/31/2012 10:15:00	Salem	OR	Disk	1 minute	White to red constant one light, to black saucer.	44.9429	-123.0351
2133	7/17/2012 0:20:00	Salem	OR	Sphere	30 minutes	Red pulsating sphere in OR- UFO?	44.9429	-123.0351
2134	6/7/2012 22:37:00	Salem	OR	Light	90 seconds	Lights over Salem, Oregon	44.9429	-123.0351
2135	4/28/2012 21:45:00	Salem	OR	Formation	5 min.	VERY LARGE FORMATION OF 10 OR MORE ORANGE LIGHTS FAR WEST OF SILVERTON OREGON	44.9429	-123.0351
2136	2/8/2012 14:00:00	Salem	OR	Teardrop	5 minutes	UFO SIGHTING FEBRUARY 8TH 2012 2 PM SALEM OREGON While driving to Salem on Wednesday the eighth of February on the Interstate 5 Southb	44.9429	-123.0351
2137	9/21/2011 20:00:00	Salem	OR	Egg	2 mins	Was driving at about 8 pm, suddenly in front of me in the sky a bright green egg shape appeared slowly crossed sky then accelerated and	44.9429	-123.0351
2138	1/10/2011 7:00:00	Salem	OR	Triangle	still in sky	Large slow moving objects high in the sky above salem oregon	44.9429	-123.0351
2139	10/16/2010 18:00:00	Salem	OR	Sphere	6-8 minutes	Single round black sphere hovering with white clouds in the background.	44.9429	-123.0351
2140	9/28/2010 14:47:00	Salem	OR	Light	12 Minutes	Sept. 28th 2010 13-15 or more bright objects seen in NE Salem Oregon, at 2:27 PM PDT	44.9429	-123.0351
2141	9/7/2010 23:00:00	Salem	OR	Changing	2-3 minutes	Object came in like a shooting star at a angle from east to west. A yellow orbe came out of the flash at end of streak.	44.9429	-123.0351
2142	5/14/2010 21:45:00	Salem	OR	Sphere	30 minutes	various objects in the sky near Salem, OR	44.9429	-123.0351
2143	4/12/2010 22:00:00	Salem	OR	Light	15 seconds	it seem to sway back and forth slightly as it moved across the sky, brightly lit	44.9429	-123.0351
2144	11/4/2009 18:30:00	Salem	OR	Triangle	2 Min.	Triangular craft hovered over Wallace Road then took off towards other side of Salem	44.9429	-123.0351
2145	9/11/2009 21:30:00	Salem	OR	Sphere	5 minutes	Four large orange spherical objects with a diamond shape "halo"in long arc overhead.	44.9429	-123.0351
2146	8/10/2009 22:23:00	Salem	OR	Circle	20 sec	Thought it was a Satellite until witnessing a very bright flash of light come from the object.	44.9429	-123.0351
2147	6/17/2009 22:00:00	Salem	OR	Chevron	10 minutes	Vague chevron object with strange colored lights and erratic movement seen, with smaller lights/objects emitted from it as it traveled.	44.9429	-123.0351
2148	12/8/2007 21:12:00	Salem	OR	Light	7 seconds	Two Parallel Lights Moving At Very High Speed Along An Unusual Path	44.9429	-123.0351
2149	11/4/2007 16:00:00	Salem	OR	Cylinder	7 minutes	Vertical cylinder w/red round objects varying in number from 2 to 4 in center mixed with intense bright lights	44.9429	-123.0351
2150	10/5/2007 20:00:00	Salem	OR	Other	2 to 3 minutes	I saw a flying craft that was unlike anything I've ever seen.	44.9429	-123.0351
2151	9/24/2007 22:30:00	Salem	OR	Light	15 seconds	No aircraft could have hovered so high, nor ascended vertically so quickly.	44.9429	-123.0351
2152	9/5/2007 0:05:00	Salem	OR	Rectangle	30 minutes	A large, bright orange rectangle appeared in front of the mountains, changed shape and produced orbs.	44.9429	-123.0351
2153	7/4/2007 0:15:00	Salem	OR	Light	30+ min.	Multiple crafts sited	44.9429	-123.0351
2154	6/20/2007 14:30:00	Salem	OR	Disk	20 minutes	i saw two shiny discs move trough the sky from north to south in the sunny afternoon, very slowly.	44.9429	-123.0351
2155	1/27/2007 18:50:00	Salem	OR	Triangle	10 minutes	A triangle shape of 3 rapidly flashing blue-white lights moving slowly over downtown Salem, OR	44.9429	-123.0351
2156	1/1/2007 19:30:00	Salem	OR	Unknown	15-20 seconds	Lights moving from south to north, low to ground and slow without any sound.	44.9429	-123.0351
2157	11/30/2006 17:55:00	Salem	OR	Light	3-4 minutes	Bright planet type light that went nova and shrunk to nothing. Hurt my skin and eyes.	44.9429	-123.0351
2158	8/1/2006 22:00:00	Salem	OR	Light	3 seconds	Two separate rapidly brightening and dimming objects	44.9429	-123.0351
2159	4/28/2006 19:00:00	Salem	OR	Other	20 seconds	saw lazer light shaft 2 to 3 miles long.	44.9429	-123.0351
2160	10/5/2005 22:00:00	Salem	OR	Chevron	.40 seconds	There was a lone craft in the sky,that seemed pretty high. I am not familar with the exact hieght/Locations of things> According to the	44.9429	-123.0351
2161	9/13/2005 21:15:00	Salem	OR	Light	5-6 seconds	I was in the parking lot and happened to look up and saw a bright light (-6 or -7 in magnitude) traveling southeast from approximately	44.9429	-123.0351
2162	9/2/2005 22:40:00	Salem	OR	Light	4 seconds	Observed slowly moving white light at 10:40 pm heading north from direcly overhead	44.9429	-123.0351
2163	8/10/2005 22:20:00	Salem	OR	Light	3 seconds	Observed a light coming on and moving slowly northward past the Big Dipper Constellation for several seconds before going out. Then	44.9429	-123.0351
2164	7/18/2005 22:00:00	Salem	OR	Flash	5-7 seconds	Seeing a light traveling due north from directly overhead at a slow pace, it suddenly flared up incredibly bright and then just went ou	44.9429	-123.0351
2167	7/7/2004 22:00:00	Salem	OR	Light	2-3 minutes	Strange lights -- moving and not moving -- seen in skys over Salem, OR	44.9429	-123.0351
2168	7/3/2004 22:00:00	Salem	OR	Light	5 minutes	Bright light seen in western sky below the planet Jupiter. Brighter than Jupiter.	44.9429	-123.0351
2169	5/3/2004 15:09:00	Salem	OR	Circle	six minutes	Object changed directions several times.	44.9429	-123.0351
2170	12/29/2003 21:15:00	Salem	OR	Circle	5 seconds	Fast Moving Bright Light	44.9429	-123.0351
2171	10/18/2003 1:44:00	Salem	OR	Other	bout 10 secs.	saw red light appear move rapidly through the sky in salem, or and then dissapear.	44.9429	-123.0351
2172	8/31/2003 20:32:00	Salem	OR	Light	6 seconds	Very Bright Light	44.9429	-123.0351
2173	8/31/2003 2:00:00	Salem	OR	Unknown	30 MIN?	Salem OR, slow moving lights at midnight and 2 hours later heard noise but nothing spotted	44.9429	-123.0351
2174	8/15/2003 21:30:00	Salem	OR	Light	2 minutes	Two red lights moving very quickly made two changes of direction in less than 20 seconds.	44.9429	-123.0351
2175	7/6/2003 19:15:00	Salem	OR	Circle	15min	saw 11 circle object heading due south a a very slow pace in a group formation than disappeared	44.9429	-123.0351
2176	7/6/2003 0:04:00	Salem	OR	Other	45-65 seconds	V shaped, Tilted and rotating pale white craft. No noise.	44.9429	-123.0351
2177	1/22/2003 17:05:00	Salem	OR	Cylinder	1 1/2 min.	"A U-F-O HAS BEEN SPOTTED OVER THE SKIES OF SALEM."	44.9429	-123.0351
2178	7/14/2002 22:25:00	Salem	OR	Circle	5 minutes	Oregon UFO Review Case: Baseball sized pink object over head.	44.9429	-123.0351
2179	6/22/2002 22:30:00	Salem	OR	Light	30/40 sec.s	I was looking out the front window of my house. Directly above me was the light. It was a bright white light moving directly east of my	44.9429	-123.0351
2180	3/29/2002 19:20:00	Salem	OR	Triangle	5 minutes	Three witness low hovering craft over farm field...joint NUFORC and OUFOR investigation.	44.9429	-123.0351
2181	1/17/2002 22:00:00	Salem	OR	Triangle	5-10 min	triangle shape ufo N salem	44.9429	-123.0351
2182	9/8/2001 21:30:00	Salem	OR	Flash	1 minute	Four stationary bright flashes in the constellation of the Swan	44.9429	-123.0351
2183	8/2/2001 2:00:00	Salem	OR	Light	5 minutes	red light in southern sky	44.9429	-123.0351
2184	6/14/2001 22:00:00	Salem	OR	Other	25 mins	3 Extraordinary close Ufo encounters!!!!!!!!!!!!	44.9429	-123.0351
2185	4/2/2001 20:45:00	Salem	OR	Other	20	looked like satalight's but they were not,,	44.9429	-123.0351
2186	7/8/2000 22:50:00	Salem	OR	Unknown	10 seconds	very fast low unknown shape red lights only NO noise covered half the horizon in 10 seconds or less going north to south not a plane !	44.9429	-123.0351
2187	6/20/2000 22:25:00	Salem	OR	Changing	4-5 min	I SAW A BRIGHT ORANGE LIGHT IN THE SKY WHICH APPEARED TO HAVE A TAIL OF LIGHT THAT SUDDENLY SPLIT INTO TWO LIGHTS.	44.9429	-123.0351
2188	2/13/2000 2:00:00	Salem	OR	Circle	10 minutes	Orange orb	44.9429	-123.0351
2189	12/27/1999 21:30:00	Salem	OR	Diamond	2 hours	Standing in my kitchen window I noticed a multi colored light flashing in the Southeast about 3 or 4 miles up. Shaped as a diamond and	44.9429	-123.0351
2190	10/3/1999 21:45:00	Salem	OR	Flash	2 seconds	saw something out of the corner of my eye turend in time to see 2 flashes	44.9429	-123.0351
2191	9/7/1999 22:35:00	Salem	OR	Other	11/2-3 seconds	Green umbrella shaped object coming in from the east and moving directly towards my position.looked like meyeorite except too big and s	44.9429	-123.0351
2192	9/7/1999 1:00:00	Salem	OR	Other	2-3seconds	large greenish white umbrella shaped object coming in fast left ionized trail.	44.9429	-123.0351
2193	9/3/1999 20:30:00	Salem	OR	Chevron	35min	At 2230 I saw a bright flash of light in the NW sky..this was followed by a sighting of a pinkish colored boomerang shaped craft.it loo	44.9429	-123.0351
2194	8/15/1999 23:00:00	Salem	OR	Other	215	Subject: RE: Missing Time Mid August 1991 Don't have the date of this event, but suppose I could find it if I were to look for it in	44.9429	-123.0351
2195	5/12/1999 21:20:00	Salem	OR	Cylinder	5 minutes	3 of us standing in a large open area walking dogs. Watching some airplanes and than I tuned and saw the cylinder craft which flew int	44.9429	-123.0351
2196	10/16/1998 21:30:00	Salem	OR	Light	10 sec	My husband and I were traveling south on I-5 north of Salem when a huge bright light appeared ahead of us mid-sky. It seemed to be ove	44.9429	-123.0351
2197	9/23/1998 20:11:00	Salem	OR	Sphere	1min	Object was perfect sphere with blue half circle trail size tip of my pinky	44.9429	-123.0351
2198	8/21/1998 22:55:00	Salem	OR	Chevron	30-45seconds	object was travelling below cloud level,from north to south. boomerang shaped pinkish silver color manuevered without changing speed th	44.9429	-123.0351
2199	6/8/1998 23:40:00	Salem	OR	Light	1min.50sec.	TWO PULSING LIGHTS PASSED FROM HORIZON TO HORIZON ON A NORTH TO SOUTH TRAJECTORY	44.9429	-123.0351
2200	6/1/1998 21:00:00	Salem	OR	Other	30 minutes	We were stargazing, when we saw a dot of light weaving between stars.	44.9429	-123.0351
2201	5/30/1998 21:00:00	Salem	OR	Oval	2105	EXPLOSION OF CRAFT 1998	44.9429	-123.0351
2202	9/15/1997 20:00:00	Salem	OR	Light	Approx.30sec.	We saw a bright green object that looked like a comet or shooting star but it moved very slowly.	44.9429	-123.0351
2203	7/31/1997 2:45:00	Salem	OR	Unknown	unknown	Missing Time July 31, 1997	44.9429	-123.0351
2204	7/31/1997 2:40:00	Salem	OR	\N	45 MIN +	IT IS DIFFICULT TO DESCRIBE THIS AS IT IS SECOND HAND INFORMATION. I HAVE TO GO BACK AND TELL YOU WHAT HAPPENED LAST NIGHT..I WAS LISTE	44.9429	-123.0351
2205	7/14/1997 1:30:00	Salem	OR	light	3-6 minutes	AT FIRST THOUGHT IT WAS A PLANE BUT OBSERVING THROUGH BINOCULARS, SAW ONE VERY BRIGHT LIGHT AND 3 SMALLER ONES... THEY WERE NOT BLINKIN	44.9429	-123.0351
2206	11/14/1996 18:20:00	Salem	OR	\N	3 min.	4 individuals witness distinctly red light above clouds. Changes to white, back to red, then disappears. Video footage taken.	44.9429	-123.0351
2207	9/15/1996 4:00:00	Salem	OR	Teardrop	6sec	While driving home on State street just East of Lancaster (we were traveling East) a bright lime/jade green "comet" appeared infront of	44.9429	-123.0351
2208	1/1/1987	Salem	OR	Sphere	\N	Woman repts. past sighting of perfectly round, red globe floated across city. 2nd one appeared. Witnessed by reporter, too.	44.9429	-123.0351
2209	10/15/1986 2:30:00	Salem	OR	Cigar	25 minutes	Very Close Encounter.	44.9429	-123.0351
2210	5/15/1977 0:00:00	Salem	OR	Cigar	15 minutes	Slowly moving cigar-shaped object with unusual flashing lights seen in Salem, OR in 1970's.	44.9429	-123.0351
2211	12/19/1966 2:39:00	Salem	OR	Disk	30"	Strange Orange lights seen on the same day, at the same time, thirty six years ago.	44.9429	-123.0351
2212	6/15/1966 12:00:00	Salem	OR	Oval	25 min	The pay off could be big for a little research.	44.9429	-123.0351
2213	6/30/1949 21:00:00	Salem	OR	Cigar	2300	Cigar Craft, Body Marks and Missing Time	44.9429	-123.0351
2214	7/11/2000 0:30:00	Salem (approx. 30 miles north of)	OR	Unknown	5-8 sec.	Slow moving, horizontally flying object.	44.9429	-123.0351
2215	7/8/1999 22:21:00	Salem (NW part of town)	OR	Changing	8hrs	At first sight looked like star but kept moving almost in triangle upward motion. Colors kept changing as it moved upward. Am not sur	44.9429	-123.0351
2216	8/17/2001 23:15:00	Salem (Outside)	OR	Light	10mins	Yellowish light pulsating in the night sky	44.9429	-123.0351
2217	7/29/2006 22:00:00	Salem-Portland	OR	Oval	3 min	Bright yellow light hovering over Interstate 5 - in Woodburn?	44.9429	-123.0351
2218	06/ 14:15	Salem/Keizer	OR	Teardrop	\N	during school recess a white and red teardrop shaped UFO hovered about a half mile away a few minutes later it emitted three smaller bl	44.9429	-123.0351
2219	9/9/2016 9:30:00	Sandy	OR	Egg	10 seconds	Telephoned report: Adult male reports witnessing a silver disc in the morning sky.	45.3973	-122.2615
2220	2/21/2016 19:20:00	Sandy	OR	Fireball	<20 seconds	Huge ball of light falls to earth after stalling.	45.3973	-122.2615
2221	2/14/2014 6:45:00	Sandy	OR	Oval	2 minutes	2 red orbs traveling slowly towards the city of Sandy.	45.3973	-122.2615
2222	6/26/2000 18:35:00	Sandy	OR	\N	3 minutes	Two aircraft vapor trails, made at the same time, intersected at an angle, and became one, with one jet in the sky.	45.3973	-122.2615
2223	9/15/1993	Sandy	OR	Disk	15 seconds	2 saw it.	45.3973	-122.2615
2224	2/23/2012 14:00:00	Scapoose	OR	Light	about 3 minutes	Large cluster of glowing almost glittering white orbs of light floating and swirling around in the sky	45.7543	-122.8776
2225	2/8/2014 23:00:00	Scappoose	OR	Light	20 seconds	Red light seen in sky over Scappoose, Oregon, Feb 8th, 2014, during snow storm.	45.7543	-122.8776
2226	4/27/2013 0:20:00	Scappoose	OR	Sphere	5-7 minutes	April 27th @ 12:20 am 50-100 orange & red lights Scappoose,Oregon.Moving slowly in zig-zag formation across the sky.Duration 7-10 mins	45.7543	-122.8776
2227	4/26/2013 11:46:00	Scappoose	OR	Circle	12:05	Red lights.	45.7543	-122.8776
2228	2/6/2013 18:45:00	Scappoose	OR	Triangle	2 minutes	Two large triangled shaped objects seen heading east following the Columbia river towards Portland.	45.7543	-122.8776
2229	12/13/2012 20:00:00	Scappoose	OR	Circle	.57 seconds	Black hawk chasing ufo.	45.7543	-122.8776
2230	10/31/2006 23:00:00	Scappoose	OR	Oval	1 hour	oval shaped ufo shoots in to air with many colors	45.7543	-122.8776
2231	5/14/2004 2:30:00	Scappoose	OR	Triangle	5minutes	Massive triangle object moving from south to north covering the background stars	45.7543	-122.8776
2232	10/30/2003 23:00:00	Scappoose	OR	Triangle	5 seconds (x2)	2 more fast, noiseless, triangular objects seen above Scappoose, OR within 1 week of first sighting	45.7543	-122.8776
2233	10/25/2003 21:15:00	Scappoose	OR	Triangle	5 seconds	Swift hard-to-see triangular object moving in a straight line across night sky with 3 luminous tips, one at front, two at rear.	45.7543	-122.8776
2234	9/1/2002 23:50:00	Scappoose	OR	Triangle	15 seconds	While camping on an island on the Columbia River with perfect visibility, four adults witnessed what I believe to be three objects, but	45.7543	-122.8776
2235	5/12/2001 21:45:00	Scappoose	OR	Triangle	10 minutes	UFO 1/10 of a mile away seen for 10 minutes in Scappoose, Oregon	45.7543	-122.8776
2236	11/1/1999 3:00:00	Scappoose	OR	Oval	2hrs	Bright oval light floating aboe house, shooting off red laser like beams	45.7543	-122.8776
2237	9/24/1995 20:45:00	Scappoose	OR	\N	3 min.	Three young people witness a triangular-shaped craft hovering nearby. Craft had 2 white lights, 1 red. Maneuvered slowly.	45.7543	-122.8776
2238	1/10/2012 22:00:00	Scotts Mills	OR	Fireball	3 seconds	Fireball?	45.0429	-122.6684
2239	9/12/2003 20:33:00	Scotts Mills	OR	Unknown	2 minutes	floated at @ 100 feet then shot straight up into the sky lost in sun.	45.0429	-122.6684
2240	11/1/2007 14:30:00	Seal Rock	OR	Unknown	single photo image	Unknown object discovered in digital photo image taken of coastal seashore at vicinity of Seal Rock, Oregon.	44.4972	-124.0827
2241	4/15/1987 16:00:00	Seal Rock	OR	Sphere	Seconds	My wife and I are professional photographers and were doing some stock photo work at Seal Rock on the Oregon coast. I still don't know	44.4972	-124.0827
2242	4/17/2016 21:20:00	Seaside	OR	Light	10 minutes	Two golden orange flashing lights hovering silently, moving slowly around. ((anonymous))	45.9932	-123.9226
2243	4/16/2016 21:43:00	Seaside	OR	Fireball	3 minutes	Fast moving flame balls, heading SxSW at a clip faster than helicopters.	45.9932	-123.9226
2244	8/7/2015 10:00:00	Seaside	OR	Circle	<1 minute	I spot the very faint dark orange circular object moving at a good speed from North to South along Seaside Beach.	45.9932	-123.9226
2245	7/4/2015 21:30:00	Seaside	OR	Light	5 minutes	Orange lights on coast.	45.9932	-123.9226
2246	6/27/2015 21:00:00	Seaside	OR	Circle	1 minute	Looked like 2 red fireballs 1 fell the other hovered before the lite went off but through binoculars could still see a dark for desend	45.9932	-123.9226
2247	4/22/2015 21:30:00	Seaside	OR	Fireball	2 minutes	2 orange fireballs over Seaside, Oregon.	45.9932	-123.9226
2248	2/14/2014 6:25:00	Seaside	OR	Disk	Seconds	Bright spinning disk like with windows on top part.	45.9932	-123.9226
2249	10/14/2013 19:00:00	Seaside	OR	Light	15 minutes	Bright white light in the dusk sky over ocean.	45.9932	-123.9226
2250	10/5/2013 20:30:00	Seaside	OR	Light	15 minutes	White lights over Pacific Ocean.	45.9932	-123.9226
2251	7/19/2012 9:50:00	Seaside	OR	Sphere	2 minutes	5 women observed an orange sphere rising in altitude and moving NE with emanating light lasting 2 to 3 minutes.	45.9932	-123.9226
2252	7/15/2012 22:00:00	Seaside	OR	Circle	15 minutes	Red/Orange bright lights off Seaside Oregon Beach.	45.9932	-123.9226
2253	7/14/2012 22:00:00	Seaside	OR	Disk	10 minutes	Reddish-gold object seen in Seaside, Oregon on July 14, 2012.	45.9932	-123.9226
2254	7/4/2012 3:00:00	Seaside	OR	Flash	3 seconds	shooting star ZIG ZAGS Seaside, Oregon.	45.9932	-123.9226
2255	8/6/2011 21:30:00	Seaside	OR	Fireball	15 minutes	3 Fireball Looking Objects Seen Over Seaside, Oregon on the Evening of August 6th, 2011	45.9932	-123.9226
2256	3/23/2011 22:00:00	Seaside	OR	Circle	1-2 mins	3 blue horizontal lights off the coast of Seaside (Gearhart)	45.9932	-123.9226
2257	9/7/2010 1:00:00	Seaside	OR	Cigar	3 minutes	2 cigar shaped crafts hoverd for 3 minutes and then merged and flew strait up in the sky and dissapeared in inmilliseconds	45.9932	-123.9226
2258	8/13/2010 23:43:00	Seaside	OR	Other	25 Seconds	Brown crescent shaped lights seen flying over a Seaside Beach in Oregon.	45.9932	-123.9226
2259	9/15/2009 20:00:00	Seaside	OR	Light	1.5 hrs.	Slow moving, multi-colored and unexplainable by me, a longtime resident. ((NUFORC Note: Possible star? PD))	45.9932	-123.9226
2260	8/16/2003 23:00:00	Seaside	OR	Light	approximate: 5 seconds	Twin objects race across the sky in an unusal criss-cross pattern in an exciting sighting at the Oregon coast!	45.9932	-123.9226
2261	9/1/1998 1:00:00	Seaside	OR	Triangle	moments	On this warm night I was watching the starry sky, suddenly and lasting only moments, a silk-like floated over my sight line. It gave t	45.9932	-123.9226
2262	12/31/2003 5:00:00	Selma	OR	Flash	few seconds	green flashes	42.2793	-123.6161
2263	1/13/1996 21:00:00	Selma	OR	Triangle	5 MINUTES	Sighting over Selma Oregon	42.2793	-123.6161
2264	7/31/2014 22:30:00	Selma-Coos Bay	OR	Other	5-10 seconds	Glowing orange light over the mountains.	42.2793	-123.6161
2265	11/16/2016 17:30:00	Shady Cove	OR	Light	5 minutes	Eight moving red/white lights--flying in random order from west to east over Shady Cove, OR the evening of November 16, 2016.	42.6150	-122.8119
2266	5/1/2002 23:30:00	Sheridan	OR	Circle	10 minutes	3 round white lighted objects,hovering then moving quickly across sky,then hovered then went quickly up into space.	45.0993	-123.3948
2267	9/12/1998 20:30:00	Sheridan	OR	Triangle	1.5 hours	observed 2 sets of 7 lights. yellow, blue, red and green. Distance undetermined. Used a spotting scope. Lights pulsed in some pattern.	45.0993	-123.3948
2268	7/31/2016 16:00:00	Sherwood	OR	Disk	3 hours	Disc.	45.3565	-122.8401
2269	10/5/2015 3:30:00	Sherwood	OR	Light	3 hours	There's a huge bright white light over sherwood as I write this it's unexplainable. It's way to big to be a planet!	45.3565	-122.8401
2270	2/8/2015 18:40:00	Sherwood	OR	Flash	5 minutes	((HOAX??)) 3 bright white flashes that lit up the entire sky with no sounds above Parrott Mountain in Sherwood, OR.	45.3565	-122.8401
2271	1/21/2015 20:00:00	Sherwood	OR	Other	2 minutes	Red lights in geometric patterns and Big Dipper constellation format in NW sky over Sherwood.	45.3565	-122.8401
2272	12/3/2011 22:15:00	Sherwood	OR	Light	3-6 minutes	A bright indistinguishable light that emitted another object, and then both disappeared.	45.3565	-122.8401
2273	6/27/2004 3:00:00	Sherwood	OR	Circle	10 minutes	small craft grew enormous and blue as it came crashing down towards me.	45.3565	-122.8401
2274	5/8/2004 13:45:00	Sherwood	OR	Sphere	20 min.	Sphere cluster release's smaller object's.	45.3565	-122.8401
2275	11/29/2000 3:46:00	Sherwood	OR	Triangle	2 or 3 mins.	Saw very low flying, quite or HUGE object with 5 big bright lights in a V shape, evenly spaced. No strobe nor colored flashing lights.	45.3565	-122.8401
2276	11/20/1981 19:00:00	Sherwood	OR	Other	5 min	I looked up in the sky, and right above me, about the height you'd see a landing airplane if you were near an airport, were two flying	45.3565	-122.8401
2277	10/20/1981 21:00:00	Sherwood	OR	Other	about 15 sec	Two flying wings (?) over Sherwood, OR night sky.	45.3565	-122.8401
2278	10/27/1995 21:23:00	Siletz	OR	\N	15 min.	Woman & 3 witnesses rpt stat. obj flashing white, green, red lights. Zigzags dramatically. (Reptd. 02NO95 obj. not visible in sky.)	44.7218	-123.9201
2279	10/29/2012 11:30:00	Silver Lake	OR	Other	1 minute	Unknown plane/craft in Oregon	43.1278	-121.0481
2280	11/20/1967 21:00:00	Silver Lake	OR	Unknown	1minute	Saw a small white light that increased dramatically in size, reduced to a small light, turned red and zip......it was gone.	43.1278	-121.0481
2281	11/9/2016 16:35:00	Silverton	OR	Disk	3 seconds	I saw a emerald disk covered in a transparent teardrop shell streak across the sky.	45.0051	-122.7831
2282	8/21/2016 23:00:00	Silverton	OR	Light	2 minutes?	Bright white light in night sky flashed, moved to the right, then faded out.	45.0051	-122.7831
2283	8/21/2016 23:00:00	Silverton	OR	Light	1-2 minutes?	Camping outside when a bright light in the sky flashed, moved to the right, then faded out.	45.0051	-122.7831
2284	8/24/2015 17:31:00	Silverton	OR	Sphere	\N	Green sphere appears on photos. ((NUFORC Note: Object is a lens flare, caused by photographing the Sun. PD))	45.0051	-122.7831
2285	3/6/2010 20:35:00	Silverton	OR	Triangle	30 seconds	Three dancing & twirling reddish lights	45.0051	-122.7831
2286	2/19/2010 9:00:00	Silverton	OR	Light	4 minutes	3 orange orbs flying over silverton oregon	45.0051	-122.7831
2287	11/4/2007 2:00:00	Silverton	OR	Triangle	10 minutes	A brightly light object hoovered over tree farm near Silverton, Oregon tree farm at 2 am.	45.0051	-122.7831
2288	8/14/1995 20:30:00	Silverton	OR	Triangle	5 minutes	Triangular_Precision_manuevering_1995	45.0051	-122.7831
2289	11/16/2011 20:30:00	Sisters	OR	Flash	2 min	Red low flying objects, no sound	44.2909	-121.5492
2290	8/17/2001 22:00:00	Sisters (7 miles SW of)	OR	Light	2 minutes	2 identical objects seen at high altitude.	44.2909	-121.5492
2291	9/16/2011 11:16:00	Sisters (in-flight)	OR	Triangle	0.5 sec	Orange Dart-like craft passes our aircraft at close proximity in flight	44.2909	-121.5492
2292	12/15/1978 20:00:00	Sisters (near)	OR	Other	possibly 4- 5 seconds	neon multi-colored jellyfish type hovering object in Oregon late 70's -first report of this incident	44.2909	-121.5492
2293	9/1/1994 16:00:00	Sitka	OR	Oval	1 minute	Small, silver, oval, about 1/2 mile out over bay, accelerated at enormous speeds, disappeared	57.0531	-135.3300
2294	1/18/2000 18:20:00	Sixes/Port Orford (between)	OR	Light	6-10 min.	A brilliantly lit ball with a beam or shaft of light either coming down from it or pointing up to it on a 45 degree angle. It (the ball	42.8196	-124.4828
2295	2/24/2016 20:45:00	Sodaville	OR	Disk	4-5 minutes	Disc shaped glowing lights tonight with pictures and video!	44.4837	-122.8690
2296	1/1/2016 0:00:00	Sodaville	OR	Sphere	3 minutes	Two balls of orange light seen above the trees; one split into two!	44.4837	-122.8690
2297	8/20/2012 0:20:00	South Beach	OR	Flash	5 minutes	Flashing "star." Erratic flight pattern and great speed. Suddenly disappeared.	44.6128	-124.0477
2298	10/20/1997 19:30:00	South of Kalamath Falls,	OR	Formation	approx 8min	Five lights appeared in the sky all the same distance apart, in a straight line.	42.6953	-121.6142
2299	8/15/2015 1:03:00	Sprague River	OR	Oval	15-20 minutes	Oval white object hovering to the south.	42.4554	-121.5042
2300	2/21/1995 3:00:00	Sprague River	OR	\N	\N	Man was going to bed and noticed "moving star." Object appeared large, and was dipping and weaving. Disappeared	42.4554	-121.5042
2301	4/30/2011 23:00:00	Springdfield	OR	Light	ongoing	need help to identify sky light	44.0462	-123.0220
2302	7/31/2016 22:00:00	Springfield	OR	Circle	5 minutes	Two blue circular glowing flying objects were flying near each other then went in to different directions. ((anonymous report))	44.0462	-123.0220
2303	7/12/2016 22:45:00	Springfield	OR	Formation	15 minutes	A formation of 5 soundless star bright red objects moving across the sky, from NE to SE.	44.0462	-123.0220
2304	2/12/2016 17:00:00	Springfield	OR	Other	1 minute	Large "T" shaped craft hovered just above tree line over parking lot of McKenzie Willamette Hospital.	44.0462	-123.0220
2305	12/30/2015 19:30:00	Springfield	OR	Changing	5 hours	Shape changing UFO's in Springfield, Oregon.	44.0462	-123.0220
2306	11/26/2015 20:00:00	Springfield	OR	Rectangle	10 seconds	At WalMart parking lot flashing lites red, white, moving fast from the south; low.	44.0462	-123.0220
2307	5/18/2015 23:00:00	Springfield	OR	Fireball	30-60 seconds	Dual speedliy rotating/orbiting stars.	44.0462	-123.0220
2308	1/22/2015 20:55:00	Springfield	OR	Diamond	20 seconds	Large triangle shaped UFO flying really low.	44.0462	-123.0220
2309	1/19/2015 21:25:00	Springfield	OR	Light	~1 hour	Bright blue light hovers then falls in Springfield, OR.	44.0462	-123.0220
2310	9/11/2014 22:19:00	Springfield	OR	Flash	unknown	Multi-colored flashes over Eugene, Oregon.	44.0462	-123.0220
2311	7/16/2014 23:30:00	Springfield	OR	Fireball	2-3 minutes	Burnt Orange/Fire seen by 3 people and 3 min of video	44.0462	-123.0220
2312	5/1/2014 20:33:00	Springfield	OR	Fireball	5 minutes	Huge red ball of fire from the west traveled quickly to the south, then hovered for a minute or two, and disappeared.	44.0462	-123.0220
2313	1/1/2014 0:00:00	Springfield	OR	Circle	5 minutes	As we were watching the fireworks five or six orb like shapes hovered slowly across the sky and then seem to have disappeared moving aw	44.0462	-123.0220
2314	12/22/2013 20:30:00	Springfield	OR	Light	15 minutes	Circular vague light traveling at high speeds in jerky circles... very strange.	44.0462	-123.0220
2315	12/13/2013 22:15:00	Springfield	OR	Light	5 minutes	Orange Orb flies over Springfield.	44.0462	-123.0220
2316	11/25/2013 17:09:00	Springfield	OR	Cross	30 seconds	T-shaped UFO with red and blue lights sighted in Springfield, OR.	44.0462	-123.0220
2317	11/25/2013 17:00:00	Springfield	OR	Formation	5 minutes	Solid line of bright red lights, then transitioning to blue but in longer duration than a plane. Craft circled back very quickly.	44.0462	-123.0220
2318	9/7/2013 21:15:00	Springfield	OR	Sphere	30 seconds	Springfield, OR bright orange sphere hovering in sky over pasture.	44.0462	-123.0220
2319	7/7/2013 22:00:00	Springfield	OR	Circle	2 minutes	red orb sighted over springfield, oregon	44.0462	-123.0220
2320	4/20/2013 22:15:00	Springfield	OR	Light	5 minutes	Blinking blue lights moving and sinking below the horizon	44.0462	-123.0220
2321	12/31/2012 22:30:00	Springfield	OR	Triangle	Seconds	Triangle light formation with faces in the lights	44.0462	-123.0220
2322	9/13/2012 13:30:00	Springfield	OR	Unknown	~5 minutes	Red ufo at Clearwater Park, Springfield, Oregon.	44.0462	-123.0220
2323	7/4/2012 23:00:00	Springfield	OR	Fireball	5 minutes	On July 4 at approx eleven pm I was standing in my back yard when from my right an orange orb or light appeared traveling at a slow spe	44.0462	-123.0220
2324	7/4/2012 21:15:00	Springfield	OR	Circle	120 seconds	I observed a UFO up close for over 2 minutes and only because of my polarized perscription glasses.	44.0462	-123.0220
2325	5/8/2012 1:30:00	Springfield	OR	Fireball	5 seconds	Fireball seen over Springfield, Oregon	44.0462	-123.0220
2326	1/12/2010 17:35:00	Springfield	OR	Changing	3 minutes	black floating object with lights	44.0462	-123.0220
2327	9/8/2009 21:20:00	Springfield	OR	Light	5 minutes	Two lights flying in loose formation disappear in sudden vertical climb. ((NUFORC Note: ISS and Space Shuttle in formation. PD))	44.0462	-123.0220
2328	9/2/2009 20:00:00	Springfield	OR	Other	aprox. an hr.	A Fleet of lights in the sky, heading south I-5 corridor 9/2/09	44.0462	-123.0220
2329	6/13/2009 21:00:00	Springfield	OR	Light	1 1/2 mins.	bright orange reddish color object observed rising untill it just dissappeared.	44.0462	-123.0220
2330	10/31/2008 19:50:00	Springfield	OR	Fireball	10 minutes	Orange Glowing Ball Over Springfield Oregon Moving NW to SE Across The City	44.0462	-123.0220
2331	9/22/2008 17:40:00	Springfield	OR	Light	1 MIN	Small Bright light moving across sector of sky then quickly disappearing	44.0462	-123.0220
2332	8/29/2008 22:00:00	Springfield	OR	Light	3-5 MINUTES	STAR LIGHT TRAVELS FAST AND FAR!	44.0462	-123.0220
2333	7/25/2007 23:00:00	Springfield	OR	Light	Hours	Springfield, OR sightings of bright, multicolored lights near moon	44.0462	-123.0220
2334	4/25/2007 0:00:00	Springfield	OR	Circle	2-3 hours	Many bright lights moving very fast in the nights sky.	44.0462	-123.0220
2335	4/22/2006 21:35:00	Springfield	OR	Light	10 min	looked like jupiter then began to fly eratically actross the sky from south to north	44.0462	-123.0220
2336	8/8/2005 7:15:00	Springfield	OR	Rectangle	5 min	bright, white space shuttle sited 15,000 - 20,000' over springfield, oregon, 7:14am 08/08/05, no sound	44.0462	-123.0220
2337	7/3/2005 14:00:00	Springfield	OR	Disk	1 hr 30 minutes	Saucer shaped reflective object moving and hovering with chasing Government Jets and a Helicopter/Photos taken	44.0462	-123.0220
2338	11/8/2003 15:00:00	Springfield	OR	Cigar	10 minutes	Two dark objects flying low without any sounds.	44.0462	-123.0220
2339	9/17/2003 2:00:00	Springfield	OR	Flash	1 sec	brilliant flash of light	44.0462	-123.0220
2340	9/1/2003 11:00:00	Springfield	OR	Oval	10 min	Craft seen in daylight over Oregon	44.0462	-123.0220
2341	8/27/2003 19:00:00	Springfield	OR	Cigar	2 minutes	Object seen the night Mars was closest to Earth August 27, 2003.	44.0462	-123.0220
2342	4/2/2002 21:43:00	Springfield	OR	Unknown	3min	clear night, but not body, rotating lights, not fixed and not a plane or any know air craft.	44.0462	-123.0220
2343	1/9/2002 19:30:00	Springfield	OR	Teardrop	45 seconds	Rain drop shaped with windows.	44.0462	-123.0220
2344	11/3/2001 19:12:00	Springfield	OR	Fireball	3sec	Going West to East I saw what was the beginning of a meteor breaking up and did not get a confirmation from my nearest airport as to a	44.0462	-123.0220
2345	9/4/2001 5:20:00	Springfield	OR	Oval	\N	It is an oval shaped object. Starting from left to right, there is a White-Hazy light, then 1 red light, then 4 green lights, then ano	44.0462	-123.0220
2346	2/13/2001 19:00:00	Springfield	OR	Circle	1minute	I viewed a moving object, traveling southwest and it split-up into two moving objects, exchanging a red light beam.	44.0462	-123.0220
2347	6/15/1990 1:00:00	Springfield	OR	Oval	20 min	orange ballon dripping sparklers	44.0462	-123.0220
2348	8/17/1987 2:00:00	Springfield	OR	Cigar	4 minutes	Cigar Shaped and extremely close	44.0462	-123.0220
2349	11/16/2013 21:00:00	Springfield (?)	OR	Circle	30 minutes	Was moving in different directions at really fast speeds.	44.0462	-123.0220
2350	8/28/2003 18:30:00	Springfield (Camp Creek Road)	OR	Oval	15 minutes	Large oblong Bright & Colorfully Lite Up With No Sound Flew Right Above The Trees.	44.0462	-123.0220
2351	9/20/2009 21:30:00	Springfield/Jasper	OR	Triangle	1-2 minutes	big,hovering triangular object with multiple lights lit under it gliding at low altitude on a clear,calm night	44.0462	-123.0220
2352	6/30/2008 23:46:00	St Helens	OR	Light	10 seconds	bright light to the west that needs explanation.	45.8590	-122.8158
2353	3/31/2016 23:30:00	St. Helens	OR	Formation	2 hours	They looked like stars but 13 where in a row then they dispersed threw the sky. They had bright flashing lights like cop cars! could se	45.8590	-122.8158
2354	7/9/2015 22:37:00	St. Helens	OR	Sphere	>1 hour	Continued for over an hour moving in a consistent figure eight motion. There is a white strobing light, unlike one on a plane.	45.8590	-122.8158
2355	7/9/2015 21:00:00	St. Helens	OR	Diamond	45 minutes	Seen object above SW side of St. Helens, OR. Guessing was under 1000 ft. Strange movement jogs and jags.	45.8590	-122.8158
2356	3/5/2014 20:30:00	St. Helens	OR	Circle	1 minute	Multiple glowing orbs seen heading NE over St. Helens	45.8590	-122.8158
2357	7/7/2013 22:00:00	St. Helens	OR	Sphere	60 seconds	Orange sphere traveling south over st helens Oregon.	45.8590	-122.8158
2358	7/5/2009 2:00:00	St. Helens	OR	Oval	10 minutes	We saw an oval shape green luminescent light that shot into the sky to a pinpoint of light like a star then moved around in the sky.	45.8590	-122.8158
2359	7/17/2005 3:00:00	St. Helens	OR	Unknown	An Hour	Looked like a star at first, but it was moving...	45.8590	-122.8158
2360	6/26/2002 3:00:00	St. Helens	OR	Disk	15 minutes	Fast moving object that moved left to right, stopped, then right to center, then center to left at 1 minute intervals	45.8590	-122.8158
2361	10/1/1998 1:30:00	St. Paul	OR	Fireball	5 seconds	We own a farm here in St. Paul. We (my mother and I) had pulled off to the side of the road to check on some farm equipment we had in a	45.2112	-122.9768
2362	6/20/1998 18:00:00	St.Helens	OR	Fireball	5 secs	brass/gold sparkling, no tail taveling east to west, rather slowly. tennis ball size at arms lenght in size, low in the horizon, no sou	45.8590	-122.8158
2363	3/5/2004 9:00:00	Stanfield	OR	Teardrop	15 minutes	Big flash of light, small figures, wierd motions awfully creepy!	45.7804	-119.2172
2364	8/15/1950 14:00:00	Stanfield	OR	Disk	2 - 3 minutes	In 1950, Eastern Oregon, I saw one silver, oval shaped disk hover for approximately 2 - 3 minutes before quickly accelerating away.	45.7804	-119.2172
2365	5/12/1995 7:30:00	Starkey	OR	\N	20 min.	Experienced logger repts. three very bright lights in morning sky. Middle one rises, accelerates into distance; others follow!	45.2215	-118.4258
2366	8/31/2014 8:55:00	Stayton	OR	Fireball	2 minutes	Fast and curious fireball.	44.8007	-122.7945
2367	9/28/2011 20:50:00	Stayton	OR	Circle	1 hour +	Round Obj. with green, red, yellow, blue & white lights moving E to W for over an hour. ((NUFORC Note: Star, perhaps Sirius? PD))	44.8007	-122.7945
2368	10/31/2010 21:50:00	Stayton	OR	Changing	15 minutes	A cylindrical, than triangulat object floating in the sky with many different colors of light flickering!!!	44.8007	-122.7945
2369	4/12/2007 20:30:00	Stayton	OR	Light	2 to 3 minutes	orange-yellow fire dribbled stright down from the object	44.8007	-122.7945
2370	1/1/2015 0:05:00	Stayton/Salem	OR	Light	3-4 minutes	A slow move bright reddish orange flickering light moving slowly and changing direction before burning out.	44.8007	-122.7945
2371	9/14/2000 20:00:00	Steens Mountains	OR	Unknown	2 hours	From a remote mountain top in the desert, observed a red strobe light surrounded by many other lights creating specific patterns.	42.6364	-118.5767
2372	5/28/1982 18:00:00	Stewart State Park	OR	Formation	2-3 minutes	Glowing, colored, 3 object, light formation, merging into one bright ball of white light, and then disappearing.	45.7391	-123.1996
2373	7/1/2006 22:15:00	Sublimity	OR	Sphere	three nights	Bright white spherical objects when stationary blinking white and red when travelling	44.8296	-122.7945
2374	4/11/2016 22:30:00	Summer Lake	OR	Light	45 minutes	Southeast Oregon Orange Orbs with one lasting 45 minutes on the night of April 11th, 2016.	42.9729	-120.7778
2375	10/23/2013 21:00:00	Summer Lake	OR	Light	20 minutes	10-23 and 24th of oct 13 summer lake OR. 9:00 p.m. orange balls of light 7 at one time in diagnal and in twos	42.9729	-120.7778
2376	5/27/2010 20:00:00	Summer Lake	OR	Other	3+ hours	multiple light emitting/color changing objects, much of the time moving at a high speed.. .((NUFORC Note: Twinkling stars? PD))	42.9729	-120.7778
2377	3/28/2000 7:45:00	Summer Lake	OR	Sphere	30 minutes	In the eastern sky, from highway 31, just above cloud level. Flashes of reddish orange light, similar to a flare, were seen in differen	42.9729	-120.7778
2378	10/26/2002 18:30:00	Summit Lake Exit, Hwy 42	OR	Disk	10 minutes	Huge bright hovering object.	44.4623	-121.8418
2379	12/14/2013 18:00:00	Sumpter	OR	Light	4 minutes	Orange glowing lights rising.	44.7457	-118.2022
2380	8/14/2010 23:15:00	Sunriver	OR	Light	30 minutes	Multi colored bright flashing light in WSW Sky as seen from about: N 43 49.49 & W 121 28.14 ((NUFORC Note: Venus?? PD))	43.8694	-121.4334
2381	8/3/2008 10:30:00	Sunriver	OR	Cylinder	45min	Reflective Spinning object high over Sunriver, Oregon. 8/3/2008	43.8694	-121.4334
2382	5/12/2001 22:00:00	Sunriver	OR	Triangle	15 - 20 Minutes	"VERY LARGE" Triangular shaped vehicle moving at a very fast steady speed NW to SE blocking out stars as it went.	43.8694	-121.4334
2383	9/1/1999 21:00:00	Sunriver	OR	Fireball	\N	I am only giving brief report. I did not see object but work part-time Many people stargazing at Sunriver nature center obsrv. saw fire	43.8694	-121.4334
2384	1/7/2017 23:20:00	Sutherlin	OR	Fireball	5 minutes	I walked outside by 11:20 p.m. I looked up in the sky North I was smoking a cigarette I saw orange lights big craft ran inside got my f	43.3901	-123.3126
2385	11/28/2016 23:00:00	Sutherlin	OR	Other	5 minutes	Orange non-blinking tight group of lights flying east from coast then turned south and disappeared Have seen several craft of differen	43.3901	-123.3126
2386	3/18/2016 21:45:00	Sutherlin	OR	Circle	3 minutes	Small red object hovering in sky then drops a glowing white object twice it's size and red light disappeared shortly after	43.3901	-123.3126
2387	11/17/2015 5:27:00	Sutherlin	OR	Flash	1 hour	White lights.	43.3901	-123.3126
2388	6/30/2015 23:45:00	Sutherlin	OR	Triangle	5 minutes	((HOAX??)) I & friends talking about satellites and lights in the sky weather there airplanes or UFOs. ((anonymous report))	43.3901	-123.3126
2389	11/11/2014 18:30:00	Sutherlin	OR	Fireball	5 minutes	Nine craft 3 by 3 flying south over I-5 changing formation and then elevating.	43.3901	-123.3126
2390	7/31/2014 23:00:00	Sutherlin	OR	Light	3-4 seconds	GLOWING RED OBJECTS, HIGH RATE OF SPEED, ONE DISAPPEARED THE OTHER KEPT GOING. VERY LOUD ROARING SOUND	43.3901	-123.3126
2391	3/10/2014 20:15:00	Sutherlin	OR	Light	5-10 minutes	Orange light in night sky dropping smaller light.	43.3901	-123.3126
2392	1/25/2003 19:00:00	Sutherlin	OR	Changing	\N	LIGHT	43.3901	-123.3126
2393	2/15/2010 23:00:00	Sutherlin and Roseburg	OR	Light	around ten seconds each t	The same UFO spotted in small Oregon town	43.3901	-123.3126
2394	10/22/2009 3:15:00	Sweet Home	OR	Other	40 Seconds	I dont know what it was, it was like a darker fog surrounded by the lighter fog, then it... blew away. There was no wind that night.	44.3976	-122.7362
2395	2/13/1996 18:30:00	Sweet Home	OR	\N	40 min.	Caller reported that they had "spotted a UFO" in Sweet Home. It had red, blue, yellow, and green colors,	44.3976	-122.7362
2396	10/1/1972	Sweet Home	OR	Unknown	ufo	Ligthning coming out of a cloud hovering, waves of clouds come out an going backin, no sound look at that?	44.3976	-122.7362
2397	4/18/2015 21:31:00	Talent	OR	Light	5-8 seconds	Bright white light moving up & away rapidly to the SE, near the star Arcturus, becoming smaller as it traveled East, turned red & gone.	42.2457	-122.7886
2398	1/4/2015 18:30:00	Talent	OR	Light	5 minutes	A bright orange light came up over the horizon going up into the sky, it stopped and hovered. it then jolted right and diagonal left, t	42.2457	-122.7886
2399	12/3/2013 21:45:00	Talent	OR	Unknown	1 minute	I live in Southern Oregon along Interstate 5. I was out throwing a ball for my dog tonight, it was super dark and very cold, so per	42.2457	-122.7886
2400	12/24/2012 19:30:00	Talent	OR	Light	5-7 minutes	Red/Yellow orb West of Medford, Oregon, Christmas Eve.	42.2457	-122.7886
2401	9/20/2011 20:45:00	Talent	OR	Triangle	35 sec	it looked like something of a V shape entered the atmosphere glowing.	42.2457	-122.7886
2402	4/15/2007 23:00:00	Talent	OR	Changing	5 min.	bright flash,then ciclular orange orb of light diminshing to nothing and over and over,due north	42.2457	-122.7886
2403	10/17/2006 22:02:00	Talent	OR	Light	5 Second	Green and White Falling Object, Near Ashland, Or	42.2457	-122.7886
2404	8/2/2005 1:45:00	Talent	OR	Triangle	20 min.	witnessed an unidentified flying object that moved in a motion not capable of conventional aircraft ((NUFORC Note: Possible star??PD))	42.2457	-122.7886
2405	1/3/2013 21:37:00	Terrebonne	OR	Unknown	3 minutes	A red, ribbon-like moving shape flying next to the butte in Terrebonne, OR.	44.3529	-121.1778
2406	1/9/2011 5:30:00	Terrebonne	OR	Circle	3 1/2 hours	2 UFOs sighted above our back pasture...	44.3529	-121.1778
2407	11/14/2004 22:30:00	Terrebonne	OR	Disk	about 15 min	one object, made of spinning circles of light above my car in the cloud cover, followed me for about 15 min	44.3529	-121.1778
2408	9/15/1965 21:30:00	Terrebonne	OR	Light	5-6 hours	Pairs of RED LIGHTS spinning up, down, spiraling, twirling....as if playing.	44.3529	-121.1778
2409	10/5/1964 16:45:00	Terrebonne	OR	Cigar	10 minutes	Shimmering silver metallic shape.....no sound(s), moving slowly to the South.	44.3529	-121.1778
2410	10/25/1958 20:00:00	Terrebonne	OR	Unknown	1-2 minutes	Piercing, shrill tone.	44.3529	-121.1778
2411	7/21/2016 15:00:00	The Dalles	OR	Other	30 seconds	Bright shimmering object, not too high above ground level. Looking and moving like flying saucer right out of science fiction.	45.5946	-121.1787
2412	4/30/2014 21:50:00	The Dalles	OR	Formation	10 minutes	Formation of 5 ufos sighted over The Dalles, Oregon.	45.5946	-121.1787
2413	7/25/2013 0:26:00	The Dalles	OR	Fireball	3-4 seconds	Yellow and greenish fireball streaking to the west over north central Oregon.	45.5946	-121.1787
2414	12/26/2012 12:00:00	The Dalles	OR	Other	10 minutes	((HOAX??)) Whirring black object off our front porch.	45.5946	-121.1787
2415	3/11/2012 20:35:00	The Dalles	OR	Light	\N	Two Bright lights seen west of Hood River OR. ((NUFORC Note: Sighting of Jupiter and Venus. PD))	45.5946	-121.1787
2416	1/27/2012 19:45:00	The Dalles	OR	Unknown	1 min.plus	Saw a large bright ball of light, low, fast and quiet,	45.5946	-121.1787
2417	9/11/2011 0:00:00	The Dalles	OR	Fireball	30 seconds	2 witnesses to a large orange fireball object flying upwards into the atmosphere	45.5946	-121.1787
2418	3/30/2005 14:00:00	The Dalles	OR	Sphere	approx 2 minutes	spherical shaped object that appeared to be white with a grey shadow flying north to south	45.5946	-121.1787
2419	11/26/2003 1:23:00	The Dalles	OR	Light	10 seconds	I saw weird, moving lights along the Columbia River heading Eastward.	45.5946	-121.1787
2420	8/30/2001 19:00:00	The Dalles	OR	Triangle	20 minutes	Stationary grounded object north of Dallesport, Wash. Bright silver in sunlight.	45.5946	-121.1787
2421	10/18/1998 0:01:00	The Dalles	OR	Sphere	10 seconds	Green comet-like object w/ tail. (I judge it was a shooting star?!) Slow straight fall northeast of city, in the direction of Spokane,	45.5946	-121.1787
2422	8/14/1998 3:15:00	The Dalles	OR	Fireball	90 seconds	I was laying in my bed looking through the window which faces to the west. When suddenly a bright orange ball of fire appeared. I watch	45.5946	-121.1787
2423	6/1/1990 21:00:00	The Dalles	OR	Triangle	20 minutes	Triangle shaped with lights moving slowly, no sound	45.5946	-121.1787
2424	8/8/1989 22:00:00	The Dalles	OR	Triangle	30 minutes	I was watching a single light such as an airplane might do when it is coming at you, but it didn't move it just sat there, it was about	45.5946	-121.1787
2425	6/1/1981 17:00:00	The Dalles	OR	Fireball	\N	Ball of fire moving up the Columbia River. Just made a "B" line. No sudden movement	45.5946	-121.1787
2426	4/3/2006 21:20:00	Tidewater	OR	Fireball	3 sec	Lots of aircraft and huge orange ball.	44.4112	-123.9004
2427	2/7/1995 23:00:00	Tidewater	OR	\N	\N	Mother & son witness "star," which began to move, first north, then south. No radar contact reported.	44.4112	-123.9004
2428	2/12/2017 20:30:00	Tigard	OR	Other	On hour before setting	Spotted a bright light directly west of my position at 45├é┬░23'60: N. 122├é┬░46'53W.  ((NUFORC Note: Sighting of Venus. PD))	45.4312	-122.7715
2429	1/6/2017 18:24:00	Tigard	OR	Circle	1 hour	Round circular flashy object seen in the sky for the past 3 days. ((NUFORC Note: Sighting of Venus?? PD))	45.4312	-122.7715
2430	9/24/2016 20:45:00	Tigard	OR	Light	10 seconds	Two very bright, star-like objects side by side at an angle.	45.4312	-122.7715
2431	6/29/2016 11:40:00	Tigard	OR	Fireball	20 minutes	Glowing Orange Fireball over Tigard Oregon	45.4312	-122.7715
2432	5/21/2014 0:00:00	Tigard	OR	Triangle	2 hours	Three Orange triangle lights hoover over us and little lights come shooting out super fast	45.4312	-122.7715
2433	7/24/2013 3:53:00	Tigard	OR	Light	27 minutes	This is the second report I've submitted this month since my 1st on 07/03/13 with similar lights.	45.4312	-122.7715
2434	7/3/2013 3:30:00	Tigard	OR	Light	4 seconds	All the jets I see at cruising altitudes take at least 12 seconds to cover the same area, and dont look like actual stars.	45.4312	-122.7715
2435	6/8/2013 22:45:00	Tigard	OR	Light	1.5 minutes	5 lights moving in formation over Tigard Oregon 06/08/13	45.4312	-122.7715
2436	12/22/2012 18:00:00	Tigard	OR	Unknown	8-10 minutes	7 - 8 Bright Lights Seen in Night Sky over Tigard, Oregon 12/22/12	45.4312	-122.7715
2437	7/14/2012 22:00:00	Tigard	OR	Cigar	3-4 minutes	Orange/red, glowing object, flew from tree-line level to the sky, to the distant atmosphere.	45.4312	-122.7715
2438	9/8/2009 21:22:00	Tigard	OR	Circle	20 seconds	Two very distinct bright lights traveling east at 9:22pm PST. ((NUFORC Note: ISS and Space Shuttle in formation. PD))	45.4312	-122.7715
2439	4/30/2006 0:05:00	Tigard	OR	Formation	45 sec.	Light Formation	45.4312	-122.7715
2440	8/10/2005 1:45:00	Tigard	OR	Other	10 sec	W shaped object...With an eary look	45.4312	-122.7715
2441	7/22/2005 2:10:00	Tigard	OR	Triangle	4 minutes	Black thin Mantaray shape w/dome and rods no lights or sound. Flew like wing, then moved horizontally in upright vertical position.	45.4312	-122.7715
2442	3/12/2005 19:45:00	Tigard	OR	Unknown	2 seconds	My wife and I saw a white streak come down at a steep angle and at a very high rate of speed. The intial color was white and turned ver	45.4312	-122.7715
2443	5/22/1998 21:00:00	Tigard	OR	Triangle	5 min.	Tigard Oregon 1978 Black Pyramid shape-no noise-no lights-floated then sparks below before shot off 5 min.	45.4312	-122.7715
2444	3/23/1997 19:37:00	Tigard	OR	diamond	1 second	Large, black, diamond-kite shaped object	45.4312	-122.7715
2445	12/17/1996 6:15:00	Tigard	OR	\N	3 sec.	Man sees bright silver-white light in NNW sky descending at 45-60 deg. angle. Very fast, very bright.	45.4312	-122.7715
2446	8/16/1992 22:30:00	Tigard	OR	Unknown	1-2 minutes	Lights 8-10 'v' shaped gliding across sky, no sound, gigantic, blacked out sky so no stars or planes could be seen.	45.4312	-122.7715
2447	10/21/1999 23:40:00	Tigard (12 mi so of Portland, Exit 290 I 5)	OR	Light	2hrs on	Object moved north to south approx 40 deg.in 15 sec. and stopped. Remained in that position till 0130am 11/22/99. at that time i went	45.4312	-122.7715
2448	12/31/2013 21:30:00	Tigard (near)	OR	Fireball	~1 hour	Large orange fireball witnessed on New Year's Eve near Tigard, OR	45.4312	-122.7715
2449	11/25/1998 20:05:00	Tigard (Portland suburb)	OR	Fireball	2sec	my daughter and I were in our kitchen and the whole room lit up bright red. I thought the candles on our table caught something on fire	45.4312	-122.7715
2450	7/25/1998 16:30:00	Tigard (suburb of Portland)	OR	Oval	30+ minutes	A silver, oval shaped object hovered directly overhead at high altitude for at least 30 minutes. A jetliner passed near by the object.	45.4312	-122.7715
2451	11/16/1999 3:20:00	Tigard/Tualatin	OR	Chevron	2-3 minutes	At about 3:15-3:20AM while driving on I-5 from Portland to Wilsonville Oregon We noticed we were approaching some bright strange white	45.4312	-122.7715
2452	9/13/2014 22:00:00	Tillamook	OR	Light	2 hours	Lights moving around in the night sky, Sky formations.	45.4562	-123.8440
2453	9/21/2011 20:30:00	Tillamook	OR	Cylinder	10 seconds	Bright glowing orb	45.4562	-123.8440
2454	2/2/2004 19:30:00	Tillamook	OR	Cylinder	10 Minutes	Brightly lit cylindrical object rises slowly above Tillamook Bay, Oregon	45.4562	-123.8440
2455	7/26/2003 23:17:00	Tillamook	OR	Fireball	1-2 minutes	fireball into ocean	45.4562	-123.8440
2456	8/10/1999 2:00:00	Tillamook	OR	Cylinder	45 minutes	A cylindar shaped object, traveling over the pacific ocean, sighting from oregon.	45.4562	-123.8440
2457	2/8/1995	Tillamook	OR	\N	\N	Woman witness very bright red, white, and blue light south of town. "Like triangle."	45.4562	-123.8440
2458	8/7/1980 1:00:00	Tillamook	OR	Rectangle	2 minutes	It was big as a football feild with lit up windows, i could see movement inside, it was so low & slow i could see alot of detail.	45.4562	-123.8440
2459	7/15/2002 22:00:00	Tillamook (15 miles SW; Cape Lookout)	OR	Light	approx. 1.5 hrs	My family and I observed a large bright as it moved north out over the Pacific ocean off of the northernm Oregon coast.	45.4562	-123.8440
2460	8/1/1993 21:30:00	Tillamook(Lees Camp)	OR	Light	15 minutes	we saw 3 lights ahead of us,aprx. 2000 ft up ,hovering above the mountain(north)we watched for aprx. 5 min.i look to my left(west) i sa	45.4562	-123.8440
2461	9/17/2005 21:00:00	Tillamook/Bay City	OR	Formation	5-7 minutes	Rows of very large bright Yellow/Orange panels of light above the ocean: 5 sightings in 7 minutes	45.4562	-123.8440
2462	1/18/1999 19:38:00	Timberline Lodge/Mt Hood	OR	Light	a few minutes	to the ssw a huge bright light was shining down as if on the back of a large jet liner and was moving up like a rocket upward at about	45.3312	-121.7112
2463	4/22/2013 22:15:00	Toledo	OR	Light	25-30 minutes	A large rotating UFO over the coast of Oregon with smaller orb like lights	44.6215	-123.9384
2464	8/29/2002 23:45:00	Toledo	OR	Triangle	millisecond	The object I saw was very clear and moved at a remarkably fast speed, of which I cannot imagine anything of our technology, currently.	44.6215	-123.9384
2465	10/3/1999 22:15:00	Trail	OR	Fireball	seconds	White luminous basketball-sized falling fireball.	42.6478	-122.8105
2466	10/3/1999 22:00:00	Trail	OR	Fireball	seconds	Bluish fireball lighting entire area, falling at treetop level.	42.6478	-122.8105
2467	8/26/2000 22:00:00	Trout Creek Recreation	OR	Light	2 minutes	A bright large round light that moved in horizontal, vertical and circle, and left in rapid speed.	43.9271	-118.9399
2468	4/1/2016 21:30:00	Troutdale	OR	Sphere	now	Two bright lights hover over East Vancover, Washington.	45.5393	-122.3873
2469	9/24/2015 22:00:00	Troutdale	OR	Circle	15 minutes	Round light moved quickly near moon Troutdale, Oregon. ((NUFORC Note: Lens flare, caused by photographing the Sun. PD))	45.5393	-122.3873
2470	7/30/2015 13:30:00	Troutdale	OR	Disk	10 minutes	Long, flat whitish silver object between Clackamas and Troutdale, Oregon.	45.5393	-122.3873
2471	10/6/2014 22:30:00	Troutdale	OR	Triangle	2-3 minutes	Giant triangle in the western sky. Red lights. Missing time!	45.5393	-122.3873
2472	10/6/2014 5:30:00	Troutdale	OR	Unknown	2-5 minutes	Outside early morning, noticed a illumnating light growing stronger in the sky, looked up, saw light dissappate, then two objects flyi	45.5393	-122.3873
2473	8/18/2012 21:30:00	Troutdale	OR	Fireball	5 minutes	Fireball floating in sky	45.5393	-122.3873
2474	12/9/2007 22:30:00	Troutdale	OR	Light	5 minutes	Very bright red, green and blue light causing the SSE sky to glow.	45.5393	-122.3873
2475	8/30/2007 21:17:00	Troutdale	OR	Circle	2 minutes	Two objects seen passing together over Troutdale, Oregon, at 9:17 pm	45.5393	-122.3873
2476	4/13/2007 20:50:00	Troutdale	OR	Sphere	15 Seconds	Extremely bright and fast UFO over Troutdale, OR	45.5393	-122.3873
2477	4/26/2005 21:45:00	Troutdale	OR	Light	5 seconds	Fast Moving Light	45.5393	-122.3873
2478	7/15/2004 22:00:00	Troutdale	OR	Unknown	3 MINUTES	BRIGHT LIGHT TRAVELLING FULL HORIZON	45.5393	-122.3873
2479	21:40	Troutdale	OR	Cylinder	5 minutes	4 ufo's cylinders move slowly up and away horizontally then vertically. Multi colored lights strong heat sync on lights,	45.5393	-122.3873
2480	11/20/2015 20:30:00	Tualatin	OR	Triangle	20 seconds	Triangle pattern of 7 or 9 round lights moving slowly from east to west - electronic, pulsing machine sound	45.3840	-122.7640
2481	11/25/2011 15:00:00	Tualatin	OR	Light	3-5 min	Light sphere above odd shaped clouds	45.3840	-122.7640
2482	5/17/2008 15:00:00	Tualatin	OR	Oval	10 - 15 min	2 Star looking objects observed in Tualatin, OR	45.3840	-122.7640
2483	1/9/2008 7:03:00	Tualatin	OR	Light	2 Minutes	Two Pairs of Stationary Lights over Tualatin seen near a Helicopter	45.3840	-122.7640
2484	5/7/2007 23:30:00	Tualatin	OR	Light	45 minutes	lights dancing across sky	45.3840	-122.7640
2485	10/31/2006 19:10:00	Tualatin	OR	Fireball	30 seconds	Fireball sighting on Halloween night	45.3840	-122.7640
2486	9/25/2006 23:00:00	Tualatin	OR	Oval	20 miinutes	saw UFO while walking home. Tualatin, Oregon. 9-25-06	45.3840	-122.7640
2487	8/6/2004 23:30:00	Tualatin	OR	Light	15 mins	1 boomerang shaped, bright lighted object...	45.3840	-122.7640
2488	6/15/2002 0:45:00	Tualatin	OR	Oval	4 seconds	Oregon UFO sighting	45.3840	-122.7640
2489	11/18/2001 2:30:00	Tualatin	OR	Triangle	30 seconds	UFOs on The Night of The Shooting Stars	45.3840	-122.7640
2490	6/17/2000 16:00:00	Tualatin	OR	Disk	3-5 seconds	Small silver disk shape far off, seen on a clear sunny afternoon for a few seconds, blinked out, did not reappear.	45.3840	-122.7640
2491	10/31/1999 23:48:00	Turner	OR	Circle	5 minuets	Glowing red circle, abotu 15 ft. above the ground. Shot quickly across the sky than disapeared in about 5 minuets.	44.8432	-122.9529
2492	8/17/2016 15:00:00	Tygh Valley	OR	Oval	5-10 seconds	Oval object fades away into blue sky.	45.2473	-121.1731
2493	9/7/2009 21:30:00	Ukiah	OR	Triangle	5 minutes	Large Triangle Sighting over Oregon High Desert.	45.1340	-118.9325
2494	10/15/1966 20:00:00	Ukiah	OR	Oval	20 minutes	Orange oval 40 ft in diameter, twenty ft off the ground, appoxumate 100 ft from me.	45.1340	-118.9325
2495	18:00	Ukiah	OR	Oval	5 min +	mountain UFO. surprised by U.S. forest service employees ,in deep snow.	45.1340	-118.9325
2496	5/3/2014 8:15:00	Umatilla	OR	Circle	5 minutes	Ball with 4 orange lights in the sky.	45.9174	-119.3425
2497	2/19/2012 20:20:00	Umatilla	OR	Circle	3 minutes	Low flying silent brightly lit craft.	45.9174	-119.3425
2498	11/21/2010 22:00:00	Umatilla	OR	Triangle	30 seconds	A defined glowing oval shape moving with control.	45.9174	-119.3425
2499	8/2/2008 0:12:00	Umatilla	OR	Fireball	10 seconds	Huge fireball seen from NE Oregon town of Umatilla.	45.9174	-119.3425
2500	8/1/2007 23:00:00	Umatilla	OR	\N	5 seconds	Green Rectangler Flash in Sky	45.9174	-119.3425
2501	4/16/2015 21:00:00	Umpqua Nat. Forest (Idleyld Park)	OR	Fireball	30 seconds	Two balls of light, moving in formation, by Mt. Theilsen was observed in Umpqua national forest by dosens of campers.	43.2272	-122.6901
2502	4/6/2014 20:00:00	Union	OR	Flash	30 seconds	Light here light gone.	45.2085	-117.8652
2503	8/19/2009 22:00:00	Vale	OR	Triangle	30 minutes	Before I go into any detail about our experience, I would like to preface this account with a description of the area we were in. O	43.9821	-117.2382
2504	8/19/2009 22:00:00	Vale	OR	Triangle	30 minutes	In desert area of Malheur County observed 2 Triangular shaped craft, each containing 3 red lights. One craft floated directly over us.	43.9821	-117.2382
2505	2/21/2003 22:30:00	Valley Junction	OR	Other	12 minutes	Missing time	45.0622	-123.5708
2506	7/4/2016 23:00:00	Vancouver & Portland	OR	Sphere	30 seconds	Red lights seen twice on same night.	45.5231	-122.6765
2507	8/30/2010 23:00:00	Veneta	OR	Unknown	3-4 mins	Orange flickering orb of light flying low and slow in Oregon	44.0487	-123.3509
2508	11/26/2003 18:31:00	Vernonia	OR	Sphere	30 seconds	Bright light seen near Mars, descended rapidly.	45.8587	-123.1929
2509	2/4/2012 19:00:00	Vida	OR	Other	4 hr 30 min	2 craft spotted, one with blinking red, green, and blue lights, the other a reddish color	44.1470	-122.5734
2510	2/3/2012 19:00:00	Vida	OR	Other	2 hr 30 min	Hovering craft with flashing red, green, and blue lights. ((NUFORC Note: Possible sighting of Sirius, or one of the planets?? PD))	44.1470	-122.5734
2511	5/19/1995 9:55:00	W. Salem	OR	\N	20 min.	Man w/ two brothers witness 7-8 discs at high altitude. One obj. larger than others. Multiple calls to 911; MUFON investigating.	44.9504	-123.0701
2512	3/13/2001 19:30:00	Wagontire	OR	Flash	15-30	No, aircraft I am aware of can accelerate horizonally like this..	43.2497	-119.8765
2513	7/17/2013 22:40:00	Waldport	OR	Light	5 minutes	Five reddish-orange lights over Waldport , Oregon in the SW sky.	44.4268	-124.0687
2514	8/26/2012 22:30:00	Waldport	OR	Circle	15-20 minutes	5 lights seen in night sky over ocean.	44.4268	-124.0687
2515	4/21/2010 1:30:00	Waldport	OR	Triangle	1 hour	Triangles/Cones	44.4268	-124.0687
2516	7/23/2004 21:00:00	Waldport	OR	Cigar	2 minutes	bright craft traveling fast ((NUFORC Note: Possible satellite or ISS? PD))	44.4268	-124.0687
2517	10/1/1984 1:00:00	Waldport	OR	Light	10 minutes	Bright light of a fast moving craft frightened me in the night on the Oregon Coast.	44.4268	-124.0687
2518	7/25/2003 1:30:00	Wallowa	OR	Disk	20 seconds	Flying saucer type object not large and alone soft white light and incredibly fast.	45.5930	-116.9718
2519	7/31/2012 22:15:00	Wallula	OR	\N	1 minute	Three lights -- red/red/white -- easily identified as three separate aircraft, as one had flashing navigation strobe lights.	46.0854	-118.9053
2520	5/24/2014 0:45:00	Wapinitia	OR	Light	2 minutes	50 degree long streak of white light seen in sky for two minutes.	45.1144	-121.2553
2521	7/22/1973 9:00:00	Warm Springs	OR	Disk	30-60 secs.	Craft with green beam over Warm Springs, Oregon	44.7635	-121.2662
2522	4/29/2006 0:00:00	Warren	OR	Disk	\N	Clusters of Red Lights Seen In The Portland Area	45.8188	-122.8501
2523	12/1/2002 5:30:00	Warren	OR	Sphere	15 minutes	A bright glowing light changing from red, green, blue to white. Moved in different directions. Then was gone.	45.8188	-122.8501
2524	8/20/2012 22:10:00	Warrenton	OR	Light	20 minutes	Non-Moving flashing light dissapears suddenly into the sky	46.1651	-123.9238
2525	7/4/2012 22:00:00	Warrenton	OR	Diamond	3 minutes	LOOKED LIKE A UFO	46.1651	-123.9238
2526	7/15/1969 9:00:00	Wasco	OR	Disk	About 2 min.	I saw the craft almost stationary about 75 yards out; and 75 yards high .I looked at for about one minute then ran back to our house to	45.5918	-120.6981
2527	1/1/2011 0:30:00	Welches	OR	Sphere	10-15 minutes	8-9 extremely bright orange ball shaped objects traveling rapidly and silently in a straight line across night sky	45.3385	-121.9632
2528	3/17/2016 20:20:00	West Linn	OR	Diamond	5 minutes	Driving home from work through West Linn, OR and noticed a bright diamond shaped light in the south east. It was brighter then a plane	45.3657	-122.6123
2529	3/23/2015 21:15:00	West Linn	OR	Unknown	5 minutes	Sudden loud turbine sounds above house. Spinning at an odd pitch and rhythm. Abrupty started and abruptly stopped.	45.3657	-122.6123
2530	7/12/2014 22:20:00	West Linn	OR	Circle	4 minutes	Red lights, traveling in a pack, moving independantly of one another, abilty to fly in different directions.	45.3657	-122.6123
2531	11/21/2013 20:00:00	West Linn	OR	Other	3 minutes	3 vertical rectangular lights seen hovering.	45.3657	-122.6123
2532	7/1/2012 14:00:00	West Linn	OR	Chevron	20+	Shiny chevron in the middle of a summer day	45.3657	-122.6123
2533	7/15/2010 11:30:00	West Linn	OR	Triangle	2-5 minutes	I will submit a picture & report to the image link. ((NUFORC Note: Dramatic sighting over West Linn, OR, of peculiar object. PD))	45.3657	-122.6123
2534	3/19/2010 20:00:00	West Linn	OR	Triangle	5 seconds	Low-flying UFO in Residential Neighborhood in West Linn, Oregon	45.3657	-122.6123
2535	12/6/2002 21:30:00	West Linn	OR	Chevron	2 minutes	Chevron shape with a center light followed by 5 round, intensely bright lights.	45.3657	-122.6123
2536	11/11/2016 11:00:00	West Salem	OR	\N	6-8 seconds	Earthshaking noise from the air in Salem OR	44.9504	-123.0701
2537	11/7/2015 19:00:00	West Salem	OR	Circle	3 minutes	A white ball shaped light moving at a super high hate of speed 200 feet above ground. ((NUFORC Note: U. S. Navy missile launch. PD))	44.9504	-123.0701
2538	4/19/2011 1:15:00	Westfir	OR	Light	2.5 hours	3 lights above rural Oregon. Family witnesses 3 lighted crafts north of their home. 2 of the crafts flew east at extreme speed.	45.7573	-122.4964
2539	10/14/2007 0:40:00	Westfir	OR	Unknown	6 seconds	I saw a streak of light in the sky.	45.7573	-122.4964
2540	10/3/2005 12:00:00	Westfir	OR	Other	20 minutes	clear real photo graph of extraterestrel	45.7573	-122.4964
2541	3/28/2008 12:00:00	Westfir/Seattle	OR	Egg	15 seconds	While i was looking at the space neddle yesterday through a web site known as earth cams i noticed a egg or disc like craft towards the	45.7573	-122.4964
2542	7/20/1978 23:00:00	Westport	OR	Unknown	10 sec.	Two Stars flying parallel to one another at undescribeable speed, then stopping on a dime momentarily to only part in differant directi	46.1326	-123.3748
2543	7/4/2012 23:00:00	White City	OR	Sphere	5 minutes	3 bright orange objects moving across the sky in a straight line.	42.4316	-122.8354
2544	12/22/2008 21:00:00	White City	OR	Light	6 minutes	Red light that seemed to drop falling embers over White City, Oregon	42.4316	-122.8354
2545	9/20/2006	White City	OR	Cigar	1-2 Min.	white light near bridge in white city, oregon	42.4316	-122.8354
2546	9/22/2000 23:00:00	White City	OR	Circle	5:00 AM	when it deposited the object into the maounten the bottom one flashed	42.4316	-122.8354
2547	8/20/1999 23:30:00	White City	OR	Circle	11:30-12:00pm	When I was going home from Awana I saw something (I thought it was Venus) When I went inside the house and looked out the window it mov	42.4316	-122.8354
2548	3/20/2007 11:00:00	White City/Eagle Point	OR	Cigar	about 10 mins	Unknown over the hills of Eagle Point and White City	42.4316	-122.8354
2549	5/15/2009 2:00:00	Willamina	OR	Formation	10 seconds	2 dozen flickering lights in perfect triangle formation	45.0787	-123.4859
2550	7/12/1990 19:00:00	Willamina	OR	Rectangle	2 min	RAINBOW PHOTO IN OREGON SHOWS TRIANGLE OBJECT IN SKY.	45.0787	-123.4859
2551	10/24/2015 17:02:00	Wilsonville	OR	Other	10	10-24-2015 @ 17:02. Odd moving shiny object in the sky near Wilsonville; possible UFO.	45.2998	-122.7737
2552	6/19/2014 18:17:00	Wilsonville	OR	Sphere	5 minutes	Spherical white [pearl-like] object WITHIN OUR ATMOSPHERE, motionless, appeared to be nailed to the sky.	45.2998	-122.7737
2553	9/1/2013 22:15:00	Wilsonville	OR	Cigar	20 seconds	1 UFO observed 2 times 10 seconds apart, going S to N, then N to S, at 22:15 hrs over Wilsonville, OR on 9/1/13.	45.2998	-122.7737
2554	1/22/2007 21:00:00	Wilsonville	OR	Light	still happening as I writ	Might be a UFO. ((NUFORC Note: Possible twinkling star?? PD))	45.2998	-122.7737
2555	3/25/2004 19:40:00	Wilsonville	OR	Rectangle	5 min	Hovering craft with green, then orange, then yellow-white lights seen in night sky over housing development.	45.2998	-122.7737
2556	7/23/2001 20:27:00	Wilsonville	OR	Triangle	5 minutes	Slow moving, quiet, dark object wandered up and to the South, avoiding a big cloud.	45.2998	-122.7737
2557	7/23/2001 20:27:00	Wilsonville	OR	Triangle	5 min	Black rounded corner pyramid, or triangle moving slowly without lights, sound, or visible means of propulsion, Wilsonville, OR.	45.2998	-122.7737
2558	1/18/2000 19:45:00	Wilsonville	OR	Unknown	1 minute	Pulsating (like a strobe light) object in the sky, traveling south to north, then turning east.	45.2998	-122.7737
2559	9/16/1995 1:00:00	Wilsonville	OR	Light	3 minutes	Bright lights from miles away to within 150 yds and 300 ft in the air.	45.2998	-122.7737
2560	10/15/1992 6:50:00	Wilsonville	OR	Light	15 sec.	Woman repts. seeing "round, flashing lights" moving S to N while in hospital.	45.2998	-122.7737
2561	10/3/1999 21:55:00	Wilsonville (exit, I-5, 1 mile N of)	OR	Fireball	1-3 seconds	Bright green glowing ball-shaped with a long glowing tail, traveling across and downward from East to West at treetop level; looked abo	45.2998	-122.7737
2562	9/1/1999 21:30:00	Wilsonville/Canby	OR	Light	1 min	Orange glow of light that faded away moved horizontal, glow diminished but still visible.	45.2998	-122.7737
2563	12/6/2002 19:30:00	Wilsonville/Tualatin	OR	Unknown	3-5 seconds	I was headed North on I-5 when I saw a glowing green object streaking across the night sky and descending towards Tualatin.	45.2998	-122.7737
2564	2/16/2003 20:25:00	Wingville	OR	\N	5-10 min.	Man witnesses dramatic fireball in southern sky, followed by sighting of 5-6 tiny lights moving slowly west in the southern sky.	44.8396	-117.9216
2565	6/14/2015 22:00:00	Winston	OR	Light	5 minutes	It was a very bright glowing white light traveling from east to west at a high rate of speed. ((NUFORC Note: Overflight of ISS. PD))	43.1223	-123.4126
2566	5/10/2013 21:05:00	Winston	OR	Cylinder	15 minutes	Reddish orange & white, cylinder light, appeared in the S sky and hovered silently for 3-4 minutes before leaving sight eastbound.	43.1223	-123.4126
2567	9/23/1998 21:00:00	Winston	OR	Light	2 seconds	Bright, green fireball	43.1223	-123.4126
2568	9/23/1998 21:00:00	Winston	OR	Teardrop	2 seconds	Large, green fireball like object	43.1223	-123.4126
2569	6/7/1977 23:00:00	Winston	OR	Circle	23:00 to nightfall	All of the above. And there is a lot more to this story, ongoing.	43.1223	-123.4126
2570	11/15/1989 23:00:00	Wolf Creek drainage (N of Hwy. 26)	OR	Sphere	30 min	We both saw a spherical glowing flying object come out of the west, head for Portland and get chased back by three fighter aircraft.	42.6954	-123.3953
2571	11/16/2016 19:00:00	Wood Village	OR	Light	1 second	I saw a small trail of light, heading from W to E, resembling that of a shooting star, except much lower in the earth's atmosphere.	45.5343	-122.4187
2572	10/4/2015 19:15:00	Woodburn	OR	Light	30 seconds	Fast moving super bright orange red light.	45.1437	-122.8554
2573	10/13/2014 14:30:00	Woodburn	OR	Cylinder	17 minutes	Cylinder-type; very large ufo.	45.1437	-122.8554
2574	2/28/2007 19:12:00	Woodburn	OR	Light	19:40	Bright light just west of Woodburn was seen for 30 minutes then was gone in a blink of an eye. ((NUFORC Note: Venus? PD))	45.1437	-122.8554
2575	11/23/2005 0:45:00	Woodburn	OR	Fireball	5 seconds	White ball of light falling to the ground	45.1437	-122.8554
2576	7/3/2005 23:00:00	Woodburn	OR	Light	10 minutes	Red light in sky - very high - at first thought it was reflection off car dashboard. Traveled from East to West - then sped off at	45.1437	-122.8554
2577	7/9/1999 22:45:00	Woodburn (7 miles east of)	OR	Fireball	2 seconds	red glowing object, white at center, just above horizon to the North. Did not appear to move. Disappeared from view.	45.1437	-122.8554
2578	5/15/2000 21:55:00	Woodburn (south of) on I-5 North @mile post 265	OR	Light	1-2min	A bright light was observed, not moving @ about 60 degrees above horizon. Without moving, it disappeared. It was observed for approx 1	45.1437	-122.8554
2579	1/23/2017 0:04:00	Yachats	OR	Circle	2 minutes	I had a very unusual sighting. Time line was 12:04, technically Monday, since it was after midnight.	44.3112	-124.1048
2580	7/4/2016 22:45:00	Yachats	OR	Circle	2 minutes	Bright purple craft hovered above eastward mountains	44.3112	-124.1048
2581	2/24/2015 6:00:00	Yachats	OR	Fireball	15 minutes	A 'fiery ball' motionless over the Pacific Ocean.	44.3112	-124.1048
2582	2/22/2012 21:30:00	Yachats	OR	\N	2/22/2012	Man sees orange light in sky; object shoots up vertically, and then back down, moments later.	44.3112	-124.1048
2583	9/28/2011 21:00:00	Yachats (south of)	OR	Other	5 minutes	Low-flying, arrow-shaped craft with unblinking white-yellow lights and one red blinking light.	44.3112	-124.1048
2584	10/4/1998 4:45:00	Yamhill	OR	Fireball	4 seconds	A blue/green ball of light.	45.3415	-123.1873
2585	7/20/2009 22:00:00	Yamhill/Cove Orchard	OR	Sphere	17 minutes	This object was not projecting light forward. It was making no sounds of any kind and when it moved from west to the east it wasn├éΓÇÖt a	45.3411	-123.1850
2586	12/22/2012 18:15:00	\N	OR	Light	2 minutes	Looked up into west sky and saw a formation of 8-10 lights flying low, slow and not exactly in formation. Gone over hilltop. Appearing	\N	\N
2587	8/27/2011 0:00:00	\N	OR	Fireball	20 sec	7 FT FROM UFO ORB SEEN INSIDE HOW WORKS!	\N	\N
\.


--
-- Name: ufos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: umito
--

SELECT pg_catalog.setval('ufos_id_seq', 2587, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: umito
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: umito
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: ufos ufos_pkey; Type: CONSTRAINT; Schema: public; Owner: umito
--

ALTER TABLE ONLY ufos
    ADD CONSTRAINT ufos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

