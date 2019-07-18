DROP TABLE students;

CREATE TABLE students (
  id SERIAL4 primary key,
  first_name varchar(255),
  last_name varchar(255),
  house varchar(255),
  age int4
);
