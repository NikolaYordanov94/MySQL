select `id`, concat(`first_name`, ' ', `last_name`) as `full_name`,
`job_title`,
`salary`
from `employees`
where `salary` > 1000
order by `id` asc;