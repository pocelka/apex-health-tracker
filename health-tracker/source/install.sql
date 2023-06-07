set define '&'
set verify off

prompt
prompt
prompt Installing application backend components
prompt

spool install.log

whenever sqlerror exit failure rollback
whenever oserror exit failure rollback

--tables
@@ddl/ht_blood_pressure.sql
@@ddl/ht_weight.sql

prompt
prompt
prompt Validating installation
prompt

set linesize 200
set define on
set feedback on
set termout on
column text format a100
column error_count noprint new_value error_count

set heading on

select
   count(1) over()   as error_count,
   type,
   name,
   sequence,
   line,
   position,
   text
from user_errors
where 1 = 1
and name not like 'BIN$%'  --skip objects in recycle bin
and name like 'HT%'
and attribute = 'ERROR'
order by
   name,
   type,
   sequence;

begin
   if to_number('&&error_count') > 0 then
      raise_application_error(-20000, 'Not all sources were successfully installed.');
   else
      sys.dbms_output.enable;
      sys.dbms_output.put_line('Installation completed successfully');
  end if;
end;
/

spool off
