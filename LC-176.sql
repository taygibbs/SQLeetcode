CREATE TABLE employee(
	"id" INT,
	salary INT
);

INSERT INTO employee("id",salary) Values(1,100);
INSERT INTO employee("id",salary) Values(2,200);
INSERT INTO employee("id",salary) Values(3,300);

--The main takeaway from the code below is that we are finding the max of a table of the salaries less than the max
-- of the original table. Ie, in the "(SELECT MAX(salary) FROM employee)" finds the max of the entire dataset. 
-- Then the rest of the code before it is finding the max of the table made when looking at the salaries less than the total max.
SELECT MAX(salary) as SecondHighestSalary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);