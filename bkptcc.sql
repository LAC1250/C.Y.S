PGDMP     (                    z            trab1ref    13.4    13.4 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16681    trab1ref    DATABASE     h   CREATE DATABASE trab1ref WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE trab1ref;
                postgres    false            �            1259    16839    administrador    TABLE     �   CREATE TABLE public.administrador (
    id integer NOT NULL,
    nome character(100) NOT NULL,
    email character(100) NOT NULL,
    senha character(50) NOT NULL
);
 !   DROP TABLE public.administrador;
       public         heap    postgres    false            �            1259    16837    admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    208            �           0    0    admin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.admin_id_seq OWNED BY public.administrador.id;
          public          postgres    false    207            �            1259    16793    genero    TABLE     [   CREATE TABLE public.genero (
    id integer NOT NULL,
    genero character(30) NOT NULL
);
    DROP TABLE public.genero;
       public         heap    postgres    false            �            1259    16791    genero_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."genero_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."genero_ID_seq";
       public          postgres    false    204            �           0    0    genero_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."genero_ID_seq" OWNED BY public.genero.id;
          public          postgres    false    203            �            1259    16685    musicas    TABLE     �   CREATE TABLE public.musicas (
    id integer NOT NULL,
    titulo character(100) NOT NULL,
    artistas character(200) NOT NULL,
    genero_id integer,
    id_tempo integer,
    audio character(50),
    imagem character(50)
);
    DROP TABLE public.musicas;
       public         heap    postgres    false            �            1259    16699    musicas_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."musicas_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."musicas_ID_seq";
       public          postgres    false    201            �           0    0    musicas_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."musicas_ID_seq" OWNED BY public.musicas.id;
          public          postgres    false    202            �            1259    16682    questionario    TABLE     �   CREATE TABLE public.questionario (
    id integer NOT NULL,
    pergunta character(300),
    opcaoa character(100),
    opcaob character(100),
    opcaoc character(100),
    resposta character(2),
    id_musica integer
);
     DROP TABLE public.questionario;
       public         heap    postgres    false            �            1259    16847    questionarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questionarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.questionarios_id_seq;
       public          postgres    false    200            �           0    0    questionarios_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.questionarios_id_seq OWNED BY public.questionario.id;
          public          postgres    false    209            �            1259    16801    tempos    TABLE     ^   CREATE TABLE public.tempos (
    id integer NOT NULL,
    descricao character(50) NOT NULL
);
    DROP TABLE public.tempos;
       public         heap    postgres    false            �            1259    16799    tempoverbal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tempoverbal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tempoverbal_id_seq;
       public          postgres    false    206            �           0    0    tempoverbal_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.tempoverbal_id_seq OWNED BY public.tempos.id;
          public          postgres    false    205            @           2604    16842    administrador id    DEFAULT     l   ALTER TABLE ONLY public.administrador ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 ?   ALTER TABLE public.administrador ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            >           2604    16796 	   genero id    DEFAULT     h   ALTER TABLE ONLY public.genero ALTER COLUMN id SET DEFAULT nextval('public."genero_ID_seq"'::regclass);
 8   ALTER TABLE public.genero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            =           2604    16701 
   musicas id    DEFAULT     j   ALTER TABLE ONLY public.musicas ALTER COLUMN id SET DEFAULT nextval('public."musicas_ID_seq"'::regclass);
 9   ALTER TABLE public.musicas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            <           2604    16849    questionario id    DEFAULT     s   ALTER TABLE ONLY public.questionario ALTER COLUMN id SET DEFAULT nextval('public.questionarios_id_seq'::regclass);
 >   ALTER TABLE public.questionario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    200            ?           2604    16804 	   tempos id    DEFAULT     k   ALTER TABLE ONLY public.tempos ALTER COLUMN id SET DEFAULT nextval('public.tempoverbal_id_seq'::regclass);
 8   ALTER TABLE public.tempos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            �          0    16839    administrador 
   TABLE DATA           ?   COPY public.administrador (id, nome, email, senha) FROM stdin;
    public          postgres    false    208   �)       �          0    16793    genero 
   TABLE DATA           ,   COPY public.genero (id, genero) FROM stdin;
    public          postgres    false    204   *       �          0    16685    musicas 
   TABLE DATA           [   COPY public.musicas (id, titulo, artistas, genero_id, id_tempo, audio, imagem) FROM stdin;
    public          postgres    false    201   K*       �          0    16682    questionario 
   TABLE DATA           a   COPY public.questionario (id, pergunta, opcaoa, opcaob, opcaoc, resposta, id_musica) FROM stdin;
    public          postgres    false    200   f+       �          0    16801    tempos 
   TABLE DATA           /   COPY public.tempos (id, descricao) FROM stdin;
    public          postgres    false    206   �1       �           0    0    admin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.admin_id_seq', 2, true);
          public          postgres    false    207            �           0    0    genero_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."genero_ID_seq"', 31, true);
          public          postgres    false    203            �           0    0    musicas_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."musicas_ID_seq"', 95, true);
          public          postgres    false    202            �           0    0    questionarios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.questionarios_id_seq', 33, true);
          public          postgres    false    209            �           0    0    tempoverbal_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tempoverbal_id_seq', 18, true);
          public          postgres    false    205            D           2606    16706 
   musicas ID 
   CONSTRAINT     W   ALTER TABLE ONLY public.musicas
    ADD CONSTRAINT "ID" PRIMARY KEY (id) INCLUDE (id);
 6   ALTER TABLE ONLY public.musicas DROP CONSTRAINT "ID";
       public            postgres    false    201    201            J           2606    16844    administrador admin_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.administrador DROP CONSTRAINT admin_pkey;
       public            postgres    false    208            L           2606    16846    administrador email 
   CONSTRAINT     _   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT email UNIQUE (email) INCLUDE (email);
 =   ALTER TABLE ONLY public.administrador DROP CONSTRAINT email;
       public            postgres    false    208    208            F           2606    16798    genero genero_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            postgres    false    204            B           2606    16857    questionario id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.questionario
    ADD CONSTRAINT id PRIMARY KEY (id) INCLUDE (id);
 9   ALTER TABLE ONLY public.questionario DROP CONSTRAINT id;
       public            postgres    false    200    200            H           2606    16806    tempos tempoverbal_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.tempos
    ADD CONSTRAINT tempoverbal_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.tempos DROP CONSTRAINT tempoverbal_pkey;
       public            postgres    false    206            �   I   x�3�LL���S�-�X␞�������KK-���͓�R̍�LL���,S�-�L0�p��qqq Ř)u      �   *   x�36��O�V�	��9�Ԝp+P�2���/��"F��� v^�      �     x�͑=k�0�g�Wܖ-ȒbIS���fJJ�.'锤������P��$��x��q�c�o:�v����2���~�a²�`.i��#)n���rr�;��x#�\�2��(����q��dV�V��p�'��z��c��lv�B9��9��}����?������8Y��^������ު�*�y��0���LFFr{HPf`�`��w�Ԅ���~�k:��6`u��ҿ� G��,���6)5)g\0E�����j#�H�d�W��<˲/�~�u      �   h  x��Yێ�6}��b��b�7m�}Yl6)b A��A�m�-���Ԫ�o��>�C��:CJ��e/��-�HlY$爜�33ܧ�#��!���e��"�DϏ�'��՟�t�!+}�:�Ϲ�@����Ɂ��?֢���Ã��9}��� W��izp�3���&O�SkS%$� !%\z)��p�L?8O���(�#��6��yB�Lm�U:�c����G�Q���PJ2Z�ʂ�����7���&�`L�U�� �2=U1��1��V#�P$���0fT�0�{Ν0�ZB��p��X�,�������4y�q�JaG@ߒv���(� ��>�'B-��;�����'��~��!+����:�H7L& �5��R�тҠB�A��=�蚙DI�L�1�T�4�69<A\B���p��j����b�6A�t�������M�#piƟz��}dE���:��AA{�|pB��q�zQ�lc���rD��C�\C/gD����:֯�^V��93d�'�
�3s-cf-w�(j�|��h�������x��Ы�ElA�ҝp#	7����j�M���o-��=;�ʵJC¤!��wpO&VDIK�8�=`E��S���*��F�l&]&nL�y�����=�R�[1�!�����`���P�t���"P������èr��T('(��8	�AF��^�(c?❒3a�1�%Mv�����n�A�<�)I69����WZG�YQ�j��$���m�+1Eϯ��G�ɷm�1����x�`����SW��l���{_��ZԸ�v��Sp�������0�^I"�r��]ĩ%��S�O�J��3z�⬇bh�>�;g��~tB�jE;�{����Y夕��WwS�4+���� F�!]�HR�;xF��n��]�v��C���PV��7��z�u�NH��ߕ��+� Rk���0��]�ZR������M���4��c�Le�N[Ja2.�Oq"L����8�Dں�����~��n>ٵ�A��P��	��]�j8rp�/"������O����M�c����E�6�y��=@j����J��s�[VЕj!�=����0:�b�QD��@�MlY�B����������9IcV��P'o���l�HF㦗���qUϧY��w���k��� )VzP9�֖I��q�`��@��1�+s�U<~�J�w���hF�5�3����H5�|��b{Բ}��n�������	���lp��M:v��g�g�	�� rK���H�~FÑ0R\aO~�p�pHr䃲)\�ic���%#p�&1�4aMҖ:����4��h�wO�Eb���lN_�^d�W_�U�x[X��p�#�%�%Ճ:��H�n/�F6�����Fp����qҦ9�/FR��;��!Q�Gt�Dێ�aۆ�y$��Ej6�ǻ����QvɖB� �����ۄ���AlPd� �fn{��hk�<nk3�%���E�2@�e���>�2d]��} �Q��M�90]�P쓼�r��v�	�L�x/o�B;�
�H����k�IYV��B�On���8�Q0����7\h�L��l��8L;�	m/��X����x=�X$����`0�ɄvY      �   9   x�34���-�IUH,.Q p��u������Ђ�< �(-5�m\1z\\\ ��1     