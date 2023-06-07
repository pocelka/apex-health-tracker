prompt --application/pages/page_10010
begin
--   Manifest
--     PAGE: 10010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>29631720813958193
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'About'
,p_alias=>'HELP'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(30226303257325318)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(30225467279325313)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230601093559'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30247651264325405)
,p_plug_name=>'About Application'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>wwv_flow_imp.id(30122366312325172)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Health Tracker is an application to store basic health related parameters; such as blood pressure and weight. ',
'<br> <br>',
'Individual users can use this application for simple tracking and reporting while the medical data are stored in a database. Data are not shared with 3rd party, but consumer is responsible for hosting (on-premises or in cloud; i.e. Oracle Cloud free '
||'tier.)'))
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp.component_end;
end;
/
