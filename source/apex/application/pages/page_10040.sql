prompt --application/pages/page_10040
begin
--   Manifest
--     PAGE: 10040
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>2600336800070006
,p_default_application_id=>101
,p_default_id_offset=>34500874075521803
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_api.create_page(
 p_id=>10040
,p_user_interface_id=>wwv_flow_api.id(45288063950562158)
,p_name=>'About Application'
,p_alias=>'ABOUT-APPLICATION'
,p_step_title=>'About Application'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527221138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30905419569838865)
,p_plug_name=>'About Application'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>wwv_flow_api.id(45251397076562138)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Under Construction'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
