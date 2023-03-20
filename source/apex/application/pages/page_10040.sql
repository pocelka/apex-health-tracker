prompt --application/pages/page_10040
begin
--   Manifest
--     PAGE: 10040
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
 p_id=>10040
,p_user_interface_id=>wwv_flow_imp.id(65901064690281398)
,p_name=>'About Application'
,p_alias=>'ABOUT-APPLICATION'
,p_step_title=>'About Application'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527221138'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51518420309558105)
,p_plug_name=>'About Application'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>wwv_flow_imp.id(65864397816281378)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'Under Construction'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/
