prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 109167
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(58103870711887662440)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15634422804465
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(58103876413563662449)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15634422804555
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(58104490708656662467)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15634422804760
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(58104491086775662467)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15634422804761
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(58617823586668865393)
,p_build_option_name=>'Feature: Email Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15634698705652
,p_feature_identifier=>'APPLICATION_EMAIL_REPORTING'
,p_build_option_comment=>'Includes a report displaying the mail to be sent joined with the log of emails already sent.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(63355800241258310235)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15638226989551
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp.component_end;
end;
/
