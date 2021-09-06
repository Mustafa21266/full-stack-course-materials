create database universty
create table Student
(
St_Id int primary key identity ,
St_FName nvarchar(50) NOT NULL DEFAULT '',
St_LName nvarchar(50) NOT NULL DEFAULT '',
St_Age int NOT NULL DEFAULT 0,

St_Super int NOT NULL,
Foreign key (St_Super) references Student(St_Id),

);


create table Topic 
(
	Top_Id int primary key identity,
	Top_Name nvarchar(50) NOT NULL DEFAULT '',
)


create table Course 
(Crs_Id int primary key identity ,
Crs_Name nvarchar(50) NOT NULL DEFAULT '',
Crs_Duration decimal(8,4) NOT NULL DEFAULT 0.0,
Top_Id int NOT NULL,
foreign key (Top_Id ) references Topic(Top_Id)
);


CREATE TABLE Stud_Course  

(
St_Id int NOT NULL,
Crs_Id int NOT NULL,  
grade nchar(255) NOT NULL DEFAULT '',
PRIMARY KEY (St_Id, Crs_Id)
);

CREATE TABLE Ins_Course (
Ins_Id int NOT NULL,
Crs_Id int NOT NULL,
Evaluation int NOT NULL DEFAULT 0,
CHECK (Evaluation in (1,2,3,4,5,6,7,8,9,10)),
PRIMARY KEY (Ins_Id,Crs_Id)
);

CREATE TABLE Manager (
Manager_Id int primary key identity,
Manager_FName nvarchar(50) NOT NULL DEFAULT '',
Manager_LName nvarchar(50) NOT NULL DEFAULT '',
Manager_Age int NOT NULL DEFAULT 0,
Hire_Date date  NOT NULL DEFAULT GETDATE(),
);

CREATE TABLE Department (
Dept_Id int primary key identity,
Dept_Name nvarchar(50) NOT NULL DEFAULT '',
Manager_Id int NOT NULL,
Hire_Date date NOT NULL DEFAULT GETDATE(),
FOREIGN KEY (Manager_Id) REFERENCES Manager(Manager_Id)
);

CREATE TABLE Instructor (
Ins_Id int primary key identity,
Ins_Name nvarchar(50) NOT NULL DEFAULT '',
Address  nvarchar(50) NOT NULL DEFAULT '',
Salary money NOT NULL DEFAULT 0.0,
Dept_Id int NOT NULL,
FOREIGN KEY (Dept_Id) REFERENCES Department(Dept_Id)
);