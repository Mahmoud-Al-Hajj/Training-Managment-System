prompt --workspace/credentials/app_109167_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 109167 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(58104497764045662473)
,p_name=>'App 109167 Push Notifications Credentials'
,p_static_id=>'App_109167_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
