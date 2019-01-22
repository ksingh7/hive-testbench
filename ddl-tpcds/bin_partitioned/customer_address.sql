create database if not exists ${DB} location "${LOCATION}";
use ${DB};

drop table if exists customer_address;

create table customer_address
stored as ${FILE} TBLPROPERTIES ("${FILE}.compress"="${COMPRESSION}")
as select * from ${SOURCE}.customer_address;
