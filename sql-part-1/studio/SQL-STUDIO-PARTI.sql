--QUESTION 1:
SELECT TOP 100
book_id,
authors,
title,
average_rating As 'Rating average'
FROM BooksDB.dbo.books
ORDER BY average_rating DESC;
-- ANSWER: The number one book is "Harry Potter Boxed Set, Books 1-5 (Harry Potter, #1-5)"

--QUESTION 2:
SELECT TOP 1
book_id,
authors,
title,
average_rating As 'Rating average'
FROM BooksDB.dbo.books
ORDER BY average_rating ;
-- ANSWER: "One Night at the Call Center" is the least popular book.

--QUESTION 3:
SELECT TOP 1 tag_id
FROM BooksDB.dbo.book_tags
GROUP BY tag_id
ORDER BY COUNT(*) DESC;
-- ANSWER: 30574 is the most popular tag


--QUESTION 4:
SELECT tag_id, tag_name
FROM BooksDB.dbo.tags
WHERE tag_id LIKE 30574
-- ANSWER: to-read

--Question 5:
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 2000 AND 2009;
-- ANSWER: "3121" books published in the first decade of 2000

--Question 6:
SELECT COUNT(*) AS BooksWithHappy
FROM BooksDB.dbo.books
WHERE title LIKE '%happy%';
-- ANSWER: 13 books that contain the word, "happy"


--Question 7:
SELECT 
    authors,
    title,
    average_rating
FROM BooksDB.dbo.books
WHERE authors IN (
    SELECT TOP 3 authors
    FROM BooksDB.dbo.books
    GROUP BY authors
    ORDER BY AVG(average_rating) DESC
)
ORDER BY authors ASC, average_rating DESC;
-- ANSWER: Anonymous, Lane T. Dennis, Wayne A. Grudem	ESV Study Bible	4.76
-- Anonymous, Ronald A. Beers, Ronald A. Beers	Life Application Study Bible: NIV	4.67
-- Bill Watterson	The Complete Calvin and Hobbes	4.82


--Question 8:
SELECT COUNT(DISTINCT authors) 
FROM BooksDB.dbo.books 
WHERE authors BETWEEN 'rock' AND 'roll'
-- ANSWER: 16


--Part 2: Find the Answers to Your Own Questions
--Question 1:
SELECT TOP 1 title, LEN(title) AS TitleLength 
FROM BooksDB.dbo.books
ORDER BY TitleLength DESC;
-- ANSWER: Soccernomics: Why England Loses, Why Germany and Brazil Win, and Why the U.S., Japan, Australia, Turkey--and Even Iraq--Are Destined to Become the Kings of the World's Most Popular Sport	186

--QUESTION 2:
SELECT TOP 1 authors, COUNT(book_id) AS totalbooks
FROM BooksDB.dbo.books 
GROUP BY authors
ORDER BY totalbooks DESC;
--ANSWER: Stephen King	60

--QUESTION 3:
SELECT TOP 10 
title,
 authors,
    original_publication_year,
    average_rating
FROM BooksDB.dbo.books
WHERE original_publication_year = 1994
ORDER BY average_rating DESC;
--ANSWER: Homicidal Psycho Jungle Cat: A Calvin and Hobbes Collection	Bill Watterson	1994	4.71
-- An Echo in the Darkness (Mark of the Lion, #2)	Francine Rivers	1994	4.6
-- Brief Lives (The Sandman #7)	Neil Gaiman, Jill Thompson, Vince Locke, Peter Straub	1994	4.55
-- Disney's the Lion King	Don Ferguson	1994	4.49
-- The Lion King (Disney's Wonderful World of Reading)	Justine Korman Fontes	1994	4.48
-- The Lion King: A little Golden Book	Justine Korman Fontes, Don Williams, Walt Disney Company	1994	4.46
-- Shadows over Innsmouth	Stephen Jones, H.P. Lovecraft, Kim Newman, Brian Mooney, Nicholas Royle, David Langford, Michael Marshall Smith, Brian Lumley, Neil Gaiman, Basil Copper, Jack Yeovil, Guy N. Smith, Adrian Cole, D.F. Lewis, Ramsey Campbell, David Sutton, Peter Tremayne	1994	4.43
-- Stand Tall, Molly Lou Melon	Patty Lovell, David Catrow	1994	4.39
-- Case Closed, Vol. 1	Gosho Aoyama	1994	4.36
-- Rurouni Kenshin, Vol. 1: Meiji Swordsman Romantic Story (Rurouni Kenshin, #1)	Nobuhiro Watsuki, Kenichiro Yagi	1994	4.33