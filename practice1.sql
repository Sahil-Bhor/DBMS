-- create database
create database ProjectDB;
use ProjectDB;

-- create table
create table ProInfo(Pid int, Pname varchar(30), tech varchar(40), start_date date, Nstud int);

-- insert data
insert into ProInfo(Pid, Pname, tech, start_date, Nstud ) values(1,'Agri', 'AI', "2002-05-23", 15);
insert into ProInfo(Pid, Pname, tech, start_date, Nstud ) values(2,'SpaceOX', 'DL', "2000-05-2", 5);
insert into ProInfo(Pid, Pname, tech, start_date, Nstud ) values(3,'EduRa', 'DS', "2003-05-13", 19);
insert into ProInfo(Pid, Pname, tech, start_date, Nstud ) values(4,'MongoDA', 'DS', "2002-05-5", 22);
insert into ProInfo(Pid, Pname, tech, start_date, Nstud ) values(5,'Sahil', 'DL', "2006-05-25", 30);

-- alter (adding column and updating)
alter table ProInfo add guidename varchar(20);

update ProInfo set guidename = 'A' where Pid = 1;
update ProInfo set guidename = 'B' where Pid = 2;
update ProInfo set guidename = 'A' where Pid = 3;
update ProInfo set guidename = 'C' where Pid = 4;
update ProInfo set guidename = 'A' where Pid = 5;

-- print table in ascending order
select * from ProInfo order by Pid ASC;

-- Min and Max no of students
select MIN(Nstud) from ProInfo;
select MAX(Nstud) from ProInfo;

-- print guidename having same name
select * from ProInfo where guidename = 'A'


