create database if not exists ${DB} location "${LOCATION}";
use ${DB};

drop table if exists item;

create table item
stored as ${FILE} TBLPROPERTIES ("${FILE}.compress"="${COMPRESSION}")
as select * from ${SOURCE}.item;
