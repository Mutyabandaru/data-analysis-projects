-- A. The Books TABLE
-- Question 1:
SELECT TOP 1000 * FROM Books;
--Question 2:
Select COUNT(title) FROM Books;
--Question 3:
SELECT COUNT(*)  FROM Books WHERE original_publication_year < 1800;
--Question 4:
SELECT DISTINCT authors FROM Books;
--Question 5:
SELECT COUNT(*) FROM Books WHERE language_code LIKE 'eng%' or language_code LIKE 'en-%';
--Question 6:
SELECT COUNT(*) FROM Books WHERE original_publication_year BETWEEN 1914 AND 1921;


--B. The Book Tags Table
--Question 1:
SELECT TOP 1000 * From Book_Tags ORDER BY tag_id;
--Question 2:
SELECT tag_id, COUNT(goodreads_book_id) 
FROM Book_Tags GROUP BY tag_id;
--Question 3:
SELECT tag_id, COUNT(goodreads_book_id) AS BookCount
FROM Book_Tags GROUP BY tag_id; 


--C. The Ratings TABLE
--Question 1:
SELECT Top 1000 * FROM Ratings ORDER BY rating DESC;
--Question 2:
SELECT COUNT(DISTINCT user_id) AS LowRatings 
FROM Ratings WHERE rating < 2;
--Question 3:
SELECT COUNT(user_id) AS HighRatingBooks 
FROM Ratings WHERE rating >= 4;

--D. The Tags Table
--Question 1:
SELECT * FROM Tags 
WHERE tag_name LIKE '%mystery%';
--Question 2:
SELECT *  FROM BooksDB.dbo.tags WHERE tag_name < 'd' AND tag_name >= 'c';


--THE TO READ TABLE
--Question 1:
SELECT user_id, COUNT(book_id) 
AS TotalBooksToRead
FROM To_Read GROUP BY user_id 
ORDER BY user_id ASC;
--Question 2:
SELECT user_id, COUNT(book_id) 
AS TotalBooksToRead
FROM To_Read GROUP BY user_id 
ORDER BY TotalBooksToRead DESC;
