prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>3000436975541529
,p_default_application_id=>106
,p_default_id_offset=>55113874815241043
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_imp.id(65901064690281398)
,p_name=>'Tasks'
,p_step_title=>'Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This is the main application page. ',
'</p>',
'',
'<p>',
'    User can to the following:',
'',
'    <ul>',
'        <li>',
'            Create new task - Clicking on the default card, user will be re-directed to ',
'            the page where he can define new task not displaying on this page.',
'        </li>',
'        <li>',
'            Define task start - Upon clicking on task card user will be re-directed to the ',
'            page where additional information about activities involved in that task can be ',
'            specified. This will also ensure that last active task is closed and new one is ',
'            created in time sheet.',
'        </li>',
'    </ul>',
'</p>'))
,p_page_component_map=>'13'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527223317'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66250744039142760)
,p_plug_name=>'Task Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--compact:t-Cards--displayIcons:t-Cards--cols:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_imp.id(65857448209281377)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(69913159138909756)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(65882587772281384)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
