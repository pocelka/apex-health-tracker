prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'T-Track - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(65850871136281373)
,p_page_css_classes=>'login-region'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230320185248'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65901574924281408)
,p_plug_name=>'T-Track'
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65867264563281379)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To sign into your personal time sheet application, please use your APEX Workspace username and password.</p>',
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65901922047281409)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(65901574924281408)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(65890284991281388)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22000694956993501)
,p_name=>'P101_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65901574924281408)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(65889664888281386)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65901693537281408)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65901574924281408)
,p_prompt=>'username'
,p_placeholder=>'user name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(65889664888281386)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65901733773281409)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65901574924281408)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(65889664888281386)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65902095102281409)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME),',
'    p_consent  => :P101_REMEMBER = ''Y'' ',
'    );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65902003972281409)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65902257249281409)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65902133154281409)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
