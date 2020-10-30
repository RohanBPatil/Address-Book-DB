# UC 1
create database AddressBookService;
show databases;
use AddressBookService;

# UC 2
create table addressBookTable
(
firstName varchar(100) NOT NULL,
lastName varchar(100) not null,
address varchar(200) not null,
city varchar(100) not null,
state varchar(100) not null,
zip numeric(6) not null,
phone numeric(10) not null,
email varchar(100) not null,
primary key (firstName, lastName)
);
describe addressBookTable;