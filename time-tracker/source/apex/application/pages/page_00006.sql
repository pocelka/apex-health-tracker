prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>29631720813958193
,p_default_application_id=>104
,p_default_id_offset=>85440736833795544
,p_default_owner=>'DEV'
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
 p_id=>wwv_flow_imp.id(100282911181181734)
,p_plug_name=>'Create New Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96184310227835878)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100283589954181736)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96184777501835878)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100283312478181736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(100283589954181736)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96217147009835889)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100283422319181736)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(100283589954181736)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(96217147009835889)
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100277157214104530)
,p_name=>'P6_ICON_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(100282911181181734)
,p_prompt=>'Icon Image'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(81284638369714811)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can specify font Awesome icon which will be displayed on the card on the main page. List of possible icons can be found for example <a href="https://apex.oracle.com/pls/apex/apex_pm/r/ut/icons">here</a>.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100277230866104531)
,p_name=>'P6_DESC_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(100282911181181734)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(81284638369714811)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can provide more information for the task; i.e. which activities the task involves.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100285979729181741)
,p_name=>'P6_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(100282911181181734)
,p_prompt=>'Task Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(81284886723714811)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Task name which user is working on.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100286367301181741)
,p_name=>'P6_PROJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(100282911181181734)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(81284638369714811)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can work on multiple projects at the same time. This is the place where can be specified to which project task belongs.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100399050975421328)
,p_name=>'P6_REPORTING_RELEVANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(100282911181181734)
,p_prompt=>'Reporting Relevant'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(100210655363615334)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(81284886723714811)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Indicates whether task is billable; i.e. out of work activities like commuting to work might not be considered as billable activity.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100284304338181737)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(100283312478181736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100284805111181738)
,p_event_id=>wwv_flow_imp.id(100284304338181737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100286706593181742)
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
,p_process_when_button_id=>wwv_flow_imp.id(100283422319181736)
,p_internal_uid=>100286706593181742
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100287285255181742)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>100287285255181742
);
wwv_flow_imp.component_end;
end;
/
