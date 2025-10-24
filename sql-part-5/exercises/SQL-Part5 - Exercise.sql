--Object Creation:
--Table creation with name planned-makes
CREATE TABLE Sep2025JunkDB.mutya_bandaru.Planned_makes(
    plan_id INT  IDENTITY(1,1) PRIMARY KEY ,
    plan_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    rating INT
);
-- Answer : Table created with my columns

INSERT INTO Sep2025JunkDB.mutya_bandaru.Planned_makes (plan_id,plan_name,category,rating)
VALUES 
    (1,'Cricket','Sports',5),
    (2,'Maggie','recipe',4),
    (3,'Ludo app','coding',5);

-- Answer : All the 3 inserted rows were visisble in the table 

-- --Update a Row:
UPDATE Sep2025JunkDB.mutya_bandaru.Planned_makes
SET plan_name = 'Planting',
    category = 'Gardening'
WHERE plan_id = 2;

-- Answer : Maggie has bee replaced with p-lanting and category to gardening

--Delete a Row:
Delete FROM Sep2025JunkDB.mutya_bandaru.Planned_makes
WHERE Plan_name = 'Cricket';
-- The row with Plan_name = 'Cricket' had deleted , and i can ony see 2 rows in the table

-- Answer 
--DROP the Table
Drop TABLE Sep2025JunkDB.mutya_bandaru.Planned_makes
-- The whole table is dropped
