/*DDL - data defination language- create,alter, rename, truncate, drop
DR.CAT*/
/* DQL- data query language - select*/
/* DML _ data manipulate language - insert, update, delete*/
-- single line comment
# comment 

Alter table pet add birth_year year;

Alter table pet drop birth_year;

Alter table pet modify column death year;    /* we are changing the data type of the column*/

Alter table pet rename column death to death_year;   /* we are changing the name of the column*/

drop table pet;

describe pet;

rename table pet to pets; /* rename the table name only*/

Alter table pets modify column death year;

insert into pets (F_name,owner_name, species, gender, birth, death)
values("Srinivas", "Reddy", "human", "M", "1983-11-14", "2050");

insert into pets (F_name,owner_name, species, birth, death)
values("Srinivas", "Reddy", "human", "1983-11-14", "2050");

select *from pets;

truncate table pets;

insert into pets
values("pandiri", "Reddy", "men", "M", "1983-11-12", "2060"),
	  ("srujana", "Reddy", "men", "F", "1988-11-14", "2052"),
      ("raj", "Reddy", "men", "M", "1979-11-10", "2050");
      
set sql_safe_updates =0;      

update pets
set owner_name= "PSR"
where species= "men" and gender = "M";

Delete from  pets
where F_name = "pandiri" and birth ="1983-11-12";
-- rollback, commit, savepoint 
set autocommit =0;

insert into pets (F_name,owner_name, species, gender, birth, death)
values("Srinivas", "Reddy", "human", "M", "1983-11-14", "2050");

savepoint a;

insert into pets (F_name,owner_name, species, gender, birth, death)
values("srujana", "Reddy", "human", "f", "1983-11-10", "2060");

savepoint b;

insert into pets (F_name,owner_name, species, gender, birth, death)
values("pandiri", "Reddy", "human", "M", "1983-11-14", "2070");

savepoint c;

rollback;

rollback to a;

select *from pets;

commit;

