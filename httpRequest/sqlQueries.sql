
drop database if exists company;
create database company;

create table user (
    id int not null,
    username varchar(15) not null,
    name varchar(20) not null,
    lastname varchar(20) not null,
    mail varchar(50) not null,
    randomstr varchar(8),
    hash varchar(250),
    primary key(id)
)

use company;
select * from user;