PGDMP     6                    z            MOVIE_THEATER    14.1    14.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16998    MOVIE_THEATER    DATABASE     s   CREATE DATABASE "MOVIE_THEATER" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "MOVIE_THEATER";
                natti    false            �            1259    17097    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(50),
    phone character varying(20),
    address character varying(200)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    17096    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    221            �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    220            �            1259    17104    employee    TABLE       CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    ssn character varying(11),
    first_name character varying(50),
    last_name character varying(50),
    email character varying(50),
    phone character varying(20),
    address character varying(200)
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    17103    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    223            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    222            �            1259    17162 
   food_order    TABLE     �   CREATE TABLE public.food_order (
    food_order_id integer NOT NULL,
    food_id integer NOT NULL,
    quantity integer NOT NULL,
    total numeric(7,2)
);
    DROP TABLE public.food_order;
       public         heap    postgres    false            �            1259    17161    food_order_food_id_seq    SEQUENCE     �   CREATE SEQUENCE public.food_order_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.food_order_food_id_seq;
       public          postgres    false    235            �           0    0    food_order_food_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.food_order_food_id_seq OWNED BY public.food_order.food_id;
          public          postgres    false    234            �            1259    17160    food_order_food_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.food_order_food_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.food_order_food_order_id_seq;
       public          postgres    false    235            �           0    0    food_order_food_order_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.food_order_food_order_id_seq OWNED BY public.food_order.food_order_id;
          public          postgres    false    233            �            1259    17090 
   food_stack    TABLE     �   CREATE TABLE public.food_stack (
    food_id integer NOT NULL,
    food_name character varying(30),
    food_size character varying(10),
    food_price numeric(6,2)
);
    DROP TABLE public.food_stack;
       public         heap    postgres    false            �            1259    17089    food_stack_food_id_seq    SEQUENCE     �   CREATE SEQUENCE public.food_stack_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.food_stack_food_id_seq;
       public          postgres    false    219            �           0    0    food_stack_food_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.food_stack_food_id_seq OWNED BY public.food_stack.food_id;
          public          postgres    false    218            �            1259    17052    genre    TABLE     c   CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character varying(15)
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    17051    genre_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genre_genre_id_seq;
       public          postgres    false    212            �           0    0    genre_genre_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;
          public          postgres    false    211            �            1259    17148    merch_order    TABLE     �   CREATE TABLE public.merch_order (
    merch_order_id integer NOT NULL,
    merch_id integer NOT NULL,
    quantity integer NOT NULL,
    total numeric(7,2)
);
    DROP TABLE public.merch_order;
       public         heap    postgres    false            �            1259    17147    merch_order_merch_id_seq    SEQUENCE     �   CREATE SEQUENCE public.merch_order_merch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.merch_order_merch_id_seq;
       public          postgres    false    232            �           0    0    merch_order_merch_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.merch_order_merch_id_seq OWNED BY public.merch_order.merch_id;
          public          postgres    false    231            �            1259    17146    merch_order_merch_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.merch_order_merch_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.merch_order_merch_order_id_seq;
       public          postgres    false    232            �           0    0    merch_order_merch_order_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.merch_order_merch_order_id_seq OWNED BY public.merch_order.merch_order_id;
          public          postgres    false    230            �            1259    17083    merch_stack    TABLE       CREATE TABLE public.merch_stack (
    merch_id integer NOT NULL,
    merch_name character varying(30),
    merch_size character varying(10),
    merch_price numeric(6,2),
    merch_color character varying(20),
    merch_description character varying(200)
);
    DROP TABLE public.merch_stack;
       public         heap    postgres    false            �            1259    17082    merch_stack_merch_id_seq    SEQUENCE     �   CREATE SEQUENCE public.merch_stack_merch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.merch_stack_merch_id_seq;
       public          postgres    false    217            �           0    0    merch_stack_merch_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.merch_stack_merch_id_seq OWNED BY public.merch_stack.merch_id;
          public          postgres    false    216            �            1259    17060    movie_genres    TABLE     c   CREATE TABLE public.movie_genres (
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);
     DROP TABLE public.movie_genres;
       public         heap    postgres    false            �            1259    17059    movie_genres_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movie_genres_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.movie_genres_genre_id_seq;
       public          postgres    false    215            �           0    0    movie_genres_genre_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.movie_genres_genre_id_seq OWNED BY public.movie_genres.genre_id;
          public          postgres    false    214            �            1259    17058    movie_genres_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movie_genres_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.movie_genres_movie_id_seq;
       public          postgres    false    215            �           0    0    movie_genres_movie_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.movie_genres_movie_id_seq OWNED BY public.movie_genres.movie_id;
          public          postgres    false    213            �            1259    17000    movies    TABLE     �   CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    movie_name character varying(70),
    movie_country character varying(10),
    movie_year integer
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    16999    movies_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movies_movie_id_seq;
       public          postgres    false    210            �           0    0    movies_movie_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;
          public          postgres    false    209            �            1259    17306    payment_details    TABLE     �  CREATE TABLE public.payment_details (
    payment_id integer NOT NULL,
    ticket_order_id integer NOT NULL,
    food_order_id integer NOT NULL,
    merch_order_id integer NOT NULL,
    payment_options_id integer NOT NULL,
    payment_type_id integer NOT NULL,
    employee_id integer NOT NULL,
    customer_id integer NOT NULL,
    datetime date,
    datetime_time character varying(50),
    total_price numeric(10,2)
);
 #   DROP TABLE public.payment_details;
       public         heap    postgres    false            �            1259    17305    payment_details_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.payment_details_customer_id_seq;
       public          postgres    false    248            �           0    0    payment_details_customer_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.payment_details_customer_id_seq OWNED BY public.payment_details.customer_id;
          public          postgres    false    247            �            1259    17304    payment_details_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.payment_details_employee_id_seq;
       public          postgres    false    248            �           0    0    payment_details_employee_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.payment_details_employee_id_seq OWNED BY public.payment_details.employee_id;
          public          postgres    false    246            �            1259    17300 !   payment_details_food_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_food_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.payment_details_food_order_id_seq;
       public          postgres    false    248            �           0    0 !   payment_details_food_order_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.payment_details_food_order_id_seq OWNED BY public.payment_details.food_order_id;
          public          postgres    false    242            �            1259    17301 "   payment_details_merch_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_merch_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.payment_details_merch_order_id_seq;
       public          postgres    false    248            �           0    0 "   payment_details_merch_order_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.payment_details_merch_order_id_seq OWNED BY public.payment_details.merch_order_id;
          public          postgres    false    243            �            1259    17298    payment_details_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.payment_details_payment_id_seq;
       public          postgres    false    248            �           0    0    payment_details_payment_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.payment_details_payment_id_seq OWNED BY public.payment_details.payment_id;
          public          postgres    false    240            �            1259    17302 &   payment_details_payment_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_payment_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.payment_details_payment_options_id_seq;
       public          postgres    false    248            �           0    0 &   payment_details_payment_options_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.payment_details_payment_options_id_seq OWNED BY public.payment_details.payment_options_id;
          public          postgres    false    244            �            1259    17303 #   payment_details_payment_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_payment_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.payment_details_payment_type_id_seq;
       public          postgres    false    248            �           0    0 #   payment_details_payment_type_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.payment_details_payment_type_id_seq OWNED BY public.payment_details.payment_type_id;
          public          postgres    false    245            �            1259    17299 #   payment_details_ticket_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_details_ticket_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.payment_details_ticket_order_id_seq;
       public          postgres    false    248            �           0    0 #   payment_details_ticket_order_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.payment_details_ticket_order_id_seq OWNED BY public.payment_details.ticket_order_id;
          public          postgres    false    241            �            1259    17189    payment_options    TABLE     x   CREATE TABLE public.payment_options (
    payment_options_id integer NOT NULL,
    option_name character varying(50)
);
 #   DROP TABLE public.payment_options;
       public         heap    postgres    false            �            1259    17188 &   payment_options_payment_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_options_payment_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.payment_options_payment_options_id_seq;
       public          postgres    false    239            �           0    0 &   payment_options_payment_options_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.payment_options_payment_options_id_seq OWNED BY public.payment_options.payment_options_id;
          public          postgres    false    238            �            1259    17182    payment_types    TABLE     t   CREATE TABLE public.payment_types (
    payment_type_id integer NOT NULL,
    payment_name character varying(50)
);
 !   DROP TABLE public.payment_types;
       public         heap    postgres    false            �            1259    17181 !   payment_types_payment_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_types_payment_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.payment_types_payment_type_id_seq;
       public          postgres    false    237            �           0    0 !   payment_types_payment_type_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.payment_types_payment_type_id_seq OWNED BY public.payment_types.payment_type_id;
          public          postgres    false    236            �            1259    17128    ticket_order    TABLE     �   CREATE TABLE public.ticket_order (
    ticket_order_id integer NOT NULL,
    movie_price_id integer NOT NULL,
    movie_id integer NOT NULL,
    quantity integer NOT NULL,
    total numeric(7,2)
);
     DROP TABLE public.ticket_order;
       public         heap    postgres    false            �            1259    17127    ticket_order_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_order_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ticket_order_movie_id_seq;
       public          postgres    false    229            �           0    0    ticket_order_movie_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ticket_order_movie_id_seq OWNED BY public.ticket_order.movie_id;
          public          postgres    false    228            �            1259    17126    ticket_order_movie_price_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_order_movie_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ticket_order_movie_price_id_seq;
       public          postgres    false    229            �           0    0    ticket_order_movie_price_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ticket_order_movie_price_id_seq OWNED BY public.ticket_order.movie_price_id;
          public          postgres    false    227            �            1259    17125     ticket_order_ticket_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_order_ticket_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ticket_order_ticket_order_id_seq;
       public          postgres    false    229            �           0    0     ticket_order_ticket_order_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ticket_order_ticket_order_id_seq OWNED BY public.ticket_order.ticket_order_id;
          public          postgres    false    226            �            1259    17118    tickets_price    TABLE     �   CREATE TABLE public.tickets_price (
    movie_price_id integer NOT NULL,
    show_time character varying(5),
    age character varying(10),
    price numeric(5,2)
);
 !   DROP TABLE public.tickets_price;
       public         heap    postgres    false            �            1259    17117     tickets_price_movie_price_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_price_movie_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tickets_price_movie_price_id_seq;
       public          postgres    false    225            �           0    0     tickets_price_movie_price_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tickets_price_movie_price_id_seq OWNED BY public.tickets_price.movie_price_id;
          public          postgres    false    224            �           2604    17100    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17107    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17165    food_order food_order_id    DEFAULT     �   ALTER TABLE ONLY public.food_order ALTER COLUMN food_order_id SET DEFAULT nextval('public.food_order_food_order_id_seq'::regclass);
 G   ALTER TABLE public.food_order ALTER COLUMN food_order_id DROP DEFAULT;
       public          postgres    false    235    233    235            �           2604    17166    food_order food_id    DEFAULT     x   ALTER TABLE ONLY public.food_order ALTER COLUMN food_id SET DEFAULT nextval('public.food_order_food_id_seq'::regclass);
 A   ALTER TABLE public.food_order ALTER COLUMN food_id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17093    food_stack food_id    DEFAULT     x   ALTER TABLE ONLY public.food_stack ALTER COLUMN food_id SET DEFAULT nextval('public.food_stack_food_id_seq'::regclass);
 A   ALTER TABLE public.food_stack ALTER COLUMN food_id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17055    genre genre_id    DEFAULT     p   ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);
 =   ALTER TABLE public.genre ALTER COLUMN genre_id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    17151    merch_order merch_order_id    DEFAULT     �   ALTER TABLE ONLY public.merch_order ALTER COLUMN merch_order_id SET DEFAULT nextval('public.merch_order_merch_order_id_seq'::regclass);
 I   ALTER TABLE public.merch_order ALTER COLUMN merch_order_id DROP DEFAULT;
       public          postgres    false    232    230    232            �           2604    17152    merch_order merch_id    DEFAULT     |   ALTER TABLE ONLY public.merch_order ALTER COLUMN merch_id SET DEFAULT nextval('public.merch_order_merch_id_seq'::regclass);
 C   ALTER TABLE public.merch_order ALTER COLUMN merch_id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    17086    merch_stack merch_id    DEFAULT     |   ALTER TABLE ONLY public.merch_stack ALTER COLUMN merch_id SET DEFAULT nextval('public.merch_stack_merch_id_seq'::regclass);
 C   ALTER TABLE public.merch_stack ALTER COLUMN merch_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17063    movie_genres movie_id    DEFAULT     ~   ALTER TABLE ONLY public.movie_genres ALTER COLUMN movie_id SET DEFAULT nextval('public.movie_genres_movie_id_seq'::regclass);
 D   ALTER TABLE public.movie_genres ALTER COLUMN movie_id DROP DEFAULT;
       public          postgres    false    213    215    215            �           2604    17064    movie_genres genre_id    DEFAULT     ~   ALTER TABLE ONLY public.movie_genres ALTER COLUMN genre_id SET DEFAULT nextval('public.movie_genres_genre_id_seq'::regclass);
 D   ALTER TABLE public.movie_genres ALTER COLUMN genre_id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    17003    movies movie_id    DEFAULT     r   ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);
 >   ALTER TABLE public.movies ALTER COLUMN movie_id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17309    payment_details payment_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_details_payment_id_seq'::regclass);
 I   ALTER TABLE public.payment_details ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    248    240    248            �           2604    17310    payment_details ticket_order_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN ticket_order_id SET DEFAULT nextval('public.payment_details_ticket_order_id_seq'::regclass);
 N   ALTER TABLE public.payment_details ALTER COLUMN ticket_order_id DROP DEFAULT;
       public          postgres    false    248    241    248            �           2604    17311    payment_details food_order_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN food_order_id SET DEFAULT nextval('public.payment_details_food_order_id_seq'::regclass);
 L   ALTER TABLE public.payment_details ALTER COLUMN food_order_id DROP DEFAULT;
       public          postgres    false    242    248    248            �           2604    17312    payment_details merch_order_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN merch_order_id SET DEFAULT nextval('public.payment_details_merch_order_id_seq'::regclass);
 M   ALTER TABLE public.payment_details ALTER COLUMN merch_order_id DROP DEFAULT;
       public          postgres    false    248    243    248            �           2604    17313 "   payment_details payment_options_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN payment_options_id SET DEFAULT nextval('public.payment_details_payment_options_id_seq'::regclass);
 Q   ALTER TABLE public.payment_details ALTER COLUMN payment_options_id DROP DEFAULT;
       public          postgres    false    244    248    248            �           2604    17314    payment_details payment_type_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN payment_type_id SET DEFAULT nextval('public.payment_details_payment_type_id_seq'::regclass);
 N   ALTER TABLE public.payment_details ALTER COLUMN payment_type_id DROP DEFAULT;
       public          postgres    false    245    248    248            �           2604    17315    payment_details employee_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN employee_id SET DEFAULT nextval('public.payment_details_employee_id_seq'::regclass);
 J   ALTER TABLE public.payment_details ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    246    248    248            �           2604    17316    payment_details customer_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN customer_id SET DEFAULT nextval('public.payment_details_customer_id_seq'::regclass);
 J   ALTER TABLE public.payment_details ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    247    248    248            �           2604    17192 "   payment_options payment_options_id    DEFAULT     �   ALTER TABLE ONLY public.payment_options ALTER COLUMN payment_options_id SET DEFAULT nextval('public.payment_options_payment_options_id_seq'::regclass);
 Q   ALTER TABLE public.payment_options ALTER COLUMN payment_options_id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    17185    payment_types payment_type_id    DEFAULT     �   ALTER TABLE ONLY public.payment_types ALTER COLUMN payment_type_id SET DEFAULT nextval('public.payment_types_payment_type_id_seq'::regclass);
 L   ALTER TABLE public.payment_types ALTER COLUMN payment_type_id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    17131    ticket_order ticket_order_id    DEFAULT     �   ALTER TABLE ONLY public.ticket_order ALTER COLUMN ticket_order_id SET DEFAULT nextval('public.ticket_order_ticket_order_id_seq'::regclass);
 K   ALTER TABLE public.ticket_order ALTER COLUMN ticket_order_id DROP DEFAULT;
       public          postgres    false    229    226    229            �           2604    17132    ticket_order movie_price_id    DEFAULT     �   ALTER TABLE ONLY public.ticket_order ALTER COLUMN movie_price_id SET DEFAULT nextval('public.ticket_order_movie_price_id_seq'::regclass);
 J   ALTER TABLE public.ticket_order ALTER COLUMN movie_price_id DROP DEFAULT;
       public          postgres    false    229    227    229            �           2604    17133    ticket_order movie_id    DEFAULT     ~   ALTER TABLE ONLY public.ticket_order ALTER COLUMN movie_id SET DEFAULT nextval('public.ticket_order_movie_id_seq'::regclass);
 D   ALTER TABLE public.ticket_order ALTER COLUMN movie_id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    17121    tickets_price movie_price_id    DEFAULT     �   ALTER TABLE ONLY public.tickets_price ALTER COLUMN movie_price_id SET DEFAULT nextval('public.tickets_price_movie_price_id_seq'::regclass);
 K   ALTER TABLE public.tickets_price ALTER COLUMN movie_price_id DROP DEFAULT;
       public          postgres    false    224    225    225            �          0    17097    customer 
   TABLE DATA           ]   COPY public.customer (customer_id, first_name, last_name, email, phone, address) FROM stdin;
    public          postgres    false    221   6�       �          0    17104    employee 
   TABLE DATA           b   COPY public.employee (employee_id, ssn, first_name, last_name, email, phone, address) FROM stdin;
    public          postgres    false    223   ��       �          0    17162 
   food_order 
   TABLE DATA           M   COPY public.food_order (food_order_id, food_id, quantity, total) FROM stdin;
    public          postgres    false    235   ��                 0    17090 
   food_stack 
   TABLE DATA           O   COPY public.food_stack (food_id, food_name, food_size, food_price) FROM stdin;
    public          postgres    false    219   =�       x          0    17052    genre 
   TABLE DATA           5   COPY public.genre (genre_id, genre_name) FROM stdin;
    public          postgres    false    212   ��       �          0    17148    merch_order 
   TABLE DATA           P   COPY public.merch_order (merch_order_id, merch_id, quantity, total) FROM stdin;
    public          postgres    false    232   ��       }          0    17083    merch_stack 
   TABLE DATA           t   COPY public.merch_stack (merch_id, merch_name, merch_size, merch_price, merch_color, merch_description) FROM stdin;
    public          postgres    false    217   ��       {          0    17060    movie_genres 
   TABLE DATA           :   COPY public.movie_genres (movie_id, genre_id) FROM stdin;
    public          postgres    false    215   ��       v          0    17000    movies 
   TABLE DATA           Q   COPY public.movies (movie_id, movie_name, movie_country, movie_year) FROM stdin;
    public          postgres    false    210   "�       �          0    17306    payment_details 
   TABLE DATA           �   COPY public.payment_details (payment_id, ticket_order_id, food_order_id, merch_order_id, payment_options_id, payment_type_id, employee_id, customer_id, datetime, datetime_time, total_price) FROM stdin;
    public          postgres    false    248   ��       �          0    17189    payment_options 
   TABLE DATA           J   COPY public.payment_options (payment_options_id, option_name) FROM stdin;
    public          postgres    false    239   ��       �          0    17182    payment_types 
   TABLE DATA           F   COPY public.payment_types (payment_type_id, payment_name) FROM stdin;
    public          postgres    false    237   K�       �          0    17128    ticket_order 
   TABLE DATA           b   COPY public.ticket_order (ticket_order_id, movie_price_id, movie_id, quantity, total) FROM stdin;
    public          postgres    false    229   ��       �          0    17118    tickets_price 
   TABLE DATA           N   COPY public.tickets_price (movie_price_id, show_time, age, price) FROM stdin;
    public          postgres    false    225   D�       �           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    220            �           0    0    employee_employee_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);
          public          postgres    false    222            �           0    0    food_order_food_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.food_order_food_id_seq', 1, false);
          public          postgres    false    234            �           0    0    food_order_food_order_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.food_order_food_order_id_seq', 1, false);
          public          postgres    false    233            �           0    0    food_stack_food_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.food_stack_food_id_seq', 1, false);
          public          postgres    false    218            �           0    0    genre_genre_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);
          public          postgres    false    211            �           0    0    merch_order_merch_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.merch_order_merch_id_seq', 1, false);
          public          postgres    false    231            �           0    0    merch_order_merch_order_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.merch_order_merch_order_id_seq', 1, false);
          public          postgres    false    230            �           0    0    merch_stack_merch_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.merch_stack_merch_id_seq', 1, false);
          public          postgres    false    216            �           0    0    movie_genres_genre_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.movie_genres_genre_id_seq', 1, false);
          public          postgres    false    214            �           0    0    movie_genres_movie_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.movie_genres_movie_id_seq', 1, false);
          public          postgres    false    213            �           0    0    movies_movie_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.movies_movie_id_seq', 1, false);
          public          postgres    false    209            �           0    0    payment_details_customer_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.payment_details_customer_id_seq', 1, false);
          public          postgres    false    247            �           0    0    payment_details_employee_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.payment_details_employee_id_seq', 1, false);
          public          postgres    false    246            �           0    0 !   payment_details_food_order_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.payment_details_food_order_id_seq', 1, false);
          public          postgres    false    242            �           0    0 "   payment_details_merch_order_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.payment_details_merch_order_id_seq', 1, false);
          public          postgres    false    243            �           0    0    payment_details_payment_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.payment_details_payment_id_seq', 1, false);
          public          postgres    false    240            �           0    0 &   payment_details_payment_options_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.payment_details_payment_options_id_seq', 1, false);
          public          postgres    false    244            �           0    0 #   payment_details_payment_type_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.payment_details_payment_type_id_seq', 1, false);
          public          postgres    false    245            �           0    0 #   payment_details_ticket_order_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.payment_details_ticket_order_id_seq', 1, false);
          public          postgres    false    241            �           0    0 &   payment_options_payment_options_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.payment_options_payment_options_id_seq', 1, false);
          public          postgres    false    238            �           0    0 !   payment_types_payment_type_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.payment_types_payment_type_id_seq', 1, false);
          public          postgres    false    236            �           0    0    ticket_order_movie_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ticket_order_movie_id_seq', 1, false);
          public          postgres    false    228            �           0    0    ticket_order_movie_price_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ticket_order_movie_price_id_seq', 1, false);
          public          postgres    false    227            �           0    0     ticket_order_ticket_order_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ticket_order_ticket_order_id_seq', 1, false);
          public          postgres    false    226            �           0    0     tickets_price_movie_price_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tickets_price_movie_price_id_seq', 1, false);
          public          postgres    false    224            �           2606    17102    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    221            �           2606    17109    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    223            �           2606    17168    food_order food_order_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.food_order
    ADD CONSTRAINT food_order_pkey PRIMARY KEY (food_order_id);
 D   ALTER TABLE ONLY public.food_order DROP CONSTRAINT food_order_pkey;
       public            postgres    false    235            �           2606    17095    food_stack food_stack_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.food_stack
    ADD CONSTRAINT food_stack_pkey PRIMARY KEY (food_id);
 D   ALTER TABLE ONLY public.food_stack DROP CONSTRAINT food_stack_pkey;
       public            postgres    false    219            �           2606    17057    genre genre_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    212            �           2606    17154    merch_order merch_order_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.merch_order
    ADD CONSTRAINT merch_order_pkey PRIMARY KEY (merch_order_id);
 F   ALTER TABLE ONLY public.merch_order DROP CONSTRAINT merch_order_pkey;
       public            postgres    false    232            �           2606    17088    merch_stack merch_stack_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.merch_stack
    ADD CONSTRAINT merch_stack_pkey PRIMARY KEY (merch_id);
 F   ALTER TABLE ONLY public.merch_stack DROP CONSTRAINT merch_stack_pkey;
       public            postgres    false    217            �           2606    17005    movies movies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    210            �           2606    17318 $   payment_details payment_details_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT payment_details_pkey PRIMARY KEY (payment_id);
 N   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT payment_details_pkey;
       public            postgres    false    248            �           2606    17194 $   payment_options payment_options_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.payment_options
    ADD CONSTRAINT payment_options_pkey PRIMARY KEY (payment_options_id);
 N   ALTER TABLE ONLY public.payment_options DROP CONSTRAINT payment_options_pkey;
       public            postgres    false    239            �           2606    17187     payment_types payment_types_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (payment_type_id);
 J   ALTER TABLE ONLY public.payment_types DROP CONSTRAINT payment_types_pkey;
       public            postgres    false    237            �           2606    17135    ticket_order ticket_order_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.ticket_order
    ADD CONSTRAINT ticket_order_pkey PRIMARY KEY (ticket_order_id);
 H   ALTER TABLE ONLY public.ticket_order DROP CONSTRAINT ticket_order_pkey;
       public            postgres    false    229            �           2606    17123     tickets_price tickets_price_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tickets_price
    ADD CONSTRAINT tickets_price_pkey PRIMARY KEY (movie_price_id);
 J   ALTER TABLE ONLY public.tickets_price DROP CONSTRAINT tickets_price_pkey;
       public            postgres    false    225            �           2606    17349     payment_details fk_customersdata    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_customersdata FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_customersdata;
       public          postgres    false    3276    248    221            �           2606    17344     payment_details fk_employeesdata    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_employeesdata FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 J   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_employeesdata;
       public          postgres    false    223    3278    248            �           2606    17334 #   payment_details fk_payments_options    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_payments_options FOREIGN KEY (payment_options_id) REFERENCES public.payment_options(payment_options_id);
 M   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_payments_options;
       public          postgres    false    248    3290    239            �           2606    17339 !   payment_details fk_payments_types    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_payments_types FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(payment_type_id);
 K   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_payments_types;
       public          postgres    false    237    3288    248            �           2606    17169    food_order fk_price_forfood    FK CONSTRAINT     �   ALTER TABLE ONLY public.food_order
    ADD CONSTRAINT fk_price_forfood FOREIGN KEY (food_id) REFERENCES public.food_stack(food_id);
 E   ALTER TABLE ONLY public.food_order DROP CONSTRAINT fk_price_forfood;
       public          postgres    false    3274    235    219            �           2606    17155    merch_order fk_price_formerch    FK CONSTRAINT     �   ALTER TABLE ONLY public.merch_order
    ADD CONSTRAINT fk_price_formerch FOREIGN KEY (merch_id) REFERENCES public.merch_stack(merch_id);
 G   ALTER TABLE ONLY public.merch_order DROP CONSTRAINT fk_price_formerch;
       public          postgres    false    232    3272    217            �           2606    17136    ticket_order fk_price_formovie    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_order
    ADD CONSTRAINT fk_price_formovie FOREIGN KEY (movie_price_id) REFERENCES public.tickets_price(movie_price_id);
 H   ALTER TABLE ONLY public.ticket_order DROP CONSTRAINT fk_price_formovie;
       public          postgres    false    225    229    3280            �           2606    17070 !   movie_genres fk_t0movies_togenres    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT fk_t0movies_togenres FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id);
 K   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT fk_t0movies_togenres;
       public          postgres    false    3270    212    215            �           2606    17065 !   movie_genres fk_tomovies_togenres    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_genres
    ADD CONSTRAINT fk_tomovies_togenres FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);
 K   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT fk_tomovies_togenres;
       public          postgres    false    215    210    3268            �           2606    17141 !   ticket_order fk_tomovies_togenres    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_order
    ADD CONSTRAINT fk_tomovies_togenres FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);
 K   ALTER TABLE ONLY public.ticket_order DROP CONSTRAINT fk_tomovies_togenres;
       public          postgres    false    229    3268    210            �           2606    17324 )   payment_details fk_totalorderpriceforfood    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_totalorderpriceforfood FOREIGN KEY (food_order_id) REFERENCES public.food_order(food_order_id);
 S   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_totalorderpriceforfood;
       public          postgres    false    248    235    3286            �           2606    17329 *   payment_details fk_totalorderpriceformerch    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_totalorderpriceformerch FOREIGN KEY (merch_order_id) REFERENCES public.merch_order(merch_order_id);
 T   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_totalorderpriceformerch;
       public          postgres    false    3284    232    248            �           2606    17319 +   payment_details fk_totalorderpriceforticket    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT fk_totalorderpriceforticket FOREIGN KEY (ticket_order_id) REFERENCES public.ticket_order(ticket_order_id);
 U   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT fk_totalorderpriceforticket;
       public          postgres    false    229    3282    248            �   Y  x�]V˖���;��xΨG*��T�g�Lz"�jrK`7������NJ�tt{�#F_ug���j�8ꑆ�fD����PٞD��i��Y����HW�j��qz��ӕ��CW�t�Ի�`�գj���Ccϔ�Q��",�(�$My��z�G]��;A���z�C�h?:9����o&/������`]C��$x6���^�>�]Lߌ�OZ�G��-�f3D9U���M�D�(�b���墛v�:Hh/�R=�;e�h��j��ю�^��#�2bI���=��>�Q�FzR��}�������ʨ�r��L� ���6f��W�P�W��(�Z6���,.�(e�X����/���w麋�w9=��L���I$�u���M'i�z��q�<�(޴�ȩS*�<ը��+�S�(zSU�+�����=���<*�/�G���;�u�dK�S/i�%w��E��r���H��o�d��Nd��h��Ԏ1���P��	h�z�$=�z"�a,x�#��7��໑�r��mY��ӳ�kF��f��lI�Qi�@p�ȣ`� ��/N�P0+G?��H�-KU��d�؇�r!B��0��{��i���.�T�xV�1�M�<�d��Z����ݮˣ��J��gq�D,!�]8v��ԍ��xm�#���_��Peӟ�x���/��=��>^�D�&�gy<�35����Ǳ���#���,lZ=򄅙 ��c0RI�k�� ��^����A���M�豝�aH�[��F߭���j��>M��tj��-��7�f��i�A��Hs0�w�=;��fǊU���aЯV�P���ˣ����T}FDq�\�B�=:�fz��Z�e[�a��ǜQ�(���Kw	~|����]e<�~3����4�u��� y!�r�x���.���@�^]��W˔��΋4L�"dE�@8����n��s��M��o�}�6�Ѻ���f����MuD�s@��
�ܿ}��E-�ܫ�s����a.�0�"Z(��wr���%�'K�Z��lP�n�-�����y�:�H�O�3�<Kz�Њ?�{*U� B#�0���i��8C,xB��U:�͎g���Pi߁����+k�#�2�5ρ�"�Oh�|��s�8J����vh�@�-���x��m{��a�M��D�����Bq��E,x�"|��w��~T�V�V�h0���eo��4-
���a� e�1Q�T�e��7�	F{;��o����u*1��ZՖ�([e�yLB$z���k�r�<�Q�/���?.�q.��V,JBQa*��W��!u���������\k&�LOfR���ݽRF�3苢o�	^e�
�23%��bH�CƖ1�*-M����X��"�E����D���s�!�j��N�k�	�.�X����`�������.�8�o�i����7��]+0	t*(��$�C��E�vh�z{������T�V��(>�����R���*�	�\,*�C�Y�襩���D���� ��S7\
���8���EqÖ���UD�֕�r	����")	 D ͡|y��4��qD`���!u�&�A]f�@�m�"��4L�uf˓��D����n�7;�F�      �   2  x�M��n�0���S���ɭ��Ih�]BqK�4Ei;ƞ~�n��?�����@sK� �X�98عkDݽ���j����(&�RL�O_���X��v�,�\U��}�	6s��8B�,���0�6�~����*��.��t��+7C�/D��{��*Cg�� l]lp�K����8��[x��,�6/��ե[p�T�?1�XH��"�Y)
�.ݛ���t���9�*Q���8��7�ǔs|��2�IK�b�9ce����+��$��\S����ap:��v��f�C���+)�i9#���`�*��*P|J      �   L   x�M���0��0��.��:�J}q:�LD[C��D*Isg�*�����*�n� 0ćGz!ŋ�/��[����         q   x�=�A
�0F��?��Cl!�\�t3�����=}	-n�E��O.��Q��{z�q�!3\�O���m��^t��a�놷���������<9Y��Th+|1}C�"�      x   �   x�%��n1D�I�5�rB4��h�X�Kk]{��c�j��hF0�m9�`�~�T'��cp�o!��>�K�r���v�����7V7ث��[lc��:uW:
�Y5+��J�} s��e�v�,qj���^����9��<e��/�@����Zif��kG�4���ap�ϏįW��VC�      �   W   x�M��� ��0�.��&R�����,t�m��1+���CP��4��ؕ�x�}�j��򟢟#�lծ3	+�*,�_w��5��zc      }   �   x���K� ���`mD��S���@{#D(�@|�^����s��
J��n[�&t�z1=�q��G�6[[��lM��q]�`i���b����_;$�8�@RÔ��&��~p�$7��߀��x\���u�>׈��*m}      {   �   x�5��� �v17��@z���U2���,0��8Y�'g5)k)����.]g�k��]��c�̃>�;J�go:�X���>��NM�^m5�^v�er֞�'����Y�_����W2{�h����`a9����?[$�      v   �  x�]�As�0�ϫ_���2��`ܛ)��N�����^���2	�����.&Ӟ4�o�[�O��ԛ����'� �t�b���������	�m��G*��'c18�=��u7��d��L������L�Ձm<��j|��0�H�+���-t�&jd�%���e�W>E�l�V6���Q�p5�1���d]�7��Y\2�Js�<,طd���*�M�3�j؋�6���h����煫j
;�~V�XiK��%�8���U�)��|�����u6U:�Mg�P�B�t�G��hZ�;��JwY֩���¿�-��#�\@�װH�	�M͸�q�4S�5�Z:��u'�{�zx�7#�橐+����I�fc��P�9��G�����뱆�Ƕ�9ai��9ۖ��$&�ǭR�/m��+      �      x������ � �      �   S   x�3�tIM�,QpN,J�2�t.JM��9��3�L8
rR�srRK�L9�s�K��af��%�E
�%��y�
\1z\\\ �5V      �   J   x�3������KU�OK�L�L�Q(OM*�,I�2��$er2KRaR�\Ɯ�
�9ٺ�y
ɥ�%���E\1z\\\ p'      �   �   x�=�� D�k1����%�ב]�d<���� ����h�9&�.�یܞ�%;��[�iI��ldyÔ<��E*H�Ք���%F�*hS�<v~?.��̇����n�v���gM�5o�ba=�3��[|�H��ğ�Z��9)�      �   p   x�3�44P��L���I)J�+�4�30�2�
'���+k@�P��Լ���bNK��	���\�QT#��fq�	@1sNsT �Y@���0�[B�aF�c���� �2�     