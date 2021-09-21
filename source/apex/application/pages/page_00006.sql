prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(45288063950562158)
,p_name=>'Create New Task'
,p_page_mode=>'MODAL'
,p_step_title=>'Create New Task (from Card)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'resizable:true'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527223727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49343048422907993)
,p_plug_name=>'Create New Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(45244447469562137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49343727195907995)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(45244914743562137)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49343449719907995)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(49343727195907995)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(45277284251562148)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49343559560907995)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(49343727195907995)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(45277284251562148)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49337294455830789)
,p_name=>'P6_ICON_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(49343048422907993)
,p_prompt=>'Icon Image'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(30344775611441070)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can specify font Awesome icon which will be displayed on the card on the main page. List of possible icons can be found for example <a href="https://apex.oracle.com/pls/apex/apex_pm/r/ut/icons">here</a>.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49337368107830790)
,p_name=>'P6_DESC_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(49343048422907993)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(30344775611441070)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can provide more information for the task; i.e. which activities the task involves.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49346116970908000)
,p_name=>'P6_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(49343048422907993)
,p_prompt=>'Task Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(30345023965441070)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Task name which user is working on.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49346504542908000)
,p_name=>'P6_PROJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(49343048422907993)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(30344775611441070)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'User can work on multiple projects at the same time. This is the place where can be specified to which project task belongs.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49459188217147587)
,p_name=>'P6_REPORTING_RELEVANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(49343048422907993)
,p_prompt=>'Reporting Relevant'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(49270792605341593)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(30345023965441070)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Indicates whether task is billable; i.e. out of work activities like commuting to work might not be considered as billable activity.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49344441579907996)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49343449719907995)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49344942352907997)
,p_event_id=>wwv_flow_api.id(49344441579907996)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49346843834908001)
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
,p_process_when_button_id=>wwv_flow_api.id(49343559560907995)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49347422496908001)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
