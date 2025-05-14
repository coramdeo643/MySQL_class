-- DDL?
-- Data Definition Language
-- DB CREATE
create database company;
-- DB table CREATE
use company;
create table department(
	id int primary key,
	name varchar(50),
    budget int
);
desc department;
alter table department add column note varchar(100);
alter table department drop column budget;
drop table department;
drop database company;