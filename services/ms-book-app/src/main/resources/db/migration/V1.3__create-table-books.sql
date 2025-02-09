CREATE TABLE IF NOT EXISTS books (
    id SERIAL,
    isbn VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    page_number INT,
    published_date TIMESTAMP,
    author_id INTEGER,
    created_date_time TIMESTAMP,
    last_modified_date_time TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT fk_authors
        FOREIGN KEY(author_id)
        REFERENCES authors(id)
        ON DELETE CASCADE,
    UNIQUE (isbn)
);