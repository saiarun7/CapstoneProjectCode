create database dvinfo;
use dvinfo;

create table driver_DB(
id int not null auto_increment,
dname text not null,
dsname text not null,
dob text not null,
addrs text not null,
phone text not null,
email text not null,
zip text not null,
dexp text not null,
abountdrd text not null,
status text not null,
primary key(id)
);

create table vehicle_DB(
id int not null auto_increment,
vname text not null,
model text not null,
dom text not null,
dor text not null,
vehicletype text not null,
manfcompany text not null,
life text not null,
abountvhl text not null,
status text not null,
primary key(id)
);

create table vehicle_DB(
id int not null auto_increment,
vname text not null,
model text not null,
dom text not null,
dor text not null,
vehicletype text not null,
manfcompany text not null,
life text not null,
abountvhl text not null,
status text not null,
primary key(id)
);

create table user_db(
id int not null auto_increment,
uname text not null,
pawd text not null,
email text not null,
phone text not null,
addrs text not null,
primary key(id)
);

create table license_DB(
id int not null auto_increment,
lno text not null,
lname text not null,
sodowo text not null,
address text not null,
issuedt text not null,
expdt text not null,
primary key(id)
);