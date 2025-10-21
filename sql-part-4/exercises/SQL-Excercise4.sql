-- QUESTION 1
SELECT COUNT(DISTINCT user_id) AS usercount
FROM BooksDB.dbo.ratings r
WHERE r.rating > (SELECT AVG(r2.rating) FROM BooksDB.dbo.ratings r2
WHERE r2.book_id = r.book_id);

-- 49382 users 

-- QUESTION 2
SELECT book_id 
FROM BooksDB.dbo.ratings r
WHERE r.rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000
UNION
SELECT book_id 
FROM BooksDB.dbo.ratings r
WHERE r.rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000;

--ANSWER: There ar no book_id that have over 1000 ratings of 1 star  or over 1000 ratings of 5 star

-- QUESTION 3
SELECT book_id 
FROM BooksDB.dbo.ratings r
WHERE r.rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000
INTERSECT
SELECT book_id 
FROM BooksDB.dbo.ratings r
WHERE r.rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000;

--ANSWER: There ar no book_id that have over 1000 ratings of 1 star  AND over 1000 ratings of 5 star


-- QUESTION 4
SELECT book_id
FROM BooksDB.dbo.books b 
WHERE language_code = 'en-US'
EXCEPT 
SELECT book_id
FROM BooksDB.dbo.books b 
WHERE language_code = 'en-GB'  

-- QUESTION 5
SELECT tag_id, tag_name
FROM tags
WHERE tag_id IN (
    SELECT tag_id 
    from book_tags 
    GROUP BY tag_id
    HAVING COUNT(*) > 9980
);

---There are no tags that are used over 100000 for  a book .