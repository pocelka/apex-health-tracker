prompt --application/shared_components/pwa/screenshots/task_list
begin
--   Manifest
--     PWA SCREENSHOT: Task List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>9519534781980056
,p_default_application_id=>100
,p_default_id_offset=>75349645680530113
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_shared.create_pwa_screenshot(
 p_id=>wwv_flow_imp.id(24637295221634494)
,p_label=>'Task List'
,p_display_sequence=>20
,p_screenshot_url=>'pwa/tasks.jpg'
,p_pwa_screenshot_comment=>'Shows how user can select task he is currently working on.'
);
wwv_flow_imp.component_end;
end;
/
