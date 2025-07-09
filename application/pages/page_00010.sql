prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Sessions_of_courses'
,p_alias=>'SESSIONS-OF-COURSES'
,p_step_title=>'Sessions_of_courses'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ===== PREMIUM APEX CARD ===== */',
'.premium-card {',
'    --card-accent: #4F46E5; /* Default accent (indigo) */',
'    border-radius: 16px;',
'    background: #FFFFFF;',
'    box-shadow: ',
'        0 1px 3px rgba(0, 0, 0, 0.05),',
'        0 8px 24px rgba(0, 0, 0, 0.08);',
'    border: 1px solid rgba(0, 0, 0, 0.03);',
'    overflow: hidden;',
'    transition: all 0.4s cubic-bezier(0.22, 1, 0.36, 1);',
'    margin-bottom: 28px;',
'    position: relative;',
'}',
'',
'/* --- Hover Effect --- */',
'.premium-card:hover {',
'    transform: translateY(-4px);',
'    box-shadow: ',
'        0 4px 6px rgba(0, 0, 0, 0.05),',
'        0 16px 32px rgba(0, 0, 0, 0.12);',
'    border-color: rgba(0, 0, 0, 0.06);',
'}',
'',
'/* --- Card Header (Elegant with subtle accent) --- */',
'.premium-card .a-CardView-header {',
'    padding: 20px 24px;',
'    background: #FFFFFF;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.04);',
'    font-weight: 600;',
'    font-size: 1.15rem;',
'    color: #111827;',
'    position: relative;',
'}',
'',
'.premium-card .a-CardView-header::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    height: 4px;',
'    width: 100%;',
'    background: linear-gradient(90deg, var(--card-accent) 0%, #7C3AED 100%);',
'}',
'',
'/* --- Card Body (Perfect typography) --- */',
'.premium-card .a-CardView-body {',
'    padding: 24px;',
'    color: #374151;',
'    line-height: 1.7;',
'    font-size: 0.95rem;',
'    background: #FFFFFF;',
'}',
'',
'/* --- Card Footer (Subtle and refined) --- */',
'.premium-card .a-CardView-footer {',
'    padding: 16px 24px;',
'    background: #F9FAFB;',
'    border-top: 1px solid rgba(0, 0, 0, 0.03);',
'    font-size: 0.85rem;',
'    color: #6B7280;',
'}',
'',
'/* --- Accent Color Variations --- */',
'.premium-card.accent-indigo {',
'    --card-accent: #4F46E5;',
'}',
'.premium-card.accent-emerald {',
'    --card-accent: #10B981;',
'}',
'.premium-card.accent-rose {',
'    --card-accent: #F43F5E;',
'}',
'.premium-card.accent-amber {',
'    --card-accent: #F59E0B;',
'}',
'',
'/* --- Glass Morphism Variant --- */',
'.premium-card.glass {',
'    background: rgba(255, 255, 255, 0.72);',
'    backdrop-filter: blur(12px);',
'    border: 1px solid rgba(255, 255, 255, 0.2);',
'    box-shadow: ',
'        0 4px 30px rgba(0, 0, 0, 0.1);',
'}',
'',
'/* --- Minimal Variant --- */',
'.premium-card.minimal {',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.03);',
'    border: 1px solid rgba(0, 0, 0, 0.06);',
'}',
'.premium-card.minimal:hover {',
'    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59680572492247767858)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59680573141699767861)
,p_plug_name=>'Sessions_of_courses'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  id,',
'  name,',
'  session_date,',
'  end_date,',
'  ts_courses_id',
'FROM',
'  ts_sessions',
'WHERE',
'  ts_courses_id = TO_NUMBER(:P10_COURSE_ID)',
'  AND (',
'    :P10_SEARCH IS NULL',
'    OR UPPER(name) LIKE UPPER(''%'' || :P10_SEARCH || ''%'')',
'    OR TO_CHAR(session_date, ''YYYY-MM-DD'') LIKE ''%'' || :P10_SEARCH || ''%''',
'    OR TO_CHAR(end_date, ''YYYY-MM-DD'') LIKE ''%'' || :P10_SEARCH || ''%''',
'    OR TO_CHAR(id) LIKE ''%'' || :P10_SEARCH || ''%''',
'  )',
''))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P10_ORDER_BY", "orderBys": [{"key":"NAME","expr":"\"NAME\" asc"},{"key":"SESSION_DATE","expr":"\"SESSION_DATE\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(59680573662363767862)
,p_region_id=>wwv_flow_imp.id(59680573141699767861)
,p_layout_type=>'ROW'
,p_card_css_classes=>'premium-card'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SESSION_DATE'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(184657234166465919487)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62461483922973509414)
,p_button_sequence=>50
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58879721576494546438)
,p_name=>'P10_COURSE_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59680574142043767863)
,p_name=>'P10_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59680573141699767861)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NAME'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Name;NAME,Session Date;SESSION_DATE'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184657235028695919499)
,p_name=>'P10_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(184657234166465919487)
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
 p_id=>wwv_flow_imp.id(62461484007109509415)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62461484133480509416)
,p_event_id=>wwv_flow_imp.id(62461484007109509415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59680573141699767861)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
