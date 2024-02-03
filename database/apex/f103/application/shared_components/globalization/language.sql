prompt --application/shared_components/globalization/language
begin
--   Manifest
--     LANGUAGE MAP: 103
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.3'
,p_default_workspace_id=>29631720813958193
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_language_map(
 p_id=>wwv_flow_imp.id(12133458570242652)
,p_translation_flow_id=>1000103
,p_translation_flow_language_cd=>'sk'
,p_direction_right_to_left=>'N'
);
wwv_flow_imp.component_end;
end;
/
