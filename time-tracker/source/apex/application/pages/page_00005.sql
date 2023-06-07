prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Task Submit'
,p_step_title=>'Task Submit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    On this page user can specify further details for started task; i.e. which activities he will ',
'    be working on.',
'</p>',
'',
'<p>',
'    Upon clicking on th "SAVE" button, last active task in time sheet is closed and new one is',
'    created.',
'</p>'))
,p_page_component_map=>'16'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527223241'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96577709344697262)
,p_plug_name=>'Submit Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(96184310227835878)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96578035020697265)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(96577709344697262)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(96217147009835889)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(100277065173104529)
,p_branch_name=>'Return to Tasks Cards'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96577809819697263)
,p_name=>'P5_TASK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(96577709344697262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96577947031697264)
,p_name=>'P5_ADDITIONAL_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(96577709344697262)
,p_prompt=>'Additional Details'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>6
,p_field_template=>wwv_flow_imp.id(96216681918835888)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(96578147251697266)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Time Entry'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   tt_utils.create_new_time_entry(p_task_id => :P5_TASK_ID,',
'                                  p_user => :APP_USER,',
'                                  p_additional_info => :P5_ADDITIONAL_DETAILS);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(96578035020697265)
,p_internal_uid=>96578147251697266
);
wwv_flow_imp.component_end;
end;
/
