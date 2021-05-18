create or replace package tt_utils authid current_user as

   -- CONSTANTS
  /**
   * @constant gc_version Package version in format YY.MM.DD
   * @constant gc_scope_prefix Package name
   */
   gc_version           constant varchar2(8 char) := '18.05.01';
   gc_scope_prefix      constant varchar2(31) := lower($$plsql_unit) || '.';
   
   function convert_to_hours(
      p_minutes    in number) return varchar2;

   procedure create_new_time_entry(
      p_task_id               in tt_task.id%type,
      p_user                  in tt_task.assigned_user%type,
      p_additional_info       in tt_time_sheet.additional_info%type);
      
   procedure create_new_task(
      p_task_name          in tt_task.name%type,
      p_project            in tt_task.project%type,
      p_reporting          in tt_task.project_relevant%type,
      p_user               in tt_task.assigned_user%type,
      p_icon_image         in tt_task.icon_image%type,
      p_desc_text          in tt_task.desc_text%type);
      
   function weekly_time_report(
      p_user               in tt_task.assigned_user%type) return tt_weekly_report_nt;

end tt_utils;
/
