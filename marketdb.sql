drop table productOrder;
drop table member cascade constraint;
drop table products cascade constraint;

create table member(
	memberID varchar2(30),
	memberPW varchar2(20),
	name varchar2(20), 
	nickname varchar2(30),
	phonenum varchar2(20),
	city varchar2(20),
	gu varchar2(20),
	gil varchar2(100),
	account varchar2(20),
	primary key(memberID)
);
create table products(
	productID int,
	memberID varchar2(30),
	title varchar2(200),
	productName varchar2(200),
	Explanation varchar2(800),
	code varchar2(5),
	price int,
	img blob,
	constraint products_pk primary key(productID),	
	constraint products_fk foreign key(memberID) references member
);
create table productOrder(
	orderID varchar2(20),
	productID int NOT NULL,
	memberID varchar2(20) NOT NULL,
	orderDate varchar2(10) NOT NULL,
	address varchar2(50),
	phonnum varchar2(20),
	constraint Order_pk primary key(orderID),	
	constraint Order_fk foreign key(productID) references products
);