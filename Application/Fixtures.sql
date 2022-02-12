

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('cb580a1c-d58d-4afd-9931-8e4905106bbd', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2022-02-10 16:20:54.461032+11');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('bdbb047b-7d6d-4a25-a32f-2d4a842e2043', 'Markdown Test', '### Heading

This is a paragraph. I am placing *emphasis*. Now I''m placing a **lot** of emphasis. Now I want you to know this is ***really*** important.

This is an ordered list:
1. First item
2. Second item
3. Third item

This is the end of the post.', '2022-02-10 18:10:59.483987+11');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, posts_id, author, body, created_at) VALUES ('d71f0104-2de0-441c-a11f-6c65aa1e614b', 'bdbb047b-7d6d-4a25-a32f-2d4a842e2043', 'GROD', 'Hello World!', '2022-02-11 15:01:30.466918+11');
INSERT INTO public.comments (id, posts_id, author, body, created_at) VALUES ('c0e859be-804c-4c37-9f0e-ed7ffd9c9c14', 'bdbb047b-7d6d-4a25-a32f-2d4a842e2043', 'GROD', 'It''s me again', '2022-02-11 15:01:30.466918+11');
INSERT INTO public.comments (id, posts_id, author, body, created_at) VALUES ('3eb7f4b4-7a6b-4aa6-90de-7662ab307bd0', 'bdbb047b-7d6d-4a25-a32f-2d4a842e2043', 'GROD', 'This is the third comment', '2022-02-11 15:05:10.759225+11');
INSERT INTO public.comments (id, posts_id, author, body, created_at) VALUES ('7863ebb8-2c04-415a-b39d-3ec843a7fe4c', 'bdbb047b-7d6d-4a25-a32f-2d4a842e2043', 'Edmond', 'Hello GROD', '2022-02-12 13:56:37.503868+11');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


ALTER TABLE public.schema_migrations DISABLE TRIGGER ALL;

INSERT INTO public.schema_migrations (revision) VALUES (1644469706);
INSERT INTO public.schema_migrations (revision) VALUES (1644470454);
INSERT INTO public.schema_migrations (revision) VALUES (1644479930);
INSERT INTO public.schema_migrations (revision) VALUES (1644552090);


ALTER TABLE public.schema_migrations ENABLE TRIGGER ALL;


