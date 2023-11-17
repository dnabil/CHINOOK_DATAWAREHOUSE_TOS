CREATE TABLE fact_sales (
	invoice_line_id int4 NOT NULL PRIMARY KEY,
	invoice_id int4 NOT NULL REFERENCES dim_invoice (id),
	track_id int4 NOT NULL REFERENCES dim_track (id),
	date_id serial4 NOT NULL REFERENCES dim_date (id),
	customer_id int4 NOT NULL REFERENCES dim_customer (id),
	unit_price numeric(10, 2) NOT NULL,
	quantity int4 NOT NULL
);