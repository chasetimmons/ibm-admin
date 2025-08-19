-- job info
select *
from table (qsys2.job_info(job_user_filter => '<username>')) x
where job_name_short like '%<jobname>%' ;

-- other filters:
--  job_type_filter => '*INTERACT',
--  job_status_filter => '*ACTIVE'
