# Reverse & UPPER the string "Why does my cat look at me with such hatred?"
# select reverse(upper("Why does my cat look at me with such hatred?"));

# What Will this print?
# SELECT REPLACE (CONCAT('I',' ', 'love',' ', 'cats'),' ','-' );

# Replace all spaces in book titles with '->'
# SELECT REPLACE (title, ' ', '->') AS title FROM books;

# Print out all lnames forward as first, print out all lnames reversed as backwards
# SELECT author_lname AS forward, REVERSE(author_lname) AS backwards FROM books;

# Print out all authors full names Upper-cased
# SELECT CONCAT(UPPER(author_fname),' ',UPPER(author_lname))AS 'full name in caps' FROM books;

# make blurb stating "<title> was released in <year>" for all books
# Select CONCAT(title, ' was released in ', released_year) AS 'blurb' FROM books;

# Print book title & length of each title as title & length
# SELECT title AS 'title', CHAR_LENGTH(title) AS 'character count' FROM books;

# Print out title with 10 char limit as 'short title' author as lname,fname; and quantity as 'num' in stock;
# SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS "short title",
#         CONCAT(author_lname,', ', author_fname) AS 'author',
#         CONCAT(stock_quantity, ' in stock') AS 'quantity'
# FROM books;


# pt 2


# print all 'Story' selections
# SELECT title FROM books WHERE title LIKE '%stories%';

# print out title & page-length to find longest book
# SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

# print summary of title & year for 3 most recent books
# select concat(title,' - ', released_year)as summary from books order by released_year desc limit 3;

# Find all authors whose last name contain spaces
# select title, author_lname from books where author_lname like '% %';

# Find 3 books with the lowest quantity in stock
# select title, released_year, stock_quantity from books ORDER BY stock_quantity LIMIT 3;

# PRint all title & author last names sorted first by author lname then by title
# select title, author_lname FROM books ORDER BY author_lname, title;

# Print out 'my favorite author is' and then sort full name alphabetically by last name
# select concat('MY FAVORITE AUTHOR IS ',upper(author_fname),' ',upper(author_lname),'!')as yell from books order by author_lname;


# pt 3

# Print out the entire number of books
# SELECT COUNT(*) FROM books

# Print out how many books were relased each released_year
# SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

# Print out total number of books in stock_quantity
# SELECT SUM(stock_quantity) FROM books;

# Find average released year from each author
# SELECT author_fname, author_lname, AVG(released_year) FROM books
# GROUP BY author_lname, author_fname;

# Find the full name of the author who wrote the longest books
# select concat(author_fname,' ', author_lname) as 'full name', max(pages) as 'longest book' from books group by pages desc limit 1;

# select year, # of books for that year, and average pages
# select released_year as year, count(*) as '# of books', avg(pages) as 'avg pages' from books group by released_year;


# pt 4

# What's a good use for CHAR?
# faster than VARCHAR for fixed length text

# item name? price? inventory?
# VARCHAR(100), INT DECIMAL(8,2), INT

# Difference between DATETIME & TIMESTAMP?
# range in years DATETIME goes back to year 1000, timestamp goes back to year 1970
# storage_size differential 
# how they're put into practice

# Print out current time
# select CURTIME();

# Print out current date(not time)
#  select CURDATE();

# Print out the current day of the week (number)
# select DAYOFWEEK(NOW());

#  Print out current day of week (day name)
#  select DAYNAME(NOW());

#  Print out current date using MM-DD-YYYY
#  select date_format(NOW(), '%m/%d/%Y');

#  Print out current date & time
#  select date_format(NOW(), '%M %D at %H:%i');

# Create tweets table with tweet (limit 140 cars), username, created_at;
# Create table tweets (tweet VARCHAR(140), username VARCHAR(20), created_at TIMESTAMP DEFAULT NOW());


# pt4

# Review the following:
# SELECT 10 != 10; false(0);
# SELECT 15 > 14 && 99 - 5 <= 94; true(1);
# SELECT 1 in (5,3) || 9 between 8 AND 10; true(1)

# Select all books written before 1980
# select * from books where released_year < 1980 order by released_year;

# select all books written by eggers or chabon
# select * from books where author_lname = 'eggers' || author_lname = 'chabon' order by author_lname;

# select all books written by Lahiri published after 2000;
# select * from books where author_lname = 'lahiri' AND released_year > 2000;

# select all books with page length between 100 & 200;
# sekect * from books where pages between 100 AND 200;

# select all books where author's last name begins with 'c' or 's';
# select * from books where author_lname like 'c%' || author_lname like 's%' order by author_lname;


# if title contains 'stories' -> short stories, just kids and heartbreaking work(memoir), everything else (novel)
# select title, author_lname,
# case 
# when title like '%stories%' then 'short stories' 
# when title like '%just kids%' || title like '%a heartbreaking work%' then 'memoir'
# else 'novel'
# end as type from books;

# bonus
# select title, author_fname, author_lname,
# case
# when count(*) = 1 then '1 book'
# else concat(count(*),' books')
# end as count from books
# group by author_lname, author_fname;





