CREATE TABLE dim_track (
	id int4 NOT NULL,
	"name" varchar(200) NOT NULL,
	composer varchar(220) NULL,
	milliseconds int4 NOT NULL,
	bytes int4 NULL,
	unit_price numeric(10, 2) NOT NULL,
	media_type varchar(120) NULL,
	genre varchar(120) NULL,
	album varchar(160) NOT NULL,
	artist varchar(120) NULL,
	CONSTRAINT dim_track_pkey PRIMARY KEY (id)
);