-- search the history log for jobs that ended abnormally
select message_text,
       message_timestamp,
       from_job
from table(qsys2.history_log_info(CURRENT_TIMESTAMP - 1 DAY))
where message_text like '%abnormally%'
order by message_timestamp ;
