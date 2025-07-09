prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 109167
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(58103877300991662450)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(58104490577695662466)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
