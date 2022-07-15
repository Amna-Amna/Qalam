drop table disciplines;

CREATE TABLE disciplines (dis_id int, dis_name varchar(20), primary key (dis_id));

insert into disciplines values (1, "BS Mathematics");
insert into disciplines values (2, "BS Chemistry");
insert into disciplines values (3, "BS Physics");

select * from disciplines;
