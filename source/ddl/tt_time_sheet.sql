declare
   l_cnt    pls_integer;
begin
   select count(*) into l_cnt from user_tables where table_name = upper('tt_time_sheet');
   
   if (l_cnt > 0) then
      execute immediate 'drop table tt_time_sheet cascade constraints purge';
   end if;
end;
/


create table tt_time_sheet (
   id                   number not null constraint tt_time_sheet_id_pk primary key,
   tt_task_id           number constraint tt_time_sheet_tt_task_id_fk
                        references tt_task on delete cascade,
   start_dt             date,
   end_dt               date,
   additional_info      varchar2(4000 char)
)
;

create index tt_time_sheet__task_id on tt_time_sheet(tt_task_id);

comment on table tt_time_sheet is 'Contains time duration for specific task';
comment on column tt_time_sheet.id is 'Primary identifier for the row';
comment on column tt_time_sheet.tt_task_id is 'Reference to task';
comment on column tt_time_sheet.start_dt is 'Date / Time when task started';
comment on column tt_time_sheet.end_dt is 'Date / Time when task finished';
comment on column tt_time_sheet.additional_info is 'Additional information for task';
