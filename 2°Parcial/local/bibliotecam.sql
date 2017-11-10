-- DDL-> Data Definition Language
drop database if exists bibliotecam;
create database bibliotecam;
use bibliotecam;

create table users (
    id int unsigned auto_increment,
    name varchar(12) not null,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    email varchar(200) not null,
    password varchar(200) not null,
    primary key (id),
    unique idu_name (name),
    unique idu_email (email)
) engine=InnoDB charset=utf8;

-- DML-> Data Manipulation Language
insert into users (name,firstname,lastname,email,password) values
('luigi','Luis','Guzmán','maquinadefuego@gmail.com',sha('12345'));

insert into users (name,firstname,lastname,email,password) values
('LaloCota','Edgar','Cota','golosa69@gmail.com',sha('muevelo567'));

-- validacion de existencia de usuario
set @name = 'luigi';
set @email = 'maquinadefuego@gmail.com'
select * from users
where
    name = @name or
    email = @email;

