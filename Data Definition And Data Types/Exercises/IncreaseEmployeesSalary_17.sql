use soft_uni;

update `employees`
set `salary` = `salary` * 1.10;

select `salary` from `employees`;
