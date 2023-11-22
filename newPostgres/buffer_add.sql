drop table if exists test_table;

CREATE TABLE test_table (id serial, PRIMARY KEY (id), value1 int not null, value2 int not null, value3 real, value4 real);

create index value1_index on test_table(value1);

set client_encoding = LATIN1;

COPY test_table(value1,value2,value3,value4) 
FROM E'/home/moerb001/Desktop/csci4707/lab02/newPostgres/values10k.dat' DELIMITER ';';
