prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Bulk Adding Participants'
,p_alias=>'BULK-ADD-PARTICIPANTS'
,p_step_title=>'Bulk Adding Participants'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58897343563065957830)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(58103871364841662441)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58879720284891546425)
,p_button_sequence=>40
,p_button_name=>'REGISTER_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Register Participants'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58879719914704546422)
,p_name=>'P21_PARTICIPANTS'
,p_is_required=>true
,p_item_sequence=>10
,p_prompt=>'Participants'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT name || '' ('' || role || '')'' AS display_value,',
'       id AS return_value',
'FROM ts_participants',
'ORDER BY name;',
''))
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58879720096090546423)
,p_name=>'P21_COURSE'
,p_item_sequence=>20
,p_prompt=>'Course'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT course_name AS display_value, id AS return_value',
'FROM ts_courses',
'ORDER BY course_name',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58879720150210546424)
,p_name=>'P21_SESSIONS'
,p_item_sequence=>30
,p_prompt=>'Session'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT name || '' ('' || TO_CHAR(session_date, ''YYYY-MM-DD'') || '')'' AS display_value,',
'       id AS return_value',
'FROM ts_sessions',
'WHERE ts_courses_id = :P21_COURSE',
'ORDER BY session_date DESC',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P21_COURSE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58879720361871546426)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Bulk Addition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_participant_ids SYS.ODCINUMBERLIST := SYS.ODCINUMBERLIST();',
'BEGIN',
'  FOR i IN 1 .. apex_string.split(:P21_PARTICIPANTS, '','').count LOOP',
'    l_participant_ids.extend;',
'    l_participant_ids(l_participant_ids.count) := TO_NUMBER(TRIM(apex_string.split(:P21_PARTICIPANTS, '','')(i)));',
'  END LOOP;',
'',
'  bulk_register_participants(',
'    p_session_id => :P21_SESSIONS,',
'    p_participant_ids => l_participant_ids',
'  );',
'',
'',
'  apex_application.g_print_success_message := ''Participants successfully registered!'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_error.add_error(',
'      p_message => ''Error: '' || SQLERRM,',
'      p_display_location => apex_error.c_on_error_page',
'    );',
'    RAISE;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(58879720284891546425)
,p_internal_uid=>58879720361871546426
);
wwv_flow_imp.component_end;
end;
/
