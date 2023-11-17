CREATE TABLE dim_date (
	id serial4 NOT NULL,
	"date" date NOT NULL,
	"year" int4 NOT NULL,
	"month" int4 NOT NULL,
	"day" int4 NOT NULL,
	day_week int4 NOT NULL,
	day_name varchar NOT NULL,
	week int4 NOT NULL,
	quarter int4 NOT NULL,
	CONSTRAINT dim_date_pkey PRIMARY KEY (id)
);