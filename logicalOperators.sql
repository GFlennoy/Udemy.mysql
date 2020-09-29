# NOT EQUAL
# think jS
# exsyn: select title,released_year from books where released_year != 2017;
# exsyn: select title, author_lname from books where author_lname !='Harris';

# NOT LIKE
# exsyn: select title from books where title not like '%w%';

# GReater than
#  >
# exsyn: select * from books where released_year > 2000 order by released_year;

# Greater than or equal to
# >=
# select title,stock_quantity from books where stock_quantity >= 100;

# SELECT 99 > 1;
 
# SELECT 99 > 567;
 
# 100 > 5
# -- true
 
# -15 > 15
# -- false
 
# 9 > -10
# -- true
 
# 1 > 1
# -- false
 
# 'a' > 'b'
# -- false
 
# 'A' > 'a'
# -- false
 
# 'A' >=  'a'
# -- true

#  Less Than (<)

# SELECT title, released_year FROM books
# WHERE released_year < 2000;
 
# SELECT title, released_year FROM books
# WHERE released_year <= 2000;
 
# SELECT 3 < -10;
# -- false
 
# SELECT -10 < -9;
# -- true
 
# SELECT 42 <= 42;
# -- true
 
# SELECT 'h' < 'p';
# -- true
 
# SELECT 'Q' <= 'q';
# -- true

# ===============
# Logical And(&&)
# ===============

# SELECT title, author_lname, released_year FROM books
# WHERE author_lname='Eggers';
 
# SELECT title, author_lname, released_year FROM books
# WHERE released_year > 2010;
 
# SELECT  
#     title, 
#     author_lname, 
#     released_year FROM books
# WHERE author_lname='Eggers' 
#     AND released_year > 2010;
 
# SELECT 1 < 5 && 7 = 9;
# -- false
 
# SELECT -10 > -20 && 0 <= 0;
# -- true
 
# SELECT -40 <= 0 AND 10 > 40;
# --false
 
# SELECT 54 <= 54 && 'a' = 'A';
# -- true
 
# SELECT * 
# FROM books
# WHERE author_lname='Eggers' 
#     AND released_year > 2010 
#     AND title LIKE '%novel%';

# ================
# Logical OR (||)
# ================

# SELECT 
#     title, 
#     author_lname, 
#     released_year 
# FROM books
# WHERE author_lname='Eggers' || released_year > 2010;
 
 
# SELECT 40 <= 100 || -2 > 0;
# -- true
 
# SELECT 10 > 5 || 5 = 5;
# -- true
 
# SELECT 'a' = 5 || 3000 > 2000;
# -- true
 
# SELECT title, 
#        author_lname, 
#        released_year, 
#        stock_quantity 
# FROM   books 
# WHERE  author_lname = 'Eggers' 
#               || released_year > 2010 
# OR     stock_quantity > 100;
