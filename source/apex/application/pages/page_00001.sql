prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(65901064690281398)
,p_name=>'Dashboard'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This page displays summary information for time statistics.',
'</p>',
''))
,p_page_component_map=>'18'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210527220351'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69951788019550044)
,p_plug_name=>'Daily Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65866996810281379)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   week_num,',
'   from_to,',
'   task_name,',
'   tt_utils.convert_to_hours(p_minutes => total * 60 * 24)  as total,',
'   tt_utils.convert_to_hours(p_minutes => day1 * 60 * 24)   as day1,',
'   tt_utils.convert_to_hours(p_minutes => day2 * 60 * 24)   as day2,',
'   tt_utils.convert_to_hours(p_minutes => day3 * 60 * 24)   as day3,',
'   tt_utils.convert_to_hours(p_minutes => day4 * 60 * 24)   as day4,',
'   tt_utils.convert_to_hours(p_minutes => day5 * 60 * 24)   as day5,',
'   tt_utils.convert_to_hours(p_minutes => day6 * 60 * 24)   as day6,',
'   tt_utils.convert_to_hours(p_minutes => day7 * 60 * 24)   as day7,',
'   relevant                                                 as reporting_relevant',
'from table(tt_utils.weekly_time_report(p_user => :APP_USER))',
'where 1 = 1',
'order by 1 desc',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69951899743550045)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
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
,p_internal_uid=>21538472085783119
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69951985599550046)
,p_db_column_name=>'WEEK_NUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Week'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952069916550047)
,p_db_column_name=>'FROM_TO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'From - To'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952174128550048)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69953021052550056)
,p_db_column_name=>'TOTAL'
,p_display_order=>40
,p_column_identifier=>'K'
,p_column_label=>'Total'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952273888550049)
,p_db_column_name=>'DAY1'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Monday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952366206550050)
,p_db_column_name=>'DAY2'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Tuesday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952522321550051)
,p_db_column_name=>'DAY3'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Wednesday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952557221550052)
,p_db_column_name=>'DAY4'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Thursday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952724251550053)
,p_db_column_name=>'DAY5'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Friday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952761354550054)
,p_db_column_name=>'DAY6'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Saturday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69952827845550055)
,p_db_column_name=>'DAY7'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Sunday'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69953189597550058)
,p_db_column_name=>'REPORTING_RELEVANT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Reporting relevant'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(69883793345060833)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69979248319423270)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'215659'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WEEK_NUM:FROM_TO:TASK_NAME:DAY1:DAY2:DAY3:DAY4:DAY5:DAY6:DAY7:TOTAL:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(70031889199117431)
,p_report_id=>wwv_flow_imp.id(69979248319423270)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'REPORTING_RELEVANT'
,p_operator=>'='
,p_expr=>'Yes'
,p_condition_sql=>'"REPORTING_RELEVANT" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Yes''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69954279334550069)
,p_plug_name=>'Last 3 weeks'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65867467162281379)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'   time_sheet_grouped as (select ',
'                              to_char(ts.start_dt, ''yyyy'') || ',
'                              ''.'' ||',
'                              to_char(ts.start_dt, ''iw'')                         as week,',
'                              min(trunc(ts.start_dt))                            as date_from,',
'                              max(trunc(ts.start_dt))                            as date_to,',
'                              sum(coalesce(ts.end_dt, sysdate) - ts.start_dt)    as duration,',
'                              t.project_relevant',
'                           from ',
'                              tt_task        t,',
'                              tt_time_sheet  ts',
'                           where 1 = 1',
'                           and ts.tt_task_id = t.id',
'                           and t.assigned_user = :APP_USER',
'                           group by',
'                              to_char(ts.start_dt, ''yyyy'') || ',
'                              ''.'' ||',
'                              to_char(ts.start_dt, ''iw''),',
'                              t.project_relevant)',
'select ',
'   ts.week || ',
'   '' ( '' || ',
'   to_char(ts.date_from,''dd.mm.yyyy'') || ',
'   '' - '' || ',
'   to_char(ts.date_to,''dd.mm.yyyy'') || ',
'   '' )''                                                           as week,',
'   tt_utils.convert_to_hours(p_minutes => ts.duration * 60 * 24)  as duration',
'from time_sheet_grouped ts',
'where 1 = 1',
'and project_relevant = ''Y''',
'order by 1 desc',
'fetch first 3 rows only;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69954348487550070)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'E2E'
,p_internal_uid=>21540920829783144
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69954481878550071)
,p_db_column_name=>'WEEK'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Week'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69954558631550072)
,p_db_column_name=>'DURATION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70042881112171309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'216295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WEEK:DURATION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69954651724550073)
,p_plug_name=>'Last 3 Days'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(65867467162281379)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'   time_sheet_grouped as (select ',
'                              trunc(ts.start_dt)                              as work_date,',
'                              sum(coalesce(ts.end_dt,sysdate) - ts.start_dt)  as duration,',
'                              t.project_relevant',
'                           from ',
'                              tt_task        t,',
'                              tt_time_sheet  ts',
'                           where 1 = 1',
'                           and ts.tt_task_id = t.id',
'                           and t.assigned_user = :APP_USER',
'                           group by',
'                              trunc(ts.start_dt),',
'                              t.project_relevant)',
'select ',
'   work_date,',
'   tt_utils.convert_to_hours(p_minutes => duration * 60 * 24)   as duration',
'from time_sheet_grouped',
'where 1 = 1',
'and project_relevant = ''Y''',
'order by 1 desc',
'fetch first 3 rows only',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69954889377550075)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'E2E'
,p_internal_uid=>21541461719783149
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69954983205550076)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70044295253179627)
,p_db_column_name=>'DURATION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70051440036182772)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'216381'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORK_DATE:DURATION'
);
wwv_flow_imp.component_end;
end;
/
