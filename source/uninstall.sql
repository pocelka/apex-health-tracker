set define '&'
set verify off

prompt
prompt
prompt Un-Installing Time Tracker components
prompt

spool uninstall.log

whenever sqlerror exit failure rollback
whenever oserror exit failure rollback

accept tt_ws char prompt 'Provide APEX workspace name :'
accept tt_app char prompt 'Provide application name :'


declare
   l_workspace_id       apex_workspaces.workspace_id%type;
   l_application_id     apex_applications.application_id%type;
begin

   select
      ws.workspace_id,
      app.application_id
   into
      l_workspace_id,
      l_application_id
   from
      apex_workspaces      ws,
      apex_applications    app
   where 1 = 1
   and app.workspace = upper('&tt_ws')
   and app.application_name = '&tt_app'
   and app.workspace = ws.workspace;

   apex_application_install.set_workspace_id(l_workspace_id);
   apex_application_install.remove_application(l_application_id);

end;
/

drop package tt_utils;

drop type tt_weekly_report_nt;
drop type tt_weekly_report_o;

drop table tt_time_sheet;
drop table tt_task purge;

drop sequence tt_task_seq;
drop sequence tt_time_seq;

spool off

exit
