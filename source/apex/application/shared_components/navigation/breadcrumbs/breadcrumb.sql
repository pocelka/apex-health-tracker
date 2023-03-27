prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3000436975541529
,p_default_application_id=>106
,p_default_id_offset=>55113874815241043
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(65902339902281409)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65902786939281411)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
