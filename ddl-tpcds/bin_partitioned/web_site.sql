create database if not exists ${DB} location "${LOCATION}";
use ${DB};

drop table if exists web_site;

create table web_site
stored as ${FILE} TBLPROPERTIES ("${FILE}.compress"="${COMPRESSION}")
as select * from ${SOURCE}.web_site;
