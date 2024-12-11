--The main idea of this problem is to find a random nth highest salary. the last problem had a similar idea
-- except that it was only the 2nd highest. So, the recommended start of this problem was to use DENSE_RANK
-- to rank the salaries from highest to the lowest and then call for where the entry is the N'th highest. 
SELECT salary FROM (
SELECT salary, 
DENSE_RANK () OVER (ORDER BY salary DESC) as getNthHighestSalary
FROM employee
) 
WHERE getNthhighestsalary = 1; 
