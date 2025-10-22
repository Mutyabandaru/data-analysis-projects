--QUESTION 1
Select title 
From BooksDB.dbo.books
Where book_id IN (
    SELECT book_id 
    FROM BooksDB.dbo.books
    WHERE authors LIKE '%,%');

    
--QUESTION 2
SELECT title
FROM BooksDB.dbo.books
WHERE book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.book_tags
    WHERE tag_id = (
        SELECT tag_id
        FROM BooksDB.dbo.tags
        WHERE tag_name = 'Meditation'
    )
);


--QUESTION 3
SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
WHERE average_rating >= 4.2

INTERSECT

SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
WHERE title = original_title
AND original_title IS NOT NULL
ORDER BY average_rating DESC;


--QUESTION 4
--Part A:
SELECT title, average_rating, original_publication_year
FROM BooksDB.dbo.books
WHERE average_rating < (
    SELECT AVG(rating)
    FROM BooksDB.dbo.ratings
    WHERE ratings.book_id = books.book_id
)
--Part B:
ORDER BY original_publication_year DESC, title ASC
