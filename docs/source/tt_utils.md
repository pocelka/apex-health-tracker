# TT_UTILS



- [Constants](#constants)


- [CONVERT_TO_HOURS Function](#convert_to_hours)
- [CREATE_NEW_TIME_ENTRY Procedure](#create_new_time_entry)
- [CREATE_NEW_TASK Procedure](#create_new_task)
- [WEEKLY_TIME_REPORT Function](#weekly_time_report)



## Constants<a name="constants"></a>

Name | Code | Description
--- | --- | ---
gc_version | <pre>gc_version           constant varchar2(8 char) := '18.05.01';</pre> | Package version in format YY.MM.DD
gc_scope_prefix | <pre>gc_scope_prefix      constant varchar2(31) := lower($$plsql_unit) || '.';</pre> | Package name






 
## CONVERT_TO_HOURS Function<a name="convert_to_hours"></a>


<p>
<p>Converts minutes to hh:mm:ss format</p>
</p>

### Syntax
```plsql
function convert_to_hours(
   p_minutes    in number) return varchar2
```

### Parameters
Name | Description
--- | ---
`p_minutes` | Number of minutes to convert
*return* | Time in hh:mm:ss format
 
 


### Revision History
Date | Description
--- | ---
 





 
## CREATE_NEW_TIME_ENTRY Procedure<a name="create_new_time_entry"></a>


<p>
<p>Procedure will end last open time entry and create new entry for new task.</p>
</p>

### Syntax
```plsql
procedure create_new_time_entry(
   p_task_id               in tt_task.id%type,
   p_user                  in tt_task.assigned_user%type,
   p_additional_info       in tt_time_sheet.additional_info%type)
```

### Parameters
Name | Description
--- | ---
`p_task_id` | Task for which new time entry should be created
`p_user` | User for who new entry is being created
`p_additional_info` | Additional information for new time entry
 
 


 





 
## CREATE_NEW_TASK Procedure<a name="create_new_task"></a>


<p>
<p>Procedure create a new task into the tasks list table. Also creates a new entry in the time sheet table.</p>
</p>

### Syntax
```plsql
procedure create_new_task(
   p_task_name          in tt_task.name%type,
   p_project            in tt_task.project%type,
   p_user               in tt_task.assigned_user%type,
   p_icon_image         in tt_task.icon_image%type,
   p_desc_text          in tt_task.desc_text%type)
```

### Parameters
Name | Description
--- | ---
`p_task_name` | Name of the task
`p_project` | Project for which task is being created
`p_user` | User who owns newly created task
`p_icon_image` | Universal theme icon which should be displayed for the task
`p_desc_text` | Description for the task. It is also used as an additional information for the new time sheet entry
 
 


 





 
## WEEKLY_TIME_REPORT Function<a name="weekly_time_report"></a>


<p>
<p>Table function which will calculate weekly time report in humanly readable format</p>
</p>

### Syntax
```plsql
function weekly_time_report(
   p_user               in tt_task.assigned_user%type) return tt_weekly_report_nt
```

### Parameters
Name | Description
--- | ---
`p_user` | User for which report should be displayed
*return* | Humanly readable time sheet format
 
 


### Revision History
Date | Description
--- | ---
 





 
