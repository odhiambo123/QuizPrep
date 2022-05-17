-- create
CREATE TABLE students
(
    studentId INTEGER PRIMARY KEY,
    firstname TEXT    NOT NULL,
    lastname  TEXT    NOT NULL
);

create TABLE subjects
(
    subjectId INTEGER PRIMARY KEY,
    name      TEXT    NOT NULL
);

create table enrollment
(
    enrollmentId INTEGER PRIMARY KEY,
    studentId    INTEGER,
    subjectId    INTEGER
);

alter table enrollment add foreign KEY(studentId) references students(studentId);
alter table enrollment add foreign KEY(subjectId) references subjects(subjectId);

-- desc enrollment;

insert into students
VALUES(1, 'mike', 'm');
insert into students
VALUES(2, 'bob', 'b');
insert into students
VALUES(3, 'john', 'j');
insert into students
VALUES(4, 'lisa', 'l');
insert into students
VALUES(5, 'elon', 'e');
insert into students
VALUES(6, 'jobs', 'j');
insert into students
VALUES(7, 'tim', 't');


select *
from students;

insert into subjects
VALUES(1, 'math');
insert into subjects
VALUES(2, 'science');
insert into subjects
VALUES(3, 'physics');
insert into subjects
VALUES(4, 'chemistry');
insert into subjects
VALUES(5, 'android');
insert into subjects
VALUES(6, 'ios');


select *
from subjects;


insert into enrollment
VALUES(1, 1, 3);
-- mike is enrolled in physics
insert into enrollment
VALUES(2, 1, 4);
-- mike is enrolled in chemistry

insert into enrollment
VALUES(3, 2, 1);
-- mike is enrolled in math
insert into enrollment
VALUES(4, 2, 2);
-- mike is enrolled in science
insert into enrollment
VALUES(5, 2, 3);
-- mike is enrolled in physics

insert into enrollment
VALUES(6, 3, 5);
-- mike is enrolled in android

insert into enrollment
VALUES(7, 4, 3);
-- mike is enrolled in physics
insert into enrollment
VALUES(8, 4, 6);
-- mike is enrolled in chemistry

insert into enrollment
VALUES(9, 4, 5);
-- mike is enrolled in physics
insert into enrollment
VALUES(10, 4, 4);
-- mike is enrolled in chemistry

select *
from enrollment;

select s.studentId, firstname, name, e.subjectId
from students s
    left join enrollment e on s.studentId = e.studentId
    left join subjects su on e.subjectId = su.subjectId;
-- where su.subjectId = 5 or su.subjectId = 6;

update students set lastname = 'cook' where studentId = 7;

delete from students where studentId = 6;

select *
from students;