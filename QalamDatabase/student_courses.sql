drop table student_courses;

CREATE TABLE student_courses (id int NOT NULL AUTO_INCREMENT, cmsid int, courseid int, classes_taken int, omassignments int, omquizes int, omfinals int, teacherid int, PRIMARY KEY (id), FOREIGN KEY (cmsid) REFERENCES student(cmsid), FOREIGN KEY (courseid) REFERENCES courses(courseid), FOREIGN KEY (teacherid) REFERENCES teacher(teacherid));

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(1, 2, 14, 16, 12, 45, 2);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(1, 3, 17, 19, 20, 50, 7);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(2, 8, 12, 17, 13, 53, 12);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(2, 2, 11, 20, 18, 44, 6);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(2, 7, 18, 12, 17, 51, 11);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(3, 4, 11, 20, 11, 45, 8);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(4, 2, 12, 19, 14, 40, 6);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(4, 6, 18, 17, 19, 44, 10);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(5, 2, 14, 16, 12, 45, 2); 

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(6, 3, 17, 19, 20, 50, 3);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(7, 5, 12, 17, 13, 53, 15);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(8, 2, 11, 20, 18, 44, 6);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(9, 3, 18, 12, 17, 51, 7);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(10, 2, 11, 20, 11, 45, 2);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(11, 2, 12, 19, 14, 40, 2); 

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(11, 4, 18, 17, 19, 44, 4); 

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(10, 1, 14, 16, 12, 45, 5);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(9, 3, 17, 19, 20, 50, 3);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(8, 1, 12, 17, 13, 53, 1);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(7, 2, 11, 20, 18, 44, 2);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(6, 3, 18, 12, 17, 51, 7);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(5, 4, 11, 20, 11, 45, 8); 

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(9, 2, 12, 19, 14, 40, 6);

insert into student_courses (cmsid, courseid, classes_taken, omassignments, omquizes, omfinals, teacherid) values(4, 4, 18, 17, 19, 44, 4);

select * from student_courses;


