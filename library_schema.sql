CREATE TABLE IF NOT EXISTS genre (
    genre_id SERIAL PRIMARY KEY,
    genre TEXT
);

CREATE TABLE IF NOT EXISTS books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(256),
    genre_id INTEGER REFERENCES genre (genre_id),
    price NUMERIC,
    publication_date DATE,
    isbn VARCHAR(13)
);

CREATE TABLE IF NOT EXISTS authors (
    author_id SERIAL PRIMARY KEY,
    author TEXT
);

CREATE TABLE IF NOT EXISTS book_authors (
    book_id INTEGER REFERENCES books (book_id),
    author_id INTEGER REFERENCES authors (author_id),
    PRIMARY KEY (book_id, author_id)
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    name TEXT,
    address TEXT,
    joining_date DATE
);

CREATE TABLE IF NOT EXISTS loans (
    loan_id SERIAL PRIMARY KEY,
    book_id INTEGER REFERENCES books (book_id),
    customer_id INTEGER REFERENCES customers (customer_id),
    borrow_date DATE,
    return_date DATE
);
