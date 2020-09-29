# CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
# INSERT INTO people (name, birthdate, birthtime, birthdt)
# VALUES('Grant', '1985-04-27', '13:28:00', '1985-04-27 13:28:00');
 
# INSERT INTO people (name, birthdate, birthtime, birthdt)
# VALUES('Colleen', '1987-01-06', '06:20:00', '1987-01-06 06:20:00');
 
# SELECT * FROM people;

# =============================
# CURDATE(), CURTIME(), NOW();
# =============================

# CURDATE() - prints out current date
# CURTIME() - prints out current time
# NOW()     - prints out current date time

# ========================
# formatting the date
# ========================

# DAY()
# DAYNAME();
# DAYOFWEEK();
# DAYOFYEAR();
# select date_format('1985-04-27 13:28:00', '%W %M %D %Y');
# SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;

# ============
# DATE MATH
# ============

# SELECT * FROM people;
 
# SELECT DATEDIFF(NOW(), birthdate) FROM people;
 
# SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;
 
# SELECT birthdt FROM people;
 
# SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
 
# SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;
 
# SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;
 
# SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;
 
# SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;
 
# SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR 

# ============
# TIME STAMPS
# ============

# CREATE TABLE comments (
#     content VARCHAR(100),
#     created_at TIMESTAMP DEFAULT NOW()
# );
 
# INSERT INTO comments (content) VALUES('lol what a funny article');
 
# INSERT INTO comments (content) VALUES('Fake news, did you read the article or just the headline?');
 
# INSERT INTO comments (content) VALUES('The comment above mine was written by a lunatic');
 
# SELECT * FROM comments ORDER BY created_at DESC;
 
# CREATE TABLE comments2 (
#     content VARCHAR(100),
#     changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
# );
 
# INSERT INTO comments2 (content) VALUES('dasdasdasd');
 
# INSERT INTO comments2 (content) VALUES('lololololo');
 
# INSERT INTO comments2 (content) VALUES('I LIKE CATS AND DOGS');
 
# UPDATE comments2 SET content='THIS IS NOT GIBBERISH' WHERE content='dasdasdasd';
 
# SELECT * FROM comments2;
 
# SELECT * FROM comments2 ORDER BY changed_at;
 
# CREATE TABLE comments2 (
#     content VARCHAR(100),
#     changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
# );
