CREATE TABLE IF NOT EXISTS books (
    id SERIAL,
    isbn VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    page_number INT,
    publication_date TIMESTAMP,
    authors_id INTEGER,
    created_date TIMESTAMP,
    last_modified_date TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT fk_authors
        FOREIGN KEY(authors_id)
        REFERENCES authors(id)
        ON DELETE CASCADE,
    UNIQUE (isbn)
);