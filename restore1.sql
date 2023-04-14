--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1

-- Started on 2023-04-14 20:15:12 UTC

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
-- TOC entry 214 (class 1259 OID 24576)
-- Name: tbl_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_address (
    address_id integer NOT NULL,
    province text,
    district text,
    apartment text
);


ALTER TABLE public.tbl_address OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24581)
-- Name: tblAddress_AddressID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_address ALTER COLUMN address_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblAddress_AddressID_seq"
    START WITH 200000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 24582)
-- Name: tbl_authorization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_authorization (
    person_id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.tbl_authorization OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24587)
-- Name: tblAuthorization_PersonID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_authorization ALTER COLUMN person_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblAuthorization_PersonID_seq"
    START WITH 100000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 24588)
-- Name: tbl_classroom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_classroom (
    classroom_id integer NOT NULL,
    class_code text,
    capacity integer
);


ALTER TABLE public.tbl_classroom OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24593)
-- Name: tblClassroom_ClassroomID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_classroom ALTER COLUMN classroom_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblClassroom_ClassroomID_seq"
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 24594)
-- Name: tbl_notes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_notes (
    note_id integer NOT NULL,
    title text,
    description text,
    person_id integer NOT NULL
);


ALTER TABLE public.tbl_notes OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24599)
-- Name: tblNotes_NoteID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_notes ALTER COLUMN note_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblNotes_NoteID_seq"
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 24600)
-- Name: tbl_workdate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_workdate (
    date_id integer NOT NULL,
    day text,
    start_time text,
    end_time text
);


ALTER TABLE public.tbl_workdate OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24605)
-- Name: tblWorkDate_DateID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_workdate ALTER COLUMN date_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblWorkDate_DateID_seq"
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 24606)
-- Name: tbl_works; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_works (
    work_id integer NOT NULL,
    work_name text,
    details text,
    work_creator integer NOT NULL,
    work_owner integer DEFAULT 0,
    estimated_time text,
    work_status smallint DEFAULT 0,
    clasroom_id integer,
    create_time text,
    finish_time text,
    priority smallint
);


ALTER TABLE public.tbl_works OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24613)
-- Name: tblWorks_WorkID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_works ALTER COLUMN work_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."tblWorks_WorkID_seq"
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 24614)
-- Name: tbl_person_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_person_details (
    person_id integer NOT NULL,
    name text NOT NULL,
    surname text NOT NULL,
    degree text NOT NULL,
    phone text,
    room_no text,
    address_id integer
);


ALTER TABLE public.tbl_person_details OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 24619)
-- Name: tbl_person_workday; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_person_workday (
    person_id integer,
    date_id integer,
    workday_id integer NOT NULL
);


ALTER TABLE public.tbl_person_workday OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24622)
-- Name: tbl_person_workday_workday_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tbl_person_workday ALTER COLUMN workday_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tbl_person_workday_workday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3381 (class 0 OID 24576)
-- Dependencies: 214
-- Data for Name: tbl_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_address (address_id, province, district, apartment) FROM stdin;
200000	Bursa	Nilüfer	2C500
200001	Bursa	Yıldırım	Esenevler
200002	İstanbul	Maltepe	Lale Apt.
\.


--
-- TOC entry 3383 (class 0 OID 24582)
-- Dependencies: 216
-- Data for Name: tbl_authorization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_authorization (person_id, email, password) FROM stdin;
100000	melihafsar@marun.edu.tr	123456
100012	kenanbaylan@marun.edu.tr	123456
100013	buketb@marmara.edu.tr	123456
100023	odemir@marmara.edu.tr	123456
100024	merve.pinar@marmara.edu.tr	123456
100025	abdulsamet.aktas@marmara.edu.tr	123456
100026	kazim.yildiz@marmara.edu.tr	123456
100027	emre.ulku@marmara.edu.tr	123456
100028	anil.bas@marmara.edu.tr	123456
100029	abdullah.bal@marmara.edu.tr	123456
100030	ali.sarikas@marmara.edu.tr	123456
100031	alibuldu@marmara.edu.tr	123456
100032	berna.altinel@marmara.edu.tr	123456
100033	oakgun@marmara.edu.tr	123456
100034	gkaratas@marmara.edu.tr	123456
100035	busra.buyuktanir@marmara.edu.tr	123456
100036	merve.hazan@marmara.edu.tr	123456
\.


--
-- TOC entry 3385 (class 0 OID 24588)
-- Dependencies: 218
-- Data for Name: tbl_classroom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_classroom (classroom_id, class_code, capacity) FROM stdin;
1000	T4-101	50
1001	T4-115	45
1002	T4-Z06	30
1003	T4-Z05	120
1004	T4-Z06	130
1005	T4-Z12	50
1006	T4-Z03	45
1007	T4-Z11	55
1008	T4-Z09	45
1009	T4-Z08	40
1010	T4-123	50
1011	T4-122	45
\.


--
-- TOC entry 3387 (class 0 OID 24594)
-- Dependencies: 220
-- Data for Name: tbl_notes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_notes (note_id, title, description, person_id) FROM stdin;
101	Ders Programı	3. sınıfların ders programı hazırlanacak.	100000
103	Çalışma Odaları	Çalışma Odaları için kablolu ile çoklu priz alınması gerekiyor.	100000
100	HDMI Kablosu	6 bilgisayar için yeni Hdmi kablosu alınması	100000
122	Ders Çakışma	Algoritma Analizi ve Bilgisayar Programlama Derslerinin saatlerinin değiştirilmesi.	100000
130	DashBoard	Veriler dinamik olarak veritabanından alınmalıdır.	100000
174	VTYS Lab	VTYS dersi özelinde hafta 3,4 ödev kontrolünün yapılması gerekmektedir.	100024
175	Bilgisayar Programlama II	Bilgisayar Programlama II dersi özelinde hafta 1,2 ödev kontrolünün yapılması gerekmektedir.	100024
176	Ders Saati Değişikliği	VTYS dersi için ders saati değişikliği duyurusu yapılacaktır.	100024
177	Oracle Konferans	Oracle Db manager hakkında konferans verecek konuşmacıların sunum günü bilgilendirilmesinin yapılması	100024
\.


--
-- TOC entry 3393 (class 0 OID 24614)
-- Dependencies: 226
-- Data for Name: tbl_person_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_person_details (person_id, name, surname, degree, phone, room_no, address_id) FROM stdin;
100000	Melih	Afşar	Web Developer	02244708098	WorkRoom	200000
0	bilinmiyor	bilinmiyor	bilinmiyor	bilinmiyor	bilinmiyor	\N
100012	Kenan	Baylan	Mobile Developer	05315847699	WorkRoom	200000
100026	Kazım	Yıldız	Doç.Dr.	05378887411	T4-107	200001
100023	Önder	Demir	Doç.Dr	05471235896	T4-105	200002
100024	Merve	Pınar	Araş.Gör.	05471235811	T4-223	200000
100025	Abdülsamet	Aktaş	Araş.Gör.	05471235810	T2-104	200001
100027	Emre	Ülkü	Dr.Öğr.Üyesi	05471235899	T4-109	200001
100028	Anıl	Baş	Dr.Öğr.Üyesi	05471235898	T4-114	200001
100029	Abdullah	Bal	Araş.Gör.	05471235897	T2-106	200001
100030	Ali	Sarıkaş	Dr.Öğr.Üyesi	05471235806	T4-337	200001
100031	Ali	Buldu	Prof.Dr.	05471235895	T4-335	200001
100032	Berna	Altınel	Dr.Öğr.Üyesi	05471235894	T4-332	200001
100033	Ömer	Akgün	Dr.Öğr.Üyesi	05471235893	T4-330	200001
100034	Gözde	Karataş	Dr.Öğr.Üyesi	05471235892	T4-332	200001
100035	Büşra	Büyüktanır	Araş.Gör.	05471235891	T2-108	200001
100036	Merve	Hazan	Araş.Gör.	05471235890	T4-119	200001
100013	Buket	Doğan	Doç.Dr	05316479833	T4-101	200001
\.


--
-- TOC entry 3394 (class 0 OID 24619)
-- Dependencies: 227
-- Data for Name: tbl_person_workday; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_person_workday (person_id, date_id, workday_id) FROM stdin;
100000	10	1
100000	13	2
100000	19	3
100012	10	13
100012	20	14
100012	24	15
100013	11	16
100013	15	17
100013	22	18
100023	11	19
100023	14	20
100023	18	21
100024	12	22
100024	14	23
100024	19	24
100025	10	25
100025	18	26
100025	21	27
100026	12	28
100026	15	29
100027	17	30
100027	20	31
100027	22	32
100028	15	33
100029	20	34
100028	19	35
100029	15	36
100030	11	37
100030	17	38
100031	12	39
100031	15	40
100032	13	41
100032	17	42
100032	20	43
100033	14	44
100033	17	45
100034	13	46
100034	16	47
100035	13	48
100035	19	49
100035	23	50
100036	14	51
100036	20	52
\.


--
-- TOC entry 3389 (class 0 OID 24600)
-- Dependencies: 222
-- Data for Name: tbl_workdate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_workdate (date_id, day, start_time, end_time) FROM stdin;
10	Pazartesi	8	12
11	Pazartesi	13	17
12	Pazartesi	8	17
13	Salı	8	12
14	Salı	13	17
15	Salı	8	17
16	Çarşamba	8	12
17	Çarşamba	13	17
18	Çarşamba	8	17
19	Perşembe	8	12
20	Perşembe	13	17
21	Perşembe	8	17
22	Cuma	8	12
23	Cuma	13	17
24	Cuma	8	17
\.


--
-- TOC entry 3391 (class 0 OID 24606)
-- Dependencies: 224
-- Data for Name: tbl_works; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_works (work_id, work_name, details, work_creator, work_owner, estimated_time, work_status, clasroom_id, create_time, finish_time, priority) FROM stdin;
1013	Klima Kontrolü	Bölüm laboratuvarlarının klimalarının sorunsuz çalışıp çalışmadığı kontrol edilmeli	100025	100000	1	1	1000	9.12.2022 23:7	\N	3
1016	Afiş Tasarımı	Seminer için Afiş düzenlenmesi ve bastırılması işi	100028	100000	2	1	1000	9.12.2022 23:14	\N	5
1017	Bilgisayar Arızası	3 adet bilgisayar siyah ekran veriyor. Düzeltilmesi gerekiyor.	100026	100012	2	1	1002	9.12.2022 23:19	\N	4
1018	Taşıma	T4-119 da büyük iki parçalı masa T4-118 e taşınmalıdır.	100026	0	1	0	1003	9.12.2022 23:19	\N	2
1014	Firma Sunumu	VTYS dersinde sunum için gelecek firmanın bilgilendirilmesinin öğrencilere yapılması	100013	100000	1	1	1000	9.12.2022 23:11	\N	3
1015	VTYS Projeler	VTYS proje tarihi vb önemli bilgilerin duyurusunun yapılması	100013	100012		0	1000	9.12.2022 23:13	\N	3
1020	Evrak Teslimi	Bölüm sekreterindeki evraklar, fakülte sekreterine teslim edilmelidir	100028	0	1	0	1000	25.12.2022 22:21	\N	5
1021	Staj Duyuruları	Staj I,II ve uzun dönem için firmaların başvuruları açılmıştır. Duyurunun yapılması işi	100027	0	1	0	1000	25.12.2022 22:22	\N	5
1023	Tavandan Su Akması	T4-115 numaralı laboratuvarda 3 noktada tavandan su damlıyor.	100024	0	4	0	1000	25.12.2022 22:27	\N	5
\.


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 215
-- Name: tblAddress_AddressID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tblAddress_AddressID_seq"', 200002, true);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 217
-- Name: tblAuthorization_PersonID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tblAuthorization_PersonID_seq"', 100036, true);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 219
-- Name: tblClassroom_ClassroomID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tblClassroom_ClassroomID_seq"', 1011, true);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 221
-- Name: tblNotes_NoteID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tblNotes_NoteID_seq"', 177, true);


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 223
-- Name: tblWorkDate_DateID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tblWorkDate_DateID_seq"', 24, true);


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 225
-- Name: tblWorks_WorkID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tblWorks_WorkID_seq"', 1023, true);


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbl_person_workday_workday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_person_workday_workday_id_seq', 52, true);


--
-- TOC entry 3215 (class 2606 OID 24624)
-- Name: tbl_authorization ConstraintsEmail; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_authorization
    ADD CONSTRAINT "ConstraintsEmail" UNIQUE (email);


--
-- TOC entry 3213 (class 2606 OID 24626)
-- Name: tbl_address tblAddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_address
    ADD CONSTRAINT "tblAddress_pkey" PRIMARY KEY (address_id);


--
-- TOC entry 3217 (class 2606 OID 24628)
-- Name: tbl_authorization tblAuthorization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_authorization
    ADD CONSTRAINT "tblAuthorization_pkey" PRIMARY KEY (person_id);


--
-- TOC entry 3219 (class 2606 OID 24630)
-- Name: tbl_classroom tblClassroom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_classroom
    ADD CONSTRAINT "tblClassroom_pkey" PRIMARY KEY (classroom_id);


--
-- TOC entry 3221 (class 2606 OID 24632)
-- Name: tbl_notes tblNotes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_notes
    ADD CONSTRAINT "tblNotes_pkey" PRIMARY KEY (note_id);


--
-- TOC entry 3227 (class 2606 OID 24634)
-- Name: tbl_person_details tblPersonDetails_Phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_person_details
    ADD CONSTRAINT "tblPersonDetails_Phone_key" UNIQUE (phone);


--
-- TOC entry 3229 (class 2606 OID 24636)
-- Name: tbl_person_details tblPersonDetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_person_details
    ADD CONSTRAINT "tblPersonDetails_pkey" PRIMARY KEY (person_id);


--
-- TOC entry 3223 (class 2606 OID 24638)
-- Name: tbl_workdate tblWorkDate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_workdate
    ADD CONSTRAINT "tblWorkDate_pkey" PRIMARY KEY (date_id);


--
-- TOC entry 3225 (class 2606 OID 24640)
-- Name: tbl_works tblWorks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_works
    ADD CONSTRAINT "tblWorks_pkey" PRIMARY KEY (work_id);


--
-- TOC entry 3231 (class 2606 OID 24642)
-- Name: tbl_person_workday tbl_person_workday_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_person_workday
    ADD CONSTRAINT tbl_person_workday_pkey PRIMARY KEY (workday_id);


--
-- TOC entry 3232 (class 2606 OID 24643)
-- Name: tbl_notes tblNotes_PersonID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_notes
    ADD CONSTRAINT "tblNotes_PersonID_fkey" FOREIGN KEY (person_id) REFERENCES public.tbl_person_details(person_id);


--
-- TOC entry 3236 (class 2606 OID 24648)
-- Name: tbl_person_details tblPersonDetails_AddressID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_person_details
    ADD CONSTRAINT "tblPersonDetails_AddressID_fkey" FOREIGN KEY (address_id) REFERENCES public.tbl_address(address_id) NOT VALID;


--
-- TOC entry 3233 (class 2606 OID 24653)
-- Name: tbl_works tblWorks_ClasroomID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_works
    ADD CONSTRAINT "tblWorks_ClasroomID_fkey" FOREIGN KEY (clasroom_id) REFERENCES public.tbl_classroom(classroom_id);


--
-- TOC entry 3234 (class 2606 OID 24658)
-- Name: tbl_works tblWorks_WorkCreator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_works
    ADD CONSTRAINT "tblWorks_WorkCreator_fkey" FOREIGN KEY (work_creator) REFERENCES public.tbl_person_details(person_id);


--
-- TOC entry 3235 (class 2606 OID 24663)
-- Name: tbl_works tblWorks_WorkOwner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_works
    ADD CONSTRAINT "tblWorks_WorkOwner_fkey" FOREIGN KEY (work_owner) REFERENCES public.tbl_person_details(person_id);


--
-- TOC entry 3237 (class 2606 OID 24668)
-- Name: tbl_person_workday tbl_person_workday_date_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_person_workday
    ADD CONSTRAINT tbl_person_workday_date_id_fkey FOREIGN KEY (date_id) REFERENCES public.tbl_workdate(date_id);


--
-- TOC entry 3238 (class 2606 OID 24673)
-- Name: tbl_person_workday tbl_person_workday_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_person_workday
    ADD CONSTRAINT tbl_person_workday_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.tbl_person_details(person_id);


-- Completed on 2023-04-14 20:15:12 UTC

--
-- PostgreSQL database dump complete
--

