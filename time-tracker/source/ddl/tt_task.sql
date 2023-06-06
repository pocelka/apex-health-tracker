-- drop objects
declare
   l_cnt    pls_integer;
begin
   select count(*) into l_cnt from user_tables where table_name = upper('tt_task');

   if (l_cnt > 0) then
      execute immediate 'drop table tt_task cascade constraints purge';
   end if;
end;
/


-- create tables
create table tt_task (
   id                         number not null constraint tt_task_id_pk primary key,
   name                       varchar2(100 char) not null,
   project                    varchar2(50 char),
   desc_text                  varchar2(500 char),
   assigned_user              varchar2(100 char),
   icon_image                 varchar2(100 char),
   active                     varchar2(1 char) not null,
   project_relevant           varchar2(1 char)
)
;

create bitmap index tt_task__user on tt_task(assigned_user);

comment on table tt_task is 'Contains definition of tasks for specific user';
comment on column tt_task.name is 'Task name displayed in apex application';
comment on column tt_task.project is 'Project name';
comment on column tt_task.desc_text is 'Task short description.';
comment on column tt_task.assigned_user is 'Apex user under which record was created';
comment on column tt_task.icon_image is 'Contains text representation for Oracle Apex icon';
comment on column tt_task.active is 'Indication whether task should be displayed in apex application or not';
comment on column tt_task.project_relevant is 'Indication whether task task is related to the project (is billable).';
