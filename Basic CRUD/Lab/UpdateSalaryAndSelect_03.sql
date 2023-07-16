update `employees`
set `salary` = `salary` + 100
where `job_title` = 'Manager';

select `salary` from `employees`;