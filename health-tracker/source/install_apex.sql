set define '&'
set verify off

spool install_apex.log

whenever sqlerror exit failure rollback
whenever oserror exit failure rollback

prompt
prompt
prompt Installing APEX (front end) components
prompt

accept ws char prompt 'Provide APEX workspace name created by DBA : '
accept usr char prompt 'Provide application schema name : '

declare
   l_workspace_id       number;
begin

   select workspace_id
   into l_workspace_id
   from apex_workspaces
   where workspace = upper('&ws');

   apex_application_install.set_workspace_id(l_workspace_id);
   apex_application_install.generate_application_id;
   apex_application_install.generate_offset;
   apex_application_install.set_schema(upper('&usr'));

end;
/

@@install_apex_application.sql
