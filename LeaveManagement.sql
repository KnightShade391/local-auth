create database LeaveManagement;
use LeaveManagement;

create table Department(
  DName varchar(10) primary key,
  HOD varchar(30)
);

create table User(
  id int primary key,
  email varchar(30) collate latin1_general_cs,
  password varchar(20) collate latin1_general_cs,
  name varchar(35) collate latin1_general_cs,
  DName varchar(10),
  Desgn varchar(30),
  foreign key(DName) references Department(DName) on delete cascade on update cascade
);
