prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Health Tracker'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page is used to provide 360 degree overview of personal health statistics. ',
'<br>',
'User can:',
'<br>',
'',
'<ul>',
'    <li>Switch between different tabs.</li>',
'    <li>See historical data in the form of line graphs and tables.</li>',
'    <li>Add new data.</li>',
'</ul>',
''))
,p_page_component_map=>'13'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230608080831'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29439167104520112)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(30100963301325161)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29439257628520113)
,p_plug_name=>'History'
,p_parent_plug_id=>wwv_flow_imp.id(29439167104520112)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(30100963301325161)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29440237707520123)
,p_plug_name=>'Weight'
,p_parent_plug_id=>wwv_flow_imp.id(29439257628520113)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(30091175067325156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(29440816899520129)
,p_region_id=>wwv_flow_imp.id(29440237707520123)
,p_chart_type=>'line'
,p_title=>'Current Weight: &P1_LAST_WEIGHT.'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'first'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(29440953380520130)
,p_chart_id=>wwv_flow_imp.id(29440816899520129)
,p_seq=>10
,p_name=>'Weight'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'   cte_data as (select ',
'                     trunc(created at time zone ''Europe/Bratislava'') as created,',
'                     weight,',
'                     notes,',
'                     row_number() over (partition by trunc(created at time zone ''Europe/Bratislava'') order by id desc) as rn',
'                  from ht_weight',
'                  where 1 = 1',
'                  and ignore_flg = ''N''',
'                  and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user))',
'select ',
'   to_char(created, ''yyyy-mm-dd'')   as created,',
'   weight',
'from cte_data',
'where 1 = 1',
'and rn = 1',
'order by created desc',
';',
''))
,p_ajax_items_to_submit=>'P1_LAST_WEIGHT'
,p_items_value_column_name=>'WEIGHT'
,p_items_label_column_name=>'CREATED'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_font_size=>'8'
,p_items_label_font_color=>'#000000'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29441183655520132)
,p_chart_id=>wwv_flow_imp.id(29440816899520129)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_min=>75
,p_max=>130
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29441036801520131)
,p_chart_id=>wwv_flow_imp.id(29440816899520129)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29440327700520124)
,p_plug_name=>'Blood Pressure'
,p_parent_plug_id=>wwv_flow_imp.id(29439257628520113)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(30091175067325156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(29442346765520144)
,p_region_id=>wwv_flow_imp.id(29440327700520124)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'first'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(29442490064520145)
,p_chart_id=>wwv_flow_imp.id(29442346765520144)
,p_seq=>10
,p_name=>'Systolic'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   to_char(created at time zone ''Europe/Bratislava'', ''yyyy-mm-dd hh24:mi'')    as created,',
'   systolic',
'from ht_blood_pressure b',
'where 1 = 1',
'and ignore_flg = ''N''',
'and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user)',
'order by',
'   created desc',
';'))
,p_items_value_column_name=>'SYSTOLIC'
,p_items_label_column_name=>'CREATED'
,p_color=>'#2c66f8'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(29442727410520148)
,p_chart_id=>wwv_flow_imp.id(29442346765520144)
,p_seq=>20
,p_name=>'Diastolic'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   to_char(created at time zone ''Europe/Bratislava'', ''yyyy-mm-dd hh24:mi'')    as created,',
'   diastolic',
'from ht_blood_pressure b',
'where 1 = 1',
'and ignore_flg = ''N''',
'and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user)',
'order by',
'   created desc',
';'))
,p_items_value_column_name=>'DIASTOLIC'
,p_items_label_column_name=>'CREATED'
,p_color=>'#1b905d'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(29442824397520149)
,p_chart_id=>wwv_flow_imp.id(29442346765520144)
,p_seq=>30
,p_name=>'Pulse'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   to_char(created at time zone ''Europe/Bratislava'', ''yyyy-mm-dd hh24:mi'')    as created,',
'   pulse',
'from ht_blood_pressure b',
'where 1 = 1',
'and ignore_flg = ''N''',
'and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user)',
'order by',
'   created desc',
';'))
,p_items_value_column_name=>'PULSE'
,p_items_label_column_name=>'CREATED'
,p_color=>'#f8101f'
,p_line_style=>'dotted'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29442964725520150)
,p_chart_id=>wwv_flow_imp.id(29442346765520144)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29442605838520147)
,p_chart_id=>wwv_flow_imp.id(29442346765520144)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(29442559882520146)
,p_chart_id=>wwv_flow_imp.id(29442346765520144)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29439333631520114)
,p_plug_name=>'Weight'
,p_parent_plug_id=>wwv_flow_imp.id(29439167104520112)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(30058890733325136)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30326774264428604)
,p_plug_name=>'Weight'
,p_parent_plug_id=>wwv_flow_imp.id(29439333631520114)
,p_region_css_classes=>'weight_report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(30083871023325152)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   created at time zone ''Europe/Bratislava'' as created,',
'   weight,',
'   notes',
'from ht_weight',
'where 1 = 1',
'and ignore_flg = ''N''',
'and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user)',
'order by',
'   created desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Weight Report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30327531191428612)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>30327531191428612
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30327601496428613)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Created'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30327734943428614)
,p_db_column_name=>'WEIGHT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Weight'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30327834289428615)
,p_db_column_name=>'NOTES'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Notes'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30337068672491147)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'303371'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED:WEIGHT:NOTES'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30340231238557303)
,p_application_user=>'DEV'
,p_name=>'First 10 Rows'
,p_description=>'Shows first 10 rows of the report.'
,p_report_seq=>10
,p_display_rows=>10
,p_report_columns=>'CREATED:WEIGHT:NOTES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29440103987520122)
,p_plug_name=>'Blood Pressure'
,p_parent_plug_id=>wwv_flow_imp.id(29439167104520112)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(30058890733325136)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30327935527428616)
,p_plug_name=>'BP'
,p_parent_plug_id=>wwv_flow_imp.id(29440103987520122)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(30083871023325152)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'   created at time zone ''Europe/Bratislava'' as created,',
'   systolic,',
'   diastolic,',
'   pulse,',
'   case',
'      when bp.arrhythmia = ''Y'' then ''fa-check-circle''',
'      else null',
'   end                                       as arrhythmia,',
'   notes',
'from ht_blood_pressure bp',
'where 1 = 1',
'and ignore_flg = ''N''',
'and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user)',
'order by',
'   created desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Blood Pressure History'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30328094958428617)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>30328094958428617
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30328162346428618)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Created'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30328249757428619)
,p_db_column_name=>'SYSTOLIC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Top (Systolic)'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30328302470428620)
,p_db_column_name=>'DIASTOLIC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Bottom (Diastolic)'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30328650692428623)
,p_db_column_name=>'PULSE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Pulse'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30328729996428624)
,p_db_column_name=>'ARRHYTHMIA'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Arrhythmia'
,p_column_html_expression=>'<span class="fa #ARRHYTHMIA#"</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30328590706428622)
,p_db_column_name=>'NOTES'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Notes'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30343431665631168)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'303435'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'CREATED:SYSTOLIC:DIASTOLIC:PULSE:ARRHYTHMIA:NOTES:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8440549805112551)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Top: Cirtical'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'>='
,p_expr=>'180'
,p_condition_sql=>' (case when ("SYSTOLIC" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#bc0707'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8440973207112551)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Top: Stage 1 - Hypertension'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'between'
,p_expr=>'130'
,p_expr2=>'139'
,p_condition_sql=>' (case when ("SYSTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fee161'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8441318930112551)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Bottom: Critical'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIASTOLIC'
,p_operator=>'>='
,p_expr=>'120'
,p_condition_sql=>' (case when ("DIASTOLIC" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#bc0707'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8441730993112552)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Top: Stage 2'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'between'
,p_expr=>'140'
,p_expr2=>'179'
,p_condition_sql=>' (case when ("SYSTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fd8f8f'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8442191765112552)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Bottom: Stage 2 - Hypertension'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIASTOLIC'
,p_operator=>'between'
,p_expr=>'90'
,p_expr2=>'119'
,p_condition_sql=>' (case when ("DIASTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fd8f8f'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8442565340112552)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Bottom: Stage 1 - Hypertension'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIASTOLIC'
,p_operator=>'between'
,p_expr=>'80'
,p_expr2=>'89'
,p_condition_sql=>' (case when ("DIASTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fee161'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8442978634112553)
,p_report_id=>wwv_flow_imp.id(30343431665631168)
,p_name=>'Top: Elevated'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'between'
,p_expr=>'120'
,p_expr2=>'129'
,p_condition_sql=>' (case when ("SYSTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fafd77'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30360749618881701)
,p_application_user=>'DEV'
,p_name=>'First 25 Rows'
,p_description=>'Displays first 25 rows.'
,p_report_seq=>10
,p_display_rows=>25
,p_report_columns=>'CREATED:SYSTOLIC:DIASTOLIC:PULSE:ARRHYTHMIA:NOTES:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30360819403881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Bottom: Stage 1 - Hypertension'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIASTOLIC'
,p_operator=>'between'
,p_expr=>'80'
,p_expr2=>'89'
,p_condition_sql=>' (case when ("DIASTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fee161'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30360902897881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Bottom: Stage 2 - Hypertension'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIASTOLIC'
,p_operator=>'between'
,p_expr=>'90'
,p_expr2=>'119'
,p_condition_sql=>' (case when ("DIASTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fd8f8f'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30361032441881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Top: Cirtical'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'>='
,p_expr=>'180'
,p_condition_sql=>' (case when ("SYSTOLIC" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#bc0707'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30361133921881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Top: Stage 1 - Hypertension'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'between'
,p_expr=>'130'
,p_expr2=>'139'
,p_condition_sql=>' (case when ("SYSTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fee161'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30361234737881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Bottom: Critical'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'DIASTOLIC'
,p_operator=>'>='
,p_expr=>'120'
,p_condition_sql=>' (case when ("DIASTOLIC" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#bc0707'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30361397910881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Top: Elevated'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'between'
,p_expr=>'120'
,p_expr2=>'129'
,p_condition_sql=>' (case when ("SYSTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fafd77'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(30361405748881701)
,p_report_id=>wwv_flow_imp.id(30360749618881701)
,p_name=>'Top: Stage 2'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SYSTOLIC'
,p_operator=>'between'
,p_expr=>'140'
,p_expr2=>'179'
,p_condition_sql=>' (case when ("SYSTOLIC" between to_number(#APXWS_EXPR#) and to_number(#APXWS_EXPR2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# #APXWS_EXPR_NUMBER# #APXWS_AND# #APXWS_EXPR2_NUMBER#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#fd8f8f'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29441295679520133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29440237707520123)
,p_button_name=>'NEW_WEIGHT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_imp.id(30197076162325234)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Weight'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30326554767428602)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29440327700520124)
,p_button_name=>'NEW_BP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_imp.id(30197076162325234)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Bp'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29441887622520139)
,p_name=>'P1_LAST_WEIGHT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29440237707520123)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(29441737698520138)
,p_computation_sequence=>10
,p_computation_item=>'P1_LAST_WEIGHT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select weight',
'from ht_weight',
'where 1 = 1',
'and ignore_flg = ''N''',
'and created_by = coalesce(sys_context(''APEX$SESSION'', ''APP_USER''), user)',
'order by ',
'   created desc',
'fetch first 1 rows only'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30330816600428645)
,p_name=>'Refresh Weight'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29441295679520133)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30330916687428646)
,p_event_id=>wwv_flow_imp.id(30330816600428645)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Graph'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29440237707520123)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30331198363428648)
,p_event_id=>wwv_flow_imp.id(30330816600428645)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Report'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30326774264428604)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30331282855428649)
,p_name=>'Refresh BP'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30326554767428602)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>29631720813958193
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30331343279428650)
,p_event_id=>wwv_flow_imp.id(30331282855428649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Graph'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29440327700520124)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9404733176863203)
,p_event_id=>wwv_flow_imp.id(30331282855428649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Report'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30327935527428616)
);
wwv_flow_imp.component_end;
end;
/
