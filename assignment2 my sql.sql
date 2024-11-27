/*1. Create a database named library and a table named books with the following columns:
id (INT, Primary Key, Auto Increment)
title (VARCHAR(255))
author (VARCHAR(100))
year (YEAR)
genre (VARCHAR(100))*/

create database Library;
use Library;
Create table Books( Id INT Primary key auto_increment ,Title VARCHAR(225), Author VARCHAR(100), Year YEAR , Genre VARCHAR(100));
select * from Books ;

/* 2. Insert the following book records into the books table:
"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
"Pride and Prejudice", "Jane Austen", 1813, "Romance"
"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
"1984", "George Orwell", 1949, "Dystopian"
"Moby Dick", "Herman Melville", 1851, "Adventure" */

insert into Books (Id , Title , Author, Year , Genre )
values (1, "The Great Gatsby","F. Scott Fitzgerald" , 1925 , "Fiction"),
	   (2, "Pride and Prejudice", "Jane Austen", 1913, "Romance"),
       (3, "To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
       (4,"1984", "George Orwell", 1949, "Dystopian"),
       (5,"Moby Dick", "Herman Melville", 1951, "Adventure");
       
select * from books;
    
# 3. Write a query to select all books where the title starts with the letter 'T' using the LIKE operator.
select * from Books where Title LIKE "T%";

# 4. Write a query to find all books where the author's last name ends with 'son' using the LIKE operator.
select * from Books where Author LIKE "%son";

# 5. Write a query to find all books where the title contains the word 'and' using the LIKE operator.
select * from Books where Title LIKE "%and%";

#6.  Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select * from Books where Title LIKE "%bird";

#7.  Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.
SELECT * FROM books WHERE title REGEXP '^.{3}$';

#8.  Write a query to select all books where the title contains a number using the REGEXP operator.
select * from Books where Title REGEXP '[:digit:]';

#9.  Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
select * from Books where author REGEXP '^[A-Ja-j]';

#10.  Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select * from Books where genre REGEXP '^(Fiction|Adventure)$';

#11.  Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select * from Books where Title REGEXP '[A-Z]';

#12.  Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
 select * from Books where year LIKE '1900%' OR year LIKE '1950%';

# 13. Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.
 select * from Books where author REGEXP '[^A-Za-z]+[A-Za-z$]';

 #14.  Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
 select * from Books where Title REGEXP '[^A-Za-z0-9]';

#15.  Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
select * from Books where Title REGEXP '[:punct:]';