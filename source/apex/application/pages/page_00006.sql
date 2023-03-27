prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Create New Task'
,p_page_mode=>'MODAL'
,p_step_title=>'Create New Task (from Card)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'resizable:true'
,p_page_component_map=>'16'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527223727'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69956049162627233)
,p_plug_name=>'Create New Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65857448209281377)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69956727935627235)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65857915483281377)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69956450459627235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69956727935627235)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(65890284991281388)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69956560300627235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69956727935627235)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(65890284991281388)
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69950295195550029)
,p_name=>'P6_ICON_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69956049162627233)
,p_prompt=>'Icon Image'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(50957776351160310)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can specify font Awesome icon which will be displayed on the card on the main page. List of possible icons can be found for example <a href="https://apex.oracle.com/pls/apex/apex_pm/r/ut/icons">here</a>.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69950368847550030)
,p_name=>'P6_DESC_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69956049162627233)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(50957776351160310)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can provide more information for the task; i.e. which activities the task involves.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69959117710627240)
,p_name=>'P6_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69956049162627233)
,p_prompt=>'Task Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(50958024705160310)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Task name which user is working on.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69959505282627240)
,p_name=>'P6_PROJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69956049162627233)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(50957776351160310)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can work on multiple projects at the same time. This is the place where can be specified to which project task belongs.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70072188956866827)
,p_name=>'P6_REPORTING_RELEVANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69956049162627233)
,p_prompt=>'Reporting Relevant'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(69883793345060833)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(50958024705160310)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Indicates whether task is billable; i.e. out of work activities like commuting to work might not be considered as billable activity.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69957442319627236)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69956450459627235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69957943092627237)
,p_event_id=>wwv_flow_imp.id(69957442319627236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69959844574627241)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#OWNER#.tt_utils.create_new_task(p_task_name => :P6_TASK_NAME,',
'                                 p_project => :P6_PROJECT,',
'                                 p_reporting => :P6_REPORTING_RELEVANT,',
'                                 p_user => :APP_USER,',
'                                 p_icon_image => :P6_ICON_IMAGE,',
'                                 p_desc_text => :P6_DESC_TEXT);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69956560300627235)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69960423236627241)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
