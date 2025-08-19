-- list spooled files
select spooled_file_name,
       job_name,
       file_number,
       user_data,
       output_queue_name,
       status,
       total_pages
from qsys2.output_queue_entries_basic
where user_data = '<pgmname>'
-- or user_name = '<username>'
