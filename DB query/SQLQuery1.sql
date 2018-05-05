drop table footballer
create table footballer(
	id int NOT NULL primary key,
	name nchar(25) not null,
	club int not null foreign key references Club(id),
	natteam int not null foreign key references Natteam(id)
);
select * from footballer

create table Club(
	id int NOT NULL primary key,
	club nchar(25) not null,
	place int not null
);
select * from Club

create table Natteam(
	id int NOT NULL primary key,
	Natteam nchar(25) not null,
	place int not null
);
select * from Natteam

