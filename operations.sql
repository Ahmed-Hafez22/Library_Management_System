INSERT INTO genre (genre) VALUES ('Classic');

UPDATE books SET genre_id = (SELECT genre_id
                            FROM genre
                            WHERE genre = 'Classic')
WHERE book_id = 1;

SELECT a.author, SUM(b.price)
FROM authors AS a
JOIN book_authors AS b_auth
ON a.author_id = b_auth.author_id
JOIN books AS b
ON b_auth.book_id = b.book_id
GROUP BY a.author, b.price
ORDER BY b.price DESC