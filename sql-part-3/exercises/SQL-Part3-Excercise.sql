-- QUESTION 1:
-- Part A : LEFT JOIN

SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating;
-- ANSWER: Left table: books(b)
--         Right table: to_read(tr)

-- Part B :LEFT JOIN USING 'IS NOT NULL'

SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating;
-- ANSWER: Adding WHERE tr.user_id IS NOT NULL filters out rows where there is no matching to_read entry, turning the result closer to an inner join because now only books that have a user “to read” record remain.

--QUESTION 2:

-- Part A : RIGHT JOIN

SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id;
-- ANSWER:
--PART A: Left table: books(b)
--    Right table: to_read(tr)

-- PART B: A RIGHT JOIN keeps all rows from to_read and includes matching rows from books.
-- Compared to the LEFT JOIN in Q1, the focus shifts: LEFT JOIN keeps all books, RIGHT JOIN keeps all to_read.

--QUESTION 3:

-- Part A : FULL JOIN

SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id;

--Answer : A FULL JOIN keeps all rows from both tables, filling NULLs when there is no match.
--You might use it when you want a complete view of both tables, including unmatched entries.

-- Question 4 :

-- Part A:

-- An INNER JOIN returns only rows that match in both tables.

-- Part B:

-- IS NOT NULL is not necessary here because the join itself only returns matching rows; any unmatched rows are already excluded.

--Part C: Simplified query:

-- INNER JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
ORDER BY tr.book_id;

-- Question 5 :

--Part A: Title and total tag count

SELECT TOP 1
  b.title,
  COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt
  ON b.best_book_id = bt.goodreads_book_id
GROUP BY b.title
ORDER BY COUNT(bt.tag_id) DESC;


-- Answer : Selected Poems is the most tagged book

--Part B: For that same book, find which tag_id is used most often

SELECT TOP 1
  bt.tag_id,
  COUNT(*) AS tag_usage_count
FROM BooksDB.dbo.book_tags AS bt
WHERE bt.goodreads_book_id = (
  SELECT TOP 1 b2.best_book_id
  FROM BooksDB.dbo.books AS b2
  JOIN BooksDB.dbo.book_tags AS bt2
    ON b2.best_book_id = bt2.goodreads_book_id
  GROUP BY b2.best_book_id
  ORDER BY COUNT(*) DESC
)
GROUP BY bt.tag_id
ORDER BY COUNT(*) DESC;

--Answer 249 different tags were used for the most tagged book

-- Part c: Particular Tag

SELECT t.tag_name
FROM BooksDB.dbo.tags AS t
WHERE t.tag_id = (
  SELECT TOP 1
    bt.tag_id
  FROM BooksDB.dbo.book_tags AS bt
  WHERE bt.goodreads_book_id = (
    SELECT TOP 1 b2.best_book_id
    FROM BooksDB.dbo.books AS b2
    JOIN BooksDB.dbo.book_tags AS bt2
      ON b2.best_book_id = bt2.goodreads_book_id
    GROUP BY b2.best_book_id
    ORDER BY COUNT(*) DESC
  )
  GROUP BY bt.tag_id
  ORDER BY COUNT(*) DESC
);

-- Question 6 :

-- Part A :

SELECT tag_id, tag_name
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%magic%';

-- Part B:

SELECT TOP 1
  b.title,
  COUNT(*) AS usages
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt
  ON b.best_book_id = bt.goodreads_book_id
WHERE bt.tag_id = 12345
GROUP BY b.title
ORDER BY COUNT(*) DESC;

--Question 7:

--Part A :
-- Joining the 'to_read' and 'books' tables using the book_id / best_book_id relationship
SELECT TOP 20
    tr.user_id,
    tr.book_id,
    b.title,
    b.authors,
    b.average_rating,
    b.books_count
FROM BooksDB.dbo.to_read AS tr
JOIN BooksDB.dbo.books AS b
    ON tr.book_id = b.best_book_id
ORDER BY tr.user_id;



--Part B :

-- Question 8:
SELECT TOP 10
  b.title,
  COUNT(tr.user_id) AS times_in_to_read
FROM BooksDB.dbo.to_read AS tr
JOIN BooksDB.dbo.books AS b
  ON tr.book_id = b.best_book_id
GROUP BY b.title
ORDER BY COUNT(tr.user_id) DESC;

--Part A

SELECT TOP 10
  tr.user_id,
  COUNT(tr.book_id) AS list_length
FROM BooksDB.dbo.to_read AS tr
GROUP BY tr.user_id
ORDER BY COUNT(tr.book_id) DESC;

--Part B
SELECT
  b.title,
  tr.book_id
FROM BooksDB.dbo.to_read AS tr
JOIN BooksDB.dbo.books AS b
  ON tr.book_id = b.best_book_id
WHERE tr.user_id = 7890;
