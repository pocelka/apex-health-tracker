prompt --application/shared_components/navigation/lists/desktop_tasks_cards
begin
--   Manifest
--     LIST: Desktop Tasks Cards
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>9519534781980056
,p_default_application_id=>100
,p_default_id_offset=>75349645680530113
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(90148930004198826)
,p_name=>'Desktop Tasks Cards'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   null                 as level_value,',
'   ''#New Task#''         as label_value,',
'   ''f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::''    as target_value,',
'   null                 as is_current,',
'   ''fa-plus''            as image_value,',
'   null                 as image_attr_value,',
'   null                 as image_alt_value,',
'   ''Create a new task''  as attribute1',
'from dual',
'where 1 = 1',
'union all',
'select ',
'   null              as level_value,',
'   name              as label_value,',
'   ''f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:P5_TASK_ID:'' || id   as target_value,',
'   null              as is_current,',
'   icon_image        as image_value,',
'   null              as image_attr_value,',
'   null              as image_alt_value,',
'   case',
'      when project is not null and desc_text is not null then ''<b>'' || project || '':</b><br>'' || desc_text',
'      when project is not null and desc_text is null then ''<b>'' || project || '':</b>''',
'      when project is null and desc_text is not null then desc_text',
'      when project is null and desc_text is null then null',
'   end               as attribute1',
'from "#OWNER#".TT_TASK ',
'where 1 = 1',
'and active = ''Y''',
'and assigned_user = :APP_USER'))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
