CREATE TABLE "titles" (
    "title_id" varchar(10) NOT NULL PRIMARY KEY,
    "title" varchar(30) NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar(10) NOT NULL PRIMARY KEY,
    "dept_name" varchar(30) NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int NOT NULL PRIMARY KEY,
    "emp_title_id" varchar(10) NOT NULL,
    "birth_date" varchar(25) NOT NULL,
    "first_name" varchar(25) NOT NULL,
    "last_name" varchar(25) NOT NULL,
    "sex" varchar(2) NOT NULL,
    "hire_date" varchar(25) NOT NULL,
    FOREIGN KEY ("emp_title_id") REFERENCES "titles" ("title_id")
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salary" int NOT NULL,
    PRIMARY KEY ("emp_no", "salary"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" varchar(10) NOT NULL,
    PRIMARY KEY ("emp_no", "dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10) NOT NULL,
    "emp_no" int NOT NULL,
    PRIMARY KEY ("dept_no", "emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);
