prompt --application/pages/page_10011
begin
--   Manifest
--     PAGE: 10011
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
 p_id=>10011
,p_name=>'Help'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(30225467279325313)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230613193419'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30248322425325406)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(30058890733325136)
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in (select ',
'                  ap.page_title,',
'                  coalesce(trn.to_string, ap.help_text)     as help_text',
'               from apex_application_pages ap',
'               left join apex_application_trans_map trnm',
'                  on 1 = 1',
'                  and trnm.primary_application_id = ap.application_id',
'                  and trnm.translated_app_language = apex_util.get_session_lang',
'               left join apex_application_trans_repos trn',
'                  on 1 = 1',
'                  and trn.translated_application_id = trnm.translated_application_id',
'                  and trn.application_id = ap.application_id',
'                  and trn.application_page_id = ap.page_id',
'                  and trn.internal_attribute_name = ''APEX_PAGES.HELP_TEXT''',
'               where 1 = 1',
'               and ap.application_id = :APP_ID',
'               and ap.page_id = :P10011_PAGE_ID)',
'loop',
'   if l_page.help_text is null then',
'      return ''No help is available for this page.'';',
'   else',
'      return case ',
'               when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' ',
'             end ',
'             || apex_application.do_substitutions(l_page.help_text) ',
'             || case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'    ',
'end loop;',
''))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30248707159325407)
,p_name=>'P10011_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30248322425325406)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
