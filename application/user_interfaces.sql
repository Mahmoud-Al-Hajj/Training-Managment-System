prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 109167
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(109167)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(58103871968497662441)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>2526754704087354841
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike:js-showSubMenuIcons'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(58103873136800662444)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
