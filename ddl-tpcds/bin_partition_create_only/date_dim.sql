create database if not exists ${DB} location "${LOCATION}";
use ${DB};

drop table if exists date_dim;

create table date_dim
stored as ${FILE};
