
drop table teacher_courses;

create table teacher_courses (id int NOT NULL AUTO_INCREMENT, courseid int, teacherid int, primary key (id), FOREIGN KEY (teacherid) REFERENCES teacher(teacherid), FOREIGN KEY (courseid) REFERENCES courses(courseid));


insert into teacher_courses (courseid, teacherid) values(1, 1);

insert into teacher_courses (courseid, teacherid) values(2, 2);

insert into teacher_courses (courseid, teacherid) values(3, 3);

insert into teacher_courses (courseid, teacherid) values(4, 4);

insert into teacher_courses (courseid, teacherid) values(1, 5);

insert into teacher_courses (courseid, teacherid) values(2, 6);

insert into teacher_courses (courseid, teacherid) values(3, 7);

insert into teacher_courses (courseid, teacherid) values(4, 8);

insert into teacher_courses (courseid, teacherid) values(5, 9);

insert into teacher_courses (courseid, teacherid) values(6, 10);

insert into teacher_courses (courseid, teacherid) values(7,  11);

insert into teacher_courses (courseid, teacherid) values(8, 12);

insert into teacher_courses (courseid, teacherid) values(5, 13);

insert into teacher_courses (courseid, teacherid) values(6, 14);

insert into teacher_courses (courseid, teacherid) values(7, 15);

insert into teacher_courses (courseid, teacherid) values(8, 16);

select * from teacher_courses;
