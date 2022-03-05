create table region(
  code varchar(8),
  local_code varchar(8),
  name varchar(60) not null,
  iso_country char(2) not null,
  continent char(2) not null,
  primary key (code)
);

create table country(
  code char(2),
  name varchar(50) not null,
  continent char(2) not null,
  primary key (code)
);

create table airport(
  type varchar(15) not null,
  constraint check_type check(type in ('closed', 'heliport', 'seaplane_base', 'small_airport', 'medium_airport', 'large_airport')),
  latitude_deg decimal(18, 15) not null,
  longitude_deg decimal(18, 15) not null,
  elevation_ft smallint,
  continent char(2) not null,
  iso_country char(2) not null,
  iso_region varchar(8), /* state or province */
  municipality varchar(30),
  iata_code varchar(3),
  icao_code varchar(4), /* "local code" */
  keywords varchar(70),
  primary key (iata_code)
);

create table airline(

);

create table airplane(

);

create table flight(

);

create table customer(

);

create table airline_staff(

);

create table admin(

);

create table trip(

);

create table ticket(

);