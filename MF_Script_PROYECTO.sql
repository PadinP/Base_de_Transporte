/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.5 		*/
/*  Created On : 16-nov.-2023 20:45:07 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */

DROP SEQUENCE IF EXISTS car_id_car_seq
;

DROP SEQUENCE IF EXISTS car_situation_id_cs_seq
;

DROP SEQUENCE IF EXISTS change_type_id_aut_change_type_seq
;

DROP SEQUENCE IF EXISTS date_d_id_aut_date_seq
;

DROP SEQUENCE IF EXISTS driver_id_driver_seq
;

DROP SEQUENCE IF EXISTS driver_situation_id_ds_seq
;

DROP SEQUENCE IF EXISTS group_tour_id_group_seq
;

DROP SEQUENCE IF EXISTS mod_change_id_mod_change_seq
;

DROP SEQUENCE IF EXISTS modification_id_modification_seq
;

DROP SEQUENCE IF EXISTS programming_type_id_aut_prog_type_seq
;

DROP SEQUENCE IF EXISTS route_id_route_seq
;

DROP SEQUENCE IF EXISTS solicitude_id_solicitude_seq
;

DROP SEQUENCE IF EXISTS type_car_situation_id_aut_type_sc_seq
;

DROP SEQUENCE IF EXISTS type_driver_situation_id_aut_type_ds_seq
;

/* Drop Tables */

DROP TABLE IF EXISTS car CASCADE
;

DROP TABLE IF EXISTS car_situation CASCADE
;

DROP TABLE IF EXISTS change_type CASCADE
;

DROP TABLE IF EXISTS date_d CASCADE
;

DROP TABLE IF EXISTS driver CASCADE
;

DROP TABLE IF EXISTS driver_situation CASCADE
;

DROP TABLE IF EXISTS group_tour CASCADE
;

DROP TABLE IF EXISTS mod_change CASCADE
;

DROP TABLE IF EXISTS modification CASCADE
;

DROP TABLE IF EXISTS programming_type CASCADE
;

DROP TABLE IF EXISTS route CASCADE
;

DROP TABLE IF EXISTS solicitude CASCADE
;

DROP TABLE IF EXISTS type_car_situation CASCADE
;

DROP TABLE IF EXISTS type_driver_situation CASCADE
;

/* Create Tables */

CREATE TABLE car
(
	id_car integer NOT NULL   DEFAULT NEXTVAL(('"car_id_car_seq"'::text)::regclass),
	car_number varchar(7) NOT NULL,
	car_brand varchar(50) NOT NULL,
	number_of_seats integer NOT NULL,
	id_cs integer NULL
)
;

CREATE TABLE car_situation
(
	id_cs integer NOT NULL   DEFAULT NEXTVAL(('"car_situation_id_cs_seq"'::text)::regclass),
	cs_code integer NOT NULL,
	return_date_cs date NULL,
	current_date_cs date NOT NULL,
	id_aut_type_sc integer NULL
)
;

CREATE TABLE change_type
(
	id_aut_change_type integer NOT NULL   DEFAULT NEXTVAL(('"change_type_id_aut_change_type_seq"'::text)::regclass),
	id_change_type integer NOT NULL,
	change_type_name varchar(50) NOT NULL
)
;

CREATE TABLE date_d
(
	id_aut_date integer NOT NULL   DEFAULT NEXTVAL(('"date_d_id_aut_date_seq"'::text)::regclass),
	id_date date NOT NULL,
	hour_d time without time zone NOT NULL
)
;

CREATE TABLE driver
(
	id_driver integer NOT NULL   DEFAULT NEXTVAL(('"driver_id_driver_seq"'::text)::regclass),
	dni_driver varchar(11) NOT NULL,
	driver_name varchar(50) NOT NULL,
	home_address varchar(50) NOT NULL,
	category varchar(30) NOT NULL,
	is_copilot boolean NOT NULL,
	id_ds integer NULL,
	id_car integer NULL
)
;

CREATE TABLE driver_situation
(
	id_ds integer NOT NULL   DEFAULT NEXTVAL(('"driver_situation_id_ds_seq"'::text)::regclass),
	ds_code integer NOT NULL,
	return_date_ds date NULL,
	current_date_ds date NOT NULL,
	id_aut_type_ds integer NULL
)
;

CREATE TABLE group_tour
(
	id_group integer NOT NULL   DEFAULT NEXTVAL(('"group_tour_id_group_seq"'::text)::regclass),
	group_code integer NOT NULL,
	group_country varchar(50) NOT NULL,
	number_of_tourists integer NOT NULL
)
;

CREATE TABLE mod_change
(
	id_mod_change integer NOT NULL   DEFAULT NEXTVAL(('"mod_change_id_mod_change_seq"'::text)::regclass),
	id_modification integer NULL,
	id_aut_change_type integer NULL
)
;

CREATE TABLE modification
(
	id_modification integer NOT NULL   DEFAULT NEXTVAL(('"modification_id_modification_seq"'::text)::regclass),
	modification_code integer NOT NULL,
	modification_date date NOT NULL,
	id_solicitude integer NULL
)
;

CREATE TABLE programming_type
(
	id_aut_prog_type integer NOT NULL   DEFAULT NEXTVAL(('"programming_type_id_aut_prog_type_seq"'::text)::regclass),
	id_prog_type integer NOT NULL,
	prog_type_name varchar(50) NOT NULL
)
;

CREATE TABLE route
(
	id_route integer NOT NULL   DEFAULT NEXTVAL(('"route_id_route_seq"'::text)::regclass),
	route_code integer NOT NULL,
	km_available_start double precision NOT NULL,
	km_available_end double precision NOT NULL,
	pick_up_location varchar(50) NOT NULL,
	end_time time without time zone NOT NULL,
	id_solicitude integer NULL
)
;

CREATE TABLE solicitude
(
	id_solicitude integer NOT NULL   DEFAULT NEXTVAL(('"solicitude_id_solicitude_seq"'::text)::regclass),
	solicitude_code integer NOT NULL,
	programming_start_time time without time zone NOT NULL,
	programming_to_be_done varchar(150) NOT NULL,
	duration_time integer NOT NULL,
	mileage integer NOT NULL,
	id_car integer NULL,
	id_aut_date integer NULL,
	id_aut_prog_type integer NULL,
	id_group integer NULL
)
;

CREATE TABLE type_car_situation
(
	id_aut_type_sc integer NOT NULL   DEFAULT NEXTVAL(('"type_car_situation_id_aut_type_sc_seq"'::text)::regclass),
	id_type_sc integer NOT NULL,
	type_sc_name varchar(50) NOT NULL
)
;

CREATE TABLE type_driver_situation
(
	id_aut_type_ds integer NOT NULL   DEFAULT NEXTVAL(('"type_driver_situation_id_aut_type_ds_seq"'::text)::regclass),
	id_type_ds integer NOT NULL,
	type_ds_name varchar(50) NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE car ADD CONSTRAINT PK_car
	PRIMARY KEY (id_car)
;

ALTER TABLE car_situation ADD CONSTRAINT PK_car_situation
	PRIMARY KEY (id_cs)
;

ALTER TABLE change_type ADD CONSTRAINT PK_change_type
	PRIMARY KEY (id_aut_change_type)
;

ALTER TABLE date_d ADD CONSTRAINT PK_date_d
	PRIMARY KEY (id_aut_date)
;

ALTER TABLE driver ADD CONSTRAINT PK_driver
	PRIMARY KEY (id_driver)
;

ALTER TABLE driver_situation ADD CONSTRAINT PK_driver_situation
	PRIMARY KEY (id_ds)
;

ALTER TABLE group_tour ADD CONSTRAINT PK_group_tour
	PRIMARY KEY (id_group)
;

ALTER TABLE mod_change ADD CONSTRAINT PK_mod_change
	PRIMARY KEY (id_mod_change)
;

ALTER TABLE modification ADD CONSTRAINT PK_modification
	PRIMARY KEY (id_modification)
;

ALTER TABLE programming_type ADD CONSTRAINT PK_programming_type
	PRIMARY KEY (id_aut_prog_type)
;

ALTER TABLE route ADD CONSTRAINT PK_route
	PRIMARY KEY (id_route)
;

ALTER TABLE solicitude ADD CONSTRAINT PK_solicitude
	PRIMARY KEY (id_solicitude)
;

ALTER TABLE type_car_situation ADD CONSTRAINT PK_type_car_situation
	PRIMARY KEY (id_aut_type_sc)
;

ALTER TABLE type_driver_situation ADD CONSTRAINT PK_type_driver_situation
	PRIMARY KEY (id_aut_type_ds)
;

/* Create Foreign Key Constraints */

ALTER TABLE car ADD CONSTRAINT FK_car_car_situation
	FOREIGN KEY (id_cs) REFERENCES car_situation (id_cs) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE car_situation ADD CONSTRAINT FK_car_situation_type_car_situation
	FOREIGN KEY (id_aut_type_sc) REFERENCES type_car_situation (id_aut_type_sc) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE driver ADD CONSTRAINT FK_driver_car
	FOREIGN KEY (id_car) REFERENCES car (id_car) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE driver ADD CONSTRAINT FK_driver_driver_situation
	FOREIGN KEY (id_ds) REFERENCES driver_situation (id_ds) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE driver_situation ADD CONSTRAINT FK_driver_situation_type_driver_situation
	FOREIGN KEY (id_aut_type_ds) REFERENCES type_driver_situation (id_aut_type_ds) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE mod_change ADD CONSTRAINT FK_mod_change_change_type
	FOREIGN KEY (id_aut_change_type) REFERENCES change_type (id_aut_change_type) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE mod_change ADD CONSTRAINT FK_mod_change_modification
	FOREIGN KEY (id_modification) REFERENCES modification (id_modification) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE modification ADD CONSTRAINT FK_modification_solicitude
	FOREIGN KEY (id_solicitude) REFERENCES solicitude (id_solicitude) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE route ADD CONSTRAINT FK_route_solicitude
	FOREIGN KEY (id_solicitude) REFERENCES solicitude (id_solicitude) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE solicitude ADD CONSTRAINT FK_solicitude_car
	FOREIGN KEY (id_car) REFERENCES car (id_car) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE solicitude ADD CONSTRAINT FK_solicitude_date_d
	FOREIGN KEY (id_aut_date) REFERENCES date_d (id_aut_date) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE solicitude ADD CONSTRAINT FK_solicitude_group_tour
	FOREIGN KEY (id_group) REFERENCES group_tour (id_group) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE solicitude ADD CONSTRAINT FK_solicitude_programming_type
	FOREIGN KEY (id_aut_prog_type) REFERENCES programming_type (id_aut_prog_type) ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

CREATE SEQUENCE car_id_car_seq INCREMENT 1 START 1
;

CREATE SEQUENCE car_situation_id_cs_seq INCREMENT 1 START 1
;

CREATE SEQUENCE change_type_id_aut_change_type_seq INCREMENT 1 START 1
;

CREATE SEQUENCE date_d_id_aut_date_seq INCREMENT 1 START 1
;

CREATE SEQUENCE driver_id_driver_seq INCREMENT 1 START 1
;

CREATE SEQUENCE driver_situation_id_ds_seq INCREMENT 1 START 1
;

CREATE SEQUENCE group_tour_id_group_seq INCREMENT 1 START 1
;

CREATE SEQUENCE mod_change_id_mod_change_seq INCREMENT 1 START 1
;

CREATE SEQUENCE modification_id_modification_seq INCREMENT 1 START 1
;

CREATE SEQUENCE programming_type_id_aut_prog_type_seq INCREMENT 1 START 1
;

CREATE SEQUENCE route_id_route_seq INCREMENT 1 START 1
;

CREATE SEQUENCE solicitude_id_solicitude_seq INCREMENT 1 START 1
;

CREATE SEQUENCE type_car_situation_id_aut_type_sc_seq INCREMENT 1 START 1
;

CREATE SEQUENCE type_driver_situation_id_aut_type_ds_seq INCREMENT 1 START 1
;
