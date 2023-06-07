prompt --application/shared_components/pwa/screenshots/login_screen
begin
--   Manifest
--     PWA SCREENSHOT: Login Screen
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
 p_id=>wwv_flow_imp.id(34727817112896775)
,p_label=>'Login Screen'
,p_display_sequence=>10
,p_screenshot_url=>'pwa/loging.jpg'
,p_pwa_screenshot_comment=>'Shows simple login screen into the application.'
);
wwv_flow_imp.component_end;
end;
/
