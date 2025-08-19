-- list journal receivers by space consumed
select objname, 
       objtype, 
       objcreated, 
       change_timestamp, 
       objsize
from table(qsys2.object_statistics('*ALL', '*JRNRCV')) as a
order by objsize desc ;
