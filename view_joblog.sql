-- view job log
select ordinal_position,
       message_type, 
       message_timestamp, 
       from_library, 
       from_program, 
       message_text, 
       message_second_level_text 
from table(qsys2.joblog_info(job_name => '<number>/<user>/<job>'))
