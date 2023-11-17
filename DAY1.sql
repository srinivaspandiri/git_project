this is the git file 
show databases;

create database weekday_4to6;

use weekday_4to6;  /* when ever we are working on this databse we need to do this command */

create table pet(
F_name varchar(20),
owner_name varchar(20),
species varchar(20),
gender char(1),
birth date,
death date
);

show tables;
/show tables

describe pet;

show columns from pet;
