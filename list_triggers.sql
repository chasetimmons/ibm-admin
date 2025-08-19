-- list triggers
select cast(tabschema as char(10)) as table_library,
       cast(tabname as char(10)) as table_name,
       trigtime,
       event_u,
       event_i,
       event_d,
       cast(trigpgmlib as char(10)) as trigger_library,
       cast(trigpgm as char(10)) as trigger_program,
       trigname
from qsys2.systrigger
