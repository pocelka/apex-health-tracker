prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3000436975541529
,p_default_application_id=>106
,p_default_id_offset=>55113874815241043
,p_default_owner=>'TIME_TRACKER'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1600169612160994)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2811305186171738)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20613228063719265)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(48413606234767009)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_JET'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(48413692778767009)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(48414263243767009)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65848228216281369)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65848443603281369)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65848621848281369)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65848635261281369)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_imp.component_end;
end;
/
