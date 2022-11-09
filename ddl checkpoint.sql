create table  product ( 
	product_id varchar(20)constraint pkey1 primary key,
	 product_name varchar(20),
	 price int
)

create table orders( 
	customer_id varchar(20),
	product_id varchar(20),
	amount int,
	quantity int,
	constraint skey1 FOREIGN KEY (customer_id)references customer(customer_id),
	constraint skey2 FOREIGN KEY (product_id)references product(product_id)
	
)

ALTER TABLE product ADD column category varchar(20)

ALTER table orders add column dob date default current_date