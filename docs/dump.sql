--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: config_siteconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.config_siteconfiguration (
    id integer NOT NULL,
    vk_link character varying(512) NOT NULL,
    insta_link character varying(512) NOT NULL,
    robots_txt text NOT NULL,
    scripts text NOT NULL,
    ok_link character varying(512) NOT NULL,
    virtual_reception_link character varying(512) NOT NULL,
    fb_link character varying(512) NOT NULL,
    logo_text text NOT NULL
);


ALTER TABLE public.config_siteconfiguration OWNER TO postgres;

--
-- Name: config_siteconfiguration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.config_siteconfiguration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.config_siteconfiguration_id_seq OWNER TO postgres;

--
-- Name: config_siteconfiguration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.config_siteconfiguration_id_seq OWNED BY public.config_siteconfiguration.id;


--
-- Name: content_biography; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_biography (
    id integer NOT NULL,
    fio character varying(100) NOT NULL,
    "position" text NOT NULL,
    awards text NOT NULL
);


ALTER TABLE public.content_biography OWNER TO postgres;

--
-- Name: content_biography_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_biography_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_biography_id_seq OWNER TO postgres;

--
-- Name: content_biography_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_biography_id_seq OWNED BY public.content_biography.id;


--
-- Name: content_biographypoint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_biographypoint (
    id integer NOT NULL,
    period character varying(1024) NOT NULL,
    description text NOT NULL,
    sort integer NOT NULL,
    is_active boolean NOT NULL,
    biography_id integer NOT NULL,
    CONSTRAINT content_biographypoint_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_biographypoint OWNER TO postgres;

--
-- Name: content_biographypoint_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_biographypoint_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_biographypoint_id_seq OWNER TO postgres;

--
-- Name: content_biographypoint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_biographypoint_id_seq OWNED BY public.content_biographypoint.id;


--
-- Name: content_dualblock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_dualblock (
    id integer NOT NULL,
    sort integer NOT NULL,
    description text NOT NULL,
    is_active boolean NOT NULL,
    title character varying(1024) NOT NULL,
    initiative_id integer,
    CONSTRAINT content_dualblock_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_dualblock OWNER TO postgres;

--
-- Name: content_dualblock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_dualblock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_dualblock_id_seq OWNER TO postgres;

--
-- Name: content_dualblock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_dualblock_id_seq OWNED BY public.content_dualblock.id;


--
-- Name: content_initiative; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_initiative (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    slug character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seo_title character varying(250) NOT NULL,
    seo_keywords character varying(250) NOT NULL,
    seo_description character varying(250) NOT NULL,
    seo_author character varying(250) NOT NULL,
    seo_og_type character varying(250) NOT NULL,
    preview character varying(100),
    image character varying(100),
    subtitle text NOT NULL,
    content text NOT NULL,
    show_square_block boolean NOT NULL,
    order_square_block integer NOT NULL,
    show_dual_block boolean NOT NULL,
    order_dual_block integer NOT NULL,
    show_simple_block boolean NOT NULL,
    order_simple_block integer NOT NULL,
    content_2 text NOT NULL,
    date_at timestamp with time zone NOT NULL,
    is_actual boolean NOT NULL,
    page_type integer NOT NULL,
    parent_id integer,
    CONSTRAINT content_initiative_order_dual_block_check CHECK ((order_dual_block >= 0)),
    CONSTRAINT content_initiative_order_simple_block_check CHECK ((order_simple_block >= 0)),
    CONSTRAINT content_initiative_order_square_block_check CHECK ((order_square_block >= 0))
);


ALTER TABLE public.content_initiative OWNER TO postgres;

--
-- Name: content_initiative_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_initiative_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_initiative_id_seq OWNER TO postgres;

--
-- Name: content_initiative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_initiative_id_seq OWNED BY public.content_initiative.id;


--
-- Name: content_instruction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_instruction (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    slug character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seo_title character varying(250) NOT NULL,
    seo_keywords character varying(250) NOT NULL,
    seo_description character varying(250) NOT NULL,
    seo_author character varying(250) NOT NULL,
    seo_og_type character varying(250) NOT NULL,
    preview character varying(100),
    status character varying(100) NOT NULL,
    short_content text NOT NULL,
    content text NOT NULL,
    content_2 text NOT NULL,
    date_at timestamp with time zone NOT NULL,
    is_actual boolean NOT NULL,
    page_type integer NOT NULL,
    parent_id integer
);


ALTER TABLE public.content_instruction OWNER TO postgres;

--
-- Name: content_instruction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_instruction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_instruction_id_seq OWNER TO postgres;

--
-- Name: content_instruction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_instruction_id_seq OWNED BY public.content_instruction.id;


--
-- Name: content_mediaslide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_mediaslide (
    id integer NOT NULL,
    title character varying(1024) NOT NULL,
    description character varying(1024) NOT NULL,
    sort integer NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    use_image boolean NOT NULL,
    news_id integer,
    image character varying(100),
    youtube_video character varying(1024),
    yt_channel_title character varying(1024) NOT NULL,
    yt_description text NOT NULL,
    yt_duration interval,
    yt_id character varying(1024) NOT NULL,
    yt_preview_hd character varying(1024) NOT NULL,
    yt_preview_hq character varying(1024) NOT NULL,
    yt_preview_mq character varying(1024) NOT NULL,
    yt_preview_sd character varying(1024) NOT NULL,
    yt_published timestamp with time zone,
    yt_title character varying(1024) NOT NULL,
    instruction_id integer,
    CONSTRAINT content_mediaslide_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_mediaslide OWNER TO postgres;

--
-- Name: content_mediaslide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_mediaslide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_mediaslide_id_seq OWNER TO postgres;

--
-- Name: content_mediaslide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_mediaslide_id_seq OWNED BY public.content_mediaslide.id;


--
-- Name: content_news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_news (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    slug character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seo_title character varying(250) NOT NULL,
    seo_keywords character varying(250) NOT NULL,
    seo_description character varying(250) NOT NULL,
    seo_author character varying(250) NOT NULL,
    seo_og_type character varying(250) NOT NULL,
    short_content text NOT NULL,
    content text NOT NULL,
    content_2 text NOT NULL,
    date_at timestamp with time zone NOT NULL,
    is_actual boolean NOT NULL,
    preview character varying(100),
    is_important boolean NOT NULL,
    is_main boolean NOT NULL,
    page_type integer NOT NULL,
    parent_id integer
);


ALTER TABLE public.content_news OWNER TO postgres;

--
-- Name: content_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_news_id_seq OWNER TO postgres;

--
-- Name: content_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_news_id_seq OWNED BY public.content_news.id;


--
-- Name: content_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_number (
    id integer NOT NULL,
    number character varying(1024) NOT NULL,
    number_text character varying(1024) NOT NULL,
    short_description character varying(1024) NOT NULL,
    description text NOT NULL,
    sort integer NOT NULL,
    is_active boolean NOT NULL,
    CONSTRAINT content_number_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_number OWNER TO postgres;

--
-- Name: content_number_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_number_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_number_id_seq OWNER TO postgres;

--
-- Name: content_number_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_number_id_seq OWNED BY public.content_number.id;


--
-- Name: content_simpleblock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_simpleblock (
    id integer NOT NULL,
    sort integer NOT NULL,
    description text NOT NULL,
    is_active boolean NOT NULL,
    initiative_id integer,
    CONSTRAINT content_simpleblock_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_simpleblock OWNER TO postgres;

--
-- Name: content_simpleblock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_simpleblock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_simpleblock_id_seq OWNER TO postgres;

--
-- Name: content_simpleblock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_simpleblock_id_seq OWNED BY public.content_simpleblock.id;


--
-- Name: content_smimedia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_smimedia (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    slug character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seo_title character varying(250) NOT NULL,
    seo_keywords character varying(250) NOT NULL,
    seo_description character varying(250) NOT NULL,
    seo_author character varying(250) NOT NULL,
    seo_og_type character varying(250) NOT NULL,
    content text NOT NULL,
    youtube_video character varying(1024),
    yt_id character varying(1024) NOT NULL,
    yt_title character varying(1024) NOT NULL,
    yt_channel_title character varying(1024) NOT NULL,
    yt_description text NOT NULL,
    yt_duration interval,
    yt_published timestamp with time zone,
    yt_preview_sd character varying(1024) NOT NULL,
    yt_preview_mq character varying(1024) NOT NULL,
    yt_preview_hq character varying(1024) NOT NULL,
    yt_preview_hd character varying(1024) NOT NULL,
    preview character varying(100),
    use_image boolean NOT NULL,
    sort integer NOT NULL,
    date_at timestamp with time zone NOT NULL,
    page_type integer NOT NULL,
    parent_id integer,
    CONSTRAINT content_smimedia_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_smimedia OWNER TO postgres;

--
-- Name: content_smimedia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_smimedia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_smimedia_id_seq OWNER TO postgres;

--
-- Name: content_smimedia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_smimedia_id_seq OWNED BY public.content_smimedia.id;


--
-- Name: content_smislide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_smislide (
    id integer NOT NULL,
    title character varying(1024) NOT NULL,
    description character varying(1024) NOT NULL,
    sort integer NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    image character varying(100),
    smi_id integer,
    CONSTRAINT content_smislide_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_smislide OWNER TO postgres;

--
-- Name: content_smislide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_smislide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_smislide_id_seq OWNER TO postgres;

--
-- Name: content_smislide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_smislide_id_seq OWNED BY public.content_smislide.id;


--
-- Name: content_squareblock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_squareblock (
    id integer NOT NULL,
    sort integer NOT NULL,
    description text NOT NULL,
    is_active boolean NOT NULL,
    title character varying(1024) NOT NULL,
    initiative_id integer,
    CONSTRAINT content_squareblock_sort_check CHECK ((sort >= 0))
);


ALTER TABLE public.content_squareblock OWNER TO postgres;

--
-- Name: content_squareblock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_squareblock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_squareblock_id_seq OWNER TO postgres;

--
-- Name: content_squareblock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_squareblock_id_seq OWNED BY public.content_squareblock.id;


--
-- Name: content_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.content_view (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    view_id character varying(50) NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT content_view_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.content_view OWNER TO postgres;

--
-- Name: content_view_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.content_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_view_id_seq OWNER TO postgres;

--
-- Name: content_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.content_view_id_seq OWNED BY public.content_view.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO postgres;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO postgres;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


ALTER TABLE public.easy_thumbnails_thumbnaildimensions OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnaildimensions_id_seq OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;


--
-- Name: fcm_django_fcmdevice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fcm_django_fcmdevice (
    id integer NOT NULL,
    name character varying(255),
    active boolean NOT NULL,
    date_created timestamp with time zone,
    device_id character varying(150),
    registration_id text NOT NULL,
    type character varying(10) NOT NULL,
    user_id integer
);


ALTER TABLE public.fcm_django_fcmdevice OWNER TO postgres;

--
-- Name: fcm_django_fcmdevice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fcm_django_fcmdevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fcm_django_fcmdevice_id_seq OWNER TO postgres;

--
-- Name: fcm_django_fcmdevice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fcm_django_fcmdevice_id_seq OWNED BY public.fcm_django_fcmdevice.id;


--
-- Name: garpix_menu_menuitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_menu_menuitem (
    id integer NOT NULL,
    title_for_admin character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    title_ru character varying(100),
    menu_type character varying(100) NOT NULL,
    url character varying(1000),
    is_active boolean NOT NULL,
    target_blank boolean NOT NULL,
    css_class character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    sort integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    page_id integer,
    parent_id integer,
    CONSTRAINT garpix_menu_menuitem_level_check CHECK ((level >= 0)),
    CONSTRAINT garpix_menu_menuitem_lft_check CHECK ((lft >= 0)),
    CONSTRAINT garpix_menu_menuitem_rght_check CHECK ((rght >= 0)),
    CONSTRAINT garpix_menu_menuitem_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.garpix_menu_menuitem OWNER TO postgres;

--
-- Name: garpix_menu_menuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_menu_menuitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_menu_menuitem_id_seq OWNER TO postgres;

--
-- Name: garpix_menu_menuitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_menu_menuitem_id_seq OWNED BY public.garpix_menu_menuitem.id;


--
-- Name: garpix_notify_notify; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notify (
    id integer NOT NULL,
    subject character varying(255) NOT NULL,
    text text NOT NULL,
    html text NOT NULL,
    email character varying(255),
    phone character varying(20),
    type integer NOT NULL,
    state integer NOT NULL,
    event integer,
    is_read boolean NOT NULL,
    data_json text,
    created_at timestamp with time zone NOT NULL,
    sent_at timestamp with time zone,
    category_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.garpix_notify_notify OWNER TO postgres;

--
-- Name: garpix_notify_notify_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notify_files (
    id integer NOT NULL,
    notify_id integer NOT NULL,
    notifyfile_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notify_files OWNER TO postgres;

--
-- Name: garpix_notify_notify_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notify_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notify_files_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notify_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notify_files_id_seq OWNED BY public.garpix_notify_notify_files.id;


--
-- Name: garpix_notify_notify_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notify_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notify_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notify_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notify_id_seq OWNED BY public.garpix_notify_notify.id;


--
-- Name: garpix_notify_notifycategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifycategory (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    template text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.garpix_notify_notifycategory OWNER TO postgres;

--
-- Name: garpix_notify_notifycategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifycategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifycategory_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifycategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifycategory_id_seq OWNED BY public.garpix_notify_notifycategory.id;


--
-- Name: garpix_notify_notifyconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifyconfig (
    id integer NOT NULL,
    periodic integer NOT NULL,
    email_max_day_limit integer NOT NULL,
    email_max_hour_limit integer NOT NULL,
    sms_url character varying(255) NOT NULL,
    sms_api_id character varying(255) NOT NULL,
    sms_from character varying(255) NOT NULL,
    is_email_enabled boolean NOT NULL,
    is_sms_enabled boolean NOT NULL,
    is_push_enabled boolean NOT NULL
);


ALTER TABLE public.garpix_notify_notifyconfig OWNER TO postgres;

--
-- Name: garpix_notify_notifyconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifyconfig_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyconfig_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifyconfig_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifyconfig_id_seq OWNED BY public.garpix_notify_notifyconfig.id;


--
-- Name: garpix_notify_notifyfile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifyfile (
    id integer NOT NULL,
    file character varying(1000) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.garpix_notify_notifyfile OWNER TO postgres;

--
-- Name: garpix_notify_notifyfile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifyfile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyfile_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifyfile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifyfile_id_seq OWNED BY public.garpix_notify_notifyfile.id;


--
-- Name: garpix_notify_notifytemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifytemplate (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    text text NOT NULL,
    html text NOT NULL,
    email character varying(255),
    phone character varying(20),
    type integer NOT NULL,
    event integer,
    created_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    category_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.garpix_notify_notifytemplate OWNER TO postgres;

--
-- Name: garpix_notify_notifytemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifytemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifytemplate_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifytemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifytemplate_id_seq OWNED BY public.garpix_notify_notifytemplate.id;


--
-- Name: garpix_notify_notifytemplate_user_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifytemplate_user_lists (
    id integer NOT NULL,
    notifytemplate_id integer NOT NULL,
    notifyuserlist_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notifytemplate_user_lists OWNER TO postgres;

--
-- Name: garpix_notify_notifytemplate_user_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifytemplate_user_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifytemplate_user_lists_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifytemplate_user_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifytemplate_user_lists_id_seq OWNED BY public.garpix_notify_notifytemplate_user_lists.id;


--
-- Name: garpix_notify_notifyuserlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifyuserlist (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.garpix_notify_notifyuserlist OWNER TO postgres;

--
-- Name: garpix_notify_notifyuserlist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifyuserlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyuserlist_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifyuserlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifyuserlist_id_seq OWNED BY public.garpix_notify_notifyuserlist.id;


--
-- Name: garpix_notify_notifyuserlistparticipant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_notifyuserlistparticipant (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    email character varying(255),
    phone character varying(20),
    user_id integer,
    user_list_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_notifyuserlistparticipant OWNER TO postgres;

--
-- Name: garpix_notify_notifyuserlistparticipant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_notifyuserlistparticipant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_notifyuserlistparticipant_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_notifyuserlistparticipant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_notifyuserlistparticipant_id_seq OWNED BY public.garpix_notify_notifyuserlistparticipant.id;


--
-- Name: garpix_notify_smtpaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_notify_smtpaccount (
    id integer NOT NULL,
    host character varying(255) NOT NULL,
    port integer NOT NULL,
    is_use_tls boolean NOT NULL,
    is_use_ssl boolean NOT NULL,
    sender character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    timeout integer NOT NULL,
    email_hour_used_times integer NOT NULL,
    email_day_used_times integer NOT NULL,
    email_hour_used_date timestamp with time zone NOT NULL,
    email_day_used_date timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.garpix_notify_smtpaccount OWNER TO postgres;

--
-- Name: garpix_notify_smtpaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_notify_smtpaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_notify_smtpaccount_id_seq OWNER TO postgres;

--
-- Name: garpix_notify_smtpaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_notify_smtpaccount_id_seq OWNED BY public.garpix_notify_smtpaccount.id;


--
-- Name: garpix_page_component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_page_component (
    id integer NOT NULL,
    "position" character varying(100) NOT NULL,
    template character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    title_ru character varying(255),
    is_active boolean NOT NULL,
    content text NOT NULL,
    content_ru text,
    image character varying(100),
    sort integer NOT NULL,
    page_id integer
);


ALTER TABLE public.garpix_page_component OWNER TO postgres;

--
-- Name: garpix_page_component_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_page_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_page_component_id_seq OWNER TO postgres;

--
-- Name: garpix_page_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_page_component_id_seq OWNED BY public.garpix_page_component.id;


--
-- Name: garpix_page_componentchildren; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_page_componentchildren (
    id integer NOT NULL,
    title character varying(255),
    title_ru character varying(255),
    content text,
    content_ru text,
    image character varying(100),
    sort integer NOT NULL,
    component_id integer NOT NULL
);


ALTER TABLE public.garpix_page_componentchildren OWNER TO postgres;

--
-- Name: garpix_page_componentchildren_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_page_componentchildren_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_page_componentchildren_id_seq OWNER TO postgres;

--
-- Name: garpix_page_componentchildren_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_page_componentchildren_id_seq OWNED BY public.garpix_page_componentchildren.id;


--
-- Name: garpix_page_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garpix_page_page (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    title_ru character varying(255),
    is_active boolean NOT NULL,
    slug character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seo_title character varying(250) NOT NULL,
    seo_title_ru character varying(250),
    seo_keywords character varying(250) NOT NULL,
    seo_keywords_ru character varying(250),
    seo_description character varying(250) NOT NULL,
    seo_description_ru character varying(250),
    seo_author character varying(250) NOT NULL,
    seo_author_ru character varying(250),
    seo_og_type character varying(250) NOT NULL,
    content text NOT NULL,
    content_ru text,
    login_required boolean NOT NULL,
    page_type integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT garpix_page_page_level_check CHECK ((level >= 0)),
    CONSTRAINT garpix_page_page_lft_check CHECK ((lft >= 0)),
    CONSTRAINT garpix_page_page_rght_check CHECK ((rght >= 0)),
    CONSTRAINT garpix_page_page_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.garpix_page_page OWNER TO postgres;

--
-- Name: garpix_page_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.garpix_page_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.garpix_page_page_id_seq OWNER TO postgres;

--
-- Name: garpix_page_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.garpix_page_page_id_seq OWNED BY public.garpix_page_page.id;


--
-- Name: user_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.user_user OWNER TO postgres;

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO postgres;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_groups_id_seq OWNER TO postgres;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_user_permissions OWNER TO postgres;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: config_siteconfiguration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.config_siteconfiguration ALTER COLUMN id SET DEFAULT nextval('public.config_siteconfiguration_id_seq'::regclass);


--
-- Name: content_biography id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_biography ALTER COLUMN id SET DEFAULT nextval('public.content_biography_id_seq'::regclass);


--
-- Name: content_biographypoint id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_biographypoint ALTER COLUMN id SET DEFAULT nextval('public.content_biographypoint_id_seq'::regclass);


--
-- Name: content_dualblock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_dualblock ALTER COLUMN id SET DEFAULT nextval('public.content_dualblock_id_seq'::regclass);


--
-- Name: content_initiative id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_initiative ALTER COLUMN id SET DEFAULT nextval('public.content_initiative_id_seq'::regclass);


--
-- Name: content_instruction id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_instruction ALTER COLUMN id SET DEFAULT nextval('public.content_instruction_id_seq'::regclass);


--
-- Name: content_mediaslide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_mediaslide ALTER COLUMN id SET DEFAULT nextval('public.content_mediaslide_id_seq'::regclass);


--
-- Name: content_news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_news ALTER COLUMN id SET DEFAULT nextval('public.content_news_id_seq'::regclass);


--
-- Name: content_number id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_number ALTER COLUMN id SET DEFAULT nextval('public.content_number_id_seq'::regclass);


--
-- Name: content_simpleblock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_simpleblock ALTER COLUMN id SET DEFAULT nextval('public.content_simpleblock_id_seq'::regclass);


--
-- Name: content_smimedia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_smimedia ALTER COLUMN id SET DEFAULT nextval('public.content_smimedia_id_seq'::regclass);


--
-- Name: content_smislide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_smislide ALTER COLUMN id SET DEFAULT nextval('public.content_smislide_id_seq'::regclass);


--
-- Name: content_squareblock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_squareblock ALTER COLUMN id SET DEFAULT nextval('public.content_squareblock_id_seq'::regclass);


--
-- Name: content_view id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_view ALTER COLUMN id SET DEFAULT nextval('public.content_view_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: easy_thumbnails_source id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnaildimensions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: fcm_django_fcmdevice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fcm_django_fcmdevice ALTER COLUMN id SET DEFAULT nextval('public.fcm_django_fcmdevice_id_seq'::regclass);


--
-- Name: garpix_menu_menuitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_menu_menuitem ALTER COLUMN id SET DEFAULT nextval('public.garpix_menu_menuitem_id_seq'::regclass);


--
-- Name: garpix_notify_notify id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notify_id_seq'::regclass);


--
-- Name: garpix_notify_notify_files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify_files ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notify_files_id_seq'::regclass);


--
-- Name: garpix_notify_notifycategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifycategory ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifycategory_id_seq'::regclass);


--
-- Name: garpix_notify_notifyconfig id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyconfig ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyconfig_id_seq'::regclass);


--
-- Name: garpix_notify_notifyfile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyfile ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyfile_id_seq'::regclass);


--
-- Name: garpix_notify_notifytemplate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifytemplate_id_seq'::regclass);


--
-- Name: garpix_notify_notifytemplate_user_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifytemplate_user_lists_id_seq'::regclass);


--
-- Name: garpix_notify_notifyuserlist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyuserlist_id_seq'::regclass);


--
-- Name: garpix_notify_notifyuserlistparticipant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_notifyuserlistparticipant_id_seq'::regclass);


--
-- Name: garpix_notify_smtpaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_smtpaccount ALTER COLUMN id SET DEFAULT nextval('public.garpix_notify_smtpaccount_id_seq'::regclass);


--
-- Name: garpix_page_component id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_component ALTER COLUMN id SET DEFAULT nextval('public.garpix_page_component_id_seq'::regclass);


--
-- Name: garpix_page_componentchildren id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_componentchildren ALTER COLUMN id SET DEFAULT nextval('public.garpix_page_componentchildren_id_seq'::regclass);


--
-- Name: garpix_page_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_page ALTER COLUMN id SET DEFAULT nextval('public.garpix_page_page_id_seq'::regclass);


--
-- Name: user_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: user_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);


--
-- Name: user_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add FCM device	1	add_fcmdevice
2	Can change FCM device	1	change_fcmdevice
3	Can delete FCM device	1	delete_fcmdevice
4	Can add source	2	add_source
5	Can change source	2	change_source
6	Can delete source	2	delete_source
7	Can add thumbnail	3	add_thumbnail
8	Can change thumbnail	3	change_thumbnail
9	Can delete thumbnail	3	delete_thumbnail
10	Can add thumbnail dimensions	4	add_thumbnaildimensions
11	Can change thumbnail dimensions	4	change_thumbnaildimensions
12	Can delete thumbnail dimensions	4	delete_thumbnaildimensions
13	Can add Уведомление	5	add_notify
14	Can change Уведомление	5	change_notify
15	Can delete Уведомление	5	delete_notify
16	Can add Категория	6	add_notifycategory
17	Can change Категория	6	change_notifycategory
18	Can delete Категория	6	delete_notifycategory
19	Can add Настройка	7	add_notifyconfig
20	Can change Настройка	7	change_notifyconfig
21	Can delete Настройка	7	delete_notifyconfig
22	Can add Файл	8	add_notifyfile
23	Can change Файл	8	change_notifyfile
24	Can delete Файл	8	delete_notifyfile
25	Can add Шаблон	9	add_notifytemplate
26	Can change Шаблон	9	change_notifytemplate
27	Can delete Шаблон	9	delete_notifytemplate
28	Can add Список пользователей для рассылки	10	add_notifyuserlist
29	Can change Список пользователей для рассылки	10	change_notifyuserlist
30	Can delete Список пользователей для рассылки	10	delete_notifyuserlist
31	Can add Участник списка пользователей	11	add_notifyuserlistparticipant
32	Can change Участник списка пользователей	11	change_notifyuserlistparticipant
33	Can delete Участник списка пользователей	11	delete_notifyuserlistparticipant
34	Can add SMTP аккаунт	12	add_smtpaccount
35	Can change SMTP аккаунт	12	change_smtpaccount
36	Can delete SMTP аккаунт	12	delete_smtpaccount
37	Can add FCM аккаунт	1	add_notifydevice
38	Can change FCM аккаунт	1	change_notifydevice
39	Can delete FCM аккаунт	1	delete_notifydevice
40	Can add Компонент	14	add_component
41	Can change Компонент	14	change_component
42	Can delete Компонент	14	delete_component
43	Can add Дочерний компонент	15	add_componentchildren
44	Can change Дочерний компонент	15	change_componentchildren
45	Can delete Дочерний компонент	15	delete_componentchildren
46	Can add Страница	16	add_page
47	Can change Страница	16	change_page
48	Can delete Страница	16	delete_page
49	Can add Пункт меню	17	add_menuitem
50	Can change Пункт меню	17	change_menuitem
51	Can delete Пункт меню	17	delete_menuitem
52	Can add log entry	18	add_logentry
53	Can change log entry	18	change_logentry
54	Can delete log entry	18	delete_logentry
55	Can add permission	19	add_permission
56	Can change permission	19	change_permission
57	Can delete permission	19	delete_permission
58	Can add group	20	add_group
59	Can change group	20	change_group
60	Can delete group	20	delete_group
61	Can add content type	21	add_contenttype
62	Can change content type	21	change_contenttype
63	Can delete content type	21	delete_contenttype
64	Can add session	22	add_session
65	Can change session	22	change_session
66	Can delete session	22	delete_session
67	Can add Настройки сайта	23	add_siteconfiguration
68	Can change Настройки сайта	23	change_siteconfiguration
69	Can delete Настройки сайта	23	delete_siteconfiguration
70	Can add Пользователь	24	add_user
71	Can change Пользователь	24	change_user
72	Can delete Пользователь	24	delete_user
73	Can add Просмотр	25	add_view
74	Can change Просмотр	25	change_view
75	Can delete Просмотр	25	delete_view
76	Can add Новость	26	add_news
77	Can change Новость	26	change_news
78	Can delete Новость	26	delete_news
79	Can add Медиа контент	27	add_mediaslide
80	Can change Медиа контент	27	change_mediaslide
81	Can delete Медиа контент	27	delete_mediaslide
82	Can add Поречение	28	add_instruction
83	Can change Поречение	28	change_instruction
84	Can delete Поречение	28	delete_instruction
85	Can add СМИ и Медиа	29	add_smimedia
86	Can change СМИ и Медиа	29	change_smimedia
87	Can delete СМИ и Медиа	29	delete_smimedia
88	Can add Фото (СМИ)	30	add_smislide
89	Can change Фото (СМИ)	30	change_smislide
90	Can delete Фото (СМИ)	30	delete_smislide
91	Can add Двойной блок	31	add_dualblock
92	Can change Двойной блок	31	change_dualblock
93	Can delete Двойной блок	31	delete_dualblock
94	Can add Инициатива	32	add_initiative
95	Can change Инициатива	32	change_initiative
96	Can delete Инициатива	32	delete_initiative
97	Can add Блок только с текстом	33	add_simpleblock
98	Can change Блок только с текстом	33	change_simpleblock
99	Can delete Блок только с текстом	33	delete_simpleblock
100	Can add Квадратный блок	34	add_squareblock
101	Can change Квадратный блок	34	change_squareblock
102	Can delete Квадратный блок	34	delete_squareblock
103	Can add Биография	35	add_biography
104	Can change Биография	35	change_biography
105	Can delete Биография	35	delete_biography
106	Can add Пункт биографии	36	add_biographypoint
107	Can change Пункт биографии	36	change_biographypoint
108	Can delete Пункт биографии	36	delete_biographypoint
109	Can add Цифра недели	37	add_number
110	Can change Цифра недели	37	change_number
111	Can delete Цифра недели	37	delete_number
\.


--
-- Data for Name: config_siteconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.config_siteconfiguration (id, vk_link, insta_link, robots_txt, scripts, ok_link, virtual_reception_link, fb_link, logo_text) FROM stdin;
1	https://paste_link/	https://paste_link/			https://paste_link/	https://paste_link/	https://paste_link/	Официальный сайт врио губернатора Астраханской области Сергея Морозова
\.


--
-- Data for Name: content_biography; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_biography (id, fio, "position", awards) FROM stdin;
1	Сергей Петрович Морозов		
\.


--
-- Data for Name: content_biographypoint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_biographypoint (id, period, description, sort, is_active, biography_id) FROM stdin;
\.


--
-- Data for Name: content_dualblock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_dualblock (id, sort, description, is_active, title, initiative_id) FROM stdin;
\.


--
-- Data for Name: content_initiative; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_initiative (id, title, is_active, slug, created_at, updated_at, seo_title, seo_keywords, seo_description, seo_author, seo_og_type, preview, image, subtitle, content, show_square_block, order_square_block, show_dual_block, order_dual_block, show_simple_block, order_simple_block, content_2, date_at, is_actual, page_type, parent_id) FROM stdin;
\.


--
-- Data for Name: content_instruction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_instruction (id, title, is_active, slug, created_at, updated_at, seo_title, seo_keywords, seo_description, seo_author, seo_og_type, preview, status, short_content, content, content_2, date_at, is_actual, page_type, parent_id) FROM stdin;
1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019	2019-02-22 10:24:38.927171+00	2019-02-22 10:24:38.927185+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
3	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:26:02.543132+00	2019-02-22 10:27:24.713678+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
7	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:26:07.084403+00	2019-02-22 10:27:24.647239+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
5	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:26:07.053816+00	2019-02-22 10:27:24.680333+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
11	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE-_CLONE	2019-02-22 10:26:15.017603+00	2019-02-22 10:27:24.580157+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
9	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:26:14.98145+00	2019-02-22 10:27:24.613588+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
15	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:26:15.051199+00	2019-02-22 10:26:57.56526+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
13	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:26:15.034267+00	2019-02-22 10:27:24.527982+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
16	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:26:15.059322+00	2019-02-22 10:26:57.525428+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
14	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:26:15.042838+00	2019-02-22 10:26:57.581734+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
12	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:26:15.025991+00	2019-02-22 10:27:24.563497+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
10	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:26:15.009285+00	2019-02-22 10:27:24.596925+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
8	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:26:07.092766+00	2019-02-22 10:27:24.630225+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
6	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:26:07.076156+00	2019-02-22 10:27:24.663548+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
4	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:26:02.568022+00	2019-02-22 10:27:24.696959+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
2	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:25:58.01001+00	2019-02-22 10:27:24.730574+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	uploads/2019/2/photo-2.jpg	processing	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 10:15:37+00	f	10	4
\.


--
-- Data for Name: content_mediaslide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_mediaslide (id, title, description, sort, is_active, created_at, updated_at, use_image, news_id, image, youtube_video, yt_channel_title, yt_description, yt_duration, yt_id, yt_preview_hd, yt_preview_hq, yt_preview_mq, yt_preview_sd, yt_published, yt_title, instruction_id) FROM stdin;
4			2	t	2019-02-22 09:03:01.52923+00	2019-02-22 09:03:01.529254+00	f	1		https://www.youtube.com/embed/jGCvi0CSaHY	ГТРК  Лотос Астрахань	Подписывайтесь на нас  и следите за новостями во всех социальных сетях:\n\nIG  http://www.instagram.com/vesti_astrakhan   \nВК  http://vk.com/lotos_tv   \nFB  http://www.facebook.com/lotosastrakhan   \nОК  http://ok.ru/gtrklotos   \nTw  http://twitter.com/lotos_gtrk   \n\nи на нашем сайте http://lotosgtrk.ru	00:01:15	jGCvi0CSaHY	https://i.ytimg.com/vi/jGCvi0CSaHY/mqdefault.jpg	https://i.ytimg.com/vi/jGCvi0CSaHY/hqdefault.jpg	https://i.ytimg.com/vi/jGCvi0CSaHY/default.jpg		2019-02-12 15:06:29+00	Сергей Морозов встретился с президентом РСПП Александром Шохиным	\N
3			1	f	2019-02-22 09:03:01.107084+00	2019-02-22 10:15:09.849887+00	f	1	uploads/2019/2/slider-photo_8kThzUJ.jpg	\N			\N						\N		\N
\.


--
-- Data for Name: content_news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_news (id, title, is_active, slug, created_at, updated_at, seo_title, seo_keywords, seo_description, seo_author, seo_og_type, short_content, content, content_2, date_at, is_actual, preview, is_important, is_main, page_type, parent_id) FROM stdin;
3	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:09:43.566061+00	2019-02-22 10:10:19.153105+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019	2019-02-22 08:23:04.276076+00	2019-02-22 10:15:09.848486+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
7	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:09:48.838317+00	2019-02-22 10:10:19.086497+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
5	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:09:48.73433+00	2019-02-22 10:10:19.119964+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
11	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE-_CLONE	2019-02-22 10:09:59.387536+00	2019-02-22 10:10:19.019944+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
9	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:09:59.351071+00	2019-02-22 10:10:19.053114+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
12	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:09:59.396041+00	2019-02-22 10:10:19.003088+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
10	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:09:59.379197+00	2019-02-22 10:10:19.036324+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
8	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:09:48.846774+00	2019-02-22 10:10:19.069875+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
6	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE-_CLONE	2019-02-22 10:09:48.830275+00	2019-02-22 10:10:19.103095+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
4	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:09:43.588256+00	2019-02-22 10:10:19.136353+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
2	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE	2019-02-22 10:09:37.757833+00	2019-02-22 10:10:19.16977+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	t	t	9	3
13	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	t	sergej-morozov-opredelil-etapy-razrabotki-strategii-razvitiya-astrahanskoj-oblasti-novosti-21-yanvarya-2019-_CLONE-_CLONE	2019-02-22 10:09:59.404295+00	2019-02-22 10:12:20.572134+00	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE				website	Сегодня глава Астраханской области Сергей Морозов провёл рабочее совещание с членами правительства, на котором обсудил этапы разработки Стратегии социально-экономического развития региона до 2024 года.	<p>По поручению Сергея Морозова, при всех региональных министерствах создадут экспертные группы. И.о. руководителя администрации губернатора Канат Шантимиров доложил, что работа над их формированием уже началась. Координировать действия ведомств будет министерство экономического развития.</p>\r\n\r\n<p>Руководить группами будут эксперты, профессионалы, хорошо разбирающиеся в вопросах деятельности соответствующих отраслей. Их кандидатуры глава региона согласует лично. По инициативе Сергея Морозова предложения в план Стратегии социально-экономического развития сможет внести каждый астраханец. Пункты сбора предложений откроются в многофункциональных центрах области, также будет создана электронная площадка.</p>	<p>В мае 2019 года Стратегия социально-экономического развития до 2024 года будет сформирована и в июне представлена общественности.<br />\r\nНапомним, 26 декабря врио губернатора Астраханской области Сергей Морозов выступил с программной речью, в которой обозначил приоритетные отрасли социально-экономического развития региона до 2024 года. Он определил девять основных направлений: сельское хозяйство, промышленность, здравоохранение, образование, комфортная среда и инфраструктура, культура, туризм, экология, малый и средний бизнес.</p>	2019-02-22 08:18:17+00	t	uploads/2019/2/photo.jpg	f	t	9	3
\.


--
-- Data for Name: content_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_number (id, number, number_text, short_description, description, sort, is_active) FROM stdin;
\.


--
-- Data for Name: content_simpleblock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_simpleblock (id, sort, description, is_active, initiative_id) FROM stdin;
\.


--
-- Data for Name: content_smimedia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_smimedia (id, title, is_active, slug, created_at, updated_at, seo_title, seo_keywords, seo_description, seo_author, seo_og_type, content, youtube_video, yt_id, yt_title, yt_channel_title, yt_description, yt_duration, yt_published, yt_preview_sd, yt_preview_mq, yt_preview_hq, yt_preview_hd, preview, use_image, sort, date_at, page_type, parent_id) FROM stdin;
\.


--
-- Data for Name: content_smislide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_smislide (id, title, description, sort, is_active, created_at, updated_at, image, smi_id) FROM stdin;
\.


--
-- Data for Name: content_squareblock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_squareblock (id, sort, description, is_active, title, initiative_id) FROM stdin;
\.


--
-- Data for Name: content_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.content_view (id, created_at, view_id, object_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-02-15 09:55:06.463092+00	1	Главная	1	[{"added": {}}]	16	1
2	2019-02-21 13:05:34.28299+00	2	Биография	1	[{"added": {}}]	16	1
3	2019-02-21 13:06:01.93967+00	3	Новости	1	[{"added": {}}]	16	1
4	2019-02-21 13:06:52.591003+00	4	Поручения	1	[{"added": {}}]	16	1
5	2019-02-21 13:07:30.347105+00	5	Инициативы	1	[{"added": {}}]	16	1
6	2019-02-21 13:09:10.37468+00	6	СМИ и медиа	1	[{"added": {}}]	16	1
7	2019-02-21 13:09:29.942022+00	7	Поиск	1	[{"added": {}}]	16	1
8	2019-02-21 13:10:52.706433+00	1	Биография	1	[{"added": {}}]	17	1
9	2019-02-21 13:11:36.604759+00	2	Новости	1	[{"added": {}}]	17	1
10	2019-02-21 13:12:04.825081+00	3	Поручения	1	[{"added": {}}]	17	1
11	2019-02-21 13:12:46.369137+00	4	Инициативы	1	[{"added": {}}]	17	1
12	2019-02-21 13:13:29.033073+00	5	Медиа	1	[{"added": {}}]	17	1
13	2019-02-21 13:13:35.826772+00	5	Медиа	2	[{"changed": {"fields": ["sort"]}}]	17	1
14	2019-02-22 08:23:04.442485+00	1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	1	[{"added": {}}]	26	1
15	2019-02-22 09:03:01.531199+00	1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	2	[{"added": {"name": "\\u041c\\u0435\\u0434\\u0438\\u0430 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442", "object": "\\u0424\\u043e\\u0442\\u043e: "}}, {"added": {"name": "\\u041c\\u0435\\u0434\\u0438\\u0430 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442", "object": "YouTube: "}}]	26	1
16	2019-02-22 10:08:25.30565+00	1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	2	[]	26	1
17	2019-02-22 10:10:18.994753+00	13	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
18	2019-02-22 10:10:19.011419+00	12	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
19	2019-02-22 10:10:19.027895+00	11	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
20	2019-02-22 10:10:19.044719+00	10	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
21	2019-02-22 10:10:19.06149+00	9	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
22	2019-02-22 10:10:19.078336+00	8	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
23	2019-02-22 10:10:19.094674+00	7	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
24	2019-02-22 10:10:19.111404+00	6	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
25	2019-02-22 10:10:19.12796+00	5	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
26	2019-02-22 10:10:19.1447+00	4	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
27	2019-02-22 10:10:19.161442+00	3	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
28	2019-02-22 10:10:19.17826+00	2	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	26	1
29	2019-02-22 10:12:20.573835+00	13	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_important"]}}]	26	1
30	2019-02-22 10:15:09.851183+00	1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	2	[{"changed": {"name": "\\u041c\\u0435\\u0434\\u0438\\u0430 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442", "object": "\\u0424\\u043e\\u0442\\u043e: ", "fields": ["is_active"]}}]	26	1
31	2019-02-22 10:24:38.959896+00	1	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019	1	[{"added": {}}]	28	1
32	2019-02-22 10:26:57.556916+00	16	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
33	2019-02-22 10:26:57.573578+00	15	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
34	2019-02-22 10:26:57.589951+00	14	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
35	2019-02-22 10:27:24.555344+00	13	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
36	2019-02-22 10:27:24.571802+00	12	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
37	2019-02-22 10:27:24.588467+00	11	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
38	2019-02-22 10:27:24.605174+00	10	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
39	2019-02-22 10:27:24.621903+00	9	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
40	2019-02-22 10:27:24.638704+00	8	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
41	2019-02-22 10:27:24.655437+00	7	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
42	2019-02-22 10:27:24.672049+00	6	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
43	2019-02-22 10:27:24.68874+00	5	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
44	2019-02-22 10:27:24.705416+00	4	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
45	2019-02-22 10:27:24.72206+00	3	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
46	2019-02-22 10:27:24.738734+00	2	Сергей Морозов определил этапы разработки Стратегии развития Астраханской области НОВОСТИ 21 января 2019-_CLONE	2	[{"changed": {"fields": ["is_active"]}}]	28	1
47	2019-02-22 10:31:26.933242+00	17	test	1	[{"added": {}}]	28	1
48	2019-02-22 10:32:53.375287+00	17	test	3		28	1
49	2019-02-22 11:47:27.283239+00	8	Карта сайта	1	[{"added": {}}]	16	1
50	2019-02-22 12:14:20.067515+00	8	Карта сайта	2	[{"changed": {"fields": ["page_type"]}}]	16	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	fcm_django	fcmdevice
2	easy_thumbnails	source
3	easy_thumbnails	thumbnail
4	easy_thumbnails	thumbnaildimensions
5	garpix_notify	notify
6	garpix_notify	notifycategory
7	garpix_notify	notifyconfig
8	garpix_notify	notifyfile
9	garpix_notify	notifytemplate
10	garpix_notify	notifyuserlist
11	garpix_notify	notifyuserlistparticipant
12	garpix_notify	smtpaccount
13	garpix_notify	notifydevice
14	garpix_page	component
15	garpix_page	componentchildren
16	garpix_page	page
17	garpix_menu	menuitem
18	admin	logentry
19	auth	permission
20	auth	group
21	contenttypes	contenttype
22	sessions	session
23	config	siteconfiguration
24	user	user
25	content	view
26	content	news
27	content	mediaslide
28	content	instruction
29	content	smimedia
30	content	smislide
31	content	dualblock
32	content	initiative
33	content	simpleblock
34	content	squareblock
35	content	biography
36	content	biographypoint
37	content	number
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-02-15 09:38:44.117435+00
2	contenttypes	0002_remove_content_type_name	2019-02-15 09:38:44.133762+00
3	auth	0001_initial	2019-02-15 09:38:44.618697+00
4	auth	0002_alter_permission_name_max_length	2019-02-15 09:38:44.635081+00
5	auth	0003_alter_user_email_max_length	2019-02-15 09:38:44.64746+00
6	auth	0004_alter_user_username_opts	2019-02-15 09:38:44.656269+00
7	auth	0005_alter_user_last_login_null	2019-02-15 09:38:44.688777+00
8	auth	0006_require_contenttypes_0002	2019-02-15 09:38:44.693339+00
9	auth	0007_alter_validators_add_error_messages	2019-02-15 09:38:44.705381+00
10	auth	0008_alter_user_username_max_length	2019-02-15 09:38:44.713712+00
11	auth	0009_alter_user_last_name_max_length	2019-02-15 09:38:44.721844+00
12	user	0001_initial	2019-02-15 09:38:45.261347+00
13	admin	0001_initial	2019-02-15 09:38:45.519679+00
14	admin	0002_logentry_remove_auto_add	2019-02-15 09:38:45.536601+00
15	config	0001_initial	2019-02-15 09:38:45.669307+00
16	easy_thumbnails	0001_initial	2019-02-15 09:38:46.2113+00
17	easy_thumbnails	0002_thumbnaildimensions	2019-02-15 09:38:46.344708+00
18	fcm_django	0001_initial	2019-02-15 09:38:46.519735+00
19	fcm_django	0002_auto_20160808_1645	2019-02-15 09:38:46.703773+00
20	fcm_django	0003_auto_20170313_1314	2019-02-15 09:38:46.717732+00
21	garpix_page	0001_initial	2019-02-15 09:38:47.404658+00
22	garpix_menu	0001_initial	2019-02-15 09:38:47.954308+00
23	garpix_notify	0001_initial	2019-02-15 09:38:48.680201+00
24	garpix_notify	0002_auto_20190215_1238	2019-02-15 09:38:49.38954+00
25	sessions	0001_initial	2019-02-15 09:38:49.572468+00
26	content	0001_initial	2019-02-18 13:30:48.196395+00
27	content	0002_news	2019-02-18 13:32:55.056451+00
28	content	0003_mediaslide	2019-02-18 13:34:50.87501+00
29	content	0004_mediaslide_news	2019-02-18 14:05:36.662213+00
30	content	0005_auto_20190218_1715	2019-02-18 14:15:32.044983+00
31	content	0006_auto_20190218_1719	2019-02-18 14:19:52.317371+00
32	content	0007_auto_20190218_1825	2019-02-18 15:25:34.637292+00
33	content	0008_auto_20190218_1828	2019-02-18 15:28:54.736881+00
34	content	0009_smimedia	2019-02-20 13:13:49.11651+00
35	content	0010_smislide	2019-02-20 13:25:52.175876+00
36	content	0011_auto_20190220_1745	2019-02-20 14:45:15.029133+00
37	content	0012_biography	2019-02-21 08:35:45.399813+00
38	content	0013_biographypoint	2019-02-21 08:58:25.263247+00
39	config	0002_auto_20190221_1229	2019-02-21 09:29:13.168091+00
40	content	0014_number	2019-02-21 09:29:13.292797+00
41	garpix_page	0002_auto_20190221_1558	2019-02-21 12:58:58.290924+00
42	content	0015_auto_20190221_1558	2019-02-21 12:59:00.068003+00
43	config	0003_auto_20190222_1128	2019-02-22 08:28:16.992627+00
44	garpix_page	0003_auto_20190222_1128	2019-02-22 08:28:17.061683+00
45	config	0004_siteconfiguration_logo_text	2019-02-22 08:43:36.340549+00
46	content	0016_auto_20190222_1330	2019-02-22 10:30:17.555944+00
47	content	0017_auto_20190222_1331	2019-02-22 10:31:56.149971+00
48	content	0018_auto_20190222_1512	2019-02-22 12:12:57.687771+00
49	garpix_page	0004_auto_20190222_1512	2019-02-22 12:12:57.722575+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4qn7m2knysz28aofzqlpza1of55ps2en	YjgwN2YyNjViODI2MjBlZDU4OWVhNjQ5MzgxYzM0NDdiYWZlMjYyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzQ2ODA3YWY0YTFhYWEzNzYyZjJkOGNmNTMzYmM3OGFkOTIzNDdhIn0=	2019-03-01 09:52:58.618043+00
y1l12lhyg9ehff5pqzp3gkjyantj81gs	YjgwN2YyNjViODI2MjBlZDU4OWVhNjQ5MzgxYzM0NDdiYWZlMjYyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzQ2ODA3YWY0YTFhYWEzNzYyZjJkOGNmNTMzYmM3OGFkOTIzNDdhIn0=	2019-03-04 14:01:31.956992+00
dh1kvwwn5rrnvnyhkh06ex9xv3ann4db	YjgwN2YyNjViODI2MjBlZDU4OWVhNjQ5MzgxYzM0NDdiYWZlMjYyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzQ2ODA3YWY0YTFhYWEzNzYyZjJkOGNmNTMzYmM3OGFkOTIzNDdhIn0=	2019-03-06 13:31:59.814515+00
zif9nqr8phc8fgxog5eewueq2io32tud	YjgwN2YyNjViODI2MjBlZDU4OWVhNjQ5MzgxYzM0NDdiYWZlMjYyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzQ2ODA3YWY0YTFhYWEzNzYyZjJkOGNmNTMzYmM3OGFkOTIzNDdhIn0=	2019-03-07 08:58:48.290189+00
6pyllq7wn41eyg4dolr96igijfemolfd	YjgwN2YyNjViODI2MjBlZDU4OWVhNjQ5MzgxYzM0NDdiYWZlMjYyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzQ2ODA3YWY0YTFhYWEzNzYyZjJkOGNmNTMzYmM3OGFkOTIzNDdhIn0=	2019-03-07 13:03:45.902782+00
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Data for Name: fcm_django_fcmdevice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fcm_django_fcmdevice (id, name, active, date_created, device_id, registration_id, type, user_id) FROM stdin;
\.


--
-- Data for Name: garpix_menu_menuitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_menu_menuitem (id, title_for_admin, title, title_ru, menu_type, url, is_active, target_blank, css_class, created_at, updated_at, sort, lft, rght, tree_id, level, page_id, parent_id) FROM stdin;
1	Биография	Биография	Биография	main_menu	\N	t	f	\N	2019-02-21 13:10:52.670906+00	2019-02-21 13:10:52.670922+00	100	1	2	1	0	2	\N
2	Новости	Новости	Новости	main_menu	\N	t	f	\N	2019-02-21 13:11:36.604044+00	2019-02-21 13:11:36.604059+00	110	1	2	2	0	3	\N
3	Поручения	Поручения	Поручения	main_menu	\N	t	f	\N	2019-02-21 13:12:04.82443+00	2019-02-21 13:12:04.824445+00	120	1	2	3	0	4	\N
4	Инициативы	Инициативы	Инициативы	main_menu	\N	t	f	\N	2019-02-21 13:12:46.368482+00	2019-02-21 13:12:46.368496+00	130	1	2	4	0	5	\N
5	Медиа	Медиа	Медиа	main_menu	\N	t	f	\N	2019-02-21 13:13:29.032132+00	2019-02-21 13:13:35.818487+00	140	1	2	5	0	6	\N
\.


--
-- Data for Name: garpix_notify_notify; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notify (id, subject, text, html, email, phone, type, state, event, is_read, data_json, created_at, sent_at, category_id, user_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notify_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notify_files (id, notify_id, notifyfile_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifycategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifycategory (id, title, template, created_at) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifyconfig (id, periodic, email_max_day_limit, email_max_hour_limit, sms_url, sms_api_id, sms_from, is_email_enabled, is_sms_enabled, is_push_enabled) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyfile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifyfile (id, file, created_at) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifytemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifytemplate (id, title, subject, text, html, email, phone, type, event, created_at, is_active, category_id, user_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifytemplate_user_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifytemplate_user_lists (id, notifytemplate_id, notifyuserlist_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyuserlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifyuserlist (id, title, created_at) FROM stdin;
\.


--
-- Data for Name: garpix_notify_notifyuserlistparticipant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_notifyuserlistparticipant (id, created_at, email, phone, user_id, user_list_id) FROM stdin;
\.


--
-- Data for Name: garpix_notify_smtpaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_notify_smtpaccount (id, host, port, is_use_tls, is_use_ssl, sender, username, password, timeout, email_hour_used_times, email_day_used_times, email_hour_used_date, email_day_used_date, created_at, category_id) FROM stdin;
\.


--
-- Data for Name: garpix_page_component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_page_component (id, "position", template, title, title_ru, is_active, content, content_ru, image, sort, page_id) FROM stdin;
\.


--
-- Data for Name: garpix_page_componentchildren; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_page_componentchildren (id, title, title_ru, content, content_ru, image, sort, component_id) FROM stdin;
\.


--
-- Data for Name: garpix_page_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garpix_page_page (id, title, title_ru, is_active, slug, created_at, updated_at, seo_title, seo_title_ru, seo_keywords, seo_keywords_ru, seo_description, seo_description_ru, seo_author, seo_author_ru, seo_og_type, content, content_ru, login_required, page_type, lft, rght, tree_id, level, parent_id) FROM stdin;
1	Главная	Главная	t		2019-02-15 09:55:06.462037+00	2019-02-15 09:55:06.462056+00		\N		\N		\N		\N	website			f	1	1	2	1	0	\N
2	Биография	Биография	t	biography	2019-02-21 13:05:34.256179+00	2019-02-21 13:05:34.256204+00		\N		\N		\N		\N	website			f	3	1	2	2	0	\N
3	Новости	Новости	t	news	2019-02-21 13:06:01.938838+00	2019-02-21 13:06:01.938853+00		\N		\N		\N		\N	website			f	4	1	2	3	0	\N
4	Поручения	Поручения	t	instructions	2019-02-21 13:06:52.590132+00	2019-02-21 13:06:52.590148+00		\N		\N		\N		\N	website			f	5	1	2	4	0	\N
5	Инициативы	Инициативы	t	initiatives	2019-02-21 13:07:30.34599+00	2019-02-21 13:07:30.346008+00		\N		\N		\N		\N	website			f	6	1	2	5	0	\N
6	СМИ и медиа	СМИ и медиа	t	smi-i-media	2019-02-21 13:09:10.373932+00	2019-02-21 13:09:10.373948+00		\N		\N		\N		\N	website			f	7	1	2	6	0	\N
7	Поиск	Поиск	t	search	2019-02-21 13:09:29.941249+00	2019-02-21 13:09:29.941265+00		\N		\N		\N		\N	website			f	8	1	2	7	0	\N
8	Карта сайта	Карта сайта	t	sitemap	2019-02-22 11:47:27.260978+00	2019-02-22 12:14:20.066163+00		\N		\N		\N		\N	website			f	13	1	2	8	0	\N
\.


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$6lqSadu4EC2Q$oiB5AKn7RGFobylpzfEcgjBNRkTKFPNm594pdbMNbRw=	2019-02-21 13:03:45.894298+00	t	garpix			roman@garpix.com	t	t	2019-02-15 09:52:23.148639+00
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 111, true);


--
-- Name: config_siteconfiguration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.config_siteconfiguration_id_seq', 1, false);


--
-- Name: content_biography_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_biography_id_seq', 1, false);


--
-- Name: content_biographypoint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_biographypoint_id_seq', 1, false);


--
-- Name: content_dualblock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_dualblock_id_seq', 1, false);


--
-- Name: content_initiative_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_initiative_id_seq', 1, false);


--
-- Name: content_instruction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_instruction_id_seq', 17, true);


--
-- Name: content_mediaslide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_mediaslide_id_seq', 4, true);


--
-- Name: content_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_news_id_seq', 13, true);


--
-- Name: content_number_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_number_id_seq', 1, false);


--
-- Name: content_simpleblock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_simpleblock_id_seq', 1, false);


--
-- Name: content_smimedia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_smimedia_id_seq', 1, false);


--
-- Name: content_smislide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_smislide_id_seq', 1, false);


--
-- Name: content_squareblock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_squareblock_id_seq', 1, false);


--
-- Name: content_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.content_view_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 50, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 37, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Name: fcm_django_fcmdevice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fcm_django_fcmdevice_id_seq', 1, false);


--
-- Name: garpix_menu_menuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_menu_menuitem_id_seq', 5, true);


--
-- Name: garpix_notify_notify_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notify_files_id_seq', 1, false);


--
-- Name: garpix_notify_notify_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notify_id_seq', 1, false);


--
-- Name: garpix_notify_notifycategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifycategory_id_seq', 1, false);


--
-- Name: garpix_notify_notifyconfig_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifyconfig_id_seq', 1, false);


--
-- Name: garpix_notify_notifyfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifyfile_id_seq', 1, false);


--
-- Name: garpix_notify_notifytemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifytemplate_id_seq', 1, false);


--
-- Name: garpix_notify_notifytemplate_user_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifytemplate_user_lists_id_seq', 1, false);


--
-- Name: garpix_notify_notifyuserlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifyuserlist_id_seq', 1, false);


--
-- Name: garpix_notify_notifyuserlistparticipant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_notifyuserlistparticipant_id_seq', 1, false);


--
-- Name: garpix_notify_smtpaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_notify_smtpaccount_id_seq', 1, false);


--
-- Name: garpix_page_component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_page_component_id_seq', 1, false);


--
-- Name: garpix_page_componentchildren_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_page_componentchildren_id_seq', 1, false);


--
-- Name: garpix_page_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.garpix_page_page_id_seq', 8, true);


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: config_siteconfiguration config_siteconfiguration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.config_siteconfiguration
    ADD CONSTRAINT config_siteconfiguration_pkey PRIMARY KEY (id);


--
-- Name: content_biography content_biography_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_biography
    ADD CONSTRAINT content_biography_pkey PRIMARY KEY (id);


--
-- Name: content_biographypoint content_biographypoint_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_biographypoint
    ADD CONSTRAINT content_biographypoint_pkey PRIMARY KEY (id);


--
-- Name: content_dualblock content_dualblock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_dualblock
    ADD CONSTRAINT content_dualblock_pkey PRIMARY KEY (id);


--
-- Name: content_initiative content_initiative_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_initiative
    ADD CONSTRAINT content_initiative_pkey PRIMARY KEY (id);


--
-- Name: content_instruction content_instruction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_instruction
    ADD CONSTRAINT content_instruction_pkey PRIMARY KEY (id);


--
-- Name: content_mediaslide content_mediaslide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_mediaslide
    ADD CONSTRAINT content_mediaslide_pkey PRIMARY KEY (id);


--
-- Name: content_news content_news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_news
    ADD CONSTRAINT content_news_pkey PRIMARY KEY (id);


--
-- Name: content_number content_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_number
    ADD CONSTRAINT content_number_pkey PRIMARY KEY (id);


--
-- Name: content_simpleblock content_simpleblock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_simpleblock
    ADD CONSTRAINT content_simpleblock_pkey PRIMARY KEY (id);


--
-- Name: content_smimedia content_smimedia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_smimedia
    ADD CONSTRAINT content_smimedia_pkey PRIMARY KEY (id);


--
-- Name: content_smislide content_smislide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_smislide
    ADD CONSTRAINT content_smislide_pkey PRIMARY KEY (id);


--
-- Name: content_squareblock content_squareblock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_squareblock
    ADD CONSTRAINT content_squareblock_pkey PRIMARY KEY (id);


--
-- Name: content_view content_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_view
    ADD CONSTRAINT content_view_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: fcm_django_fcmdevice fcm_django_fcmdevice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fcm_django_fcmdevice
    ADD CONSTRAINT fcm_django_fcmdevice_pkey PRIMARY KEY (id);


--
-- Name: garpix_menu_menuitem garpix_menu_menuitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_menu_menuitem
    ADD CONSTRAINT garpix_menu_menuitem_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notify_files garpix_notify_notify_fil_notify_id_notifyfile_id_0c4b8664_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_fil_notify_id_notifyfile_id_0c4b8664_uniq UNIQUE (notify_id, notifyfile_id);


--
-- Name: garpix_notify_notify_files garpix_notify_notify_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_files_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notify garpix_notify_notify_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify
    ADD CONSTRAINT garpix_notify_notify_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifycategory garpix_notify_notifycategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifycategory
    ADD CONSTRAINT garpix_notify_notifycategory_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyconfig garpix_notify_notifyconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyconfig
    ADD CONSTRAINT garpix_notify_notifyconfig_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyfile garpix_notify_notifyfile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyfile
    ADD CONSTRAINT garpix_notify_notifyfile_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notifytemp_notifytemplate_id_notify_d244696d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notifytemp_notifytemplate_id_notify_d244696d_uniq UNIQUE (notifytemplate_id, notifyuserlist_id);


--
-- Name: garpix_notify_notifytemplate garpix_notify_notifytemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate
    ADD CONSTRAINT garpix_notify_notifytemplate_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notifytemplate_user_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notifytemplate_user_lists_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyuserlist garpix_notify_notifyuserlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlist
    ADD CONSTRAINT garpix_notify_notifyuserlist_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_notifyuserlistparticipant garpix_notify_notifyuserlistparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant
    ADD CONSTRAINT garpix_notify_notifyuserlistparticipant_pkey PRIMARY KEY (id);


--
-- Name: garpix_notify_smtpaccount garpix_notify_smtpaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_smtpaccount
    ADD CONSTRAINT garpix_notify_smtpaccount_pkey PRIMARY KEY (id);


--
-- Name: garpix_page_component garpix_page_component_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_component
    ADD CONSTRAINT garpix_page_component_pkey PRIMARY KEY (id);


--
-- Name: garpix_page_componentchildren garpix_page_componentchildren_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_componentchildren
    ADD CONSTRAINT garpix_page_componentchildren_pkey PRIMARY KEY (id);


--
-- Name: garpix_page_page garpix_page_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_page
    ADD CONSTRAINT garpix_page_page_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: user_user user_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: content_biographypoint_biography_id_debe8063; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_biographypoint_biography_id_debe8063 ON public.content_biographypoint USING btree (biography_id);


--
-- Name: content_dualblock_initiative_id_7b901144; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_dualblock_initiative_id_7b901144 ON public.content_dualblock USING btree (initiative_id);


--
-- Name: content_initiative_parent_id_641fc358; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_initiative_parent_id_641fc358 ON public.content_initiative USING btree (parent_id);


--
-- Name: content_initiative_slug_2f5a466e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_initiative_slug_2f5a466e ON public.content_initiative USING btree (slug);


--
-- Name: content_initiative_slug_2f5a466e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_initiative_slug_2f5a466e_like ON public.content_initiative USING btree (slug varchar_pattern_ops);


--
-- Name: content_instruction_parent_id_ea67eb9b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_instruction_parent_id_ea67eb9b ON public.content_instruction USING btree (parent_id);


--
-- Name: content_instruction_slug_9a6c70f3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_instruction_slug_9a6c70f3 ON public.content_instruction USING btree (slug);


--
-- Name: content_instruction_slug_9a6c70f3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_instruction_slug_9a6c70f3_like ON public.content_instruction USING btree (slug varchar_pattern_ops);


--
-- Name: content_mediaslide_instruction_id_80f44c89; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_mediaslide_instruction_id_80f44c89 ON public.content_mediaslide USING btree (instruction_id);


--
-- Name: content_mediaslide_news_id_c17fb906; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_mediaslide_news_id_c17fb906 ON public.content_mediaslide USING btree (news_id);


--
-- Name: content_news_parent_id_bb8fafd0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_news_parent_id_bb8fafd0 ON public.content_news USING btree (parent_id);


--
-- Name: content_news_slug_732eff32; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_news_slug_732eff32 ON public.content_news USING btree (slug);


--
-- Name: content_news_slug_732eff32_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_news_slug_732eff32_like ON public.content_news USING btree (slug varchar_pattern_ops);


--
-- Name: content_simpleblock_initiative_id_0b96abb4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_simpleblock_initiative_id_0b96abb4 ON public.content_simpleblock USING btree (initiative_id);


--
-- Name: content_smimedia_parent_id_09f1f039; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_smimedia_parent_id_09f1f039 ON public.content_smimedia USING btree (parent_id);


--
-- Name: content_smimedia_slug_594416c6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_smimedia_slug_594416c6 ON public.content_smimedia USING btree (slug);


--
-- Name: content_smimedia_slug_594416c6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_smimedia_slug_594416c6_like ON public.content_smimedia USING btree (slug varchar_pattern_ops);


--
-- Name: content_smislide_smi_id_ea20998d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_smislide_smi_id_ea20998d ON public.content_smislide USING btree (smi_id);


--
-- Name: content_squareblock_initiative_id_53eb796f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_squareblock_initiative_id_53eb796f ON public.content_squareblock USING btree (initiative_id);


--
-- Name: content_view_content_type_id_e0532de6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX content_view_content_type_id_e0532de6 ON public.content_view USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_name_5fe0edc6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_name_5fe0edc6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_source_id_5b57bc77; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: fcm_django_fcmdevice_device_id_a9406c36; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcm_django_fcmdevice_device_id_a9406c36 ON public.fcm_django_fcmdevice USING btree (device_id);


--
-- Name: fcm_django_fcmdevice_user_id_6cdfc0a2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcm_django_fcmdevice_user_id_6cdfc0a2 ON public.fcm_django_fcmdevice USING btree (user_id);


--
-- Name: garpix_menu_menuitem_level_4ea8f6b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_menu_menuitem_level_4ea8f6b4 ON public.garpix_menu_menuitem USING btree (level);


--
-- Name: garpix_menu_menuitem_lft_b58e9df7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_menu_menuitem_lft_b58e9df7 ON public.garpix_menu_menuitem USING btree (lft);


--
-- Name: garpix_menu_menuitem_page_id_ee746656; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_menu_menuitem_page_id_ee746656 ON public.garpix_menu_menuitem USING btree (page_id);


--
-- Name: garpix_menu_menuitem_parent_id_0fa7f5f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_menu_menuitem_parent_id_0fa7f5f4 ON public.garpix_menu_menuitem USING btree (parent_id);


--
-- Name: garpix_menu_menuitem_rght_5c23e311; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_menu_menuitem_rght_5c23e311 ON public.garpix_menu_menuitem USING btree (rght);


--
-- Name: garpix_menu_menuitem_tree_id_c2fc2f46; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_menu_menuitem_tree_id_c2fc2f46 ON public.garpix_menu_menuitem USING btree (tree_id);


--
-- Name: garpix_notify_notify_category_id_0a47804b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notify_category_id_0a47804b ON public.garpix_notify_notify USING btree (category_id);


--
-- Name: garpix_notify_notify_files_notify_id_60e05d3f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notify_files_notify_id_60e05d3f ON public.garpix_notify_notify_files USING btree (notify_id);


--
-- Name: garpix_notify_notify_files_notifyfile_id_3caa1c8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notify_files_notifyfile_id_3caa1c8f ON public.garpix_notify_notify_files USING btree (notifyfile_id);


--
-- Name: garpix_notify_notify_user_id_2415ab78; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notify_user_id_2415ab78 ON public.garpix_notify_notify USING btree (user_id);


--
-- Name: garpix_notify_notifytempla_notifytemplate_id_5468a3e9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notifytempla_notifytemplate_id_5468a3e9 ON public.garpix_notify_notifytemplate_user_lists USING btree (notifytemplate_id);


--
-- Name: garpix_notify_notifytempla_notifyuserlist_id_08fe5004; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notifytempla_notifyuserlist_id_08fe5004 ON public.garpix_notify_notifytemplate_user_lists USING btree (notifyuserlist_id);


--
-- Name: garpix_notify_notifytemplate_category_id_409f148a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notifytemplate_category_id_409f148a ON public.garpix_notify_notifytemplate USING btree (category_id);


--
-- Name: garpix_notify_notifytemplate_user_id_00054b59; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notifytemplate_user_id_00054b59 ON public.garpix_notify_notifytemplate USING btree (user_id);


--
-- Name: garpix_notify_notifyuserlistparticipant_user_id_d32d21eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notifyuserlistparticipant_user_id_d32d21eb ON public.garpix_notify_notifyuserlistparticipant USING btree (user_id);


--
-- Name: garpix_notify_notifyuserlistparticipant_user_list_id_58577a9f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_notifyuserlistparticipant_user_list_id_58577a9f ON public.garpix_notify_notifyuserlistparticipant USING btree (user_list_id);


--
-- Name: garpix_notify_smtpaccount_category_id_5e9a374c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_notify_smtpaccount_category_id_5e9a374c ON public.garpix_notify_smtpaccount USING btree (category_id);


--
-- Name: garpix_page_component_page_id_805ec434; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_component_page_id_805ec434 ON public.garpix_page_component USING btree (page_id);


--
-- Name: garpix_page_componentchildren_component_id_16b52016; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_componentchildren_component_id_16b52016 ON public.garpix_page_componentchildren USING btree (component_id);


--
-- Name: garpix_page_page_level_6769694b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_level_6769694b ON public.garpix_page_page USING btree (level);


--
-- Name: garpix_page_page_lft_a404a54c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_lft_a404a54c ON public.garpix_page_page USING btree (lft);


--
-- Name: garpix_page_page_parent_id_0f59a474; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_parent_id_0f59a474 ON public.garpix_page_page USING btree (parent_id);


--
-- Name: garpix_page_page_rght_4e3ae0a1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_rght_4e3ae0a1 ON public.garpix_page_page USING btree (rght);


--
-- Name: garpix_page_page_slug_d69987dc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_slug_d69987dc ON public.garpix_page_page USING btree (slug);


--
-- Name: garpix_page_page_slug_d69987dc_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_slug_d69987dc_like ON public.garpix_page_page USING btree (slug varchar_pattern_ops);


--
-- Name: garpix_page_page_tree_id_3a1771e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX garpix_page_page_tree_id_3a1771e6 ON public.garpix_page_page USING btree (tree_id);


--
-- Name: user_user_groups_group_id_c57f13c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_user_id_13f9a20d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);


--
-- Name: user_user_user_permissions_permission_id_ce49d4de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_user_id_31782f58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);


--
-- Name: user_user_username_e2bdfe0c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_username_e2bdfe0c_like ON public.user_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_biographypoint content_biographypoi_biography_id_debe8063_fk_content_b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_biographypoint
    ADD CONSTRAINT content_biographypoi_biography_id_debe8063_fk_content_b FOREIGN KEY (biography_id) REFERENCES public.content_biography(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_dualblock content_dualblock_initiative_id_7b901144_fk_content_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_dualblock
    ADD CONSTRAINT content_dualblock_initiative_id_7b901144_fk_content_i FOREIGN KEY (initiative_id) REFERENCES public.content_initiative(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_initiative content_initiative_parent_id_641fc358_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_initiative
    ADD CONSTRAINT content_initiative_parent_id_641fc358_fk_garpix_page_page_id FOREIGN KEY (parent_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_instruction content_instruction_parent_id_ea67eb9b_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_instruction
    ADD CONSTRAINT content_instruction_parent_id_ea67eb9b_fk_garpix_page_page_id FOREIGN KEY (parent_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_mediaslide content_mediaslide_instruction_id_80f44c89_fk_content_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_mediaslide
    ADD CONSTRAINT content_mediaslide_instruction_id_80f44c89_fk_content_i FOREIGN KEY (instruction_id) REFERENCES public.content_instruction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_mediaslide content_mediaslide_news_id_c17fb906_fk_content_news_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_mediaslide
    ADD CONSTRAINT content_mediaslide_news_id_c17fb906_fk_content_news_id FOREIGN KEY (news_id) REFERENCES public.content_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_news content_news_parent_id_bb8fafd0_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_news
    ADD CONSTRAINT content_news_parent_id_bb8fafd0_fk_garpix_page_page_id FOREIGN KEY (parent_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_simpleblock content_simpleblock_initiative_id_0b96abb4_fk_content_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_simpleblock
    ADD CONSTRAINT content_simpleblock_initiative_id_0b96abb4_fk_content_i FOREIGN KEY (initiative_id) REFERENCES public.content_initiative(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_smimedia content_smimedia_parent_id_09f1f039_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_smimedia
    ADD CONSTRAINT content_smimedia_parent_id_09f1f039_fk_garpix_page_page_id FOREIGN KEY (parent_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_smislide content_smislide_smi_id_ea20998d_fk_content_smimedia_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_smislide
    ADD CONSTRAINT content_smislide_smi_id_ea20998d_fk_content_smimedia_id FOREIGN KEY (smi_id) REFERENCES public.content_smimedia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_squareblock content_squareblock_initiative_id_53eb796f_fk_content_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_squareblock
    ADD CONSTRAINT content_squareblock_initiative_id_53eb796f_fk_content_i FOREIGN KEY (initiative_id) REFERENCES public.content_initiative(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_view content_view_content_type_id_e0532de6_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.content_view
    ADD CONSTRAINT content_view_content_type_id_e0532de6_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fcm_django_fcmdevice fcm_django_fcmdevice_user_id_6cdfc0a2_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fcm_django_fcmdevice
    ADD CONSTRAINT fcm_django_fcmdevice_user_id_6cdfc0a2_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_menu_menuitem garpix_menu_menuitem_page_id_ee746656_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_menu_menuitem
    ADD CONSTRAINT garpix_menu_menuitem_page_id_ee746656_fk_garpix_page_page_id FOREIGN KEY (page_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_menu_menuitem garpix_menu_menuitem_parent_id_0fa7f5f4_fk_garpix_me; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_menu_menuitem
    ADD CONSTRAINT garpix_menu_menuitem_parent_id_0fa7f5f4_fk_garpix_me FOREIGN KEY (parent_id) REFERENCES public.garpix_menu_menuitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify garpix_notify_notify_category_id_0a47804b_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify
    ADD CONSTRAINT garpix_notify_notify_category_id_0a47804b_fk_garpix_no FOREIGN KEY (category_id) REFERENCES public.garpix_notify_notifycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate garpix_notify_notify_category_id_409f148a_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate
    ADD CONSTRAINT garpix_notify_notify_category_id_409f148a_fk_garpix_no FOREIGN KEY (category_id) REFERENCES public.garpix_notify_notifycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify_files garpix_notify_notify_notify_id_60e05d3f_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_notify_id_60e05d3f_fk_garpix_no FOREIGN KEY (notify_id) REFERENCES public.garpix_notify_notify(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify_files garpix_notify_notify_notifyfile_id_3caa1c8f_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify_files
    ADD CONSTRAINT garpix_notify_notify_notifyfile_id_3caa1c8f_fk_garpix_no FOREIGN KEY (notifyfile_id) REFERENCES public.garpix_notify_notifyfile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notify_notifytemplate_id_5468a3e9_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notify_notifytemplate_id_5468a3e9_fk_garpix_no FOREIGN KEY (notifytemplate_id) REFERENCES public.garpix_notify_notifytemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate_user_lists garpix_notify_notify_notifyuserlist_id_08fe5004_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate_user_lists
    ADD CONSTRAINT garpix_notify_notify_notifyuserlist_id_08fe5004_fk_garpix_no FOREIGN KEY (notifyuserlist_id) REFERENCES public.garpix_notify_notifyuserlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notify garpix_notify_notify_user_id_2415ab78_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notify
    ADD CONSTRAINT garpix_notify_notify_user_id_2415ab78_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyuserlistparticipant garpix_notify_notify_user_id_d32d21eb_fk_user_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant
    ADD CONSTRAINT garpix_notify_notify_user_id_d32d21eb_fk_user_user FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifyuserlistparticipant garpix_notify_notify_user_list_id_58577a9f_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifyuserlistparticipant
    ADD CONSTRAINT garpix_notify_notify_user_list_id_58577a9f_fk_garpix_no FOREIGN KEY (user_list_id) REFERENCES public.garpix_notify_notifyuserlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_notifytemplate garpix_notify_notifytemplate_user_id_00054b59_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_notifytemplate
    ADD CONSTRAINT garpix_notify_notifytemplate_user_id_00054b59_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_notify_smtpaccount garpix_notify_smtpac_category_id_5e9a374c_fk_garpix_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_notify_smtpaccount
    ADD CONSTRAINT garpix_notify_smtpac_category_id_5e9a374c_fk_garpix_no FOREIGN KEY (category_id) REFERENCES public.garpix_notify_notifycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_componentchildren garpix_page_componen_component_id_16b52016_fk_garpix_pa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_componentchildren
    ADD CONSTRAINT garpix_page_componen_component_id_16b52016_fk_garpix_pa FOREIGN KEY (component_id) REFERENCES public.garpix_page_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_component garpix_page_component_page_id_805ec434_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_component
    ADD CONSTRAINT garpix_page_component_page_id_805ec434_fk_garpix_page_page_id FOREIGN KEY (page_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: garpix_page_page garpix_page_page_parent_id_0f59a474_fk_garpix_page_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garpix_page_page
    ADD CONSTRAINT garpix_page_page_parent_id_0f59a474_fk_garpix_page_page_id FOREIGN KEY (parent_id) REFERENCES public.garpix_page_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

