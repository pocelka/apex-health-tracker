prompt --application/pages/page_10041
begin
--   Manifest
--     PAGE: 10041
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3000436975541529
,p_default_application_id=>106
,p_default_id_offset=>55113874815241043
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Help'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_page_component_map=>'10'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527215904'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51518210034558103)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65857448209281377)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select ',
'               page_title, ',
'               help_text ',
'            from apex_application_pages',
'            where 1 = 1',
'            and page_id = :P10041_PAGE_ID ',
'            and application_id = :APP_ID)',
'loop',
'   if c1.help_text is null then',
'      sys.htp.p(''No help is available for this page.'');',
'   else ',
'      if substr(c1.help_text, 1, 3) != ''<p>'' then',
'         sys.htp.p(''<p>'');',
'      end if;',
'',
'      sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'      if substr(trim(c1.help_text), -4) != ''</p>'' then',
'         sys.htp.p(''</p>'');',
'      end if;',
'      ',
'   end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51518310566558104)
,p_name=>'P10041_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51518210034558103)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
