-- interactive job connection information
select remote_address, 
       remote_port, 
       local_port, 
       authorization_name as user_name, 
       job_name
from qsys2.netstat_job_info n
where local_port in (23,992) and job_type = 'INTERACTIVE' ;
