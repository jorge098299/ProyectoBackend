--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-15 21:17:49

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 232 (class 1259 OID 16658)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    detalle text
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16657)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 231
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 226 (class 1259 OID 16633)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre_completo character varying NOT NULL,
    dni character varying NOT NULL,
    telefono character varying NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16632)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO postgres;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 225
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 218 (class 1259 OID 16595)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16594)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 230 (class 1259 OID 16651)
-- Name: pedido_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido_producto (
    id integer NOT NULL,
    "pedidoId" integer NOT NULL,
    "productoId" integer NOT NULL,
    cantidad integer NOT NULL
);


ALTER TABLE public.pedido_producto OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16650)
-- Name: pedido_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedido_producto_id_seq OWNER TO postgres;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 229
-- Name: pedido_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_producto_id_seq OWNED BY public.pedido_producto.id;


--
-- TOC entry 228 (class 1259 OID 16642)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id integer NOT NULL,
    fecha character varying NOT NULL,
    estado integer NOT NULL,
    observaciones character varying NOT NULL,
    "clienteId" integer
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16641)
-- Name: pedidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_id_seq OWNER TO postgres;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 227
-- Name: pedidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;


--
-- TOC entry 220 (class 1259 OID 16604)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id integer NOT NULL,
    nombres character varying NOT NULL,
    apellios character varying NOT NULL,
    "userId" integer
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16603)
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.persona_id_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 219
-- Name: persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;


--
-- TOC entry 234 (class 1259 OID 16667)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    precio numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    image character varying(250),
    descripcion text,
    estado boolean DEFAULT true NOT NULL,
    "categoriaId" integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16666)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 233
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- TOC entry 235 (class 1259 OID 16676)
-- Name: role_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_user (
    "rolesId" integer NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public.role_user OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16624)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    detalle character varying NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16623)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 223
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 222 (class 1259 OID 16615)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(225) NOT NULL,
    password character varying(200) NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16614)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 4746 (class 2604 OID 16661)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 4743 (class 2604 OID 16636)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 4739 (class 2604 OID 16598)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4745 (class 2604 OID 16654)
-- Name: pedido_producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_producto ALTER COLUMN id SET DEFAULT nextval('public.pedido_producto_id_seq'::regclass);


--
-- TOC entry 4744 (class 2604 OID 16645)
-- Name: pedidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);


--
-- TOC entry 4740 (class 2604 OID 16607)
-- Name: persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 16670)
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- TOC entry 4742 (class 2604 OID 16627)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4741 (class 2604 OID 16618)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 4942 (class 0 OID 16658)
-- Dependencies: 232
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, nombre, detalle) FROM stdin;
1	MESSI ARGENTINA	PARTIDOS DE MESSI EN ARGENTINA
\.


--
-- TOC entry 4936 (class 0 OID 16633)
-- Dependencies: 226
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, nombre_completo, dni, telefono) FROM stdin;
1	Jorge	1752635936	0982998530
\.


--
-- TOC entry 4928 (class 0 OID 16595)
-- Dependencies: 218
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, "timestamp", name) FROM stdin;
1	1744769050225	NuevasTablas1744769050225
\.


--
-- TOC entry 4940 (class 0 OID 16651)
-- Dependencies: 230
-- Data for Name: pedido_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido_producto (id, "pedidoId", "productoId", cantidad) FROM stdin;
\.


--
-- TOC entry 4938 (class 0 OID 16642)
-- Dependencies: 228
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id, fecha, estado, observaciones, "clienteId") FROM stdin;
\.


--
-- TOC entry 4930 (class 0 OID 16604)
-- Dependencies: 220
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id, nombres, apellios, "userId") FROM stdin;
\.


--
-- TOC entry 4944 (class 0 OID 16667)
-- Dependencies: 234
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, nombre, precio, stock, image, descripcion, estado, "categoriaId") FROM stdin;
1	MESSI ARGENTINA	9999999.00	1	imagen_2025-04-15_211245729.png-1744769567267-9.png	\N	t	\N
2	MESSI BARCELONA	9999999.00	1	imagen_2025-04-15_211309574.png-1744769590951-6.png	\N	t	\N
3	MESSI PSG	9999999.00	1	imagen_2025-04-15_211327482.png-1744769614166-4.png	\N	t	\N
\.


--
-- TOC entry 4945 (class 0 OID 16676)
-- Dependencies: 235
-- Data for Name: role_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_user ("rolesId", "userId") FROM stdin;
\.


--
-- TOC entry 4934 (class 0 OID 16624)
-- Dependencies: 224
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, nombre, detalle) FROM stdin;
\.


--
-- TOC entry 4932 (class 0 OID 16615)
-- Dependencies: 222
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, name, email, password) FROM stdin;
1	prueba	rp@hm.com	$2b$12$7Vxe0m5lpS76AeAW92pk3O25TPiSNh8XXgnUjLTx0thoxYyhBVyxq
\.


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 231
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 1, true);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 225
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 1, true);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 229
-- Name: pedido_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_producto_id_seq', 1, false);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 227
-- Name: pedidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_id_seq', 1, false);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 219
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_seq', 1, false);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 233
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 3, true);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 223
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, true);


--
-- TOC entry 4770 (class 2606 OID 16675)
-- Name: productos PK_04f604609a0949a7f3b43400766; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "PK_04f604609a0949a7f3b43400766" PRIMARY KEY (id);


--
-- TOC entry 4752 (class 2606 OID 16611)
-- Name: persona PK_13aefc75f60510f2be4cd243d71; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "PK_13aefc75f60510f2be4cd243d71" PRIMARY KEY (id);


--
-- TOC entry 4750 (class 2606 OID 16602)
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 16656)
-- Name: pedido_producto PK_97f69aaf286bdd82afbd487e4d5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "PK_97f69aaf286bdd82afbd487e4d5" PRIMARY KEY (id);


--
-- TOC entry 4760 (class 2606 OID 16631)
-- Name: roles PK_c1433d71a4838793a49dcad46ab; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT "PK_c1433d71a4838793a49dcad46ab" PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 16680)
-- Name: role_user PK_c9667a1fe5b74f7427a3ab50025; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "PK_c9667a1fe5b74f7427a3ab50025" PRIMARY KEY ("rolesId", "userId");


--
-- TOC entry 4756 (class 2606 OID 16620)
-- Name: user PK_cace4a159ff9f2512dd42373760; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);


--
-- TOC entry 4762 (class 2606 OID 16640)
-- Name: clientes PK_d76bf3571d906e4e86470482c08; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT "PK_d76bf3571d906e4e86470482c08" PRIMARY KEY (id);


--
-- TOC entry 4764 (class 2606 OID 16649)
-- Name: pedidos PK_ebb5680ed29a24efdc586846725; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT "PK_ebb5680ed29a24efdc586846725" PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 16665)
-- Name: categoria PK_f027836b77b84fb4c3a374dc70d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d" PRIMARY KEY (id);


--
-- TOC entry 4754 (class 2606 OID 16613)
-- Name: persona REL_551ede1f9ac73b4e8f18495c6d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d" UNIQUE ("userId");


--
-- TOC entry 4758 (class 2606 OID 16622)
-- Name: user UQ_e12875dfb3b1d92d7d7c5377e22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22" UNIQUE (email);


--
-- TOC entry 4771 (class 1259 OID 16682)
-- Name: IDX_2a23ceb75c7511d0523c4aaf49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_2a23ceb75c7511d0523c4aaf49" ON public.role_user USING btree ("userId");


--
-- TOC entry 4772 (class 1259 OID 16681)
-- Name: IDX_eb446d431a1abb9801e6ade445; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_eb446d431a1abb9801e6ade445" ON public.role_user USING btree ("rolesId");


--
-- TOC entry 4780 (class 2606 OID 16713)
-- Name: role_user FK_2a23ceb75c7511d0523c4aaf492; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_2a23ceb75c7511d0523c4aaf492" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4776 (class 2606 OID 16688)
-- Name: pedidos FK_485346a40b61bb8ae3a98f5400c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT "FK_485346a40b61bb8ae3a98f5400c" FOREIGN KEY ("clienteId") REFERENCES public.clientes(id);


--
-- TOC entry 4775 (class 2606 OID 16683)
-- Name: persona FK_551ede1f9ac73b4e8f18495c6da; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da" FOREIGN KEY ("userId") REFERENCES public."user"(id);


--
-- TOC entry 4777 (class 2606 OID 16693)
-- Name: pedido_producto FK_6085b3aa6d0d1aec5985d3cb2ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "FK_6085b3aa6d0d1aec5985d3cb2ce" FOREIGN KEY ("pedidoId") REFERENCES public.pedidos(id);


--
-- TOC entry 4779 (class 2606 OID 16703)
-- Name: productos FK_aee00189e42dd8880cdfe1bb1e7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "FK_aee00189e42dd8880cdfe1bb1e7" FOREIGN KEY ("categoriaId") REFERENCES public.categoria(id);


--
-- TOC entry 4778 (class 2606 OID 16698)
-- Name: pedido_producto FK_da007c96a1af3dbf6a925bf6581; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "FK_da007c96a1af3dbf6a925bf6581" FOREIGN KEY ("productoId") REFERENCES public.productos(id);


--
-- TOC entry 4781 (class 2606 OID 16708)
-- Name: role_user FK_eb446d431a1abb9801e6ade4456; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_eb446d431a1abb9801e6ade4456" FOREIGN KEY ("rolesId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-04-15 21:17:49

--
-- PostgreSQL database dump complete
--

