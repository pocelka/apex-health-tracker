prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 103
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>29631720813958193
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(30200782633325265)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(30050229258325122)
,p_default_dialog_template=>wwv_flow_imp.id(30043565781325118)
,p_error_template=>wwv_flow_imp.id(30033512875325112)
,p_printer_friendly_template=>wwv_flow_imp.id(30050229258325122)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(30033512875325112)
,p_default_button_template=>wwv_flow_imp.id(30197796198325236)
,p_default_region_template=>wwv_flow_imp.id(30091175067325156)
,p_default_chart_template=>wwv_flow_imp.id(30091175067325156)
,p_default_form_template=>wwv_flow_imp.id(30091175067325156)
,p_default_reportr_template=>wwv_flow_imp.id(30091175067325156)
,p_default_tabform_template=>wwv_flow_imp.id(30091175067325156)
,p_default_wizard_template=>wwv_flow_imp.id(30091175067325156)
,p_default_menur_template=>wwv_flow_imp.id(30103501943325162)
,p_default_listr_template=>wwv_flow_imp.id(30091175067325156)
,p_default_irr_template=>wwv_flow_imp.id(30083871023325152)
,p_default_report_template=>wwv_flow_imp.id(30162792108325199)
,p_default_label_template=>wwv_flow_imp.id(30195293418325230)
,p_default_menu_template=>wwv_flow_imp.id(30199363357325238)
,p_default_calendar_template=>wwv_flow_imp.id(30199410417325241)
,p_default_list_template=>wwv_flow_imp.id(30185181056325220)
,p_default_nav_list_template=>wwv_flow_imp.id(30193938273325227)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(30193938273325227)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(30192139331325225)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(30108716268325165)
,p_default_dialogr_template=>wwv_flow_imp.id(30058890733325136)
,p_default_option_label=>wwv_flow_imp.id(30195293418325230)
,p_default_required_label=>wwv_flow_imp.id(30196565154325232)
,p_default_navbar_list_template=>wwv_flow_imp.id(30191785163325225)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
