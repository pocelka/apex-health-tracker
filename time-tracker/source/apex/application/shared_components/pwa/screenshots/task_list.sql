prompt --application/shared_components/pwa/screenshots/task_list
begin
--   Manifest
--     PWA SCREENSHOT: Task List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>29631720813958193
,p_default_application_id=>104
,p_default_id_offset=>85440736833795544
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_pwa_screenshot(
 p_id=>wwv_flow_imp.id(34728386374899925)
,p_label=>'Task List'
,p_display_sequence=>20
,p_screenshot_url=>'pwa/tasks.jpg'
,p_pwa_screenshot_comment=>'Shows how user can select task he is currently working on.'
);
wwv_flow_imp.component_end;
end;
/
