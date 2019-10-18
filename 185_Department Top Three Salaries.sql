# Write your MySQL query statement below

select d.name department, e1.name Employee, e1.salary Salary from department d join employee e1 on e1.departmentid=d.id where 3>(
select count(distinct e2.salary) from employee e2 where e2. salary>e1.salary and e2.departmentid=e1.departmentid
)
order by department, salary;




SELECT department.Name Department, e1.Name Employee, e1.Salary
FROM employee e1
    JOIN department ON e1.DepartmentId = department.Id
    LEFT JOIN employee e2 ON e1.DepartmentId = e2.DepartmentId AND e1.Salary < e2.Salary
GROUP BY e1.Id
HAVING count(distinct e2.Salary) < 3
ORDER BY department.Name, e1.Salary desc;
