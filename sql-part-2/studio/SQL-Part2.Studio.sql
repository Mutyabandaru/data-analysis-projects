-- --QUESTION 1:
SELECT MAX(LEN(title)) FROM BookSDB.dbo.books

--ANSWER: 186

SELECT title
FROM BooksDB.dbo.books
WHERE LEN(title) = 186;

-- ANSWER: Soccernomics: Why England Loses, Why Germany and Brazil Win, and Why the U.S., Japan, Australia, Turkey--and Even Iraq--Are Destined to Become the Kings of the World's Most Popular Sport

--QUESTION 2:
SELECT MIN(LEN(authors)) FROM BookSDB.dbo.books

--ANSWER: 3

SELECT DISTINCT authors
FROM BooksDB.dbo.books
WHERE LEN(authors) = 3;
--ANSWER: Avi

--QUESTION 3:
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%The%';

SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%the%';
--ANSWER: There is no difference

--QUESTION 4:
SELECT COUNT(authors)
FROM BooksDB.dbo.books
WHERE authors LIKE 'Z%';
--ANSWER: 11

--QUESTION 5:
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE LEFT(language_code,2)!= 'en';
--ANSWER: 186

--QUESTION 6:
SELECT COUNT(title) 
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code,1,2) != 'en';
--ANSWER: 186

--QUESTION 7:
SELECT CONCAT(title,'by', authors,'in', language_code, '/language') AS Titlebyauthours
FROM BooksDB.dbo.books

--QUESTION 8:
SELECT CONCAT(title,'by', authors,'in', COALESCE(language_code, 'unknown'),'language') AS Titlebyauthours
FROM BooksDB.dbo.books

--QUESTION 9:
SELECT CONCAT(title,'by', authors,'in', ISNULL(language_code, 'unknown'),'language') AS Titlebyauthours
FROM BooksDB.dbo.books




