INSERT INTO genre (genre) VALUES 
('Science Fiction'), ('Technical'), ('Romance'), ('History');

INSERT INTO authors (author) VALUES 
('Frank Herbert'), ('J.K. Rowling'), ('George Orwell');

INSERT INTO customers (name, address, joining_date) VALUES 
('Alice Smith', '123 Apple St, NY', '2024-01-01'),
('Bob Jones', '456 Orange Ave, CA', '2024-02-15'),
('Charlie Brown', '789 Pine Rd, TX', '2024-03-10');

INSERT INTO books (title, genre_id, price, publication_date, isbn) VALUES 
('Dune', 1, 20.00, '1965-08-01', '9780441172719'),
('1984', 1, 15.00, '1949-06-08', '9780451524935'),
('Harry Potter', 1, 25.00, '1997-06-26', '9780590353427');

INSERT INTO book_authors (book_id, author_id) VALUES (1, 1);
INSERT INTO book_authors (book_id, author_id) VALUES (2, 3);
INSERT INTO book_authors (book_id, author_id) VALUES (3, 2);

INSERT INTO loans (book_id, customer_id, borrow_date, return_date) 
VALUES (1, 2, '2024-03-01', NULL);

INSERT INTO loans (book_id, customer_id, borrow_date, return_date) 
VALUES (2, 1, '2024-01-05', '2024-01-10');