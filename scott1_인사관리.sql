 create table people (
id VARCHAR2 (2) not null, 
name varchar2(30) not null,
dept varchar2(20) not null,
position number(1),
duty VARCHAR2(20),
phone VARCHAR2(14)

);

alter table people add CONSTRAINT pk_unique_l unique (id);
alter table people add CONSTRAINT pk_unique_l FOREIGN key dept people_dept(id);

select * from people;

drop table people_dept;

create table people_dept(
dept varchar2(20) not null
);