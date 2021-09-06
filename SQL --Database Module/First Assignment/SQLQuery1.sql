create database universty
create table Student
(
St_Id int primary key identity ,
St_FName nvarchar(50),
St_LName nvarchar(50) ,
St_Age int,

St_Super int 
Foreign key (St_Super) references Student(St_Id),

);


create table Topic 
(
	Top_Id int primary key identity,
	Top_Name nvarchar(50),
)


create table Course 
(Crs_Id int primary key identity ,
Crs_Name nvarchar(50) ,
Crs_Duration decimal(8,4),
Top_Id int,
foreign key (Top_Id ) references Topic(Top_Id)
);


CREATE TABLE Stud_Course  

(
St_Id int,  
Crs_Id int,  
grade nchar(255),
PRIMARY KEY (St_Id, Crs_Id)
);

CREATE TABLE Ins_Course (
Ins_Id int,
Crs_Id int,
Evaluation int,
PRIMARY KEY (Ins_Id,Crs_Id)
);

CREATE TABLE Manager (
Manager_Id int primary key identity,
Manager_FName nvarchar(50),
Manager_LName nvarchar(50) ,
Manager_Age int,
);

CREATE TABLE Department (
Dept_Id int primary key identity,
Dept_Name nvarchar(50),
Manager_Id int,
Hire_Date date,
FOREIGN KEY (Manager_Id) REFERENCES Manager(Manager_Id)
);

CREATE TABLE Instructor (
Ins_Id int primary key identity,
Ins_Name nvarchar(50),
Address  nvarchar(50),
Salary money,
Dept_Id int,
FOREIGN KEY (Dept_Id) REFERENCES Department(Dept_Id)
);