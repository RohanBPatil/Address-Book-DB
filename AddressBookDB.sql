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

# UC 6
select * from addressBookTable 
where city = 'Mumbai' or state = 'Maharashtra';

# UC 7
select city, state, count(*) from address_book 
group by city, state;

# UC 8
select * from addressBookTable
where city = 'Mumbai'
order by firstName, lastName;

# UC 9
alter table addressbooktable 
rename to contacts_table;
alter table contacts_table
drop primary key,
add contactId int not null auto_increment first, 
add primary key (contactId);
create table addressbook_table
(
srNo int not null auto_increment,
contactId int not null,
addressbookName varchar(100) not null,
type varchar(100) not null,
primary key (srNo),
foreign key (contactId) references contacts_table (contactId)
);
desc addressbook_table;

# UC 10
select type, count(*) from addressbook_table 
group by type;

# UC 11
insert into addressbook_table (contactId, addressbookName, type) values 
(1, 'AddressBook1', 'family'),
(1, 'AddressBook2', 'friend'),
(2, 'AddressBook2','friend'), 
(2, 'AddressBook3','profession'),
(3, 'AddressBook1','family'),
(4, 'AddressBook3','profession'), 
(4, 'AddressBook1','family'),
(5, 'AddressBook2','friend');

# UC 12
create table zipCityState (
zip numeric(6) not null,
city varchar(100) not null,
state varchar(100) not null,
foreign key (zip) references contact_table(zip)
);
create table addressbookTypes (
addressbookName varchar(100) not null,
type varchar(100) not null,
foreign key (addressbookName) references contact_table(addressbookName)
);
alter table contacts_table 
drop column city,
drop column state;
alter table addressbook_table
drop column type;
insert into addressbookTypes values 
('AddressBook1', 'family'),
('AddressBook2','friend'), 
('AddressBook3','profession');
insert into addressbookTypes values 
(401202, 'Mumbai', 'Maharashtra'),
(401245, 'Mumbai', 'Maharashtra'),
(401857, 'Pune', 'Maharashtra'),
(408574, 'Sangli', 'Maharashtra'),
(251202, 'Panji', 'Goa'),
(251277, 'Panji', 'Goa');