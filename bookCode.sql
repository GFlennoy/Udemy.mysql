# SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title' FROM books;
# SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;
