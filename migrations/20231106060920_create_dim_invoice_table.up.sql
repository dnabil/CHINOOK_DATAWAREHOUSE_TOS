CREATE TABLE dim_invoice (
	id int4 NOT NULL,
	billing_address varchar(70) NULL,
	billing_city varchar(40) NULL,
	billing_state varchar(40) NULL,
	billing_country varchar(40) NULL,
	billing_postal_code varchar(10) NULL,
	total numeric(10, 2) NOT NULL,
	CONSTRAINT dim_invoice_pkey PRIMARY KEY (id)
);