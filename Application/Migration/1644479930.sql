CREATE TABLE comments (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    posts_id UUID DEFAULT uuid_generate_v4() NOT NULL,
    author TEXT NOT NULL,
    body TEXT NOT NULL
);
ALTER TABLE comments ADD CONSTRAINT comments_ref_posts_id FOREIGN KEY (posts_id) REFERENCES posts (id) ON DELETE NO ACTION;
