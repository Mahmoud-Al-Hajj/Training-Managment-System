prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Training Management System'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ===== Ultra-Premium APEX Card ===== */',
'.ux-card {',
'    border-radius: 12px;',
'    background: #fff;',
'    box-shadow: ',
'        0 2px 4px rgba(0, 0, 0, 0.03),',
'        0 4px 20px rgba(0, 0, 0, 0.08);',
'    border: none;',
'    overflow: hidden;',
'    transition: all 0.35s cubic-bezier(0.25, 0.8, 0.25, 1);',
'    margin-bottom: 24px;',
'    position: relative;',
'}',
'',
'/* --- Hover Animation (Subtle but impactful) --- */',
'.ux-card:hover {',
'    transform: translateY(-4px);',
'    box-shadow: ',
'        0 6px 12px rgba(0, 0, 0, 0.1),',
'        0 12px 40px rgba(0, 0, 0, 0.12);',
'}',
'',
'/* --- Card Header (Elegant & Bold) --- */',
'.ux-card .a-CardView-header {',
'    padding: 18px 24px;',
'    background: linear-gradient(135deg, #f9fafc 0%, #f0f3f7 100%);',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    font-weight: 600;',
'    font-size: 1.15rem;',
'    color: #2d3748;',
'    letter-spacing: -0.2px;',
'}',
'',
'/* --- Card Body (Perfect Readability) --- */',
'.ux-card .a-CardView-body {',
'    padding: 24px;',
'    color: #4a5568;',
'    line-height: 1.65;',
'    font-size: 0.95rem;',
'}',
'',
'/* --- Card Footer (Subtle & Refined) --- */',
'.ux-card .a-CardView-footer {',
'    padding: 14px 24px;',
'    background: rgba(249, 250, 252, 0.7);',
'    border-top: 1px solid rgba(0, 0, 0, 0.03);',
'    font-size: 0.85rem;',
'    color: #718096;',
'}',
'',
'/* --- Optional: Accent Border (Uncomment to use) --- */',
'.ux-card.accent-primary {',
'    border-left: 4px solid #4361ee;',
'}',
'.ux-card.accent-success {',
'    border-left: 4px solid #06d6a0;',
'}',
'.ux-card.accent-danger {',
'    border-left: 4px solid #ef476f;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58103885036579662460)
,p_plug_name=>'Training Management System'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58879720554481546428)
,p_plug_name=>'cards'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       NAME,',
'       EMAIL,',
'       PHONE_NUMBER,',
'       ADDRESS,',
'       REGISTRATION_DATE',
'FROM TS_PROVIDERS',
'WHERE (:P1_SEARCH IS NULL',
'       OR UPPER(NAME) LIKE UPPER(''%'' || :P1_SEARCH || ''%'')',
'       OR UPPER(EMAIL) LIKE UPPER(''%'' || :P1_SEARCH || ''%'')',
'       OR UPPER(PHONE_NUMBER) LIKE UPPER(''%'' || :P1_SEARCH || ''%'')',
'       OR UPPER(ADDRESS) LIKE UPPER(''%'' || :P1_SEARCH || ''%''))',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(58879720681275546429)
,p_region_id=>wwv_flow_imp.id(58879720554481546428)
,p_layout_type=>'GRID'
,p_card_css_classes=>'ux-card'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'EMAIL'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'PHONE_NUMBER'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(58879720790637546430)
,p_card_id=>wwv_flow_imp.id(58879720681275546429)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::P11_PROVIDER_ID:&ID.#ID##ID#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(122193390269548275311)
,p_plug_name=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(122193390917721275317)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(122193390269548275311)
,p_prompt=>'Search'
,p_placeholder=>'Search by name, email, phone...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59732086148117783549)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp.component_end;
end;
/
