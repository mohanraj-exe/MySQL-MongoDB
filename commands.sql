-- What is a Database Table?
-- A table is a collection of related data entries, and it consists of columns and rows.
-- A column holds specific information about every record in the table.
-- A record (or row) is each individual entry that exists in a table.

-- Commands:
CREATE DATABASE MagicalLibrary; 
-- // It creates a new DB with a given name.

CREATE TABLE Books(
  BookID INT,
  Title VARCHAR(255),
  Author VARCHAR(255),
  PublishedYear INT,
  Genre VARCHAR(100)
); 
-- It creates a new table with its column, that column holds specific information about every record in a table.

INSERT INTO Books(BookID, Title, Author, PublishedYear, Genre)
VALUES (001, 'Harry potter', 'J K Rowling', 1997, 'Fantasy'),
(002, 'IDKJS', 'Kyle Simpson', 2013, 'Computer Science'),
(003, 'Harry potter-1', 'J K Rowling', 1999, 'Fantasy'),
(004, 'Harry potter-2', 'J K Rowling', 2000, 'Fantasy'),
(005, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(006, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(007, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(008, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(009, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(010, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(011, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(012, 'Harry potter-3', 'Joanne Rowling', 2002, 'Fantasy'),
(013, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(014, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(015, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(016, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(017, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(018, 'Harry potter-3', 'Joanne Rowling', 2002, 'Fantasy'),
(019, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(020, 'Harry potter-3', 'J K Rowling', 2002, 'Fantasy'),
(021, 'EJS-1', 'Marijn Haverbeke', 2007, 'Computer Science'),
(022, 'EJS-2', 'Marijn Haverbeke', 2014, 'Computer Science'),
(023, 'EJS-3', 'Marijn Haverbeke', 2018, 'Computer Science'),
(024, 'EJS-4', 'Marijn Haverbeke', 2024, 'Computer Science');

SELECT * FROM Books; 
-- // It selects/displays all contents from the Books table.

SELECT BookID, Title, Author, Genre, PublishedYear FROM Books; 
-- // It selects/displays only selected columns content from the Books table.

SELECT * FROM Books
WHERE Author = 'J K Rowling';
-- // It displays only column with the given value from the Books table.

SELECT Author FROM Books;
-- // This query shows only result of Author column.

SELECT DISTINCT Author FROM Books;
-- // This query shows only result of Author column excludes Duplicates.

UPDATE Books SET Author = 'Joanne Rowling' WHERE Author = 'J K Rowling'
-- // This query update entries where Author columns 'J K Rowling' with 'Joanne Rowling'.

SELECT * FROM Books
ORDER BY PublishedYear DESC; 
-- // This query shows result of column PublishedYear in descending order likewise with ASC ascending order.

SELECT COUNT(*) as Count FROM Books;
-- // Count numbers

SELECT * FROM Books LIMIT 3;
-- // Limit fetching only given number of records.

SELECT * FROM Books LIMIT 3 OFFSET 2;
-- // This query shows first 3 data, offset(skipping) previous 2 data.  

-- Offset Formula:
-- Offset = (Page number - 1) * Page size;

-- Limit = Page size;

-- For Page number = 1;
-- Page size = 5,
-- Offset = (1 - 1) * 5;
-- Offset = 0;
-- Limit = 5;
-- // Displays data with '0' offset and limiting 5 data, First 5 data from the table.

-- For Page number = 2;
-- Page size = 5,
-- Offset = (2 - 1) * 5;
-- Offset = 5;
-- Limit = 5;
-- // Displays data with '5' offset and limiting 5 data, Second 5 data from the table. Skips first 5.

SELECT Author, COUNT(*) as Total 
FROM Books GROUP BY Author;
-- // Group By example

-- // Example for MAX and MIN aggregation query:
SELECT JobName, MAX(Salary) as MaxSalary, MIN(Salary) as MinSalary
FROM Employees GROUP BY JobName;

SELECT JobName, SUM(Salary) as TotalSalary
FROM Employees GROUP BY JobName;

-- Normalization in SQL:
-- Keeping table organized by maintaining tables for serving particular purpose.

-- Database normalisation is the process of organizing the attributes of the database 
-- to reduce or eliminate data redundancy (having the same data but at different places).

-- To join or connect tables Primary key is needed for each table (compulsory)
-- To give reference one table to the other it is represented as 'Foreign key'

-- Visit drawsql website to draw sql tables.