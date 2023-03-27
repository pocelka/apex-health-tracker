prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3000436975541529
,p_default_application_id=>106
,p_default_id_offset=>55113874815241043
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(65848845689281369)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65902504989281410)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69916971537955283)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69885663176078641)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Administration'
,p_list_item_icon=>'fa-cogs'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69886008235084607)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_parent_list_item_id=>wwv_flow_imp.id(69885663176078641)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70030510389030327)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Time Correction'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_parent_list_item_id=>wwv_flow_imp.id(69885663176078641)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
