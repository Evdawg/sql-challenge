-- -- Exported from QuickDBD: https://www.quickdatabasediagrams.com/not null
-- -- Link to schema: https://app.quickdatabasediagrams.com/#/d/vjsQwd
-- -- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-----------------------------------------------------------------------------------------------------
-- -- Comment out table creation after running and importing csv data:

-- CREATE TABLE "departments" (
--     "dept_no" VARCHAR(5)   NOT NULL,
--     "dept_no" VARCHAR(50),
--     CONSTRAINT "pk_departments" PRIMARY KEY (
--         "dept_no"
--      )
-- );

-- CREATE TABLE "dept_emp" (
--     "emp_no" VARCHAR(6)   NOT NULL,
--     "dept_no" VARCHAR(5)   NOT NULL,
--     CONSTRAINT "pk_dept_emp" PRIMARY KEY (
--         "emp_no","dept_no"
--      )
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_no" VARCHAR(5)   NOT NULL,
--     "emp_no" VARCHAR(6),
--     CONSTRAINT "pk_dept_manager" PRIMARY KEY (
--         "emp_no"
--      )
-- );

-- -- note the date format in employees needs convert from string format.
-- -- use conversion functions if needed for querying.
-- CREATE TABLE "employees" (
--     "emp_no" VARCHAR(6)   NOT NULL,
--     "emp_title" VARCHAR(6)   NOT NULL,
--     "birth_date" VARCHAR(9),
--     "first_name" VARCHAR(50),
--     "last_name" VARCHAR(70),
--     "sex" VARCHAR(1),
--     "hire_date" VARCHAR(9),
--     CONSTRAINT "pk_employees" PRIMARY KEY (
--         "emp_no"
--      )
-- );


-- CREATE TABLE "salaries" (
--     "emp_no" VARCHAR(6)   NOT NULL,
--     "salary" INT,
--     CONSTRAINT "pk_salaries" PRIMARY KEY (
--         "emp_no"
--      )
-- );


-- CREATE TABLE "titles" (
--     "title_id" VARCHAR   NOT NULL,
--     "emp_no" VARCHAR(60),
--     CONSTRAINT "pk_titles" PRIMARY KEY (
--         "title_id"
--      )
-- );

-- -- Add FK references between tables:
-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-- ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
-- REFERENCES "titles" ("title_id");

-- ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employees" ("emp_no");

-----------------------------------------------------------------------------------------------------

