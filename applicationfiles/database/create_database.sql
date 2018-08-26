--psql -U postgres:	access root account postgres
CREATE USER springexample WITH PASSWORD '123456';
CREATE DATABASE springexample OWNER springexample ENCODING = 'UTF8';
--\q
--psql -U springexample -d springexample (pass: 123456)
CREATE SCHEMA springexample;