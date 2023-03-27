prompt --application/shared_components/pwa/screenshots/task_list
begin
--   Manifest
--     PWA SCREENSHOT: Task List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3000436975541529
,p_default_application_id=>106
,p_default_id_offset=>55113874815241043
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_shared.create_pwa_screenshot(
 p_id=>wwv_flow_imp.id(4401524356345424)
,p_label=>'Task List'
,p_display_sequence=>20
,p_screenshot_url=>'pwa/tasks.jpg'
,p_pwa_screenshot_comment=>'Shows how user can select task he is currently working on.'
);
wwv_flow_imp.component_end;
end;
/
