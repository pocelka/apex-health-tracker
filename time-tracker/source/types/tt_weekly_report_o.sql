create or replace type tt_weekly_report_o authid current_user as object
(  week_num             varchar2(10),
   from_to              varchar2(25 char),
   task_name            varchar2(100 char),
   day1                 number,
   day2                 number,
   day3                 number,
   day4                 number,
   day5                 number,
   day6                 number,
   day7                 number,
   total                number,
   relevant             varchar2(1 char),

   constructor function tt_weekly_report_o(
      p_week_num        in week_num%type        default null,
      p_from_to         in from_to%type         default null,
      p_task_name       in task_name%type       default null,
      p_day1            in day1%type            default null,
      p_day2            in day2%type            default null,
      p_day3            in day3%type            default null,
      p_day4            in day4%type            default null,
      p_day5            in day5%type            default null,
      p_day6            in day6%type            default null,
      p_day7            in day7%type            default null,
      p_total           in total%type           default null,
      p_relevant        in relevant%type        default null)
      return self as result
)
/

create or replace type body tt_weekly_report_o as

   constructor function tt_weekly_report_o(
      p_week_num        in week_num%type,
      p_from_to         in from_to%type,
      p_task_name       in task_name%type,
      p_day1            in day1%type,
      p_day2            in day2%type,
      p_day3            in day3%type,
      p_day4            in day4%type,
      p_day5            in day5%type,
      p_day6            in day6%type,
      p_day7            in day7%type,
      p_total           in total%type,
      p_relevant        in relevant%type)
      return self as result is

   begin

      self.week_num := p_week_num;
      self.from_to := p_from_to;
      self.task_name := p_task_name;
      self.day1 := p_day1;
      self.day2 := p_day2;
      self.day3 := p_day3;
      self.day4 := p_day4;
      self.day5 := p_day5;
      self.day6 := p_day6;
      self.day7 := p_day7;
      self.total := p_total;
      self.relevant := p_relevant;

      return;
   end tt_weekly_report_o;
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

end;
/
