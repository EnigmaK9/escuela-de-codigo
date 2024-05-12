create table manufacturer (
    code int(10) primary key,
    name varchar(100)
);

create table product (
    code int(10) primary key,
    name varchar(100),
    price double,
    manufacturer_code int(10),
    foreign key (manufacturer_code) references manufacturer(code)
);
