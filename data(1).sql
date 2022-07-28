create database doConectDB;
use doConectDB;

create table admin (id bigint not null, email varchar(255), is_active bit, name varchar(255), password varchar(255), phone_number varchar(255), primary key (id)) ;
create table answer (id bigint not null, answer varchar(255), is_approved bit, answer_user_id bigint, question_id bigint, primary key (id));
create table question (id bigint not null, is_approved bit, question varchar(255), topic varchar(255), user_id bigint, primary key (id)) ;
create table user (id bigint not null, email varchar(255), is_active bit, name varchar(255), password varchar(255), phone_number varchar(255), primary key (id)) ;
create table image_model (id bigint not null, name varchar(255), pic_byte blob, type varchar(255), primary key (id)) ;


show tables;

insert into admin(id,email,is_active,name,password,phone_number) values(102,'Ankit@gmail.com',true,'ankit','1234ankit','123456789');
insert into user(id,email,is_active,name,password,phone_number) values(111,'Ankit@gmail.com',true,'ankit','Ankit1234','123456789');

select * from question;
select *from admin;
select *from user;
select * from answer;
select * from image_model;

-- other schema for Chat services
create database  doconectchatdb ;
use doconectchatdb;

create table message (id bigint not null, from_user varchar(255), message varchar(255),  primary key (id)) ;
insert into message (id, from_user,message) values(200,'ankit','hii');
select * from message;