# exercise

 # create table students (
 # id int auto_increment primary key,
 # first_name varchar(100)
 # );
 
 # create table papers (
 # title varchar(100),
 # grade int,
 # student_id int,
 # foreign key(student_id)
 # references students(id)
 # on delete cascade
 # );
 
#  INSERT INTO students (first_name) VALUES 
# ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

# INSERT INTO papers (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89);

# 1
# select first_name, title, grade from students join papers on students.id = papers.student_id order by grade desc;

# 2
# select first_name, title, grade from students left join papers on students.id = papers.student_id;

# 3
# select first_name, ifnull(title, 'missing'), ifnull(grade, 0) from students right join papers on students.id = papers.student_id;

# 4
# select first_name, ifnull(avg(grade), 0) as average from students left join papers on students.id = papers.student_id group by students.id order by average desc;

# 5
# select first_name, ifnull(avg(grade), 0) as average, case when avg(grade) is null then 'failing' when avg(grade) >= 75 then 'passing' else 'failing' end as passing_status from students left join on students.id = papers.student_id group by students.id order by average desc;


