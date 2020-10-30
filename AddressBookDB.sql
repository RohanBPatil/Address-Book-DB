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
zip numeric(6) not null,git a
phone numeric(10) not null,
email varchar(100) not null,
primary key (firstName, lastName)
);
describe addressBookTable;

# UC 3
insert into addressBookTable values
('abc', 'bca', 'bandra', 'Mumbai', 'Maharashtra', 401202, 9865326598, 'abc@gmail.com'),
('xyz', 'zyx', 'matunga', 'Mumbai', 'Maharashtra', 401245, 8958658568, 'xyz@gmail.com'),
('pqr', 'rqp', 'Chinchwad', 'Pune', 'Maharashtra', 401857, 9865326654, 'pqr@gmail.com'),
('klm', 'mlk', 'Shirala', 'Sangli', 'Maharashtra', 408574, 9865358748, 'klm@gmail.com'),
('def', 'fed', 'Vasco', 'Panji', 'Goa', 251202, 8400326598, 'def@gmail.com'),
('uvw', 'wvu', 'Mapusa', 'Panji', 'Goa', 251277, 7800055598, 'uvw@gmail.com');


# UC 4
update addressBookTable
set phone = 1234567890
where firstName = 'def';
update addressBookTable
set address = 'Shivdi'
where firstName = 'xyz';

# UC 5
delete from addressBookTable
where firstName = 'def';