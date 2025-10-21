-- PART 1:
-- EVENT 1:

SELECT t.tag_id,t.tag_name,COUNT(bt.tag_id) AS tagcount
FROM BooksDB.dbo.book_tags AS bt
JOIN tags t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Woman%'OR t.tag_name LIKE '%Female%' or t.tag_name LIKE '%Women%'
GROUP BY t.tag_id, t.tag_name
HAVING COUNT(bt.tag_id) > 1
ORDER BY tagcount DESC

/* 
I wrote this query to highlight popular women authors and themes for Women's History Month. 
By joining the book_tags and tags tables, I can identify which tags are associated with books written by or about women. 
I used WHERE conditions with keywords like 'woman' and 'female' to capture all relevant tags. 
The GROUP BY and HAVING clauses help summarize which tags appear most often, showing the most popular themes to feature for this event.
*/

-- Event 2 
SELECT b.book_id, b.title, b.average_rating, t.tag_id, t.tag_name
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.books AS b ON bt.goodreads_book_id = b.book_id
INNER JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE tag_name LIKE 'patriot%' OR tag_name LIKE 'soldier' OR tag_name LIKE 'veteran'
GROUP BY b. title, b.book_id, b. average_rating, t.tag_name, t.tag_id
HAVING average_rating > 2.5

/* 
I designed this query to find books that fit patriotic or national themes, inspired by March events like St. Patrick’s Day and Spring. 
I joined the books, book_tags, and tags tables to link book details with their related tags. 
The WHERE clause filters for tags like 'patriot', 'soldier', and 'veteran' to find books with those subjects. 
The HAVING clause ensures the books have a decent average rating, so we only promote titles that are both relevant and well-reviewed.
*/

--Part 2
-- Event 1  : Hallowen  reads
SELECT 
    b.book_id,
    b.title,
    b.authors,
    b.average_rating,
    t.tag_name,
    COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.book_tags AS bt
JOIN BooksDB.dbo.books AS b ON bt.goodreads_book_id = b.book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%horror%' 
   OR t.tag_name LIKE '%mystery%'
   OR t.tag_name LIKE '%thriller%'
   OR t.tag_name LIKE '%supernatural%'
GROUP BY b.book_id, b.title, b.authors, b.average_rating, t.tag_name
HAVING AVG(b.average_rating) > 3.5
ORDER BY AVG(b.average_rating) DESC;

-- Event 2  : National book month
SELECT 
    b.authors,
    COUNT(b.book_id) AS total_books,
    ROUND(AVG(b.average_rating), 2) AS avg_rating,
    t.tag_name
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%classic%' 
   OR t.tag_name LIKE '%bestseller%' 
   OR t.tag_name LIKE '%popular%'
GROUP BY b.authors, t.tag_name
HAVING COUNT(b.book_id) > 2 AND AVG(b.average_rating) > 3.8
ORDER BY avg_rating DESC;


-- Part 3 
-- Summarize Event 1 Hallowen reads

/*I chose this query to highlight Halloween-themed books in October. The tags horror, mystery, thriller, and supernatural are often popular around this season.
This query joins the books, book_tags, and tags tables to connect book metadata with thematic tags.
The HAVING clause filters books with average ratings above 3.5, ensuring only highly-rated and engaging titles appear.
This approach helps identify spooky, mysterious, or thrilling reads ideal for Halloween promotions.*/

-- Summarize Event 2: National Book Month 

/*For National Book Month, the goal is to showcase authors with consistently high-rated and widely recognized works.
This query joins the same three tables but focuses on authors and their body of work. The tags classic, bestseller, and popular capture enduring, reader-favorite books.
The HAVING clause ensures we only feature authors with more than two books and an average rating above 3.8, helping promote writers with proven appeal and audience trust.
The query’s results can help the store build “Author of the Month” or “Reader’s Choice Classics” displays during October promotions.*/