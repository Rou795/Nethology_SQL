create table if not exists Departments(
	id serial primary key,
	dep_name varchar(255) not null);

create table Managers(
	id_department integer not null references Departments(id));

create table if not exists Employee(
	id serial primary key,
	isDirector bool not null,
	employee_name varchar(256) not null,
	employee_Lname varchar(256) not null,
	dep_id integer not null references Departments(id));

alter table Managers
	add column id integer not null unique references Employee(id);

alter table Departments 
	add column dir_id integer not null references Managers(id);