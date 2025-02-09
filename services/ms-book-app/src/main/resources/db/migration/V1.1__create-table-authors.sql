CREATE TABLE IF NOT EXISTS authors (
    id SERIAL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    birth_date TIMESTAMP,
    created_date_time TIMESTAMP,
    last_modified_date_time TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE (email, phone_number)
);