--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: maxim
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO maxim;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: maxim
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying(255),
    description_categoty character varying(10000)
);


ALTER TABLE public.categories OWNER TO maxim;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: maxim
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO maxim;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxim
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: maxim
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name_country character varying(255),
    description_country character varying(10000)
);


ALTER TABLE public.countries OWNER TO maxim;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: maxim
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO maxim;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxim
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: maxim
--

CREATE TABLE public.news (
    news_id integer NOT NULL,
    title character varying(255),
    description_news character varying(10000),
    category_id integer,
    country_id integer
);


ALTER TABLE public.news OWNER TO maxim;

--
-- Name: news_news_id_seq; Type: SEQUENCE; Schema: public; Owner: maxim
--

CREATE SEQUENCE public.news_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_news_id_seq OWNER TO maxim;

--
-- Name: news_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxim
--

ALTER SEQUENCE public.news_news_id_seq OWNED BY public.news.news_id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: news news_id; Type: DEFAULT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.news ALTER COLUMN news_id SET DEFAULT nextval('public.news_news_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: maxim
--



--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: maxim
--

INSERT INTO public.categories (id, title, description_categoty) VALUES (3, 'Economy', 'Category about economy');
INSERT INTO public.categories (id, title, description_categoty) VALUES (6, 'Technologies', 'Category is about technologies');


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: maxim
--

INSERT INTO public.countries (id, name_country, description_country) VALUES (1, 'Russia', 'Country');
INSERT INTO public.countries (id, name_country, description_country) VALUES (2, 'Chine', 'News is about Chine');


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: maxim
--

INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (5, 'Geforce', 'Специалисты авторитетного интернет-портала wccftech.com поделились свежими данными по поводу еще не представленной официально видеокарты AMD Radeon RX 7700 XT.', 6, 1);
INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (6, 'Смартфон Xiaomi 12X', 'На российском рынке начался приём предварительных заказов на производительный смартфон Xiaomi 12X под управлением операционной системы Android 12.', 6, 1);
INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (7, 'Кабмин расширит возможности пользователей портала госуслуг', 'Кабинет министров будет развивать структуру электронного правительства, чтобы обеспечить бесперебойную работу государственных сервисов, а также расширить возможности использования россиянами портала госуслуг.', 3, 1);
INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (8, 'Греция намерена расширить хранилище', 'OPPO начнет массовое производство чипа собственной разработки AP в следующем году', 3, 1);
INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (9, 'The Terraced House', 'The area had lots of terraced houses. They were very simple. Our house had a veranda in front, two two rooms, and a veranda at the back. This was because of the tropical weather. They gave some sort of shade. The primitive kitchen was located in a courtyard. No electricity, no gas, and there was only a pipe for water which was a communal one. Everyone had to bring water in buckets into the house. The area was about an hour’s walking distance to the railway station. And schools were quite far away from there.', 3, 2);
INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (10, 'The House in Maple Street', 'We didn’t always live in Maple Street. We moved into the house 2 years ago. Before that we lived in Peach Street and before that we lived in Green Street. And before that I can’t remember. The house in Maple Street was ours and we were happy because we didn’t have to pay rent or share the yard with other people, or be careful not to make too much noise. It was a small brick house with small windows that looked onto the green back yard. There was no front yard, only four little maples separated the house from the street. The house didn’t have any modern conveniences except gas. There was no electricity, so we had to light candles when it was dark. There was no running water, so we had to take water from the pipe in the next street. There was no central heating so we had to put on warm clothes when it was cold. But we liked the house because it was ours and we wouldn’t have to move anymore.', 3, 2);
INSERT INTO public.news (news_id, title, description_news, category_id, country_id) VALUES (11, 'Создана система полноцветного ночного видения', 'Камеры ночного видения на основе инфракрасного излучения представляют изображения в монохромном виде, тогда как для человека цвет и оттенки несут дополнительную и зачастую важную информацию.', 6, 2);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxim
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxim
--

SELECT pg_catalog.setval('public.countries_id_seq', 7, true);


--
-- Name: news_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxim
--

SELECT pg_catalog.setval('public.news_news_id_seq', 11, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (news_id);


--
-- Name: news news_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: news news_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: maxim
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- PostgreSQL database dump complete
--

