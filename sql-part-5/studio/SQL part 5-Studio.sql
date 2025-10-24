-- PART A: Setting up Your Tables
-- Book Table:
CREATE tABLE Sep2025JunkDB.mutya_bandaru.book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);

--Populated the book table:
INSERT INTO Sep2025JunkDB.mutya_bandaru.book(author_id, title, isbn, available, genre_id)
VALUES (2, 'A Midsummers Night Dream', 978149413, 1, 23),
         (2, 'Romeo and Juliet', 988535196, 1, 3),
         (1, 'The Golden Compass', 451664226, 1, 1),
         (1, 'The Subtle Knife', 160419390, 1, 1),
         (1, 'The Amber Spyglass', 94387895, 1, 1),
         (3, 'The Alchemist', 464069772, 1, 2),
         (4, 'And Then There Were None', 335973357, 1, 6),
         (5, 'The Joy Luck Club', 990050329, 1, 10),
         (5, 'The Moon Lady', 91720786, 1, 24),
         (6, 'Sense and Sensibility', 156879860, 1, 2),
         (6, 'Northanger Abbey', 951273178, 1, 3),
         (6, 'Pride and Prejudice', 415886839, 1, 3),
         (6, 'Mansfield Park', 188534067, 1, 3),
         (6, 'Emma', 994896202, 1, 3),
         (6, 'Persuasion', 28150097, 1, 3),
         (6, 'Lady Susan', 230962926, 1, 3),
         (7, 'Wuthering Heights', 280569946, 1, 3),
         (8, 'The Handmaids Tale', 639239663, 1, 5),
         (8, 'The Testaments', 826875490, 1, 5),
         (9, 'The Parable of the Sower', 283359358, 1, 5),
         (10, 'Little Women', 495409887, 1, 23),
         (11, 'Still Life', 455128657, 1, 6),
         (11, 'A Fatal Grace', 832517012, 1, 6),
         (11, 'The Cruelest Month', 419285319, 1, 6),
         (11, 'The Murder Stone', 656621400, 1, 6),
         (11, 'The Brutal Telling', 144255852, 1, 6),
         (11, 'Bury Your Dead', 208180961, 1, 6),
         (11, 'A Trick of the Light', 93451531, 1, 6),
         (12, 'Midnights Children', 881082293, 1, 10),
         (13, 'Dont Let the Pigeon Drive the Bus!', 18409532, 1, 24),
         (14, 'Beezus and Ramona', 744412630, 1, 24),
         (15, 'Organic Chemistry', 604328803, 1, 25),
         (16, 'I Know Why the Caged Bird Sings', 909947112, 1, 12),
         (17, 'Beloved', 46736233, 1, 10),
         (18, 'Brassbones and Rainbows', 330608463, 1, 26);

-- TEST YOUR DATA:
SELECT * FROM Sep2025JunkDB.mutya_bandaru.book
WHERE genre_id = 26;


--AUTHOR TABLE:
CREATE TABLE Sep2025JunkDB.mutya_bandaru.author (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);


--Populate Author Table:
INSERT INTO Sep2025JunkDB.mutya_bandaru.author(first_name, last_name, birth_year, death_year)
Values ('Phillip', 'Pullman', 1946, null),
 ('William', 'Shakespeare', 1564, 1616),
 ('Paulo', 'Coelho', 1947, null),
 ('Agatha', 'Christie', 1890-09-15, 1976-01-12),
 ('Amy', 'Tan', 1952-02-19, null),
 ('Jane', 'Austin', 1775-12-16, 1817-07-18),
 ('Emily', 'Bronte', 1818-07-30, 1848-12-19),
 ('Margaret', 'Atwood', 1939-11-18, null),
 ('Octavia', 'Butler', 1947-06-22, 2006-02-24),
 ('Louisa May', 'Alcott', 1832-11-29, 1888-03-06),
 ('Louise', 'Penny', 1958-07-01, null),
 ('Salman', 'Rushdie', 1947-08-19, null),
 ('Mo', 'Willems', 1968-02-11, null),
 ('Beverly', 'Cleary', 1916-04-12, null),
 ('Peter', 'Vollhardt', 1946-03-07, null),
 ('Maya', 'Angelou', 1928-04-04, 2014-05-28),
 ('Toni', 'Morrison', 1931-02-18, 2019-08-05),
 ('Shirley', 'LeFlore', 1940-03-06, 2019-05-12);

SELECT * FROM Sep2025JunkDB.mutya_bandaru.author


--Patron Table:
CREATE TABLE Sep2025JunkDB.mutya_bandaru.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);

--Populate Patron Table
INSERT INTO Sep2025JunkDB.mutya_bandaru.patron(first_name, last_name, loan_id)
Values ('Jennifer', 'Slayny', NULL),
('Susan', 'Traviss', NULL),
('Vincent', 'Ritelli', NULL),
('Tasia', 'Laybourne', NULL),
('Wren', 'Gergler', NULL),
('Tory', 'Lees', NULL),
('Estelle', 'Di Lorio', NULL),
('Dorian', 'Betje', NULL),
('Frank', 'Jelk', NULL),
('Chris', 'Endon', NULL),
('Gillie', 'Fritz', NULL),
('Leisha', 'Defty', NULL),
('Erika', 'Bompass', NULL),
('Gabe', 'Moxstead', NULL),
('Blake', 'Teresse', NULL),
('Joshua', 'Timmouth', NULL),
('Tasha', 'Timmouth', NULL),
('Neil', 'Davie', NULL),
('Emmeline', 'Pitherick', NULL),
('Josiah', 'Staner', NULL),
('James', 'Greetham', NULL),
('Isaac', 'Barstowk', NULL),
('Dean', 'Nelane', NULL),
('Carolina', 'Cranmere', NULL),
('Champ', 'Lardiner', NULL),
('Abbie', 'Quaif', NULL),
('Camile', 'Milbourne', NULL),
('Quentin', 'Crose', NULL),
('Silvano', 'Horlick', NULL),
('Phyllis', 'Cicchillo', NULL),
('Jerrie', 'Brownhall', NULL),
('Ludovika', 'Leist', NULL),
('Tara', 'Knatt', NULL),
('Kelsie', 'Parkson', NULL),
('Jodi', 'Leopard', NULL),
('Rosanna', 'Cultcheth', NULL),
('Remy', 'Fairpool', NULL),
('Megan', 'Blyth', NULL),
('Rikki', 'McLernon', NULL),
('Clare', 'Haacker', NULL),
('Vincent', 'Chettle', NULL),
('Sybil', 'Costanza', NULL),
('Jonas', 'Sinclare', NULL),
('Claire', 'Bendel', NULL),
('Kathleen', 'Welband', NULL),
('Kylie', 'Crannage', NULL),
('Evelyn', 'Tarajo', NULL),
('Oliver', 'Caulson', NULL);

SELECT * FROM Sep2025JunkDB.mutya_bandaru.patron


--Genre Table:
CREATE TABLE Sep2025JunkDB.mutya_bandaru.genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);

--Populate the Genre Table:
INSERT INTO Sep2025JunkDB.mutya_bandaru.genre(genre_id, genres)
 Values (1, 'Fantasy'),
 (2, 'Adventure'),
 (3, 'Romance'),
 (4, 'Contemporary'),
 (5, 'Dystopian'),
 (6, 'Mystery'),
 (7, 'Horror'),
 (8, 'Thriller'),
 (9, 'Paranormal'),
 (10, 'Historical Fiction'),
 (11, 'Science Fiction'),
 (12, 'Memoir'),
 (13, 'Cooking'),
 (14, 'Art'),
 (15, 'Self-Help'),
 (16, 'Development'),
 (17, 'Motivational'),
 (18, 'Health'),
 (19, 'History'),
 (20, 'Travel'),
 (21, 'Guide'),
 (22, 'Families and Relationships'),
 (23, 'Humor'),
 (24, 'Childrens'),
 (25, 'Reference'),
 (26, 'Poetry');


SELECT * FROM Sep2025JunkDB.mutya_bandaru.genre

--Loan Table:
CREATE TABLE Sep2025JunkDB.mutya_bandaru.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.mutya_bandaru.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);

SELECT * FROM Sep2025JunkDB.mutya_bandaru.loan

--PART B: Warm-Up Queries 
-- 1. Return the mystery book titles and their ISBNs.
SELECT title, isbn
FROM Sep2025JunkDB.mutya_bandaru.book b
JOIN Sep2025JunkDB.mutya_bandaru.genre g ON b.genre_id = g.genre_id
WHERE g.genres = 'mystery'
 --got 8 rows of title matched with mystery

--2. Return all of the titles and the author's first and last names for books written by authors who are currently living.
SELECT b.title, a.first_name,a.last_name
 FROM Sep2025JunkDB.mutya_bandaru.book b
  JOIN  Sep2025JunkDB.mutya_bandaru.author a ON b.author_id = a.author_id
 WHERE death_year IS NULL;
 --got 19 rows of book titles 

 
 --Part C: Loan Out a Book
DECLARE @book_id INT = 1;      
DECLARE @patron_id INT = 1;    
DECLARE @new_loan_id INT;

 BEGIN TRANSACTION;

 UPDATE  Sep2025JunkDB.mutya_bandaru.book 
 SET available = 0
 WHERE book_id= @book_id;

INSERT INTO Sep2025JunkDB.mutya_bandaru.loan(patron_id,date_out,book_id)
VALUES (@patron_id, CAST(GETDATE() AS DATE), @book_id)

UPDATE Sep2025JunkDB.mutya_bandaru.patron
SET loan_id = @new_loan_id
WHERE patron_id = @patron_id;

COMMIT TRANSACTION;

-- OUTPUT:
--loan_id is 1,	patron_id is 1, date_out is	2025-10-23,  date_in is	NULL,	book_id is 1


--Part D:
DECLARE @book_id INT = 1;
DECLARE @patron_id INT = 1;
BEGIN TRANSACTION;

 UPDATE  Sep2025JunkDB.mutya_bandaru.book 
 SET available = 1
 WHERE book_id= @book_id;

 INSERT INTO Sep2025JunkDB.mutya_bandaru.loan(patron_id,date_in,book_id)
VALUES (@patron_id, CAST(GETDATE() AS DATE), @book_id)

UPDATE Sep2025JunkDB.mutya_bandaru.patron
SET loan_id = NULL
WHERE patron_id = @patron_id;

COMMIT TRANSACTION;

-- OUTPUT:
--loan_id is 2,	patron_id is 1, date_out is	NULL,  date_in is	2025-10-23,	book_id is 1

-- Part E
-- Create a temp table:
DECLARE @patron_id INT = 1;

CREATE TABLE #Patron_loans(
    loan_id INT,
    book_title VARCHAR(255),
    date_out DATE,
    date_in DATE,
    available BIT
)

INSERT INTO #Patron_loans
SELECT l.loan_id, b.title, l.date_out, l.date_in, b.available
FROM Sep2025JunkDB.mutya_bandaru.loan l
JOIN Sep2025JunkDB.mutya_bandaru.book b ON l.book_id = b.book_id
WHERE l.patron_id = @patron_id;

SELECT * FROM #Patron_loans;

-- Output : : i see 3 rows of data in our temp table

-- Part f wrap up query
-- Create a query that returns the names of the patrons with the genre of every book they currently have checked out.

Select p.first_name, p.last_name, g.genres
from Sep2025JunkDB.mutya_bandaru.patron p
join Sep2025JunkDB.mutya_bandaru.loan l on p.patron_id = l.patron_id
join Sep2025JunkDB.mutya_bandaru.book b on l.book_id = b.book_id
join Sep2025JunkDB.mutya_bandaru.genre g on b.genre_id = g.genre_id
where l.date_in is null;

-- Output : : i see this row in the feils firstname :  Jennifer	last name :Slayny	genre : Humor

-- Bonus Challenge 
CREATE TABLE Sep2025JunkDB.mutya_bandaru.reference_books (
    reference_id INT IDENTITY(1,1) PRIMARY KEY,
    edition INT,
    book_id INT,
    CONSTRAINT fk_reference_book FOREIGN KEY (book_id)
    REFERENCES Sep2025JunkDB.mutya_bandaru.book(book_id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);

INSERT INTO Sep2025JunkDB.mutya_bandaru.reference_books (edition, book_id)
VALUES (5,32);

select * from Sep2025JunkDB.mutya_bandaru.reference_books;

-- Modifications 

ALTER TABLE Sep2025JunkDB.mutya_bandaru.reference_books
ADD can_be_loaned BIT NOT NULL DEFAULT 0;

ALTER TABLE Sep2025JunkDB.mutya_bandaru.reference_books
ADD CONSTRAINT chk_can_be_loaned CHECK (can_be_loaned = 0);

-- Output : can_be_loaded is shown as 0
