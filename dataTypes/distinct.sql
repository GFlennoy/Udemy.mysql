# SELECT author_lname FROM books;
# vs.
# SELECT DISTINCT author_lname FROM books;

# SELECT released_year FROM books;
# vs
# SELECT DISTINCT released_year FROM books;

# SELECT author_fname, author_lname FROM books;
# vs
# SELECT DISTINCT CONCAT(author_lname,', ', author_fname) AS llamo FROM books;

