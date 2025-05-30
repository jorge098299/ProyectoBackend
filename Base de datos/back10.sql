PGDMP                      }            back10    17.4    17.4 Q    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            W           1262    16593    back10    DATABASE     l   CREATE DATABASE back10 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-MX';
    DROP DATABASE back10;
                     postgres    false            �            1259    16658 	   categoria    TABLE     x   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    detalle text
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false            �            1259    16657    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public               postgres    false    232            X           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public               postgres    false    231            �            1259    16633    clientes    TABLE     �   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre_completo character varying NOT NULL,
    dni character varying NOT NULL,
    telefono character varying NOT NULL
);
    DROP TABLE public.clientes;
       public         heap r       postgres    false            �            1259    16632    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public               postgres    false    226            Y           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public               postgres    false    225            �            1259    16595 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       postgres    false            �            1259    16594    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public               postgres    false    218            Z           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public               postgres    false    217            �            1259    16651    pedido_producto    TABLE     �   CREATE TABLE public.pedido_producto (
    id integer NOT NULL,
    "pedidoId" integer NOT NULL,
    "productoId" integer NOT NULL,
    cantidad integer NOT NULL
);
 #   DROP TABLE public.pedido_producto;
       public         heap r       postgres    false            �            1259    16650    pedido_producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pedido_producto_id_seq;
       public               postgres    false    230            [           0    0    pedido_producto_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pedido_producto_id_seq OWNED BY public.pedido_producto.id;
          public               postgres    false    229            �            1259    16642    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id integer NOT NULL,
    fecha character varying NOT NULL,
    estado integer NOT NULL,
    observaciones character varying NOT NULL,
    "clienteId" integer
);
    DROP TABLE public.pedidos;
       public         heap r       postgres    false            �            1259    16641    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public               postgres    false    228            \           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public               postgres    false    227            �            1259    16604    persona    TABLE     �   CREATE TABLE public.persona (
    id integer NOT NULL,
    nombres character varying NOT NULL,
    apellios character varying NOT NULL,
    "userId" integer
);
    DROP TABLE public.persona;
       public         heap r       postgres    false            �            1259    16603    persona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public               postgres    false    220            ]           0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
          public               postgres    false    219            �            1259    16667 	   productos    TABLE     #  CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    precio numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    image character varying(250),
    descripcion text,
    estado boolean DEFAULT true NOT NULL,
    "categoriaId" integer
);
    DROP TABLE public.productos;
       public         heap r       postgres    false            �            1259    16666    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public               postgres    false    234            ^           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public               postgres    false    233            �            1259    16676 	   role_user    TABLE     a   CREATE TABLE public.role_user (
    "rolesId" integer NOT NULL,
    "userId" integer NOT NULL
);
    DROP TABLE public.role_user;
       public         heap r       postgres    false            �            1259    16624    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    detalle character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap r       postgres    false            �            1259    16623    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public               postgres    false    224            _           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public               postgres    false    223            �            1259    16615    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(225) NOT NULL,
    password character varying(200) NOT NULL
);
    DROP TABLE public."user";
       public         heap r       postgres    false            �            1259    16614    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public               postgres    false    222            `           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public               postgres    false    221            �           2604    16661    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    16636    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    16598    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16654    pedido_producto id    DEFAULT     x   ALTER TABLE ONLY public.pedido_producto ALTER COLUMN id SET DEFAULT nextval('public.pedido_producto_id_seq'::regclass);
 A   ALTER TABLE public.pedido_producto ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    16645 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    16607 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16670    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    16627    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    16618    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            N          0    16658 	   categoria 
   TABLE DATA           8   COPY public.categoria (id, nombre, detalle) FROM stdin;
    public               postgres    false    232   �^       H          0    16633    clientes 
   TABLE DATA           F   COPY public.clientes (id, nombre_completo, dni, telefono) FROM stdin;
    public               postgres    false    226   �^       @          0    16595 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public               postgres    false    218   _       L          0    16651    pedido_producto 
   TABLE DATA           Q   COPY public.pedido_producto (id, "pedidoId", "productoId", cantidad) FROM stdin;
    public               postgres    false    230   S_       J          0    16642    pedidos 
   TABLE DATA           P   COPY public.pedidos (id, fecha, estado, observaciones, "clienteId") FROM stdin;
    public               postgres    false    228   p_       B          0    16604    persona 
   TABLE DATA           B   COPY public.persona (id, nombres, apellios, "userId") FROM stdin;
    public               postgres    false    220   �_       P          0    16667 	   productos 
   TABLE DATA           i   COPY public.productos (id, nombre, precio, stock, image, descripcion, estado, "categoriaId") FROM stdin;
    public               postgres    false    234   �_       Q          0    16676 	   role_user 
   TABLE DATA           8   COPY public.role_user ("rolesId", "userId") FROM stdin;
    public               postgres    false    235   J`       F          0    16624    roles 
   TABLE DATA           4   COPY public.roles (id, nombre, detalle) FROM stdin;
    public               postgres    false    224   g`       D          0    16615    user 
   TABLE DATA           ;   COPY public."user" (id, name, email, password) FROM stdin;
    public               postgres    false    222   �`       a           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 1, true);
          public               postgres    false    231            b           0    0    clientes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clientes_id_seq', 1, true);
          public               postgres    false    225            c           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);
          public               postgres    false    217            d           0    0    pedido_producto_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pedido_producto_id_seq', 1, false);
          public               postgres    false    229            e           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 1, false);
          public               postgres    false    227            f           0    0    persona_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persona_id_seq', 1, false);
          public               postgres    false    219            g           0    0    productos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.productos_id_seq', 3, true);
          public               postgres    false    233            h           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public               postgres    false    223            i           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public               postgres    false    221            �           2606    16675 (   productos PK_04f604609a0949a7f3b43400766 
   CONSTRAINT     h   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "PK_04f604609a0949a7f3b43400766" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.productos DROP CONSTRAINT "PK_04f604609a0949a7f3b43400766";
       public                 postgres    false    234            �           2606    16611 &   persona PK_13aefc75f60510f2be4cd243d71 
   CONSTRAINT     f   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "PK_13aefc75f60510f2be4cd243d71" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "PK_13aefc75f60510f2be4cd243d71";
       public                 postgres    false    220            �           2606    16602 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public                 postgres    false    218            �           2606    16656 .   pedido_producto PK_97f69aaf286bdd82afbd487e4d5 
   CONSTRAINT     n   ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "PK_97f69aaf286bdd82afbd487e4d5" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.pedido_producto DROP CONSTRAINT "PK_97f69aaf286bdd82afbd487e4d5";
       public                 postgres    false    230            �           2606    16631 $   roles PK_c1433d71a4838793a49dcad46ab 
   CONSTRAINT     d   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT "PK_c1433d71a4838793a49dcad46ab" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.roles DROP CONSTRAINT "PK_c1433d71a4838793a49dcad46ab";
       public                 postgres    false    224            �           2606    16680 (   role_user PK_c9667a1fe5b74f7427a3ab50025 
   CONSTRAINT     y   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "PK_c9667a1fe5b74f7427a3ab50025" PRIMARY KEY ("rolesId", "userId");
 T   ALTER TABLE ONLY public.role_user DROP CONSTRAINT "PK_c9667a1fe5b74f7427a3ab50025";
       public                 postgres    false    235    235            �           2606    16620 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public                 postgres    false    222            �           2606    16640 '   clientes PK_d76bf3571d906e4e86470482c08 
   CONSTRAINT     g   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT "PK_d76bf3571d906e4e86470482c08" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.clientes DROP CONSTRAINT "PK_d76bf3571d906e4e86470482c08";
       public                 postgres    false    226            �           2606    16649 &   pedidos PK_ebb5680ed29a24efdc586846725 
   CONSTRAINT     f   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT "PK_ebb5680ed29a24efdc586846725" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT "PK_ebb5680ed29a24efdc586846725";
       public                 postgres    false    228            �           2606    16665 (   categoria PK_f027836b77b84fb4c3a374dc70d 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.categoria DROP CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d";
       public                 postgres    false    232            �           2606    16613 &   persona REL_551ede1f9ac73b4e8f18495c6d 
   CONSTRAINT     g   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d" UNIQUE ("userId");
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d";
       public                 postgres    false    220            �           2606    16622 #   user UQ_e12875dfb3b1d92d7d7c5377e22 
   CONSTRAINT     c   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22" UNIQUE (email);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e22";
       public                 postgres    false    222            �           1259    16682    IDX_2a23ceb75c7511d0523c4aaf49    INDEX     Z   CREATE INDEX "IDX_2a23ceb75c7511d0523c4aaf49" ON public.role_user USING btree ("userId");
 4   DROP INDEX public."IDX_2a23ceb75c7511d0523c4aaf49";
       public                 postgres    false    235            �           1259    16681    IDX_eb446d431a1abb9801e6ade445    INDEX     [   CREATE INDEX "IDX_eb446d431a1abb9801e6ade445" ON public.role_user USING btree ("rolesId");
 4   DROP INDEX public."IDX_eb446d431a1abb9801e6ade445";
       public                 postgres    false    235            �           2606    16713 (   role_user FK_2a23ceb75c7511d0523c4aaf492    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_2a23ceb75c7511d0523c4aaf492" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.role_user DROP CONSTRAINT "FK_2a23ceb75c7511d0523c4aaf492";
       public               postgres    false    4756    235    222            �           2606    16688 &   pedidos FK_485346a40b61bb8ae3a98f5400c    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT "FK_485346a40b61bb8ae3a98f5400c" FOREIGN KEY ("clienteId") REFERENCES public.clientes(id);
 R   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT "FK_485346a40b61bb8ae3a98f5400c";
       public               postgres    false    226    4762    228            �           2606    16683 &   persona FK_551ede1f9ac73b4e8f18495c6da    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da";
       public               postgres    false    220    4756    222            �           2606    16693 .   pedido_producto FK_6085b3aa6d0d1aec5985d3cb2ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "FK_6085b3aa6d0d1aec5985d3cb2ce" FOREIGN KEY ("pedidoId") REFERENCES public.pedidos(id);
 Z   ALTER TABLE ONLY public.pedido_producto DROP CONSTRAINT "FK_6085b3aa6d0d1aec5985d3cb2ce";
       public               postgres    false    4764    230    228            �           2606    16703 (   productos FK_aee00189e42dd8880cdfe1bb1e7    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "FK_aee00189e42dd8880cdfe1bb1e7" FOREIGN KEY ("categoriaId") REFERENCES public.categoria(id);
 T   ALTER TABLE ONLY public.productos DROP CONSTRAINT "FK_aee00189e42dd8880cdfe1bb1e7";
       public               postgres    false    4768    234    232            �           2606    16698 .   pedido_producto FK_da007c96a1af3dbf6a925bf6581    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "FK_da007c96a1af3dbf6a925bf6581" FOREIGN KEY ("productoId") REFERENCES public.productos(id);
 Z   ALTER TABLE ONLY public.pedido_producto DROP CONSTRAINT "FK_da007c96a1af3dbf6a925bf6581";
       public               postgres    false    234    230    4770            �           2606    16708 (   role_user FK_eb446d431a1abb9801e6ade4456    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_eb446d431a1abb9801e6ade4456" FOREIGN KEY ("rolesId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.role_user DROP CONSTRAINT "FK_eb446d431a1abb9801e6ade4456";
       public               postgres    false    4760    224    235            N   1   x�3��u�Tprw���s�p
�t�VpqU�ȹ�!��b���� }�L      H   +   x�3���/JO�4475236�46�4��0���056������ ��      @   ,   x�3�447117�405022��+M-K,IL�I,F������ B      L      x������ � �      J      x������ � �      B      x������ � �      P   �   x��̱
�0��9y
_ !w�ܙ1J(��:J)��v0[�����9u]��m���Q�߬s
��9N�y@��82�@����ɀ	ς,��T��{9�+}��1�.���/T�aI`�����v�����20*��j�?�[@�      Q      x������ � �      F      x������ � �      D   ]   x�3�,(*MMJ�,*p���K���T1JR14R1�H5�5�)67sLu�4*�6�72	��˰��H���	�0(�ȯ���p
��(����� j][     