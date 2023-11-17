CREATE TABLE dim_customer (
	id int4 NOT NULL,
	first_name varchar(40) NOT NULL,
	last_name varchar(20) NOT NULL,
	company varchar(80) NULL,
	address varchar(70) NULL,
	city varchar(40) NULL,
	state varchar(40) NULL,
	country varchar(40) NULL,
	postal_code varchar(10) NULL,
	phone varchar(24) NULL,
	fax varchar(24) NULL,
	email varchar(60) NOT NULL,
	support_rep_id int4 NULL,
	CONSTRAINT dim_customer_pkey PRIMARY KEY (id)
);


