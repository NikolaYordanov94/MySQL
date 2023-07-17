select * from `employees`
where `salary` = (
select max(salary)
from `employees`
);