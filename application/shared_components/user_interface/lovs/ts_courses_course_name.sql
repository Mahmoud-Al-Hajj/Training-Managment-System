prompt --application/shared_components/user_interface/lovs/ts_courses_course_name
begin
--   Manifest
--     TS_COURSES.COURSE_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(58110507775596833506)
,p_lov_name=>'TS_COURSES.COURSE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TS_COURSES'
,p_return_column_name=>'ID'
,p_display_column_name=>'COURSE_NAME'
,p_default_sort_column_name=>'COURSE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15634430251930
);
wwv_flow_imp.component_end;
end;
/
