USE employees;

SHOW tables;
DESCRIBE current_dept_emp; # no key indexes
DESCRIBE departments; # primary key and unique key indexes
DESCRIBE dept_emp; # two primary key indexes
DESCRIBE dept_emp_latest_date; # no key indexes
DESCRIBE dept_manager; # two primary key indexes
DESCRIBE employees; # primary key index
DESCRIBE salaries; # two primary key indexes
DESCRIBE titles; # three primary key indexes

USE codeup_test_db;

SHOW tables;
DESCRIBE albums; # primary key index
DESCRIBE books; # primary key index
DESCRIBE posts; # no key indexes
DESCRIBE transactions; # primary key index
DESCRIBE users; # no key indexes