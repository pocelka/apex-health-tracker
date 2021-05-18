create or replace package body tt_utils as

   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PRIVATE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   /*!
   * Function will return last non-ended task for specific user
   *
   * @param p_assigned_user User for which should be returned task ID
   *
   * @return ID of the last non-closed entry int the time sheet
   *
   */
   function get_last_user_entry(
      p_assigned_user         in tt_task.assigned_user%type) return number is

      l_last_entry_id            tt_time_sheet.id%type;      

   begin
   
      select id
      into l_last_entry_id
      from tt_time_sheet t
      where 1 = 1
      and t.end_dt is null
      and t.tt_task_id in (select id
                              from tt_task b
                              where 1 = 1
                              and b.assigned_user = p_assigned_user);
                              
      return l_last_entry_id;
   
      exception
         when no_data_found then
            return null;
   end get_last_user_entry;
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PUBLIC ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   /**
   * Converts minutes to hh:mm:ss format
   *
   * @param p_minutes Number of minutes to convert
   *
   * @return Time in hh:mm:ss format
   *
   */
   function convert_to_hours(
      p_minutes    in number) return varchar2 is

   begin
      
      return to_char(trunc(p_minutes/60),'FM9900') || 
             ':' ||
             to_char(trunc(mod(p_minutes,60)),'FM00') || 
             ':' ||
             to_char(mod(p_minutes * 60,60),'FM00');
             
   end convert_to_hours;
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   /**
   * Procedure will end last open time entry and create new entry for new task.
   *
   * @param p_task_id Task for which new time entry should be created
   * @param p_user User for who new entry is being created
   * @param p_additional_info Additional information for new time entry
   *
   */
   procedure create_new_time_entry(
      p_task_id               in tt_task.id%type,
      p_user                  in tt_task.assigned_user%type,
      p_additional_info       in tt_time_sheet.additional_info%type) is
      
      l_last_entry_id            tt_time_sheet.id%type;
      
   begin

      l_last_entry_id := get_last_user_entry(p_assigned_user => p_user);
      
      if (l_last_entry_id is not null) then

         update tt_time_sheet t
         set t.end_dt = sysdate
         where 1 = 1
         and t.id = l_last_entry_id;
         
         insert into tt_time_sheet(
            id,
            tt_task_id,
            start_dt,
            additional_info)
         values (
            tt_time_seq.nextval,
            p_task_id,
            sysdate,
            p_additional_info);
         
      else
      
         insert into tt_time_sheet(
            id,
            tt_task_id,
            start_dt,
            additional_info)
         values (
            tt_time_seq.nextval,
            p_task_id,
            sysdate,
            p_additional_info);
         
      end if;
      
      commit;

   end create_new_time_entry;
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   /**
   * Procedure create a new task into the tasks list table. Also creates a new entry in the time sheet table.
   *
   * @param p_task_name Name of the task
   * @param p_project Project for which task is being created
   * @param p_user User who owns newly created task
   * @param p_icon_image Universal theme icon which should be displayed for the task
   * @param p_desc_text Description for the task. It is also used as an additional information for the new time sheet entry
   *
   * @issue 20190131 Fix for #1
   */
   procedure create_new_task(
      p_task_name          in tt_task.name%type,
      p_project            in tt_task.project%type,
      p_reporting          in tt_task.project_relevant%type,
      p_user               in tt_task.assigned_user%type,
      p_icon_image         in tt_task.icon_image%type,
      p_desc_text          in tt_task.desc_text%type) is
      
      l_task_id               number;
      
   begin
   
      l_task_id := tt_task_seq.nextval;
   
      insert into tt_task (
         id,
         name,
         project,
         project_relevant,
         desc_text,
         assigned_user,
         icon_image,
         active)
      values (
         l_task_id,
         p_task_name,
         p_project,
         p_reporting,
         p_desc_text,
         p_user,
         p_icon_image,
         'Y');
         
      commit;
      
      create_new_time_entry(p_task_id => l_task_id,
                            p_user => p_user,
                            p_additional_info => p_desc_text);
         
   end create_new_task;
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
   /**
   * Table function which will calculate weekly time report in humanly readable format
   *
   * @param p_user User for which report should be displayed
   *
   * @issue 20190114 POCELKA: corrected issue with week number calculation
   *
   * @return Humanly readable time sheet format
   *
   */
   function weekly_time_report(
      p_user               in tt_task.assigned_user%type) return tt_weekly_report_nt is
      
      l_week                  tt_weekly_report_nt := tt_weekly_report_nt();
      
   begin
   
      --this select will construct tasks per week and will initialize output collection to default format
      with
         week_period as (select
                              to_char(ts.start_dt, 'yyyy') ||
                              '.' ||
                              to_char(ts.start_dt, 'iw') as week,
                              min(trunc(ts.start_dt))    as date_from,
                              max(trunc(ts.start_dt))    as date_to
                           from
                              tt_task        t,
                              tt_time_sheet  ts
                           where 1 = 1
                           and ts.tt_task_id = t.id
                           and t.assigned_user = p_user
                           group by
                              to_char(ts.start_dt, 'yyyy') ||
                              '.' ||
                              to_char(ts.start_dt, 'iw')),
         time_sheet_data as (select distinct
                                 wp.week,
                                 to_char(wp.date_from,'dd.mm.yyyy') || ' - ' || to_char(wp.date_to,'dd.mm.yyyy') as from_to,
                                 t.name            as task_name,
                                 0                 as day1,
                                 0                 as day2,
                                 0                 as day3,
                                 0                 as day4,
                                 0                 as day5,
                                 0                 as day6,
                                 0                 as day7,
                                 t.project_relevant
                              from
                                 week_period    wp,
                                 tt_task        t,
                                 tt_time_sheet  ts
                              where 1 = 1
                              and ts.tt_task_id = t.id
                              and t.assigned_user = p_user
                              and to_char(ts.start_dt, 'yyyy') || '.' || to_char(ts.start_dt, 'iw') = wp.week)
      select
         tt_weekly_report_o(p_week_num => week,
                            p_from_to => from_to,
                            p_task_name => task_name,
                            p_day1 => 0,
                            p_day2 => 0,
                            p_day3 => 0,
                            p_day4 => 0,
                            p_day5 => 0,
                            p_day6 => 0,
                            p_day7 => 0,
                            p_total => 0,
                            p_relevant => project_relevant) as week_tasks
      bulk collect into l_week
      from time_sheet_data
      where 1 = 1;
      
      --with this logic we will calculate exact time spent on exact task
      for i in (select 
                     sum(coalesce(ts.end_dt, sysdate) - ts.start_dt) as duration,
                     to_char(ts.start_dt, 'yyyy') ||
                     '.' ||
                     to_char(ts.start_dt, 'iw')                      as week,
                     t.name                                          as task_name,
                        to_char(ts.start_dt, 'Day')                  as day_of_week
                  from 
                     tt_task        t,
                     tt_time_sheet  ts
                  where 1 = 1
                  and ts.tt_task_id = t.id
                  and t.assigned_user = p_user
                  group by
                     to_char(ts.start_dt, 'yyyy') ||
                     '.' ||
                     to_char(ts.start_dt, 'iw'),
                     t.name,
                     to_char(ts.start_dt, 'Day'))
      loop
      
         --find record in collection and update duration
         <<week_col>>
         for idx in 1..l_week.count
         loop
            
            if (l_week(idx).week_num = i.week
                  and l_week(idx).task_name = i.task_name) then
                  
               if (i.day_of_week like 'Monday%') then
                  l_week(idx).day1 := l_week(idx).day1 + i.duration;
                  
               elsif (i.day_of_week like 'Tuesday%') then
                  l_week(idx).day2 := l_week(idx).day2 + i.duration;
                  
               elsif (i.day_of_week like 'Wednesday%') then
                  l_week(idx).day3 := l_week(idx).day3 + i.duration;
                  
               elsif (i.day_of_week like 'Thursday%') then
                  l_week(idx).day4 := l_week(idx).day4 + i.duration;
                  
               elsif (i.day_of_week like 'Friday%') then
                  l_week(idx).day5 := l_week(idx).day5 + i.duration;
                  
               elsif (i.day_of_week like 'Saturday%') then
                  l_week(idx).day6 := l_week(idx).day6 + i.duration;
                  
               elsif (i.day_of_week like 'Sunday%') then
                  l_week(idx).day7 := l_week(idx).day7 + i.duration;
                  
               end if;
               
               l_week(idx).total := l_week(idx).day1 + l_week(idx).day2 + l_week(idx).day3 + l_week(idx).day4 +
                                    l_week(idx).day5 + l_week(idx).day6 + l_week(idx).day7;
               
               exit week_col;
               
            end if;
   
         end loop week_col;
      end loop;
      
      return l_week;
      
   end weekly_time_report;
   --~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
end tt_utils;
/
