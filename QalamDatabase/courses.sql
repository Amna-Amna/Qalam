-- drop table courses;

-- create table courses (courseid int, coursename varchar(20), classes_conducted int,  tmassignments int, tmquizes int, tmfinals int, teacherid int, primary key (courseid), FOREIGN KEY (teacherid) REFERENCES teacher(teacherid));

-- insert into courses values(1, "mathematics", 30, 20, 20, 60, 1);

-- insert into courses values(2, "physics", 43, 20, 20, 60, 1);

-- insert into courses values(3, "chemistry", 22, 20, 20, 60, 2);

-- insert into courses values(4, "biology", 39, 20, 20, 60, 3);

-- select * from courses;


drop table courses;

create table courses (courseid int NOT NULL AUTO_INCREMENT, coursename varchar(20), classes_conducted int,  tmassignments int, tmquizes int, tmfinals int, primary key (courseid));


insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("mathematics", 30, 20, 20, 60);

insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("physics", 41, 20, 20, 60);

insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("chemistry", 22, 20, 20, 60);

insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("biology", 39, 20, 20, 60);


insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("Database", 30, 20, 20, 60);

insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("Linear Algebra", 43, 20, 20, 60);

insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("Real Analysis", 22, 20, 20, 60);

insert into courses (coursename, classes_conducted, tmassignments, tmquizes, tmfinals) values("FOCP", 39, 20, 20, 60);

select * from courses;


