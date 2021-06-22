set define '&'
set verify off

spool install_apex.log

whenever sqlerror exit failure rollback
whenever oserror exit failure rollback

prompt
prompt
prompt Installing Time Tracker APEX (front end) components
prompt

accept tt_ws char prompt 'Provide APEX workspace name created by DBA :'
accept tt_user char prompt 'Provide application schema name :'

declare
   l_workspace_id       number;
begin

   select workspace_id
   into l_workspace_id
   from apex_workspaces
   where workspace = upper('&tt_ws');

   apex_application_install.set_workspace_id(l_workspace_id);
   apex_application_install.generate_application_id;
   apex_application_install.generate_offset;
   apex_application_install.set_schema(upper('&tt_user'));
   apex_application_install.set_application_alias('Time Tracker');

end;
/

@@apex/app.sql

exit
