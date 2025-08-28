-- root 에서...
-- 데이터베이스 보기
show databases;

-- 데이터 베이스 생성
create database mydb;

-- 사용자
create user 'web_user'@'%' identified by 'pass';

-- 사용자 리스트
select * from mysql.user;

-- 권한부여
grant all privileges on *.* to 'web_user'@'%'
-- 권한회수
-- revoke all privileges on *.* from 'web_user'@'%' 

-- web_user
-- table 생성
create table employees(
	emp_no int(3) primary key
	,first_name varchar(20)
	,last_name varchar(20)
	,email varchar(20)
	,mobile varchar(20)
	,salary int(10)
	,reg_date datetime default current_timestamp
);

desc employees;

-- 데이터 추가
insert into employees(emp_no,first_name,last_name,email,mobile,salary)
	values(111,'지훈','김','zer0box@naver.com','01012341234',99999999);

-- 자동으로 추가되는 항목 외에 모든 데이터가 다 들어갈 경우 컬렴명은 쓰지 않아도 된다.
insert into employees(emp_no,first_name,last_name,email,mobile,salary)
	values(112,'태근','김','email@naver.com','01012341234',99999999);

insert into employees(emp_no,first_name,last_name,email,mobile,salary)
	values(113,'정우','김','email@naver.com','01012341234',99999999);

select * from employees;










