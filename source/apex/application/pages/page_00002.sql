prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(65901064690281398)
,p_name=>'Admin Task List'
,p_step_title=>'Admin Task List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'On this page user can see which tasks are availale for him to use an upon clicking on the link task properties can be modified.',
'</p>',
''))
,p_page_component_map=>'18'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527220538'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69900539967403717)
,p_plug_name=>'Task List'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65866996810281379)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   id, ',
'   name,',
'   project,',
'   desc_text,',
'   active',
'from "#OWNER#".tt_task',
'where 1 = 1',
'and assigned_user = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69900988830403717)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'E2E'
,p_internal_uid=>21487561172636791
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69901082734403719)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69901511279403722)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_ID:#ID#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69901918977403723)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69902311240403723)
,p_db_column_name=>'DESC_TEXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69903091230403723)
,p_db_column_name=>'ACTIVE'
,p_display_order=>24
,p_column_identifier=>'F'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(69883793345060833)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69906149085410087)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'214928'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAME:PROJECT:DESC_TEXT:ACTIVE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69903505736403723)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69900539967403717)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69903974500403724)
,p_event_id=>wwv_flow_imp.id(69903505736403723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69900539967403717)
);
wwv_flow_imp.component_end;
end;
/
