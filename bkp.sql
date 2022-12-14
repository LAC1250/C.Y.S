PGDMP     7            	        z            trab1ref    13.4    13.4 (    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16681    trab1ref    DATABASE     h   CREATE DATABASE trab1ref WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE trab1ref;
                postgres    false            ?            1259    16839    administrador    TABLE     ?   CREATE TABLE public.administrador (
    id integer NOT NULL,
    nome character(100) NOT NULL,
    email character(100) NOT NULL,
    senha character(50) NOT NULL
);
 !   DROP TABLE public.administrador;
       public         heap    postgres    false            ?            1259    16837    admin_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    208            ?           0    0    admin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.admin_id_seq OWNED BY public.administrador.id;
          public          postgres    false    207            ?            1259    16793    genero    TABLE     [   CREATE TABLE public.genero (
    id integer NOT NULL,
    genero character(30) NOT NULL
);
    DROP TABLE public.genero;
       public         heap    postgres    false            ?            1259    16791    genero_ID_seq    SEQUENCE     ?   CREATE SEQUENCE public."genero_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."genero_ID_seq";
       public          postgres    false    204            ?           0    0    genero_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."genero_ID_seq" OWNED BY public.genero.id;
          public          postgres    false    203            ?            1259    16685    musicas    TABLE     ?   CREATE TABLE public.musicas (
    id integer NOT NULL,
    titulo character(100) NOT NULL,
    artistas character(200) NOT NULL,
    genero_id integer,
    id_tempo integer,
    audio character(50),
    imagem character(50)
);
    DROP TABLE public.musicas;
       public         heap    postgres    false            ?            1259    16699    musicas_ID_seq    SEQUENCE     ?   CREATE SEQUENCE public."musicas_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."musicas_ID_seq";
       public          postgres    false    201            ?           0    0    musicas_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."musicas_ID_seq" OWNED BY public.musicas.id;
          public          postgres    false    202            ?            1259    16682    questionario    TABLE     ?   CREATE TABLE public.questionario (
    id integer NOT NULL,
    pergunta character(300),
    opcaoa character(100),
    opcaob character(100),
    opcaoc character(100),
    resposta character(2),
    id_musica integer
);
     DROP TABLE public.questionario;
       public         heap    postgres    false            ?            1259    16847    questionarios_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.questionarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.questionarios_id_seq;
       public          postgres    false    200            ?           0    0    questionarios_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.questionarios_id_seq OWNED BY public.questionario.id;
          public          postgres    false    209            ?            1259    16801    tempos    TABLE     ^   CREATE TABLE public.tempos (
    id integer NOT NULL,
    descricao character(50) NOT NULL
);
    DROP TABLE public.tempos;
       public         heap    postgres    false            ?            1259    16799    tempoverbal_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tempoverbal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tempoverbal_id_seq;
       public          postgres    false    206            ?           0    0    tempoverbal_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.tempoverbal_id_seq OWNED BY public.tempos.id;
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
       public          postgres    false    206    205    206            ?          0    16839    administrador 
   TABLE DATA           ?   COPY public.administrador (id, nome, email, senha) FROM stdin;
    public          postgres    false    208   ?)       ?          0    16793    genero 
   TABLE DATA           ,   COPY public.genero (id, genero) FROM stdin;
    public          postgres    false    204   *       ?          0    16685    musicas 
   TABLE DATA           [   COPY public.musicas (id, titulo, artistas, genero_id, id_tempo, audio, imagem) FROM stdin;
    public          postgres    false    201   K*       ?          0    16682    questionario 
   TABLE DATA           a   COPY public.questionario (id, pergunta, opcaoa, opcaob, opcaoc, resposta, id_musica) FROM stdin;
    public          postgres    false    200   f+       ?          0    16801    tempos 
   TABLE DATA           /   COPY public.tempos (id, descricao) FROM stdin;
    public          postgres    false    206   ?1       ?           0    0    admin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.admin_id_seq', 2, true);
          public          postgres    false    207            ?           0    0    genero_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."genero_ID_seq"', 31, true);
          public          postgres    false    203            ?           0    0    musicas_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."musicas_ID_seq"', 95, true);
          public          postgres    false    202            ?           0    0    questionarios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.questionarios_id_seq', 33, true);
          public          postgres    false    209            ?           0    0    tempoverbal_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tempoverbal_id_seq', 18, true);
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
       public            postgres    false    206            ?   I   x?3?LL???S?-?X␞???????KK-???͓?R̍?LL???,S?-?L0?p??qqq Ř)u      ?   *   x?36??O?V?	??9?Ԝp+P?2???/??"F??? v^?      ?     x?͑=k?0?g?Wܖ-ȒbIS???fJJ?.'锤???????P??$??x??q?c?o:?v????2???~??a²?`.i??#)n???rr?;??x#?\?2??(????q??dV?V??p?'??z??c??lv?B9??9??}????????????8Y??^??????ު?*?y??0???LFFr{HPf`?`??w?Ԅ???~?k:??6`u??ҿ? G??,????6)5)g\0E?????j#?H?d?W??<˲/?~?u      ?   q  x??Yێ?6}??b??b?7m?}Yl6)b A???A?m?-???Ժ?o??>?C??:CJ????8??hP?e?rH?љ???ȡu?_?e??"?DϏ?'??՟?t?!+}?:????@????Ɂ???????Ã??9}??? W??izp?3???&????T	? @H?F	?^
??@(\*????,?
?
눀j?M??Bgp?1S?k??|]????Gş??\?9ZP?BX?R?"U1???}?D???K}!??*???u>5.p?p0??\႟?x?M(?֡[,ц*??P????ܔ?Wp?`-,H}?#pi??z?jD??b݇?n@h?G`P?cL@B??q?zQz?ĠG=N?n2??pP3?????D???l??N?0^"=E??!S??Pȵ(-Q	W??Z.~QT???S?s?????Y??gQ.???	C??"j! fK#J??r??㇚j????h?-?? ??PK???T܃ŕV?$<?.@Ī?}?Fs?N??P??!aҐ?7?$+????Aۭ???Aӈ{?K?P#O6?.7????Kt?NA?+&??k]?I?6O? 5???;0??^י???&j???!$d0
"?!?	rt?OB????2??)???x?d?L??uIM???G??^Q"H??2%?&?T?P?J??5+
?Z!,I?{!q?e&?????.?h0??I5?q 7b-1?"Xࡥ?ԕD})? i???Ʈ?+?MR???9t}??A*?<vg҇?킜?}q(DA??P???k?3?^q?C>???m??[_;?w???=C@邬r??m????)V?F?j????]$???"FK??^??d?P?C??t???*????uY? ????	)C?;?}f@*m{??F??ɝVK
??86?ێ????֓??}????x?a?Z???.SH?.|??a?
"m????}y?Z??M?V0?ZRR?'?xb?f??#?"???hȹ??q????1???_t?&;??H%b-????ތ??2??T???I?a??љ??<?xso ??Ė?,8?1l??xkA??Р??4fU?U?f(?Ψ??h\?R??C;??y?"+?^?n?w?Z@|/	???c???x???L?T?? ????*$?Q\?t????f???.G3??u????7<Gʱ????ۣF߷??+??/)!??? ?o?GO??c3XQz?y???/?
 ?$?????g4?	s!ť???-sqI??S6?K???kJu??D?[???&iK?O? ?&u??u{s?? F??v????E&@q???_Uo?b?v|ԇ	???A?yK?/?&F}F/u?Y???۽	pc????~X?H?N??J?@?k?m???m["??.???o?@?(?dG?F?SVOi?mB??w? 6(???{ӶYan????j2?!???M?2@??.9?} ?u?N0???F??h6???t7C?O?????Qt&?13Y,?	???M?*? 1?Zj?m?}$eYq??ڹ?V? ??ș	UVY?N4?%?pC???84;?m/?Y???;0HG?z?߰>,Hз??CgM???TGR?듬????K,S??YD} ZzQ?E?aI|??JI?r?C+?(???Y??G?-GN]?n@???CT?ǲ?m?- ?ͤs?	??q<?f?vy      ?   9   x?34???-?IUH,.Q p??u??????Ђ?< ?(-5?m\1z\\\ ??1     